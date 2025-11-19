@interface AchievementDetailViewController
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)didTapDone;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)shareButtonPressed;
- (void)showAppStoreProductPage:(id)a3;
- (void)updateThePreferredSheetDetents;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AchievementDetailViewController

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_24E30452C(a3);

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E3045C4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E305044(a3, &selRef_viewDidAppear_, sub_24E3063E4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E304F8C(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_24E305044(a3, &selRef_viewIsAppearing_, sub_24E30510C);
}

- (void)updateThePreferredSheetDetents
{
  v2 = self;
  sub_24E30510C();
}

- (void)shareButtonPressed
{
  v2 = self;
  sub_24E3054D0();
}

- (void)didTapDone
{
  v2 = self;
  sub_24E3058C8();
}

- (id)presentingViewControllerForLockupView:(id)a3
{
  v3 = sub_24E306620();

  return v3;
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E306670(v4);
}

- (void)showAppStoreProductPage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E306920();
}

@end