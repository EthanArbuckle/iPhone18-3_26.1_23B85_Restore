@interface HUUtilityOnboardingErrorViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingErrorViewController)initWithContext:(id)a3 error:(id)a4;
- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)finishOnboarding:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingErrorViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (HUUtilityOnboardingErrorViewController)initWithContext:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  return UtilityOnboardingErrorViewController.init(context:error:)(v5, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D0D66A0();
}

- (void)finishOnboarding:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
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

- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingErrorViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end