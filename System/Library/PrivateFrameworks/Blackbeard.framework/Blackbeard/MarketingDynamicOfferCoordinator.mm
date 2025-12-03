@interface MarketingDynamicOfferCoordinator
- (_TtC10Blackbeard32MarketingDynamicOfferCoordinator)init;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation MarketingDynamicOfferCoordinator

- (_TtC10Blackbeard32MarketingDynamicOfferCoordinator)init
{
  *&self->eventHub[OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarketingDynamicOfferCoordinator();
  return [(MarketingDynamicOfferCoordinator *)&v4 init];
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  v7 = sub_1E65DB628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = self + OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    swift_getObjectType();
    errorCopy = error;
    selfCopy = self;
    sub_1E65DB618();
    sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580]);
    sub_1E65DDDE8();

    swift_unknownObjectRelease();
    (*(v8 + 8))(v11, v7);
  }
}

@end