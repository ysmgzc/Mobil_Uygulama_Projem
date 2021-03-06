import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
     required this.text, 
     required this.press,
  }) : super(key: key);
  final String text;
  final dynamic Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: orantiliEkranYuksekligi(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: orantiliEkranGenisligi(15),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}