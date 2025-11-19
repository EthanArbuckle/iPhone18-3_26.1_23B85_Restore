@interface SummarySharingOnboardingSettingUpViewController
- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)hxui_cancelButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SummarySharingOnboardingSettingUpViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA2B054C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SummarySharingOnboardingSettingUpViewController();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:v3];
  sub_1BA2B09B0();
}

- (void)hxui_cancelButtonTapped
{
  v2 = self;
  sub_1BA2B0868();
}

- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end