@interface HRClinicalSharingOnboardingInformationalViewController
- (HRClinicalSharingOnboardingInformationalViewController)initWithOnboardingSession:(id)a3 flowType:(int64_t)a4 selectedAccount:(id)a5 delegate:(id)a6;
- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)nextButtonTappedForProviderSearch:(id)a3;
- (void)viewDidLoad;
@end

@implementation HRClinicalSharingOnboardingInformationalViewController

- (HRClinicalSharingOnboardingInformationalViewController)initWithOnboardingSession:(id)a3 flowType:(int64_t)a4 selectedAccount:(id)a5 delegate:(id)a6
{
  v8 = a3;
  v9 = a5;
  swift_unknownObjectRetain();
  return ClinicalSharingOnboardingInformationalViewController.init(onboardingSession:flowType:selectedAccount:delegate:)(v8, a4, a5);
}

- (void)dealloc
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_accountStateCancellable))
  {
    v3 = self;

    sub_1D138F64C();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ClinicalSharingOnboardingInformationalViewController();
  [(HRClinicalSharingOnboardingInformationalViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D12CBBA4();
}

- (void)nextButtonTappedForProviderSearch:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  sub_1D12CD580();

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (void)cancelButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  [(HRClinicalSharingOnboardingInformationalViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end