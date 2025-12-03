@interface ContactActionsController
- (_TtC10CallsAppUI24ContactActionsController)init;
- (id)presentingViewControllerForActionsController:(id)controller;
- (void)contactOrbActionsController:(id)controller didUpdateWithMenu:(id)menu;
@end

@implementation ContactActionsController

- (void)contactOrbActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  controllerCopy = controller;
  selfCopy = self;
  currentAvailableMenuItems = [controllerCopy currentAvailableMenuItems];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  sub_1CFC9F8A8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CFC9DD38();
}

- (id)presentingViewControllerForActionsController:(id)controller
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