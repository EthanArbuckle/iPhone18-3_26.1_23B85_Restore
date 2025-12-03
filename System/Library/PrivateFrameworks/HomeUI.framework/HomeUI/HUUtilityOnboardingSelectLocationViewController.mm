@interface HUUtilityOnboardingSelectLocationViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingSelectLocationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout itemTableViewController:(id)controller;
- (id)hu_preloadContent;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUUtilityOnboardingSelectLocationViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D0B4FD0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UtilityOnboardingLocationSelection();
  v4 = v7.receiver;
  [(OBBaseWelcomeController *)&v7 viewWillDisappear:disappearCopy];
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
  futureWithNoResult = [objc_opt_self() futureWithNoResult];

  return futureWithNoResult;
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (HUUtilityOnboardingSelectLocationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout itemTableViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end