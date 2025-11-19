@interface HUUtilityOnboardingSelectLocationViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingSelectLocationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6 itemTableViewController:(id)a7;
- (id)hu_preloadContent;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUUtilityOnboardingSelectLocationViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20D0B4FD0();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UtilityOnboardingLocationSelection();
  v4 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewWillDisappear:v3];
  if ([v4 isMovingFromParentViewController])
  {
    v5 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6)
    {
      [v6 viewControllerDidGoBack_];
    }
  }
}

- (id)hu_preloadContent
{
  v2 = [objc_opt_self() futureWithNoResult];

  return v2;
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingSelectLocationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6 itemTableViewController:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end