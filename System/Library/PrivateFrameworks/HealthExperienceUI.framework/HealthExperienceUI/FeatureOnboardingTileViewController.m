@interface FeatureOnboardingTileViewController
- (_TtC18HealthExperienceUI35FeatureOnboardingTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation FeatureOnboardingTileViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA233988();
}

- (_TtC18HealthExperienceUI35FeatureOnboardingTileViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return FeatureOnboardingTileViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end