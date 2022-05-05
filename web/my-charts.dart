import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'year': '2018', 'sales': 77},
    {'year': '2019', 'sales': 23},
    {'year': '2020', 'sales': 34},
    {'year': '2021', 'sales': 45},
    {'year': '2022', 'sales': 56},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
