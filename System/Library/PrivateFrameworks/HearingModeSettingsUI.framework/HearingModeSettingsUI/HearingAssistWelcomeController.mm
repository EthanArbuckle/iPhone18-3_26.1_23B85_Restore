@interface HearingAssistWelcomeController
- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (void)audiogramIngestionDidSaveAudiogram:(id)a3;
- (void)setFlowController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HearingAssistWelcomeController

- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setFlowController:(id)a3
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)audiogramIngestionDidSaveAudiogram:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_251FE4C00(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_251FE4FDC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_251FE5990(a3);
}

- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end