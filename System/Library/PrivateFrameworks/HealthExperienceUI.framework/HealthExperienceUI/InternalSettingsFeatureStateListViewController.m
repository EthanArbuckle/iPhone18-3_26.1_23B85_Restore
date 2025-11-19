@interface InternalSettingsFeatureStateListViewController
- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation InternalSettingsFeatureStateListViewController

- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return InternalSettingsFeatureStateListViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  InternalSettingsFeatureStateListViewController.viewDidLoad()();
}

@end