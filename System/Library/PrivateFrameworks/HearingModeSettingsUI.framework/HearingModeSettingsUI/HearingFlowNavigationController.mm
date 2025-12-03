@interface HearingFlowNavigationController
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithCoder:(id)coder;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithRootViewController:(id)controller;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (void)setFlowController:(id)controller;
- (void)willShowViewController:(id)controller animated:(BOOL)animated;
@end

@implementation HearingFlowNavigationController

- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setFlowController:(id)controller
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController) = 0;
  result = sub_252004B10();
  __break(1u);
  return result;
}

- (void)willShowViewController:(id)controller animated:(BOOL)animated
{
  if (controller)
  {
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x58);
      selfCopy = self;
      controllerCopy = controller;
      [v7 setFlowController_];

      swift_unknownObjectRelease();
    }
  }
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end