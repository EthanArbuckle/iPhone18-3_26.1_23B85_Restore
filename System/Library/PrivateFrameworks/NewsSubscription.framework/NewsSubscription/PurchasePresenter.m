@interface PurchasePresenter
- (_TtC16NewsSubscription17PurchasePresenter)init;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
- (void)handlePurchaseAddedNotificationWithNotification:(id)a3;
@end

@implementation PurchasePresenter

- (_TtC16NewsSubscription17PurchasePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handlePurchaseAddedNotificationWithNotification:(id)a3
{
  v4 = sub_1D78B3024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3004();
  v8 = self;
  sub_1D77817F0();

  (*(v5 + 8))(v7, v4);
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7782BF0();
}

@end