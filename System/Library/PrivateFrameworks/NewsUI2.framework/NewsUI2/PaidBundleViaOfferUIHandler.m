@interface PaidBundleViaOfferUIHandler
- (_TtC7NewsUI227PaidBundleViaOfferUIHandler)init;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
- (void)pushPayload:(id)a3 withBadgeRequest:(id)a4;
@end

@implementation PaidBundleViaOfferUIHandler

- (_TtC7NewsUI227PaidBundleViaOfferUIHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability), *&self->notificationService[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 8]);
  v4 = self;
  sub_219BE4754();
  *(swift_allocObject() + 16) = v4;
  v6 = v4;
  v5 = sub_219BE2E54();
  sub_219BE2F74();
}

- (void)pushPayload:(id)a3 withBadgeRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2198CC614(v7);
}

@end