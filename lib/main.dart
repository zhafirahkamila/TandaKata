import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tanda_kata/Screens/Welcome/welcome_screen.dart';
import 'package:tanda_kata/Screens/components/welcome_body.dart';
import 'package:tanda_kata/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme:
          ThemeData(primaryColor: primaryColor, scaffoldBackgroundColor: card),
      home: const WelcomeBody(),
    );
  }
}
