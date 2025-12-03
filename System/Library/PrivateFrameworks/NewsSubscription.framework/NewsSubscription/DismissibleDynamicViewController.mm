@interface DismissibleDynamicViewController
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithCoder:(id)coder;
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithRootViewController:(id)controller;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation DismissibleDynamicViewController

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = self + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16NewsSubscription32DismissibleDynamicViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end