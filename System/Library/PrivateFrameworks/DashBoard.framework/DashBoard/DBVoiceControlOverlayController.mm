@interface DBVoiceControlOverlayController
- (_TtC9DashBoard31DBVoiceControlOverlayController)init;
- (_TtC9DashBoard31DBVoiceControlOverlayController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 voiceControlScene:(id)a5 environment:(id)a6;
- (void)dashboardStateProvider:(id)a3 didChangeLockoutState:(unint64_t)a4;
@end

@implementation DBVoiceControlOverlayController

- (_TtC9DashBoard31DBVoiceControlOverlayController)initWithWindowScene:(id)a3 windowFrame:(CGRect)a4 voiceControlScene:(id)a5 environment:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  swift_unknownObjectRetain();
  return DBVoiceControlOverlayController.init(windowScene:windowFrame:voiceControlScene:environment:)(v12, v13, a6, x, y, width, height);
}

- (_TtC9DashBoard31DBVoiceControlOverlayController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dashboardStateProvider:(id)a3 didChangeLockoutState:(unint64_t)a4
{
  v5 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBVoiceControlOverlayController__voiceControlViewController)) + 0x60);
  v6 = self;
  v5(a4);
}

@end