@interface SetupBaseViewController
- (_TtC21MediaSetupViewService23SetupBaseViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC21MediaSetupViewService23SetupBaseViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)requestDismiss;
@end

@implementation SetupBaseViewController

- (void)requestDismiss
{
  v2 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController];
  selfCopy = self;
  v3 = v2;
  sub_100011B3C(1u);
}

- (_TtC21MediaSetupViewService23SetupBaseViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService23SetupBaseViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end