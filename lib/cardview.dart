import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardView extends StatelessWidget {
  final String cardtext1;
  final String cardpic;
  final String cardtext2;
  final String cardtext3;
  final String cardtext4;
 
  final ontap;

  const CardView(
      {super.key,
      required this.cardtext1,
      required this.cardpic,
      required this.cardtext2,
      required this.cardtext3,
      required this.cardtext4,
      
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Container(
                height: 300,
                width: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          cardpic,
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 210),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.white),
                            width: 50,
                            height: 40,
                            child: Center(child: Text(cardtext3)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardtext1,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(cardtext2),
                    Row(
                      children: [
                        Icon(
                          Icons.stars,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.stars,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.stars,
                          color: Colors.green,
                        ),
                        Icon(
                         Icons.stars,
                          color: Colors.green,
                        ),
                        Text(cardtext4)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
