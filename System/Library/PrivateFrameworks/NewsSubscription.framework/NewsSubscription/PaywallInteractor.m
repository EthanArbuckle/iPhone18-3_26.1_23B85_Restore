@interface PaywallInteractor
- (_TtC16NewsSubscription17PaywallInteractor)init;
- (void)bundleSubscriptionDidSubscribe:(id)a3;
@end

@implementation PaywallInteractor

- (_TtC16NewsSubscription17PaywallInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end