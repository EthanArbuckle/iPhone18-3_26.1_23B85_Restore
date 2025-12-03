@interface HRClinicalSharingOnboardingInformationalViewController
- (HRClinicalSharingOnboardingInformationalViewController)initWithOnboardingSession:(id)session flowType:(int64_t)type selectedAccount:(id)account delegate:(id)delegate;
- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)nextButtonTappedForProviderSearch:(id)search;
- (void)viewDidLoad;
@end

@implementation HRClinicalSharingOnboardingInformationalViewController

- (HRClinicalSharingOnboardingInformationalViewController)initWithOnboardingSession:(id)session flowType:(int64_t)type selectedAccount:(id)account delegate:(id)delegate
{
  sessionCopy = session;
  accountCopy = account;
  swift_unknownObjectRetain();
  return ClinicalSharingOnboardingInformationalViewController.init(onboardingSession:flowType:selectedAccount:delegate:)(sessionCopy, type, account);
}

- (void)dealloc
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR___HRClinicalSharingOnboardingInformationalViewController_accountStateCancellable))
  {
    selfCopy = self;

    sub_1D138F64C();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ClinicalSharingOnboardingInformationalViewController();
  [(HRClinicalSharingOnboardingInformationalViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D12CBBA4();
}

- (void)nextButtonTappedForProviderSearch:(id)search
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  sub_1D12CD580();

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (void)cancelButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  [(HRClinicalSharingOnboardingInformationalViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HRClinicalSharingOnboardingInformationalViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end