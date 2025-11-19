@interface DismissibleDynamicViewController
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithCoder:(id)a3;
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithRootViewController:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation DismissibleDynamicViewController

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end