@interface ContactActionsController
- (_TtC10CallsAppUI24ContactActionsController)init;
- (id)presentingViewControllerForActionsController:(id)a3;
- (void)contactOrbActionsController:(id)a3 didUpdateWithMenu:(id)a4;
@end

@implementation ContactActionsController

- (void)contactOrbActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v5 = a3;
  v6 = self;
  v7 = [v5 currentAvailableMenuItems];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  sub_1CFC9F8A8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD38();
}

- (id)presentingViewControllerForActionsController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC10CallsAppUI24ContactActionsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end