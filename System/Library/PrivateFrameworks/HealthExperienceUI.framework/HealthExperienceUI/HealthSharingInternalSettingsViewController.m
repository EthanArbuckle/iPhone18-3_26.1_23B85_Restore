@interface HealthSharingInternalSettingsViewController
- (_TtC18HealthExperienceUI43HealthSharingInternalSettingsViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI43HealthSharingInternalSettingsViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewDidLoad;
@end

@implementation HealthSharingInternalSettingsViewController

- (_TtC18HealthExperienceUI43HealthSharingInternalSettingsViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for HealthSharingInternalSettingsViewController();
  v2 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 viewDidLoad];
  v3 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v4 = [v3 initWithBarButtonSystemItem:0 target:v2 action:{sel_dismissView, v6.receiver, v6.super_class}];
  v5 = [v2 navigationItem];
  [v5 setRightBarButtonItem_];
}

- (_TtC18HealthExperienceUI43HealthSharingInternalSettingsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end