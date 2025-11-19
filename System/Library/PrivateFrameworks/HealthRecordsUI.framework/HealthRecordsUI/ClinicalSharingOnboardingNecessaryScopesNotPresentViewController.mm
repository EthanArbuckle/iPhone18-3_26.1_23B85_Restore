@interface ClinicalSharingOnboardingNecessaryScopesNotPresentViewController
- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)abort:(id)a3;
- (void)logInAgain:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingOnboardingNecessaryScopesNotPresentViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D12887BC();
}

- (void)logInAgain:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1D1288A84();

  sub_1D1096BE0(v6);
}

- (void)abort:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [(ClinicalSharingOnboardingNecessaryScopesNotPresentViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_1D1096BE0(&v6);
}

- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end