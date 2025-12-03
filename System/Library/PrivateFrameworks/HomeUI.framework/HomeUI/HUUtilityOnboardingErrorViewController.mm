@interface HUUtilityOnboardingErrorViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingErrorViewController)initWithContext:(id)context error:(id)error;
- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)finishOnboarding:(id)onboarding;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingErrorViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (HUUtilityOnboardingErrorViewController)initWithContext:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  return UtilityOnboardingErrorViewController.init(context:error:)(contextCopy, error);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D0D66A0();
}

- (void)finishOnboarding:(id)onboarding
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D0D6EE0();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end