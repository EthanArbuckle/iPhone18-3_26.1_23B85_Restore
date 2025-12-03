@interface BundlePurchasePrewarmer
- (_TtC16NewsSubscription23BundlePurchasePrewarmer)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)networkReachabilityDidChange:(id)change;
@end

@implementation BundlePurchasePrewarmer

- (_TtC16NewsSubscription23BundlePurchasePrewarmer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkReachabilityDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([change isNetworkReachable])
  {
    sub_1D7756490();
  }

  swift_unknownObjectRelease();
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  selfCopy = self;
  sub_1D7756490();
}

@end