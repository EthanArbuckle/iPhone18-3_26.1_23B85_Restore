@interface HUUtilityOnboardingTermsViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingTermsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HUUtilityOnboardingTermsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUUtilityOnboardingTermsViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D0F181C();
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingTermsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingTermsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end