@interface ArcadeSubscriptionManager
- (_TtC12GameStoreKit25ArcadeSubscriptionManager)init;
- (void)entitlementsDidChange;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4;
@end

@implementation ArcadeSubscriptionManager

- (void)entitlementsDidChange
{
  v2 = self;
  sub_24F211118();
}

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_24F215A88(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC12GameStoreKit25ArcadeSubscriptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentQueue:(id)a3 updatedTransactions:(id)a4
{
  sub_24E69A5C4(0, &qword_27F23C838);
  v6 = sub_24F92B5A8();
  v7 = a3;
  v8 = self;
  v9.super.isa = v7;
  v9._internal = v6;
  ArcadeSubscriptionManager.paymentQueue(_:updatedTransactions:)(v9, v10);
}

@end