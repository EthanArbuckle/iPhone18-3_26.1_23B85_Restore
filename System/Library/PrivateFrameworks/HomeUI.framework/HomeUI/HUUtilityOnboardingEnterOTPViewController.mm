@interface HUUtilityOnboardingEnterOTPViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)hu_preloadContent;
- (void)clearButtonTapped:(id)tapped;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUUtilityOnboardingEnterOTPViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CF6594C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for UtilityOnboardingEnterOTP();
  v4 = v6.receiver;
  [(HUUtilityOnboardingEnterOTPViewController *)&v6 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField];
  [v5 becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20CF664A4(disappear);
}

- (void)clearButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_codeTextField) clearText];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (id)hu_preloadContent
{
  futureWithNoResult = [objc_opt_self() futureWithNoResult];

  return futureWithNoResult;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_20D567838();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_20CF6AC00(fieldCopy, location, length, v9, v11);

  return length & 1;
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingEnterOTPViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end