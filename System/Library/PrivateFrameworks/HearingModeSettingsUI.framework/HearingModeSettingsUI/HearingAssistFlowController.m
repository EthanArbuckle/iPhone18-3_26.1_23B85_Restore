@interface HearingAssistFlowController
- (UINavigationController)flowContainerController;
- (UIViewController)initialViewController;
- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)init;
- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)initWithDevice:(id)a3 serviceClient:(id)a4 flow:(int64_t)a5;
- (void)setInitialViewController:(id)a3;
@end

@implementation HearingAssistFlowController

- (UIViewController)initialViewController
{
  v2 = self;
  v3 = sub_251FC1A58();

  return v3;
}

- (void)setInitialViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController);
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController) = a3;
  v3 = a3;
}

- (UINavigationController)flowContainerController
{
  type metadata accessor for HearingFlowNavigationController();
  v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x70);
  v4 = self;
  v5 = v3();
  v6 = sub_251FE8AA8(v4, v5);

  return v6;
}

- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)initWithDevice:(id)a3 serviceClient:(id)a4 flow:(int64_t)a5
{
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_headphoneDevice) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_flowType) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_hmsClient) = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HearingAssistFlowController();
  v7 = a3;
  v8 = a4;
  return [(HearingAssistFlowController *)&v10 init];
}

- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end