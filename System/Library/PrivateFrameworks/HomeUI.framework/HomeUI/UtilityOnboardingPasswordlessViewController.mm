@interface UtilityOnboardingPasswordlessViewController
- (Class)onboardingFlowClass;
- (HUConfigurationViewControllerDelegate)delegate;
- (UtilityOnboardingPasswordlessViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (UtilityOnboardingPasswordlessViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UtilityOnboardingPasswordlessViewController

- (HUConfigurationViewControllerDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20D0FE7B0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for UtilityOnboardingPasswordlessViewController();
  v4 = v6.receiver;
  [(UtilityOnboardingPasswordlessViewController *)&v6 viewWillAppear:appearCopy];
  headerView = [v4 headerView];
  sub_20CEE70AC(headerView);
}

- (Class)onboardingFlowClass
{
  sub_20CECF940(0, &qword_27C81E450);

  return swift_getObjCClassFromMetadata();
}

- (UtilityOnboardingPasswordlessViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UtilityOnboardingPasswordlessViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end