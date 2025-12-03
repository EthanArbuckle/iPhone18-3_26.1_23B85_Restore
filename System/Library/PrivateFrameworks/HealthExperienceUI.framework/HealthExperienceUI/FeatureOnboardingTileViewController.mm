@interface FeatureOnboardingTileViewController
- (_TtC18HealthExperienceUI35FeatureOnboardingTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation FeatureOnboardingTileViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA233988();
}

- (_TtC18HealthExperienceUI35FeatureOnboardingTileViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return FeatureOnboardingTileViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end