@interface InternalSettingsFeatureStateListViewController
- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation InternalSettingsFeatureStateListViewController

- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return InternalSettingsFeatureStateListViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC18HealthExperienceUI46InternalSettingsFeatureStateListViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  InternalSettingsFeatureStateListViewController.viewDidLoad()();
}

@end