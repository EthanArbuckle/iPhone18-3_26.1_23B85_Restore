@interface HUUtilityOnboardingEnterOTPViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)hu_preloadContent;
- (void)clearButtonTapped:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUUtilityOnboardingEnterOTPViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CF6594C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for UtilityOnboardingEnterOTP();
  v4 = v6.receiver;
  [(HUUtilityOnboardingEnterOTPViewController *)&v6 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField];
  [v5 becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20CF664A4(a3);
}

- (void)clearButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  [*(&v4->super.super.super.super.super.isa + OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField) clearText];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (id)hu_preloadContent
{
  v2 = [objc_opt_self() futureWithNoResult];

  return v2;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_20D567838();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_20CF6AC00(v12, location, length, v9, v11);

  return length & 1;
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end