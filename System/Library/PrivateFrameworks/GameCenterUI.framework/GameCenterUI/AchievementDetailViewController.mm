@interface AchievementDetailViewController
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)presentingViewControllerForLockupView:(id)view;
- (void)didTapDone;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)shareButtonPressed;
- (void)showAppStoreProductPage:(id)page;
- (void)updateThePreferredSheetDetents;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AchievementDetailViewController

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_24E30452C(edge);

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E3045C4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E305044(appear, &selRef_viewDidAppear_, sub_24E3063E4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E304F8C(disappear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_24E305044(appearing, &selRef_viewIsAppearing_, sub_24E30510C);
}

- (void)updateThePreferredSheetDetents
{
  selfCopy = self;
  sub_24E30510C();
}

- (void)shareButtonPressed
{
  selfCopy = self;
  sub_24E3054D0();
}

- (void)didTapDone
{
  selfCopy = self;
  sub_24E3058C8();
}

- (id)presentingViewControllerForLockupView:(id)view
{
  v3 = sub_24E306620();

  return v3;
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_24E306670(requestCopy);
}

- (void)showAppStoreProductPage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  sub_24E306920();
}

@end