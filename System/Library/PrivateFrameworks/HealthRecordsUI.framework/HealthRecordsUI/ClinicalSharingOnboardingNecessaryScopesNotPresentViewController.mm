@interface ClinicalSharingOnboardingNecessaryScopesNotPresentViewController
- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)abort:(id)abort;
- (void)logInAgain:(id)again;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingOnboardingNecessaryScopesNotPresentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D12887BC();
}

- (void)logInAgain:(id)again
{
  if (again)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1D1288A84();

  sub_1D1096BE0(v6);
}

- (void)abort:(id)abort
{
  if (abort)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(ClinicalSharingOnboardingNecessaryScopesNotPresentViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_1D1096BE0(&v6);
}

- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end