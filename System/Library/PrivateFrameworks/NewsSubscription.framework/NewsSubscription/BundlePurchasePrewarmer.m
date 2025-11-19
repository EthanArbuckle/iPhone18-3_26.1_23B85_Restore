@interface BundlePurchasePrewarmer
- (_TtC16NewsSubscription23BundlePurchasePrewarmer)init;
- (void)bundleSubscriptionDidExpire:(id)a3;
- (void)networkReachabilityDidChange:(id)a3;
@end

@implementation BundlePurchasePrewarmer

- (_TtC16NewsSubscription23BundlePurchasePrewarmer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkReachabilityDidChange:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  if ([a3 isNetworkReachable])
  {
    sub_1D7756490();
  }

  swift_unknownObjectRelease();
}

- (void)bundleSubscriptionDidExpire:(id)a3
{
  v3 = self;
  sub_1D7756490();
}

@end