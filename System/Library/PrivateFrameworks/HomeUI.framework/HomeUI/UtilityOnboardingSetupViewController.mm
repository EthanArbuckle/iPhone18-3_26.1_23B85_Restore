@interface UtilityOnboardingSetupViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)cancelOnboarding;
- (void)continueOnboarding;
- (void)loginWithPassword;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UtilityOnboardingSetupViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D0628CC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20D063AE4(disappear);
}

- (void)cancelOnboarding
{
  selfCopy = self;
  sub_20D063E78();
}

- (void)continueOnboarding
{
  selfCopy = self;
  sub_20D0649B8();
}

- (void)loginWithPassword
{
  selfCopy = self;
  sub_20D06518C();
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v6 = sub_20D06AB18();

  return v6;
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6HomeUI36UtilityOnboardingSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end