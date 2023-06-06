import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterapp/screen/loading_screen.dart';

// const를 사용하면 어떠한 경우에도 해당 값이 바뀌지 않음을 나타낸다. 
// 사실 사용을 안해도 경고문이 나와서 빌드가 가능하지만
// 덕분에 리빌드를 하지않음으로 app의 실행속도가 빨라지기때문에 사용한다.

//애뮬레이터 실행이 너무 늦어서 빌드를 chrome으로 거의 진행하여
//작업을 진행하였기때문에 chrome에서 listview를 사용하기위해서 아래와같은 매서드 생성.
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 상속 받은 메소드를 재정의 할때 사용하는 @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark(),
      scrollBehavior: MyCustomScrollBehavior(),
      home: const LoadingScreen(),
    );
  }
}


