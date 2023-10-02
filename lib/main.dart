import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child: Center(
                    child: Image.asset(
              "images/logo2.png",
              width: 100,
              height: 100,
              fit: BoxFit.fill,

            ))),
            Container(
                // margin: const EdgeInsets.fromLTRB(5, 2, 5, 3),
                child: Text("SHRINE",style: TextStyle(color: Color(0xff74388c),fontWeight: FontWeight.bold,),)),
            Container(
              padding: EdgeInsets.all(70),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffd5c7d4),
                        filled: true,
                        hintText: "UserName",
                        hintStyle: TextStyle(color: Color(0xff855ea1)),
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.deepPurpleAccent,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.0))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        fillColor: Color(0xffd5c7d4),
                        filled: true,

                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                        prefixIcon: Icon(Icons.password_rounded),
                        prefixIconColor: Colors.blue,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.0))),
                  ),
                  ],))),
                  Container(
                    width: 400,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: Colors.white10,
                            ),
                          ),
                          child:

                          Column(

                            children: [
                              TextButton(

                                onPressed: () {},
                                child: SizedBox(child: Text('CANCEL',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff855ea1)),),width: 60,height: 15,)
                           ),
                            ],
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Column(
                            children: [
                              TextButton(onPressed: () {  },
                                 child: SizedBox(child: Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff855ea1))),width: 40,height: 15,)
    ,),
                            ],
                          ),
                        )

      ]),
                  ),
///////////////////////////////////// Raisebutton not exist//////////////////////////////////////////////////////////




          ],
        ),
      ),
    );
  }
}
