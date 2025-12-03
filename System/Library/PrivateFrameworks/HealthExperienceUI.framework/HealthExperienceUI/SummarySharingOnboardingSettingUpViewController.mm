@interface SummarySharingOnboardingSettingUpViewController
- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SummarySharingOnboardingSettingUpViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA2B054C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SummarySharingOnboardingSettingUpViewController();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appearCopy];
  sub_1BA2B09B0();
}

- (void)hxui_cancelButtonTapped
{
  selfCopy = self;
  sub_1BA2B0868();
}

- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end