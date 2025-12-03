@interface BaseViewController
- (_TtC12GameCenterUI18BaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BaseViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E1704B4(&selRef_viewDidLoad);
}

- (void)loadView
{
  selfCopy = self;
  sub_24E16FDC4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E17012C(appear);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_24E16F8A4();
}

- (_TtC12GameCenterUI18BaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_24E347CF8();
  }

  bundleCopy = bundle;
  BaseViewController.init(nibName:bundle:)();
}

@end