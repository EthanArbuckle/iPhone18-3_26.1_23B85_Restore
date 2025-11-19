@interface BaseViewController
- (_TtC12GameCenterUI18BaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BaseViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24E1704B4(&selRef_viewDidLoad);
}

- (void)loadView
{
  v2 = self;
  sub_24E16FDC4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24E17012C(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E16F8A4();
}

- (_TtC12GameCenterUI18BaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
  }

  v5 = a4;
  BaseViewController.init(nibName:bundle:)();
}

@end