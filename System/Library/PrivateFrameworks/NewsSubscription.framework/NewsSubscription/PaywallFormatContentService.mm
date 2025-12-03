@interface PaywallFormatContentService
- (_TtC16NewsSubscription27PaywallFormatContentService)init;
- (void)bundleSubscriptionDidExpire:(void *)expire;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
@end

@implementation PaywallFormatContentService

- (void)bundleSubscriptionDidExpire:(void *)expire
{
  expireCopy = expire;
  sub_1D77E9110();
}

- (_TtC16NewsSubscription27PaywallFormatContentService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  sub_1D77EF048();
}

@end