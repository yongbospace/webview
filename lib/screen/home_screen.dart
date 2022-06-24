import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.naver.com/yonbs';
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'yongboSpace',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ;
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebView(
        initialUrl: homeUrl,
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
