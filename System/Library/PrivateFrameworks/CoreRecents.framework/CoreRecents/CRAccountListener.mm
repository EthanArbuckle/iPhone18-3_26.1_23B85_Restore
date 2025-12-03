@interface CRAccountListener
+ (id)appleAccountListenerForStore:(id)store withHandler:(id)handler;
+ (id)mailAccountListenerWithHandler:(id)handler;
@end

@implementation CRAccountListener

+ (id)mailAccountListenerWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001779C;
  v4[3] = &unk_10002D5B0;
  v4[4] = handler;
  return [objc_msgSend(self "_makeObservableForMailAccount")];
}

+ (id)appleAccountListenerForStore:(id)store withHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017840;
  v5[3] = &unk_10002D5B0;
  v5[4] = handler;
  return [objc_msgSend(self _makeObservableForAccountStore:{store), "subscribe:", +[CNObserver observerWithResultBlock:](CNObserver, "observerWithResultBlock:", v5)}];
}

@end