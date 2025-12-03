@interface HearingAssistWelcomeController
- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (void)audiogramIngestionDidSaveAudiogram:(id)audiogram;
- (void)setFlowController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
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

- (void)setFlowController:(id)controller
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)audiogramIngestionDidSaveAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  selfCopy = self;
  sub_251FE4C00(audiogramCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_251FE4FDC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_251FE5990(appear);
}

- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end