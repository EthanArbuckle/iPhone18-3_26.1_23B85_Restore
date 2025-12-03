@interface HUUtilityOnboardingQuickLookupViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)hu_preloadContent;
- (void)editAccountDetailsButtonTapped;
- (void)setDelegate:(id)delegate;
- (void)verifyAddressAndSubmitTAF;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUUtilityOnboardingQuickLookupViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CFE2038();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UtilityOnboardingQuickLookup();
  v4 = v7.receiver;
  [(HUUtilityOnboardingQuickLookupViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_context];
  headerView = [v4 headerView];
  sub_20CEE70AC(headerView);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20CFE2B34(disappear);
}

- (void)editAccountDetailsButtonTapped
{
  selfCopy = self;
  sub_20CFE2E6C();
}

- (void)verifyAddressAndSubmitTAF
{
  selfCopy = self;
  sub_20CFE319C();
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

- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end