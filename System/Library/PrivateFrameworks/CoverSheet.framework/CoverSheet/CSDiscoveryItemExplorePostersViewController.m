@interface CSDiscoveryItemExplorePostersViewController
- (CSDiscoveryItemExplorePostersViewController)initWithPlatter:(id)a3 firstDidAppearCompletion:(id)a4;
- (void)_updateAnimationState;
- (void)setScreenOn:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CSDiscoveryItemExplorePostersViewController

- (CSDiscoveryItemExplorePostersViewController)initWithPlatter:(id)a3 firstDidAppearCompletion:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CSDiscoveryItemExplorePostersViewController;
  v8 = [(CSDiscoveryItemViewController *)&v11 initWithPlatterDiscoveryView:v7 firstDidAppearCompletion:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_platter, a3);
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemExplorePostersViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidAppear:a3];
  [(CSDiscoveryItemExplorePostersViewController *)self _updateAnimationState];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemExplorePostersViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidDisappear:a3];
  [(CSDiscoveryItemExplorePostersViewController *)self _updateAnimationState];
}

- (void)_updateAnimationState
{
  if ([(CSDiscoveryItemExplorePostersViewController *)self bs_isAppearingOrAppeared]&& [(CSDiscoveryItemViewController *)self isScreenOn])
  {
    v3 = [(CSDiscoveryItemExplorePostersViewController *)self platter];
    [v3 resumeAnimations];
  }

  else
  {
    v3 = [(CSDiscoveryItemExplorePostersViewController *)self platter];
    [v3 pauseAnimations];
  }
}

- (void)setScreenOn:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemExplorePostersViewController;
  [(CSDiscoveryItemViewController *)&v4 setScreenOn:a3];
  [(CSDiscoveryItemExplorePostersViewController *)self _updateAnimationState];
}

@end