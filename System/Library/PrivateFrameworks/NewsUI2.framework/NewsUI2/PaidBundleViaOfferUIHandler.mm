@interface PaidBundleViaOfferUIHandler
- (_TtC7NewsUI227PaidBundleViaOfferUIHandler)init;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
- (void)pushPayload:(id)payload withBadgeRequest:(id)request;
@end

@implementation PaidBundleViaOfferUIHandler

- (_TtC7NewsUI227PaidBundleViaOfferUIHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability), *&self->notificationService[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 8]);
  selfCopy = self;
  sub_219BE4754();
  *(swift_allocObject() + 16) = selfCopy;
  v6 = selfCopy;
  v5 = sub_219BE2E54();
  sub_219BE2F74();
}

- (void)pushPayload:(id)payload withBadgeRequest:(id)request
{
  payloadCopy = payload;
  requestCopy = request;
  selfCopy = self;
  sub_2198CC614(requestCopy);
}

@end