@interface SFStartPageViewController
- (BOOL)_isPrivateBrowsingEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isShowingRootView;
- (BOOL)isTrackingDropSession;
- (BOOL)showsWallpaper;
- (BOOL)startPageCollectionViewController:(id)controller isSectionExpanded:(id)expanded;
- (BOOL)startPageCollectionViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)in;
- (BOOL)startPageCollectionViewControllerShouldInstallCustomBackdrops:(id)backdrops;
- (SFStartPageCustomizationDataSource)customizationDataSource;
- (SFStartPageDataSource)dataSource;
- (SFStartPageDelegate)delegate;
- (SFStartPageScrollObserver)scrollObserver;
- (SFStartPageViewController)init;
- (SFStartPageViewController)initWithVisualStyleProvider:(id)provider forProfile:(id)profile;
- (double)navigationBarHeight;
- (double)navigationBarPrimaryContentHeight;
- (double)scrollDistance;
- (double)startPageCollectionViewControllerTopPadding:(id)padding;
- (id)_defaultProfile;
- (id)_effectiveProfileForBackgroundImage;
- (id)_wallpaperImageIdentifier;
- (id)effectiveControlTintColor;
- (id)previewViewControllerForItemIdentifier:(id)identifier;
- (id)scrollViewForStartPageCollectionViewsOnly:(BOOL)only;
- (id)sectionsForStartPageCollectionViewController:(id)controller;
- (id)topStartPageCollectionViewController;
- (int64_t)customizationControlPolicyForStartPageCollectionViewController:(id)controller;
- (int64_t)preferredStatusBarStyle;
- (void)_backgroundImageDidToggle;
- (void)_createSearchControllerIfNeeded;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_reloadCustomizationViewController;
- (void)_setLeadingBarItems:(BOOL)items trailingBarItems:(BOOL)barItems onNavigationItem:(id)item forSection:(id)section;
- (void)_updateOverrideTraitCollectionWithUserInterfaceStyle:(int64_t)style;
- (void)_updateSearchBarAppearance;
- (void)_updateWallpaperIfNeededWithCompletionHandler:(id)handler;
- (void)_wallpaperDidChange:(id)change;
- (void)_wallpaperDidChangeRemotely;
- (void)beginCustomizationForStartPageCollectionViewController:(id)controller;
- (void)beginExtensionsOnboardingForStartPageCollectionViewController:(id)controller;
- (void)cancelGestures;
- (void)coalesceDataReloadWithBlock:(id)block animatingDifferences:(BOOL)differences;
- (void)configureModelWithIdentifier:(id)identifier usingBlock:(id)block;
- (void)configurePaletteForNavigationItem:(id)item;
- (void)dealloc;
- (void)ignorePreviousLayoutSize;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentViewController:(id)controller fromItemWithIdentifier:(id)identifier;
- (void)reloadDataAnimatingDifferences:(BOOL)differences;
- (void)reloadNavigationItemAnimated:(BOOL)animated;
- (void)reloadSection:(id)section animated:(BOOL)animated;
- (void)resetToRootViewWithCustomizationPolicy:(int64_t)policy;
- (void)setAlternateContentViewController:(id)controller;
- (void)setBackgroundDisplayMode:(int64_t)mode;
- (void)setCustomizationPolicy:(int64_t)policy;
- (void)setDataSource:(id)source;
- (void)setNavigationBarPaletteHeight:(double)height alignmentInsets:(UIEdgeInsets)insets;
- (void)setNavigationBarPosition:(int64_t)position;
- (void)setPreferredControlTintColor:(id)color;
- (void)setTopScrollEdgeEffectColor:(id)color;
- (void)setTopScrollEdgeEffectStyle:(id)style;
- (void)showDetailForItemWithIdentifier:(id)identifier;
- (void)startPageCollectionViewController:(id)controller didSelectItemWithIdentifier:(id)identifier atGridLocation:(id)location;
- (void)startPageCollectionViewController:(id)controller shouldExpandSectionWithIdentifier:(id)identifier;
- (void)startPageCollectionViewController:(id)controller toggleSectionExpanded:(id)expanded;
- (void)startPageCollectionViewControllerDidChangeBackgroundStyle:(id)style;
- (void)startPageCollectionViewControllerDidCompleteDismissGesture:(id)gesture;
- (void)startPageCollectionViewControllerDidScroll:(id)scroll;
- (void)startPageCollectionViewControllerDidUpdateContent:(id)content;
- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)bar;
- (void)unfocusGestureDidUpdate:(id)update;
- (void)updateNavigationBarTintColor;
- (void)updateNavigationBarTitleInsets;
- (void)updateOverrideTraitCollection;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
@end

@implementation SFStartPageViewController

- (void)viewDidLoad
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v16 viewDidLoad];
  [(SFStartPageViewController *)self addChildViewController:self->_navigationController];
  view = [(UINavigationController *)self->_navigationController view];
  [view setAutoresizingMask:18];
  view2 = [(SFStartPageViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(SFStartPageViewController *)self view];
  [view3 addSubview:view];

  [(UINavigationController *)self->_navigationController didMoveToParentViewController:self];
  v18[0] = self->_rootCollectionViewController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(UINavigationController *)self->_navigationController setViewControllers:v6];

  [(SFStartPageViewController *)self navigationController:self->_navigationController willShowViewController:self->_rootCollectionViewController animated:0];
  [(SFStartPageViewController *)self _wallpaperDidChange:0];
  navigationBar = [(UINavigationController *)self->_navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  if (objc_opt_respondsToSelector())
  {
    [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider prepareNavigationController:self->_navigationController forStartPageViewController:self];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_unfocusGestureDidUpdate_];
  unfocusGesture = self->_unfocusGesture;
  self->_unfocusGesture = v8;

  [(UIPanGestureRecognizer *)self->_unfocusGesture setDelegate:self];
  view4 = [(SFStartPageViewController *)self view];
  [view4 addGestureRecognizer:self->_unfocusGesture];

  if ([(SFStartPageViewController *)self startPageCollectionViewControllerShouldInstallCustomBackdrops:self->_rootCollectionViewController])
  {
    safari_statusBarGradientBlurEffectView = [MEMORY[0x1E69DD298] safari_statusBarGradientBlurEffectView];
    statusBarBackdrop = self->_statusBarBackdrop;
    self->_statusBarBackdrop = safari_statusBarGradientBlurEffectView;

    [(UIVisualEffectView *)self->_statusBarBackdrop setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:0.0];
    view5 = [(SFStartPageViewController *)self view];
    [view5 addSubview:self->_statusBarBackdrop];
  }

  v17 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v15 = [(SFStartPageViewController *)self registerForTraitChanges:v14 withTarget:self action:sel_updateOverrideTraitCollection];
}

- (BOOL)showsWallpaper
{
  topStartPageCollectionViewController = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  wantsWallpaperHiddenForCurrentBackgroundStyle = [topStartPageCollectionViewController wantsWallpaperHiddenForCurrentBackgroundStyle];
  result = (wantsWallpaperHiddenForCurrentBackgroundStyle & 1) == 0 && (wallpaperManager = self->_wallpaperManager, [(SFStartPageViewController *)self _wallpaperImageIdentifier], v6 = ;
  return result;
}

- (id)topStartPageCollectionViewController
{
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = topViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_wallpaperImageIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained backgroundImageIdentifierForStartPageViewController:self];
  }

  else
  {
    v4 = &stru_1EFF36230;
  }

  return v4;
}

- (id)_effectiveProfileForBackgroundImage
{
  if ([(SFStartPageViewController *)self _isPrivateBrowsingEnabled])
  {
    _defaultProfile = [(SFStartPageViewController *)self _defaultProfile];
    if (_defaultProfile)
    {
      _defaultProfile2 = [(SFStartPageViewController *)self _defaultProfile];
    }

    else
    {
      _defaultProfile2 = self->_profile;
    }

    v5 = _defaultProfile2;
  }

  else
  {
    v5 = self->_profile;
  }

  return v5;
}

- (BOOL)_isPrivateBrowsingEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained startPageViewControllerIsPrivateBrowsingEnabled:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateNavigationBarTintColor
{
  v20[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(UINavigationController *)self->_navigationController traitCollection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke;
  v18[3] = &unk_1E721D5B8;
  v18[4] = self;
  navigationBar = [(UINavigationController *)self->_navigationController navigationBar];
  v5 = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke(v18);
  [navigationBar setTintColor:v5];

  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  navigationItem = [topViewController navigationItem];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke_2;
  v14[3] = &unk_1E721D5E0;
  v8 = navigationItem;
  v15 = v8;
  selfCopy = self;
  v9 = traitCollection;
  v17 = v9;
  v10 = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke_2(v14);
  v11 = v10;
  if (v10)
  {
    v19 = *MEMORY[0x1E69DB650];
    v20[0] = v10;
    standardAppearance2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    standardAppearance = [v8 standardAppearance];
    [standardAppearance setTitleTextAttributes:standardAppearance2];
  }

  else
  {
    standardAppearance2 = [v8 standardAppearance];
    [standardAppearance2 setTitleTextAttributes:MEMORY[0x1E695E0F8]];
  }
}

id __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[156])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 effectiveControlTintColor];
    if (v3)
    {
      v4 = [*(*(a1 + 32) + 1056) traitCollection];
      if ([v4 sf_alternateUserInterfaceStyle])
      {
        [*(a1 + 32) scrollDistance];
        v6 = SFChromeVisibilityForScrollDistance(v5);
        v7 = [v4 sf_traitCollectionWithAlternateUserInterfaceColorAsPrimary];
        v8 = [v3 resolvedColorWithTraitCollection:v7];

        v9 = SFInterpolateColor(v8, v3, v6);

        v3 = v9;
      }
    }
  }

  return v3;
}

- (id)effectiveControlTintColor
{
  preferredControlTintColor = self->_preferredControlTintColor;
  if (preferredControlTintColor)
  {
    v3 = preferredControlTintColor;
  }

  else
  {
    image = [(UIImageView *)self->_wallpaperView image];
    if (image)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      labelColor = self->_preferredControlTintColor;
    }

    v3 = labelColor;
  }

  return v3;
}

id __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke_2(id *a1)
{
  v2 = [a1[4] title];
  if ([v2 length])
  {
    v3 = *(a1[5] + 156);

    if (v3 || ![a1[6] sf_alternateUserInterfaceStyle])
    {
      v4 = 0;
      goto LABEL_8;
    }

    [a1[5] scrollDistance];
    v6 = SFChromeVisibilityForScrollDistance(v5);
    v2 = [MEMORY[0x1E69DC888] labelColor];
    v7 = [a1[6] sf_traitCollectionWithAlternateUserInterfaceColorAsPrimary];
    v8 = [v2 resolvedColorWithTraitCollection:v7];

    v4 = SFInterpolateColor(v8, v2, v6);
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (BOOL)isShowingRootView
{
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  if (topViewController)
  {
    topViewController2 = [(UINavigationController *)self->_navigationController topViewController];
    v5 = topViewController2 == self->_rootCollectionViewController;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v26 viewWillLayoutSubviews];
  view = [(SFStartPageViewController *)self view];
  [view layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
  v13 = [viewControllers countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v13)
  {
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(viewControllers);
        }

        viewIfLoaded = [*(*(&v22 + 1) + 8 * v15) viewIfLoaded];
        [viewIfLoaded setLayoutMargins:{v5, v7, v9, v11}];

        ++v15;
      }

      while (v13 != v15);
      v13 = [viewControllers countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v13);
  }

  if (self->_statusBarBackdrop)
  {
    view2 = [(UINavigationController *)self->_navigationController view];
    [view2 safeAreaInsets];
    v19 = v18;

    view3 = [(SFStartPageViewController *)self view];
    [view3 bounds];
    Width = CGRectGetWidth(v29);

    [(UIVisualEffectView *)self->_statusBarBackdrop setFrame:0.0, 0.0, Width, v19];
    if ([(UINavigationController *)self->_navigationController isNavigationBarHidden])
    {
      [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:0.0];
    }
  }
}

- (int64_t)preferredStatusBarStyle
{
  if (!self->_wallpaperView || self->_alternateContentViewController)
  {
    return 0;
  }

  traitCollection = [(UINavigationController *)self->_navigationController traitCollection];
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  rootCollectionViewController = self->_rootCollectionViewController;
  v7 = 8.0;
  if (topViewController != rootCollectionViewController)
  {
    goto LABEL_7;
  }

  navigationItem = [(SFStartPageCollectionViewController *)rootCollectionViewController navigationItem];
  sf_isEmpty = [navigationItem sf_isEmpty];

  if (sf_isEmpty)
  {
    topViewController = [(UINavigationController *)self->_navigationController navigationBar];
    [(SFStartPageCollectionViewController *)topViewController bounds];
    v7 = CGRectGetHeight(v13) + 8.0;
LABEL_7:
  }

  [(SFStartPageViewController *)self scrollDistance];
  if (v10 <= v7)
  {
    sf_alternateUserInterfaceStyle = [traitCollection sf_alternateUserInterfaceStyle];
  }

  else
  {
    sf_alternateUserInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  v3 = SFContrastingStatusBarStyleForInterfaceStyle(sf_alternateUserInterfaceStyle);

  return v3;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(SFStartPageViewController *)self updateNavigationBarTitleInsets];
}

- (void)updateNavigationBarTitleInsets
{
  view = [(SFStartPageViewController *)self view];
  [view safeAreaInsets];
  v4 = v3;
  v6 = v5;
  [view directionalLayoutMargins];
  v8 = v7;
  v10 = v9;
  _sf_usesLeftToRightLayout = [view _sf_usesLeftToRightLayout];
  navigationItem = [(SFStartPageCollectionViewController *)self->_rootCollectionViewController navigationItem];
  v13 = navigationItem;
  if (_sf_usesLeftToRightLayout)
  {
    v14 = v6;
  }

  else
  {
    v14 = v4;
  }

  v15 = v10 + v14;
  if (_sf_usesLeftToRightLayout)
  {
    v16 = v4;
  }

  else
  {
    v16 = v6;
  }

  [navigationItem setLargeTitleInsets:{0.0, v8 + v16, 0.0, v15}];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v3 viewLayoutMarginsDidChange];
  [(SFStartPageViewController *)self updateNavigationBarTitleInsets];
}

- (void)updateOverrideTraitCollection
{
  if (self->_alternateContentViewController || ![(SFStartPageViewController *)self showsWallpaper])
  {
    v5 = 0;
  }

  else
  {
    wallpaperManager = self->_wallpaperManager;
    _wallpaperImageIdentifier = [(SFStartPageViewController *)self _wallpaperImageIdentifier];
    v5 = [(WBSStartPageBackgroundManager *)wallpaperManager appearanceForImageWithIdentifier:_wallpaperImageIdentifier forProfile:self->_profile];
  }

  [(SFStartPageViewController *)self _updateOverrideTraitCollectionWithUserInterfaceStyle:v5];
  [(SFStartPageViewController *)self updateNavigationBarTintColor];

  [(SFStartPageViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_reloadCustomizationViewController
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_dataSourceObservers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 reloadDataAnimatingDifferences:{1, v7}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_updateSearchBarAppearance
{
  if (self->_searchController)
  {
    showsWallpaper = [(SFStartPageViewController *)self showsWallpaper];
    searchBar = [(UISearchController *)self->_searchController searchBar];
    searchTextField = [searchBar searchTextField];

    superview = [(UIVisualEffectView *)self->_searchFieldBackgroundView superview];

    if (superview)
    {
      v6 = 0;
    }

    else
    {
      v6 = showsWallpaper;
    }

    if (v6)
    {
      [searchTextField insertSubview:self->_searchFieldBackgroundView atIndex:0];
    }

    else
    {
      if (superview)
      {
        v7 = showsWallpaper;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        [(UIVisualEffectView *)self->_searchFieldBackgroundView removeFromSuperview];
      }
    }
  }
}

- (BOOL)isTrackingDropSession
{
  topStartPageCollectionViewController = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  isTrackingDropSession = [topStartPageCollectionViewController isTrackingDropSession];

  return isTrackingDropSession;
}

- (SFStartPageViewController)init
{
  v3 = +[SFDefaultStartPageVisualStyleProvider sharedProvider];
  v4 = [(SFStartPageViewController *)self initWithVisualStyleProvider:v3 forProfile:0];

  return v4;
}

- (SFStartPageViewController)initWithVisualStyleProvider:(id)provider forProfile:(id)profile
{
  providerCopy = provider;
  profileCopy = profile;
  v35.receiver = self;
  v35.super_class = SFStartPageViewController;
  v9 = [(SFStartPageViewController *)&v35 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_visualStyleProvider, provider);
    v10->_customizationPolicy = 0;
    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    navigationController = v10->_navigationController;
    v10->_navigationController = v11;

    [(UINavigationController *)v10->_navigationController _setClipUnderlapWhileTransitioning:1];
    [(UINavigationController *)v10->_navigationController setDelegate:v10];
    v13 = [[SFStartPageCollectionViewController alloc] initWithVisualStyleProvider:providerCopy];
    rootCollectionViewController = v10->_rootCollectionViewController;
    v10->_rootCollectionViewController = v13;

    [(SFStartPageCollectionViewController *)v10->_rootCollectionViewController setDataSource:v10];
    [(SFStartPageCollectionViewController *)v10->_rootCollectionViewController setDelegate:v10];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    dataSourceObservers = v10->_dataSourceObservers;
    v10->_dataSourceObservers = weakObjectsHashTable;

    [(NSHashTable *)v10->_dataSourceObservers addObject:v10->_rootCollectionViewController];
    defaultManager = [MEMORY[0x1E69C9850] defaultManager];
    wallpaperManager = v10->_wallpaperManager;
    v10->_wallpaperManager = defaultManager;

    objc_storeStrong(&v10->_profile, profile);
    automaticStyle = [MEMORY[0x1E69DCED8] automaticStyle];
    topScrollEdgeEffectStyle = v10->_topScrollEdgeEffectStyle;
    v10->_topScrollEdgeEffectStyle = automaticStyle;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__wallpaperDidChange_ name:*MEMORY[0x1E69C99F0] object:0];
    v22 = *MEMORY[0x1E69C99E0];
    [defaultCenter addObserver:v10 selector:sel__wallpaperDidChange_ name:*MEMORY[0x1E69C99E0] object:0];
    [defaultCenter addObserver:v10 selector:sel__wallpaperDidChangeRemotely name:*MEMORY[0x1E69C99F8] object:0];
    [defaultCenter addObserver:v10 selector:sel__wallpaperWasDeletedRemotely name:*MEMORY[0x1E69C99E8] object:0];
    [defaultCenter addObserver:v10 selector:sel__backgroundImageDidToggle name:*MEMORY[0x1E69C9958] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, _settingsBundleUpdatedWallpaper, v22, 0, 1028);
    objc_initWeak(&location, v10);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = *MEMORY[0x1E69C9650];
    v26 = MEMORY[0x1E69E96A0];
    v27 = MEMORY[0x1E69E96A0];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __68__SFStartPageViewController_initWithVisualStyleProvider_forProfile___block_invoke;
    v32[3] = &unk_1E721D168;
    objc_copyWeak(&v33, &location);
    v28 = [standardUserDefaults safari_observeValueForKey:v25 onQueue:v26 notifyForInitialValue:0 handler:v32];
    wallpaperDefaultsObservation = v10->_wallpaperDefaultsObservation;
    v10->_wallpaperDefaultsObservation = v28;

    v30 = v10;
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __68__SFStartPageViewController_initWithVisualStyleProvider_forProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateWallpaperIfNeededWithCompletionHandler:0];
    v1 = [MEMORY[0x1E696AD88] defaultCenter];
    [v1 postNotificationName:*MEMORY[0x1E69C99F0] object:WeakRetained];

    [WeakRetained _reloadCustomizationViewController];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v5 viewDidAppear:appear];
  [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidAppear:self];
  }
}

- (void)setCustomizationPolicy:(int64_t)policy
{
  if (self->_customizationPolicy != policy)
  {
    self->_customizationPolicy = policy;
    [(SFStartPageViewController *)self reloadDataAnimatingDifferences:0];
  }
}

- (double)scrollDistance
{
  v2 = [(SFStartPageViewController *)self scrollViewForStartPageCollectionViewsOnly:1];
  [v2 contentOffset];
  v4 = v3;
  [v2 adjustedContentInset];
  v6 = v4 + v5;

  return v6;
}

- (id)scrollViewForStartPageCollectionViewsOnly:(BOOL)only
{
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    scrollView = [topViewController scrollView];
  }

  else if (only)
  {
    scrollView = 0;
  }

  else
  {
    viewIfLoaded = [topViewController viewIfLoaded];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = viewIfLoaded;
    }

    else
    {
      v7 = 0;
    }

    scrollView = v7;
  }

  return scrollView;
}

- (void)setDataSource:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != sourceCopy)
  {
    objc_storeWeak(&self->_dataSource, sourceCopy);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_dataSourceObservers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * v9++) reloadDataAnimatingDifferences:{0, v10}];
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)configureModelWithIdentifier:(id)identifier usingBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  if (self->_alternateContentViewController)
  {
    viewControllers = self->_originalNavigationStack;
  }

  else
  {
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = viewControllers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          [v14 configureModelWithIdentifier:identifierCopy usingBlock:{blockCopy, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)ignorePreviousLayoutSize
{
  topStartPageCollectionViewController = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  [topStartPageCollectionViewController ignorePreviousLayoutSize];
}

- (void)reloadNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dataSourceObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) reloadNavigationItemAnimated:{animatedCopy, v11}];
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  alternateContentViewController = self->_alternateContentViewController;
  if (alternateContentViewController)
  {
    navigationItem = [(UIViewController *)alternateContentViewController navigationItem];
    [(SFStartPageViewController *)self _setLeadingBarItems:1 trailingBarItems:1 onNavigationItem:navigationItem forSection:0];
  }
}

- (void)reloadDataAnimatingDifferences:(BOOL)differences
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_coalescingDataReload)
  {
    self->_needsDataReloadAfterBatchUpdate = 1;
  }

  else
  {
    differencesCopy = differences;
    self->_needsDataReloadAfterBatchUpdate = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_dataSourceObservers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) reloadDataAnimatingDifferences:{differencesCopy, v8}];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)coalesceDataReloadWithBlock:(id)block animatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  blockCopy = block;
  self->_coalescingDataReload = 1;
  v7 = blockCopy;
  blockCopy[2]();
  self->_coalescingDataReload = 0;
  if (self->_needsDataReloadAfterBatchUpdate)
  {
    [(SFStartPageViewController *)self reloadDataAnimatingDifferences:differencesCopy];
  }
}

- (void)reloadSection:(id)section animated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_dataSourceObservers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 reloadSection:sectionCopy animated:animatedCopy];
        }

        else
        {
          [v11 reloadDataAnimatingDifferences:{animatedCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)cancelGestures
{
  topStartPageCollectionViewController = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  [topStartPageCollectionViewController cancelGestures];
}

- (void)resetToRootViewWithCustomizationPolicy:(int64_t)policy
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__SFStartPageViewController_resetToRootViewWithCustomizationPolicy___block_invoke;
  v3[3] = &unk_1E721D540;
  v3[4] = self;
  v3[5] = policy;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

void __68__SFStartPageViewController_resetToRootViewWithCustomizationPolicy___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1056) popToRootViewControllerAnimated:0];
  *(*(a1 + 32) + 1176) = *(a1 + 40);
  [*(a1 + 32) updateStartPageTopPadding];
  [*(a1 + 32) reloadDataAnimatingDifferences:0];
  [*(a1 + 32) reloadNavigationItemAnimated:0];
  v3 = [*(a1 + 32) topStartPageCollectionViewController];
  [v3 scrollToTop];
}

- (void)showDetailForItemWithIdentifier:(id)identifier
{
  v4 = [(SFStartPageViewController *)self previewViewControllerForItemIdentifier:identifier];
  [UINavigationController pushViewController:"pushViewController:animated:" animated:?];
}

- (void)presentViewController:(id)controller fromItemWithIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  [topViewController presentViewController:controllerCopy fromItemWithIdentifier:identifierCopy];
}

- (double)navigationBarHeight
{
  navigationBar = [(UINavigationController *)self->_navigationController navigationBar];
  [navigationBar bounds];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (double)navigationBarPrimaryContentHeight
{
  v3 = _SFRoundFloatToPixels(self->_navigationBarPaletteHeight + self->_navigationBarPaletteInsets.bottom);
  [(SFStartPageViewController *)self navigationBarHeight];
  return v4 - v3;
}

- (void)setNavigationBarPaletteHeight:(double)height alignmentInsets:(UIEdgeInsets)insets
{
  v18 = *MEMORY[0x1E69E9840];
  if (height == 0.0)
  {
    insets = **&MEMORY[0x1E69DDCE0];
  }

  if (self->_navigationBarPaletteHeight != height || (self->_navigationBarPaletteInsets.left == insets.left ? (v5 = self->_navigationBarPaletteInsets.top == insets.top) : (v5 = 0), v5 ? (v6 = self->_navigationBarPaletteInsets.right == insets.right) : (v6 = 0), v6 ? (v7 = self->_navigationBarPaletteInsets.bottom == insets.bottom) : (v7 = 0), !v7))
  {
    self->_navigationBarPaletteInsets = insets;
    self->_navigationBarPaletteHeight = height;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    v9 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(viewControllers);
          }

          navigationItem = [*(*(&v13 + 1) + 8 * i) navigationItem];
          [(SFStartPageViewController *)self configurePaletteForNavigationItem:navigationItem];
        }

        v9 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)configurePaletteForNavigationItem:(id)item
{
  itemCopy = item;
  navigationBarPaletteHeight = self->_navigationBarPaletteHeight;
  top = self->_navigationBarPaletteInsets.top;
  bottom = self->_navigationBarPaletteInsets.bottom;
  v16 = itemCopy;
  _bottomPalette = [itemCopy _bottomPalette];
  v9 = _bottomPalette;
  v10 = navigationBarPaletteHeight + top + bottom;
  if (v10 != 0.0 && _bottomPalette == 0)
  {
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v14 setFrame:{0.0, 0.0, 0.0, v10}];
    v15 = [objc_alloc(MEMORY[0x1E69DD5E0]) initWithContentView:v14];
    [v16 _setBottomPalette:v15];
  }

  else if (v10 == 0.0)
  {
    [v16 _setBottomPalette:0];
  }

  else
  {
    contentView = [_bottomPalette contentView];
    [contentView setFrame:{0.0, 0.0, 0.0, v10}];

    [v16 _setBottomPaletteNeedsUpdate];
  }
}

- (void)setNavigationBarPosition:(int64_t)position
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(SFStartPageViewController *)self navigationBarPosition]!= position)
  {
    [(UINavigationController *)self->_navigationController _setPreferredNavigationBarPosition:position];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(viewControllers);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 navigationBarPositionDidChange];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setTopScrollEdgeEffectColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_topScrollEdgeEffectColor, color);
    [(UIScrollView *)self->_foregroundScrollView _setPocketColor:colorCopy forEdge:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    v7 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(viewControllers);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            scrollView = [v10 scrollView];
            [scrollView _setPocketColor:colorCopy forEdge:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)setTopScrollEdgeEffectStyle:(id)style
{
  v19 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  if (self->_topScrollEdgeEffectStyle != styleCopy)
  {
    objc_storeStrong(&self->_topScrollEdgeEffectStyle, style);
    topEdgeEffect = [(UIScrollView *)self->_foregroundScrollView topEdgeEffect];
    [topEdgeEffect setStyle:styleCopy];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
    v8 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(viewControllers);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            scrollView = [v11 scrollView];
            topEdgeEffect2 = [scrollView topEdgeEffect];
            [topEdgeEffect2 setStyle:styleCopy];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)setAlternateContentViewController:(id)controller
{
  v15[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->_alternateContentViewController != controllerCopy)
  {
    [(SFStartPageViewController *)self loadViewIfNeeded];
    navigationItem = [(UIViewController *)self->_alternateContentViewController navigationItem];
    objc_storeStrong(&self->_alternateContentViewController, controller);
    originalNavigationStack = self->_originalNavigationStack;
    if (!controllerCopy || originalNavigationStack)
    {
      if (!controllerCopy)
      {
        v13 = originalNavigationStack;
        v14 = self->_originalNavigationStack;
        self->_originalNavigationStack = 0;

        [(UINavigationController *)self->_navigationController setViewControllers:v13];
        [(UIImageView *)self->_wallpaperView setHidden:0];

        v12 = 0.0;
        goto LABEL_7;
      }
    }

    else
    {
      viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
      v9 = self->_originalNavigationStack;
      self->_originalNavigationStack = viewControllers;
    }

    navigationItem2 = [(UIViewController *)controllerCopy navigationItem];
    [(SFStartPageViewController *)self configurePaletteForNavigationItem:navigationItem2];

    v15[0] = controllerCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(UINavigationController *)self->_navigationController setViewControllers:v11];

    [(UIImageView *)self->_wallpaperView setHidden:1];
    v12 = ([(UINavigationController *)self->_navigationController isNavigationBarHidden]^ 1);
LABEL_7:
    [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:v12];
    [(SFStartPageViewController *)self updateOverrideTraitCollection];
    [(SFStartPageViewController *)self reloadNavigationItemAnimated:0];
    [(SFStartPageViewController *)self setNeedsStatusBarAppearanceUpdate];
    [navigationItem setLeftBarButtonItems:0];
    [navigationItem setRightBarButtonItems:0];
    [navigationItem _setBottomPalette:0];
  }
}

- (void)setBackgroundDisplayMode:(int64_t)mode
{
  if (self->_backgroundDisplayMode != mode)
  {
    self->_backgroundDisplayMode = mode;
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  }
}

- (void)setPreferredControlTintColor:(id)color
{
  colorCopy = color;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_preferredControlTintColor, color);
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  }
}

- (void)_wallpaperDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (!changeCopy || ([changeCopy object], v6 = objc_claimAutoreleasedReturnValue(), wallpaperManager = self->_wallpaperManager, v6, v6 == wallpaperManager))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__SFStartPageViewController__wallpaperDidChange___block_invoke;
    v8[3] = &unk_1E721D568;
    v8[4] = self;
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:v8];
  }
}

- (void)_wallpaperDidChangeRemotely
{
  wallpaperManager = self->_wallpaperManager;
  _wallpaperImageIdentifier = [(SFStartPageViewController *)self _wallpaperImageIdentifier];
  [(WBSStartPageBackgroundManager *)wallpaperManager loadImageFromDiskForIdentifier:?];
}

- (void)_updateWallpaperIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  wallpaperManager = self->_wallpaperManager;
  _wallpaperImageIdentifier = [(SFStartPageViewController *)self _wallpaperImageIdentifier];
  identifier = [(WBProfile *)self->_profile identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SFStartPageViewController__updateWallpaperIfNeededWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E721D590;
  v9[4] = self;
  v8 = handlerCopy;
  v10 = v8;
  [(WBSStartPageBackgroundManager *)wallpaperManager getHasGeneratedBackgroundImage:_wallpaperImageIdentifier forProfileWithIdentifier:identifier completionHandler:v9];
}

uint64_t __75__SFStartPageViewController__updateWallpaperIfNeededWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) showsWallpaper];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1136);
  if (v4)
  {
    if (!v6)
    {
      v7 = [v5 view];
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [v7 bounds];
      v9 = [v8 initWithFrame:?];
      v10 = *(a1 + 32);
      v11 = *(v10 + 1136);
      *(v10 + 1136) = v9;

      [*(*(a1 + 32) + 1136) setAutoresizingMask:18];
      if ((a2 & 1) == 0)
      {
        [*(*(a1 + 32) + 1136) setContentMode:2];
      }

      [v7 insertSubview:*(*(a1 + 32) + 1136) atIndex:0];

      v5 = *(a1 + 32);
    }

    v12 = *(v5 + 1128);
    v13 = [v5 _wallpaperImageIdentifier];
    v14 = [*(a1 + 32) _effectiveProfileForBackgroundImage];
    v15 = [v12 imageForIdentifier:v13 forProfile:v14];

    if (a2)
    {
      v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v15 scale:"CGImage") orientation:{0, 3.0}];
      v17 = [v16 resizableImageWithCapInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      [*(*(a1 + 32) + 1136) setImage:v17];

      [*(*(a1 + 32) + 1136) setContentMode:0];
    }

    else
    {
      [*(*(a1 + 32) + 1136) setContentMode:2];
      v19 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v15, "CGImage")}];
      [*(*(a1 + 32) + 1136) setImage:v19];
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    [*(v5 + 1136) removeFromSuperview];
    v18 = *(a1 + 32);
    v15 = *(v18 + 1136);
    *(v18 + 1136) = 0;
  }

LABEL_12:
  [*(a1 + 32) updateOverrideTraitCollection];
  [*(a1 + 32) _reloadCustomizationViewController];
  [*(a1 + 32) _updateSearchBarAppearance];
  result = *(a1 + 40);
  if (result)
  {
    v21 = *(result + 16);

    return v21();
  }

  return result;
}

- (id)_defaultProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained startPageViewControllerDefaultProfile:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_backgroundImageDidToggle
{
  [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69C99F0] object:self];

  [(SFStartPageViewController *)self _reloadCustomizationViewController];
}

- (void)_updateOverrideTraitCollectionWithUserInterfaceStyle:(int64_t)style
{
  traitOverrides = [(UINavigationController *)self->_navigationController traitOverrides];
  if (self->_alternateContentViewController)
  {
    [traitOverrides removeTrait:objc_opt_class()];
    [MEMORY[0x1E69DD1B8] safari_removeAllCustomTraits:traitOverrides];
  }

  else
  {
    if (style)
    {
      [traitOverrides setNSIntegerValue:style forTrait:objc_opt_class()];
    }

    else
    {
      [traitOverrides removeTrait:objc_opt_class()];
    }

    if (self->_backgroundDisplayMode == 1)
    {
      [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
      v5 = [MEMORY[0x1E69DC730] effectWithStyle:8];
      [traitOverrides setObject:v5 forTrait:objc_opt_class()];
    }

    else
    {
      image = [(UIImageView *)self->_wallpaperView image];

      if (image)
      {
        [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
      }

      else
      {
        [traitOverrides removeTrait:objc_opt_class()];
      }

      [traitOverrides removeTrait:objc_opt_class()];
    }

    effectiveControlTintColor = [(SFStartPageViewController *)self effectiveControlTintColor];
    if (effectiveControlTintColor)
    {
      [traitOverrides setObject:effectiveControlTintColor forTrait:objc_opt_class()];
    }

    else
    {
      [traitOverrides removeTrait:objc_opt_class()];
    }

    traitCollection = [(SFStartPageViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
    }

    else
    {
      [traitOverrides removeTrait:objc_opt_class()];
    }
  }
}

- (void)unfocusGestureDidUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy state] == 2)
  {
    view = [(SFStartPageViewController *)self view];
    [updateCopy translationInView:view];
    v6 = v5;

    if (v6 < -5.0)
    {
      [updateCopy setEnabled:0];
      [updateCopy setEnabled:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained startPageControllerDidCompleteUnfocusGesture:self];
    }
  }
}

- (id)sectionsForStartPageCollectionViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained sectionsForStartPageViewController:self];

  return v5;
}

- (void)startPageCollectionViewController:(id)controller toggleSectionExpanded:(id)expanded
{
  expandedCopy = expanded;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewController:self toggleSectionExpanded:expandedCopy];
  }
}

- (BOOL)startPageCollectionViewController:(id)controller isSectionExpanded:(id)expanded
{
  expandedCopy = expanded;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained startPageViewController:self isSectionExpanded:expandedCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)bar
{
  navigationItem = [bar navigationItem];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained startPageViewControllerShouldShowSearchField:self])
  {
    [(SFStartPageViewController *)self _createSearchControllerIfNeeded];
    searchController = self->_searchController;
  }

  else
  {
    searchController = 0;
  }

  [navigationItem setSearchController:searchController];
  [(SFStartPageViewController *)self _setLeadingBarItems:1 trailingBarItems:1 onNavigationItem:navigationItem forSection:0];
  v6 = objc_loadWeakRetained(&self->_delegate);
  if (self->_alternateContentViewController || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 startPageViewControllerTitleForRootView:self];
  }

  if ([v7 length])
  {
    [navigationItem setTitle:v7];
    v8 = 1;
  }

  else
  {
    [navigationItem setTitle:0];
    v8 = 2;
  }

  [navigationItem setLargeTitleDisplayMode:v8];
}

- (void)_setLeadingBarItems:(BOOL)items trailingBarItems:(BOOL)barItems onNavigationItem:(id)item forSection:(id)section
{
  barItemsCopy = barItems;
  itemsCopy = items;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (itemsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [WeakRetained startPageViewController:self leadingBarItemsForSection:0];
    [itemCopy setLeftBarButtonItems:v10];
  }

  else
  {
    [itemCopy setLeftBarButtonItems:0];
  }

  if (barItemsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [WeakRetained startPageViewController:self trailingBarItemsForSection:0];
    [itemCopy setRightBarButtonItems:v11];
  }

  else
  {
    [itemCopy setRightBarButtonItems:0];
  }
}

- (int64_t)customizationControlPolicyForStartPageCollectionViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_customizationDataSource);
  if (WeakRetained)
  {
    customizationPolicy = self->_customizationPolicy;
  }

  else
  {
    customizationPolicy = 2;
  }

  return customizationPolicy;
}

- (void)_createSearchControllerIfNeeded
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!self->_searchController)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    searchController = self->_searchController;
    self->_searchController = v3;

    [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
    [(UISearchController *)self->_searchController setDelegate:self];
    [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
    searchBar = [(UISearchController *)self->_searchController searchBar];
    searchTextField = [searchBar searchTextField];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v8 = [labelColor colorWithAlphaComponent:0.4];

    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = _WBSLocalizedString();
    v14 = *MEMORY[0x1E69DB650];
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v9 initWithString:v10 attributes:v11];
    [searchTextField setAttributedPlaceholder:v12];

    rightView = [searchTextField rightView];
    [rightView setTintColor:v8];

    [(SFStartPageViewController *)self _updateSearchBarAppearance];
  }
}

- (double)startPageCollectionViewControllerTopPadding:(id)padding
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerTopPadding:self];
    v5 = v6;
  }

  return v5;
}

- (BOOL)startPageCollectionViewControllerShouldInstallCustomBackdrops:(id)backdrops
{
  backdropsCopy = backdrops;
  v5 = (_SFDeviceIsPad() & 1) == 0 && self->_rootCollectionViewController == backdropsCopy;

  return v5;
}

- (void)startPageCollectionViewControllerDidChangeBackgroundStyle:(id)style
{
  styleCopy = style;
  topViewController = [(UINavigationController *)self->_navigationController topViewController];

  if (topViewController == styleCopy)
  {
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  }
}

- (void)startPageCollectionViewController:(id)controller didSelectItemWithIdentifier:(id)identifier atGridLocation:(id)location
{
  var1 = location.var1;
  var0 = location.var0;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewController:self didSelectItemWithIdentifier:identifierCopy atGridLocation:{var0, var1}];
  }
}

- (void)beginCustomizationForStartPageCollectionViewController:(id)controller
{
  v4 = [SFStartPageCustomizationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_customizationDataSource);
  v9 = [(SFStartPageCustomizationViewController *)v4 initWithDataSource:WeakRetained];

  [(SFStartPageCustomizationViewController *)v9 setShowsCloseButton:1];
  [(NSHashTable *)self->_dataSourceObservers addObject:v9];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  [v6 setModalPresentationStyle:2];
  v7 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v7 startPageViewController:self willPresentCustomizationViewController:v9];
  }

  presentedViewController = [(SFStartPageViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:0 completion:0];

  [(SFStartPageViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)startPageCollectionViewControllerDidScroll:(id)scroll
{
  [(SFStartPageViewController *)self updateNavigationBarTintColor];
  [(SFStartPageViewController *)self setNeedsStatusBarAppearanceUpdate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidScroll:self animated:0];
  }

  v4 = objc_loadWeakRetained(&self->_scrollObserver);
  [v4 startPageViewControllerDidScroll:self];
}

- (void)startPageCollectionViewControllerDidCompleteDismissGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageControllerDidCompleteDismissGesture:self];
  }
}

- (BOOL)startPageCollectionViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)in
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)startPageCollectionViewControllerDidUpdateContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidUpdateContent:self];
  }
}

- (void)startPageCollectionViewController:(id)controller shouldExpandSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(SFStartPageViewController *)self showDetailForItemWithIdentifier:identifierCopy];
  expandedSectionIdentifier = self->_expandedSectionIdentifier;
  self->_expandedSectionIdentifier = identifierCopy;
}

- (void)beginExtensionsOnboardingForStartPageCollectionViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained beginExtensionsOnboardingForStartPageViewController:self];
  }
}

- (id)previewViewControllerForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  if ([MEMORY[0x1E69C8880] is2024CloudTabsEnabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E69C9668]))
  {
    v5 = [SFStartPageMultiSectionDataSource alloc];
    v6 = _WBSLocalizedString();
    v7 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke;
    v20[3] = &unk_1E721D608;
    v8 = &v21;
    objc_copyWeak(&v21, &location);
    v20[4] = identifierCopy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke_2;
    v18[3] = &unk_1E721D630;
    v9 = &v19;
    objc_copyWeak(&v19, &location);
    v10 = [(SFStartPageMultiSectionDataSource *)v5 initWithSectionTitle:v6 reloadHandler:v20 navigationItemHandler:v18];

    [(NSHashTable *)self->_dataSourceObservers addObject:v10];
    v11 = [[SFStartPageCollectionViewController alloc] initWithVisualStyleProvider:self->_visualStyleProvider];
    [(SFStartPageCollectionViewController *)v11 setDelegate:self];
    [(SFStartPageMultiSectionDataSource *)v10 connectToViewController:v11];
  }

  else
  {
    v12 = [SFStartPageSingleSectionDataSource alloc];
    v7 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke_3;
    v16[3] = &unk_1E721D658;
    v8 = &v17;
    objc_copyWeak(&v17, &location);
    v16[4] = identifierCopy;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke_114;
    v14[3] = &unk_1E721D680;
    v9 = &v15;
    objc_copyWeak(&v15, &location);
    v10 = [(SFStartPageSingleSectionDataSource *)v12 initWithReloadHandler:v16 navigationItemHandler:v14];
    [(NSHashTable *)self->_dataSourceObservers addObject:v10];
    v11 = [[SFStartPageCollectionViewController alloc] initWithVisualStyleProvider:self->_visualStyleProvider];
    [(SFStartPageCollectionViewController *)v11 setDelegate:self];
    [(SFStartPageMultiSectionDataSource *)v10 connectToViewController:v11];
  }

  objc_destroyWeak(v9);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v11;
}

id __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 148);
    v5 = [v4 startPageViewController:v3 detailSectionsForItemIdentifier:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 firstObject];
    [WeakRetained _setLeadingBarItems:0 trailingBarItems:1 onNavigationItem:v8 forSection:v7];
  }
}

id __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXStartPage();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v8 = 138739971;
      v9 = v4;
      _os_log_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_INFO, "Creating single data source section with identifier %{sensitive}@", &v8, 0xCu);
    }

    v5 = objc_loadWeakRetained(WeakRetained + 148);
    v6 = [v5 startPageViewController:WeakRetained detailSectionForItemIdentifier:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __68__SFStartPageViewController_previewViewControllerForItemIdentifier___block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setLeadingBarItems:0 trailingBarItems:1 onNavigationItem:v8 forSection:v5];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  view = [viewControllerCopy view];
  [view setInsetsLayoutMarginsFromSafeArea:0];
  view2 = [(SFStartPageViewController *)self view];
  [view2 layoutMargins];
  [view setLayoutMargins:?];

  navigationItem = [viewControllerCopy navigationItem];
  [(SFStartPageViewController *)self configurePaletteForNavigationItem:navigationItem];

  foregroundScrollView = self->_foregroundScrollView;
  if (foregroundScrollView)
  {
    [(UIScrollView *)foregroundScrollView _removeScrollViewScrollObserver:self];
    [(UIScrollView *)self->_foregroundScrollView _setPocketColor:0 forEdge:1];
    automaticStyle = [MEMORY[0x1E69DCED8] automaticStyle];
    topEdgeEffect = [(UIScrollView *)self->_foregroundScrollView topEdgeEffect];
    [topEdgeEffect setStyle:automaticStyle];

    v13 = self->_foregroundScrollView;
    self->_foregroundScrollView = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    scrollView = [viewControllerCopy scrollView];
    [scrollView _setPocketColor:self->_topScrollEdgeEffectColor forEdge:1];
    topScrollEdgeEffectStyle = self->_topScrollEdgeEffectStyle;
    topEdgeEffect2 = [scrollView topEdgeEffect];
    [topEdgeEffect2 setStyle:topScrollEdgeEffectStyle];
  }

  else
  {
    v17 = [(SFStartPageViewController *)self scrollViewForStartPageCollectionViewsOnly:0];
    v18 = self->_foregroundScrollView;
    self->_foregroundScrollView = v17;

    [(UIScrollView *)self->_foregroundScrollView _addScrollViewScrollObserver:self];
    [(UIScrollView *)self->_foregroundScrollView _setPocketColor:self->_topScrollEdgeEffectColor forEdge:1];
    v19 = self->_topScrollEdgeEffectStyle;
    scrollView = [(UIScrollView *)self->_foregroundScrollView topEdgeEffect];
    [scrollView setStyle:v19];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidScroll:self animated:animatedCopy];
  }

  [(SFStartPageViewController *)self updateNavigationBarTintColor];
  if ([(SFStartPageViewController *)self isShowingRootView])
  {
    if ([(NSString *)self->_expandedSectionIdentifier isEqualToString:*MEMORY[0x1E69C96C0]])
    {
      [(SFStartPageViewController *)self reloadDataAnimatingDifferences:1];
    }

    expandedSectionIdentifier = self->_expandedSectionIdentifier;
    self->_expandedSectionIdentifier = 0;
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidChangeRootViewVisibility:self];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_unfocusGesture == begin)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollObserver);
  [WeakRetained startPageViewControllerDidScroll:self];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];
    [WeakRetained startPageViewController:self didUpdateSearchPattern:text];
  }
}

- (SFStartPageCustomizationDataSource)customizationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_customizationDataSource);

  return WeakRetained;
}

- (SFStartPageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SFStartPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFStartPageScrollObserver)scrollObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollObserver);

  return WeakRetained;
}

@end