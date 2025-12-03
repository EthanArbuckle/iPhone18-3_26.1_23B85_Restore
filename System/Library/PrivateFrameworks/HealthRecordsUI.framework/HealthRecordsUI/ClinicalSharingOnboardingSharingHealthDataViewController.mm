@interface ClinicalSharingOnboardingSharingHealthDataViewController
- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingOnboardingSharingHealthDataViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController();
  v2 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  buttonTray = [v2 buttonTray];
  v5 = sub_1D12A9280();
  [buttonTray addButton_];

  sub_1D12A97D0();
  sub_1D12AB2A4();
}

- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end