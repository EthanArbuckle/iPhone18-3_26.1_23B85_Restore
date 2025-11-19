@interface CRAccountListener
+ (id)appleAccountListenerForStore:(id)a3 withHandler:(id)a4;
+ (id)mailAccountListenerWithHandler:(id)a3;
@end

@implementation CRAccountListener

+ (id)mailAccountListenerWithHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001779C;
  v4[3] = &unk_10002D5B0;
  v4[4] = a3;
  return [objc_msgSend(a1 "_makeObservableForMailAccount")];
}

+ (id)appleAccountListenerForStore:(id)a3 withHandler:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017840;
  v5[3] = &unk_10002D5B0;
  v5[4] = a4;
  return [objc_msgSend(a1 _makeObservableForAccountStore:{a3), "subscribe:", +[CNObserver observerWithResultBlock:](CNObserver, "observerWithResultBlock:", v5)}];
}

@end