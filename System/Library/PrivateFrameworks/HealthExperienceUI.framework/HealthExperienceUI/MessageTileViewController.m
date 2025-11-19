@interface MessageTileViewController
- (_TtC18HealthExperienceUI25MessageTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MessageTileViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MessageTileViewController();
  v2 = v3.receiver;
  [(MessageTileViewController *)&v3 viewDidLoad];
  sub_1BA02BC68();
}

- (_TtC18HealthExperienceUI25MessageTileViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return MessageTileViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end