import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_image_viewpager/flutter_image_viewpager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  static List<String> images = [
    "images/subscription_ad0@2x.png",
    "images/subscription_ad1@2x.png",
    "images/subscription_ad2@2x.png",
    "images/subscription_ad3@2x.png",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FlutterImageViewpager(
              images,
              height:300.0,
            dotcolor_c: Colors.blue,
            dotcolor_n: Colors.grey,
//            movecallback: (int id){
//              debugPrint("move: $id");
//            },
            onClick: (int id){
                debugPrint("click: $id");
            },
          ),
        ),
      ),
    );
  }
}
