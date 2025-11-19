@interface BaseCollectionViewController
- (UICollectionView)collectionView;
- (_TtC12GameCenterUI28BaseCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BaseCollectionViewController

- (_TtC12GameCenterUI28BaseCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return BaseCollectionViewController.init(nibName:bundle:)(a4, v6, a4);
}

- (UICollectionView)collectionView
{
  v2 = self;
  v3 = sub_24DFFED5C();

  return v3;
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24DFFEE00(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E000204(&selRef_viewDidLoad);
}

- (void)loadView
{
  v2 = self;
  sub_24DFFF564();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24DFFF878(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24DFFFAD0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_24DFFFB80();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_24DFFFD90(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E000070();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFFE8A4();
}

- (id)presentingViewControllerForLockupView:(id)a3
{
  v3 = BaseCollectionViewController.presentingViewController(for:)();

  return v3;
}

@end