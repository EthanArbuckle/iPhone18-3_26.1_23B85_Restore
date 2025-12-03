@interface PurchasePresenter
- (_TtC16NewsSubscription17PurchasePresenter)init;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)handlePurchaseAddedNotificationWithNotification:(id)notification;
@end

@implementation PurchasePresenter

- (_TtC16NewsSubscription17PurchasePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handlePurchaseAddedNotificationWithNotification:(id)notification
{
  v4 = sub_1D78B3024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3004();
  selfCopy = self;
  sub_1D77817F0();

  (*(v5 + 8))(v7, v4);
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_1D7782BF0();
}

@end