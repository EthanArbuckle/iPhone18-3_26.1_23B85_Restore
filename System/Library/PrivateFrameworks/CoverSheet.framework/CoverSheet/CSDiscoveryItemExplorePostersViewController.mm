@interface CSDiscoveryItemExplorePostersViewController
- (CSDiscoveryItemExplorePostersViewController)initWithPlatter:(id)platter firstDidAppearCompletion:(id)completion;
- (void)_updateAnimationState;
- (void)setScreenOn:(BOOL)on;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CSDiscoveryItemExplorePostersViewController

- (CSDiscoveryItemExplorePostersViewController)initWithPlatter:(id)platter firstDidAppearCompletion:(id)completion
{
  platterCopy = platter;
  v11.receiver = self;
  v11.super_class = CSDiscoveryItemExplorePostersViewController;
  v8 = [(CSDiscoveryItemViewController *)&v11 initWithPlatterDiscoveryView:platterCopy firstDidAppearCompletion:completion];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_platter, platter);
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemExplorePostersViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidAppear:appear];
  [(CSDiscoveryItemExplorePostersViewController *)self _updateAnimationState];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemExplorePostersViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidDisappear:disappear];
  [(CSDiscoveryItemExplorePostersViewController *)self _updateAnimationState];
}

- (void)_updateAnimationState
{
  if ([(CSDiscoveryItemExplorePostersViewController *)self bs_isAppearingOrAppeared]&& [(CSDiscoveryItemViewController *)self isScreenOn])
  {
    platter = [(CSDiscoveryItemExplorePostersViewController *)self platter];
    [platter resumeAnimations];
  }

  else
  {
    platter = [(CSDiscoveryItemExplorePostersViewController *)self platter];
    [platter pauseAnimations];
  }
}

- (void)setScreenOn:(BOOL)on
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemExplorePostersViewController;
  [(CSDiscoveryItemViewController *)&v4 setScreenOn:on];
  [(CSDiscoveryItemExplorePostersViewController *)self _updateAnimationState];
}

@end