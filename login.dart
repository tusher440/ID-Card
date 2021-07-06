import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Idcard extends StatefulWidget {

  void customLauncher(command) async {
    if( await canLaunch(command)) {
      await launch(command);
    }else{
      print("fail to launch");
    }
  }
  @override
  _IdcardState createState() => _IdcardState();
}

class _IdcardState extends State<Idcard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abir Hossain Tusher"),
      ),

      body: Center(
        child: Container(
          color: Colors.teal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("image/abir.jpg"),
                radius: 50,
              ),

              Container(
                child: Text("abir",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              Container(
                child: Text("Tranee software Engineer",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 10,),

              // Container(
              //   height: 1,
              //   width: 150,
              //   color: Colors.black,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),

              GestureDetector(
                onTap: (){
                  customLauncher('tel: 01517096422');
                },
                child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 40,),
                        Icon(Icons.call,
                          size: 20,),
                        SizedBox(width: 20,),
                        Text("01517096422"),
                      ],
                    )

                ),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  customLauncher('mailto: abirhossaintushar.789@gmail.com');
                },
                child: Container(
                  height: 30,
                  width: 300,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 40,),
                      Icon(Icons.email,
                        size: 20,),
                      SizedBox(width: 20,),
                      Text("abirhossaintushar.789@gmail.com"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  customLauncher('sms: 01689327861');
                },
                child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 40,),
                        Icon(Icons.sms,
                          size: 20,),
                        SizedBox(width: 20,),
                        Text("01689327861"),
                      ],
                    )

                ),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  customLauncher('http://excelitai.com/');
                },
                child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 40,),
                        Icon(Icons.web,
                          size: 20,),
                        SizedBox(width: 20,),
                        Text("excel IT AI"),
                      ],
                    )

                ),
              ),



            ],
          ),
        ),
      ),

    );
  }
}
