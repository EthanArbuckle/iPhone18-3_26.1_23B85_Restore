@interface OfferManager
- (_TtC16NewsSubscription12OfferManager)init;
- (void)bundleSubscriptionDidExpire:(id)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)networkReachabilityDidChange:(id)change;
@end

@implementation OfferManager

- (_TtC16NewsSubscription12OfferManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkReachabilityDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D77E4ECC(change);
  swift_unknownObjectRelease();
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_1D77E5B28();
}

- (void)bundleSubscriptionDidExpire:(id)expire
{
  expireCopy = expire;
  selfCopy = self;
  sub_1D77E5CB0();
}

@end