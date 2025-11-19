@interface AllPurchaseTransactionObserver
- (_TtC16NewsSubscription30AllPurchaseTransactionObserver)init;
- (void)bundleSubscriptionDidSubscribe:(id)a3 hideBundleDetectionUI:(BOOL)a4;
- (void)handlePurchaseAddedNotificationWithNotification:(id)a3;
@end

@implementation AllPurchaseTransactionObserver

- (_TtC16NewsSubscription30AllPurchaseTransactionObserver)init
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
  sub_1D7857BBC();

  (*(v5 + 8))(v7, v4);
}

- (void)bundleSubscriptionDidSubscribe:(id)a3 hideBundleDetectionUI:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1D78595A4(a4);
}

@end