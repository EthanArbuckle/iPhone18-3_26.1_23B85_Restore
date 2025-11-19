@interface OfferUpsellScenarioProvider
- (_TtC12NewsArticles27OfferUpsellScenarioProvider)init;
- (int64_t)offerUpsellScenario;
@end

@implementation OfferUpsellScenarioProvider

- (_TtC12NewsArticles27OfferUpsellScenarioProvider)init
{
  v3 = OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_observers;
  *(&self->super.isa + v3) = [objc_opt_self() weakObjectsHashTable];
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles27OfferUpsellScenarioProvider_didProcessInitialOffer) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (int64_t)offerUpsellScenario
{
  v2 = self;
  v3 = sub_1D7AE624C();

  return v3;
}

@end