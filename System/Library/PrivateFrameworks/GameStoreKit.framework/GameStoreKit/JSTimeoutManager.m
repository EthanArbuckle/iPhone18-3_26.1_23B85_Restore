@interface JSTimeoutManager
- (id)makePromise:(id)a3 :(id)a4;
- (void)setTimeout:(id)a3 :(id)a4;
@end

@implementation JSTimeoutManager

- (id)makePromise:(id)a3 :(id)a4
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v6 = a4;
  v7 = self;
  v8 = sub_24F92C448();
  v9 = sub_24F92C458();

  return v9;
}

- (void)setTimeout:(id)a3 :(id)a4
{
  v6 = sub_24F92B0D8();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_24F0D742C(v9, v6, v8);
}

@end