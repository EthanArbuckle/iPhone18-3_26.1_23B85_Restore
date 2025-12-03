@interface DBVoiceControlOverlayController
- (_TtC9DashBoard31DBVoiceControlOverlayController)init;
- (_TtC9DashBoard31DBVoiceControlOverlayController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame voiceControlScene:(id)controlScene environment:(id)environment;
- (void)dashboardStateProvider:(id)provider didChangeLockoutState:(unint64_t)state;
@end

@implementation DBVoiceControlOverlayController

- (_TtC9DashBoard31DBVoiceControlOverlayController)initWithWindowScene:(id)scene windowFrame:(CGRect)frame voiceControlScene:(id)controlScene environment:(id)environment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  controlSceneCopy = controlScene;
  swift_unknownObjectRetain();
  return DBVoiceControlOverlayController.init(windowScene:windowFrame:voiceControlScene:environment:)(sceneCopy, controlSceneCopy, environment, x, y, width, height);
}

- (_TtC9DashBoard31DBVoiceControlOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dashboardStateProvider:(id)provider didChangeLockoutState:(unint64_t)state
{
  v5 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlViewController)) + 0x60);
  selfCopy = self;
  v5(state);
}

@end