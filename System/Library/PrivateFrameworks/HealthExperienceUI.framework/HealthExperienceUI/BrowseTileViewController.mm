@interface BrowseTileViewController
- (_TtC18HealthExperienceUI24BrowseTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BrowseTileViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA1C778C();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BrowseTileViewController();
  v2 = v3.receiver;
  [(BrowseTileViewController *)&v3 viewDidLayoutSubviews];
  sub_1BA1C7B8C();
}

- (_TtC18HealthExperienceUI24BrowseTileViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return BrowseTileViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end