@interface HMHearingTestService
- (UIViewController)hearingTestViewController;
- (_TtC21HearingModeSettingsUI20HMHearingTestService)init;
- (id)hearingTestViewControllerWithEnrollmentViewController:(id)controller;
- (void)didTapImportAudiogramLinkIn:(id)in completion:(id)completion;
@end

@implementation HMHearingTestService

- (UIViewController)hearingTestViewController
{
  makeStandardViewController = [objc_opt_self() makeStandardViewController];

  return makeStandardViewController;
}

- (id)hearingTestViewControllerWithEnrollmentViewController:(id)controller
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x70);
  controllerCopy = controller;
  selfCopy = self;
  v4(controllerCopy);
  makeStandardViewControllerAudioGramImportFlowProvider_ = [objc_opt_self() makeStandardViewControllerAudioGramImportFlowProvider_];

  return makeStandardViewControllerAudioGramImportFlowProvider_;
}

- (void)didTapImportAudiogramLinkIn:(id)in completion:(id)completion
{
  inCopy = in;
  selfCopy = self;
  navigationController = [inCopy navigationController];
  if (navigationController)
  {
    v7 = navigationController;
    v8 = (*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x68))();
    [v7 pushViewController:v8 animated:1];
  }
}

- (_TtC21HearingModeSettingsUI20HMHearingTestService)init
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI20HMHearingTestService_enrollmentViewController;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for HMHearingTestService();
  return [(HMHearingTestService *)&v5 init];
}

@end