@interface ClinicalSharingOnboardingSharingHealthDataViewController
- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingOnboardingSharingHealthDataViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController();
  v2 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  v3 = [v2 navigationItem];
  [v3 setHidesBackButton:1 animated:0];

  v4 = [v2 buttonTray];
  v5 = sub_1D12A9280();
  [v4 addButton_];

  sub_1D12A97D0();
  sub_1D12AB2A4();
}

- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end