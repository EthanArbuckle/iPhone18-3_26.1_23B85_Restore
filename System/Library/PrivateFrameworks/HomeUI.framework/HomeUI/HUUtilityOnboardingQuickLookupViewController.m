@interface HUUtilityOnboardingQuickLookupViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)hu_preloadContent;
- (void)editAccountDetailsButtonTapped;
- (void)setDelegate:(id)a3;
- (void)verifyAddressAndSubmitTAF;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUUtilityOnboardingQuickLookupViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CFE2038();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UtilityOnboardingQuickLookup();
  v4 = v7.receiver;
  [(HUUtilityOnboardingQuickLookupViewController *)&v7 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_context];
  v6 = [v4 headerView];
  sub_20CEE70AC(v6);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20CFE2B34(a3);
}

- (void)editAccountDetailsButtonTapped
{
  v2 = self;
  sub_20CFE2E6C();
}

- (void)verifyAddressAndSubmitTAF
{
  v2 = self;
  sub_20CFE319C();
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

- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HUUtilityOnboardingQuickLookupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end