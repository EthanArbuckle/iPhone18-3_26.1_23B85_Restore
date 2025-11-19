@interface HMHearingTestService
- (UIViewController)hearingTestViewController;
- (_TtC21HearingModeSettingsUI20HMHearingTestService)init;
- (id)hearingTestViewControllerWithEnrollmentViewController:(id)a3;
- (void)didTapImportAudiogramLinkIn:(id)a3 completion:(id)a4;
@end

@implementation HMHearingTestService

- (UIViewController)hearingTestViewController
{
  v2 = [objc_opt_self() makeStandardViewController];

  return v2;
}

- (id)hearingTestViewControllerWithEnrollmentViewController:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x70);
  v5 = a3;
  v6 = self;
  v4(v5);
  v7 = [objc_opt_self() makeStandardViewControllerAudioGramImportFlowProvider_];

  return v7;
}

- (void)didTapImportAudiogramLinkIn:(id)a3 completion:(id)a4
{
  v5 = a3;
  v9 = self;
  v6 = [v5 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = (*((*MEMORY[0x277D85000] & v9->super.isa) + 0x68))();
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