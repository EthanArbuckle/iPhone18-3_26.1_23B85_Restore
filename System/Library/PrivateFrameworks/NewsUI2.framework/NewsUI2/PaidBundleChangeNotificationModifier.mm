@interface PaidBundleChangeNotificationModifier
- (_TtC7NewsUI236PaidBundleChangeNotificationModifier)init;
- (void)bundleSubscriptionDidExpire:(id)a3;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
@end

@implementation PaidBundleChangeNotificationModifier

- (_TtC7NewsUI236PaidBundleChangeNotificationModifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219606968();
}

- (void)bundleSubscriptionDidExpire:(id)a3
{
  v3 = self;
  sub_2196061EC(1);
}

@end