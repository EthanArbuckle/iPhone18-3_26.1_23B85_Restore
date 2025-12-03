@interface PaidBundleChangeNotificationModifier
- (_TtC7NewsUI236PaidBundleChangeNotificationModifier)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
@end

@implementation PaidBundleChangeNotificationModifier

- (_TtC7NewsUI236PaidBundleChangeNotificationModifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_219606968();
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  selfCopy = self;
  sub_2196061EC(1);
}

@end