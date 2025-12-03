@interface HearingAssistFlowController
- (UINavigationController)flowContainerController;
- (UIViewController)initialViewController;
- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)init;
- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)initWithDevice:(id)device serviceClient:(id)client flow:(int64_t)flow;
- (void)setInitialViewController:(id)controller;
@end

@implementation HearingAssistFlowController

- (UIViewController)initialViewController
{
  selfCopy = self;
  v3 = sub_251FC1A58();

  return v3;
}

- (void)setInitialViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController);
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController) = controller;
  controllerCopy = controller;
}

- (UINavigationController)flowContainerController
{
  type metadata accessor for HearingFlowNavigationController();
  v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x70);
  selfCopy = self;
  v5 = v3();
  v6 = sub_251FE8AA8(selfCopy, v5);

  return v6;
}

- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)initWithDevice:(id)device serviceClient:(id)client flow:(int64_t)flow
{
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController____lazy_storage___initialViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_headphoneDevice) = device;
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_flowType) = flow;
  *(&self->super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI27HearingAssistFlowController_hmsClient) = client;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HearingAssistFlowController();
  deviceCopy = device;
  clientCopy = client;
  return [(HearingAssistFlowController *)&v10 init];
}

- (_TtC21HearingModeSettingsUI27HearingAssistFlowController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end