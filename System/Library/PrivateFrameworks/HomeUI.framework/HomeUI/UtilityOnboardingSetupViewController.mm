@interface UtilityOnboardingSetupViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)cancelOnboarding;
- (void)continueOnboarding;
- (void)loginWithPassword;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UtilityOnboardingSetupViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D0628CC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20D063AE4(a3);
}

- (void)cancelOnboarding
{
  v2 = self;
  sub_20D063E78();
}

- (void)continueOnboarding
{
  v2 = self;
  sub_20D0649B8();
}

- (void)loginWithPassword
{
  v2 = self;
  sub_20D06518C();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D06AB18();

  return v6;
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end