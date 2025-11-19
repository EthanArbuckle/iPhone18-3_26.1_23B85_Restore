@interface HearingFlowNavigationController
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithCoder:(id)a3;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithRootViewController:(id)a3;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (void)setFlowController:(id)a3;
- (void)willShowViewController:(id)a3 animated:(BOOL)a4;
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

- (void)setFlowController:(id)a3
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController) = 0;
  result = sub_252004B10();
  __break(1u);
  return result;
}

- (void)willShowViewController:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x58);
      v9 = self;
      v10 = a3;
      [v7 setFlowController_];

      swift_unknownObjectRelease();
    }
  }
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end