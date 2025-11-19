@interface OfferManager
- (_TtC16NewsSubscription12OfferManager)init;
- (void)bundleSubscriptionDidExpire:(id)a3;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
- (void)networkReachabilityDidChange:(id)a3;
@end

@implementation OfferManager

- (_TtC16NewsSubscription12OfferManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkReachabilityDidChange:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1D77E4ECC(a3);
  swift_unknownObjectRelease();
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D77E5B28();
}

- (void)bundleSubscriptionDidExpire:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D77E5CB0();
}

@end