@interface SFStartPageViewController
- (BOOL)_isPrivateBrowsingEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isShowingRootView;
- (BOOL)isTrackingDropSession;
- (BOOL)showsWallpaper;
- (BOOL)startPageCollectionViewController:(id)a3 isSectionExpanded:(id)a4;
- (BOOL)startPageCollectionViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)a3;
- (BOOL)startPageCollectionViewControllerShouldInstallCustomBackdrops:(id)a3;
- (SFStartPageCustomizationDataSource)customizationDataSource;
- (SFStartPageDataSource)dataSource;
- (SFStartPageDelegate)delegate;
- (SFStartPageScrollObserver)scrollObserver;
- (SFStartPageViewController)init;
- (SFStartPageViewController)initWithVisualStyleProvider:(id)a3 forProfile:(id)a4;
- (double)navigationBarHeight;
- (double)navigationBarPrimaryContentHeight;
- (double)scrollDistance;
- (double)startPageCollectionViewControllerTopPadding:(id)a3;
- (id)_defaultProfile;
- (id)_effectiveProfileForBackgroundImage;
- (id)_wallpaperImageIdentifier;
- (id)effectiveControlTintColor;
- (id)previewViewControllerForItemIdentifier:(id)a3;
- (id)scrollViewForStartPageCollectionViewsOnly:(BOOL)a3;
- (id)sectionsForStartPageCollectionViewController:(id)a3;
- (id)topStartPageCollectionViewController;
- (int64_t)customizationControlPolicyForStartPageCollectionViewController:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)_backgroundImageDidToggle;
- (void)_createSearchControllerIfNeeded;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_reloadCustomizationViewController;
- (void)_setLeadingBarItems:(BOOL)a3 trailingBarItems:(BOOL)a4 onNavigationItem:(id)a5 forSection:(id)a6;
- (void)_updateOverrideTraitCollectionWithUserInterfaceStyle:(int64_t)a3;
- (void)_updateSearchBarAppearance;
- (void)_updateWallpaperIfNeededWithCompletionHandler:(id)a3;
- (void)_wallpaperDidChange:(id)a3;
- (void)_wallpaperDidChangeRemotely;
- (void)beginCustomizationForStartPageCollectionViewController:(id)a3;
- (void)beginExtensionsOnboardingForStartPageCollectionViewController:(id)a3;
- (void)cancelGestures;
- (void)coalesceDataReloadWithBlock:(id)a3 animatingDifferences:(BOOL)a4;
- (void)configureModelWithIdentifier:(id)a3 usingBlock:(id)a4;
- (void)configurePaletteForNavigationItem:(id)a3;
- (void)dealloc;
- (void)ignorePreviousLayoutSize;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentViewController:(id)a3 fromItemWithIdentifier:(id)a4;
- (void)reloadDataAnimatingDifferences:(BOOL)a3;
- (void)reloadNavigationItemAnimated:(BOOL)a3;
- (void)reloadSection:(id)a3 animated:(BOOL)a4;
- (void)resetToRootViewWithCustomizationPolicy:(int64_t)a3;
- (void)setAlternateContentViewController:(id)a3;
- (void)setBackgroundDisplayMode:(int64_t)a3;
- (void)setCustomizationPolicy:(int64_t)a3;
- (void)setDataSource:(id)a3;
- (void)setNavigationBarPaletteHeight:(double)a3 alignmentInsets:(UIEdgeInsets)a4;
- (void)setNavigationBarPosition:(int64_t)a3;
- (void)setPreferredControlTintColor:(id)a3;
- (void)setTopScrollEdgeEffectColor:(id)a3;
- (void)setTopScrollEdgeEffectStyle:(id)a3;
- (void)showDetailForItemWithIdentifier:(id)a3;
- (void)startPageCollectionViewController:(id)a3 didSelectItemWithIdentifier:(id)a4 atGridLocation:(id)a5;
- (void)startPageCollectionViewController:(id)a3 shouldExpandSectionWithIdentifier:(id)a4;
- (void)startPageCollectionViewController:(id)a3 toggleSectionExpanded:(id)a4;
- (void)startPageCollectionViewControllerDidChangeBackgroundStyle:(id)a3;
- (void)startPageCollectionViewControllerDidCompleteDismissGesture:(id)a3;
- (void)startPageCollectionViewControllerDidScroll:(id)a3;
- (void)startPageCollectionViewControllerDidUpdateContent:(id)a3;
- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)a3;
- (void)unfocusGestureDidUpdate:(id)a3;
- (void)updateNavigationBarTintColor;
- (void)updateNavigationBarTitleInsets;
- (void)updateOverrideTraitCollection;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
  v3 = [(UINavigationController *)self->_navigationController view];
  [v3 setAutoresizingMask:18];
  v4 = [(SFStartPageViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [(SFStartPageViewController *)self view];
  [v5 addSubview:v3];

  [(UINavigationController *)self->_navigationController didMoveToParentViewController:self];
  v18[0] = self->_rootCollectionViewController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(UINavigationController *)self->_navigationController setViewControllers:v6];

  [(SFStartPageViewController *)self navigationController:self->_navigationController willShowViewController:self->_rootCollectionViewController animated:0];
  [(SFStartPageViewController *)self _wallpaperDidChange:0];
  v7 = [(UINavigationController *)self->_navigationController navigationBar];
  [v7 setPrefersLargeTitles:1];

  if (objc_opt_respondsToSelector())
  {
    [(SFStartPageVisualStyleProviding *)self->_visualStyleProvider prepareNavigationController:self->_navigationController forStartPageViewController:self];
  }

  v8 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_unfocusGestureDidUpdate_];
  unfocusGesture = self->_unfocusGesture;
  self->_unfocusGesture = v8;

  [(UIPanGestureRecognizer *)self->_unfocusGesture setDelegate:self];
  v10 = [(SFStartPageViewController *)self view];
  [v10 addGestureRecognizer:self->_unfocusGesture];

  if ([(SFStartPageViewController *)self startPageCollectionViewControllerShouldInstallCustomBackdrops:self->_rootCollectionViewController])
  {
    v11 = [MEMORY[0x1E69DD298] safari_statusBarGradientBlurEffectView];
    statusBarBackdrop = self->_statusBarBackdrop;
    self->_statusBarBackdrop = v11;

    [(UIVisualEffectView *)self->_statusBarBackdrop setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:0.0];
    v13 = [(SFStartPageViewController *)self view];
    [v13 addSubview:self->_statusBarBackdrop];
  }

  v17 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v15 = [(SFStartPageViewController *)self registerForTraitChanges:v14 withTarget:self action:sel_updateOverrideTraitCollection];
}

- (BOOL)showsWallpaper
{
  v3 = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  v4 = [v3 wantsWallpaperHiddenForCurrentBackgroundStyle];
  result = (v4 & 1) == 0 && (wallpaperManager = self->_wallpaperManager, [(SFStartPageViewController *)self _wallpaperImageIdentifier], v6 = ;
  return result;
}

- (id)topStartPageCollectionViewController
{
  v2 = [(UINavigationController *)self->_navigationController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
    v3 = [(SFStartPageViewController *)self _defaultProfile];
    if (v3)
    {
      v4 = [(SFStartPageViewController *)self _defaultProfile];
    }

    else
    {
      v4 = self->_profile;
    }

    v5 = v4;
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
  v3 = [(UINavigationController *)self->_navigationController traitCollection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke;
  v18[3] = &unk_1E721D5B8;
  v18[4] = self;
  v4 = [(UINavigationController *)self->_navigationController navigationBar];
  v5 = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke(v18);
  [v4 setTintColor:v5];

  v6 = [(UINavigationController *)self->_navigationController topViewController];
  v7 = [v6 navigationItem];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke_2;
  v14[3] = &unk_1E721D5E0;
  v8 = v7;
  v15 = v8;
  v16 = self;
  v9 = v3;
  v17 = v9;
  v10 = __57__SFStartPageViewController_updateNavigationBarTintColor__block_invoke_2(v14);
  v11 = v10;
  if (v10)
  {
    v19 = *MEMORY[0x1E69DB650];
    v20[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = [v8 standardAppearance];
    [v13 setTitleTextAttributes:v12];
  }

  else
  {
    v12 = [v8 standardAppearance];
    [v12 setTitleTextAttributes:MEMORY[0x1E695E0F8]];
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
    v5 = [(UIImageView *)self->_wallpaperView image];
    if (v5)
    {
      v6 = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v6 = self->_preferredControlTintColor;
    }

    v3 = v6;
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
  v3 = [(UINavigationController *)self->_navigationController topViewController];
  if (v3)
  {
    v4 = [(UINavigationController *)self->_navigationController topViewController];
    v5 = v4 == self->_rootCollectionViewController;
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
  v3 = [(SFStartPageViewController *)self view];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(UINavigationController *)self->_navigationController viewControllers];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v22 + 1) + 8 * v15) viewIfLoaded];
        [v16 setLayoutMargins:{v5, v7, v9, v11}];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v13);
  }

  if (self->_statusBarBackdrop)
  {
    v17 = [(UINavigationController *)self->_navigationController view];
    [v17 safeAreaInsets];
    v19 = v18;

    v20 = [(SFStartPageViewController *)self view];
    [v20 bounds];
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

  v4 = [(UINavigationController *)self->_navigationController traitCollection];
  v5 = [(UINavigationController *)self->_navigationController topViewController];
  rootCollectionViewController = self->_rootCollectionViewController;
  v7 = 8.0;
  if (v5 != rootCollectionViewController)
  {
    goto LABEL_7;
  }

  v8 = [(SFStartPageCollectionViewController *)rootCollectionViewController navigationItem];
  v9 = [v8 sf_isEmpty];

  if (v9)
  {
    v5 = [(UINavigationController *)self->_navigationController navigationBar];
    [(SFStartPageCollectionViewController *)v5 bounds];
    v7 = CGRectGetHeight(v13) + 8.0;
LABEL_7:
  }

  [(SFStartPageViewController *)self scrollDistance];
  if (v10 <= v7)
  {
    v11 = [v4 sf_alternateUserInterfaceStyle];
  }

  else
  {
    v11 = [v4 userInterfaceStyle];
  }

  v3 = SFContrastingStatusBarStyleForInterfaceStyle(v11);

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
  v17 = [(SFStartPageViewController *)self view];
  [v17 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  [v17 directionalLayoutMargins];
  v8 = v7;
  v10 = v9;
  v11 = [v17 _sf_usesLeftToRightLayout];
  v12 = [(SFStartPageCollectionViewController *)self->_rootCollectionViewController navigationItem];
  v13 = v12;
  if (v11)
  {
    v14 = v6;
  }

  else
  {
    v14 = v4;
  }

  v15 = v10 + v14;
  if (v11)
  {
    v16 = v4;
  }

  else
  {
    v16 = v6;
  }

  [v12 setLargeTitleInsets:{0.0, v8 + v16, 0.0, v15}];
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
    v4 = [(SFStartPageViewController *)self _wallpaperImageIdentifier];
    v5 = [(WBSStartPageBackgroundManager *)wallpaperManager appearanceForImageWithIdentifier:v4 forProfile:self->_profile];
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
    v3 = [(SFStartPageViewController *)self showsWallpaper];
    v4 = [(UISearchController *)self->_searchController searchBar];
    v8 = [v4 searchTextField];

    v5 = [(UIVisualEffectView *)self->_searchFieldBackgroundView superview];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    if (v6)
    {
      [v8 insertSubview:self->_searchFieldBackgroundView atIndex:0];
    }

    else
    {
      if (v5)
      {
        v7 = v3;
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
  v2 = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  v3 = [v2 isTrackingDropSession];

  return v3;
}

- (SFStartPageViewController)init
{
  v3 = +[SFDefaultStartPageVisualStyleProvider sharedProvider];
  v4 = [(SFStartPageViewController *)self initWithVisualStyleProvider:v3 forProfile:0];

  return v4;
}

- (SFStartPageViewController)initWithVisualStyleProvider:(id)a3 forProfile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = SFStartPageViewController;
  v9 = [(SFStartPageViewController *)&v35 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_visualStyleProvider, a3);
    v10->_customizationPolicy = 0;
    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
    navigationController = v10->_navigationController;
    v10->_navigationController = v11;

    [(UINavigationController *)v10->_navigationController _setClipUnderlapWhileTransitioning:1];
    [(UINavigationController *)v10->_navigationController setDelegate:v10];
    v13 = [[SFStartPageCollectionViewController alloc] initWithVisualStyleProvider:v7];
    rootCollectionViewController = v10->_rootCollectionViewController;
    v10->_rootCollectionViewController = v13;

    [(SFStartPageCollectionViewController *)v10->_rootCollectionViewController setDataSource:v10];
    [(SFStartPageCollectionViewController *)v10->_rootCollectionViewController setDelegate:v10];
    v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    dataSourceObservers = v10->_dataSourceObservers;
    v10->_dataSourceObservers = v15;

    [(NSHashTable *)v10->_dataSourceObservers addObject:v10->_rootCollectionViewController];
    v17 = [MEMORY[0x1E69C9850] defaultManager];
    wallpaperManager = v10->_wallpaperManager;
    v10->_wallpaperManager = v17;

    objc_storeStrong(&v10->_profile, a4);
    v19 = [MEMORY[0x1E69DCED8] automaticStyle];
    topScrollEdgeEffectStyle = v10->_topScrollEdgeEffectStyle;
    v10->_topScrollEdgeEffectStyle = v19;

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v10 selector:sel__wallpaperDidChange_ name:*MEMORY[0x1E69C99F0] object:0];
    v22 = *MEMORY[0x1E69C99E0];
    [v21 addObserver:v10 selector:sel__wallpaperDidChange_ name:*MEMORY[0x1E69C99E0] object:0];
    [v21 addObserver:v10 selector:sel__wallpaperDidChangeRemotely name:*MEMORY[0x1E69C99F8] object:0];
    [v21 addObserver:v10 selector:sel__wallpaperWasDeletedRemotely name:*MEMORY[0x1E69C99E8] object:0];
    [v21 addObserver:v10 selector:sel__backgroundImageDidToggle name:*MEMORY[0x1E69C9958] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, _settingsBundleUpdatedWallpaper, v22, 0, 1028);
    objc_initWeak(&location, v10);
    v24 = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = *MEMORY[0x1E69C9650];
    v26 = MEMORY[0x1E69E96A0];
    v27 = MEMORY[0x1E69E96A0];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __68__SFStartPageViewController_initWithVisualStyleProvider_forProfile___block_invoke;
    v32[3] = &unk_1E721D168;
    objc_copyWeak(&v33, &location);
    v28 = [v24 safari_observeValueForKey:v25 onQueue:v26 notifyForInitialValue:0 handler:v32];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFStartPageViewController;
  [(SFStartPageViewController *)&v5 viewDidAppear:a3];
  [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidAppear:self];
  }
}

- (void)setCustomizationPolicy:(int64_t)a3
{
  if (self->_customizationPolicy != a3)
  {
    self->_customizationPolicy = a3;
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

- (id)scrollViewForStartPageCollectionViewsOnly:(BOOL)a3
{
  v4 = [(UINavigationController *)self->_navigationController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 scrollView];
  }

  else if (a3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 viewIfLoaded];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;
  }

  return v5;
}

- (void)setDataSource:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_dataSource, v4);
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

- (void)configureModelWithIdentifier:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_alternateContentViewController)
  {
    v8 = self->_originalNavigationStack;
  }

  else
  {
    v8 = [(UINavigationController *)self->_navigationController viewControllers];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
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
          [v14 configureModelWithIdentifier:v6 usingBlock:{v7, v15}];
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
  v2 = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  [v2 ignorePreviousLayoutSize];
}

- (void)reloadNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
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

        [*(*(&v11 + 1) + 8 * i) reloadNavigationItemAnimated:{v3, v11}];
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  alternateContentViewController = self->_alternateContentViewController;
  if (alternateContentViewController)
  {
    v10 = [(UIViewController *)alternateContentViewController navigationItem];
    [(SFStartPageViewController *)self _setLeadingBarItems:1 trailingBarItems:1 onNavigationItem:v10 forSection:0];
  }
}

- (void)reloadDataAnimatingDifferences:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_coalescingDataReload)
  {
    self->_needsDataReloadAfterBatchUpdate = 1;
  }

  else
  {
    v3 = a3;
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

          [*(*(&v8 + 1) + 8 * v7++) reloadDataAnimatingDifferences:{v3, v8}];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)coalesceDataReloadWithBlock:(id)a3 animatingDifferences:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_coalescingDataReload = 1;
  v7 = v6;
  v6[2]();
  self->_coalescingDataReload = 0;
  if (self->_needsDataReloadAfterBatchUpdate)
  {
    [(SFStartPageViewController *)self reloadDataAnimatingDifferences:v4];
  }
}

- (void)reloadSection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
          [v11 reloadSection:v6 animated:v4];
        }

        else
        {
          [v11 reloadDataAnimatingDifferences:{v4, v12}];
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
  v2 = [(SFStartPageViewController *)self topStartPageCollectionViewController];
  [v2 cancelGestures];
}

- (void)resetToRootViewWithCustomizationPolicy:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__SFStartPageViewController_resetToRootViewWithCustomizationPolicy___block_invoke;
  v3[3] = &unk_1E721D540;
  v3[4] = self;
  v3[5] = a3;
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

- (void)showDetailForItemWithIdentifier:(id)a3
{
  v4 = [(SFStartPageViewController *)self previewViewControllerForItemIdentifier:a3];
  [UINavigationController pushViewController:"pushViewController:animated:" animated:?];
}

- (void)presentViewController:(id)a3 fromItemWithIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(UINavigationController *)self->_navigationController topViewController];
  [v7 presentViewController:v8 fromItemWithIdentifier:v6];
}

- (double)navigationBarHeight
{
  v2 = [(UINavigationController *)self->_navigationController navigationBar];
  [v2 bounds];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (double)navigationBarPrimaryContentHeight
{
  v3 = _SFRoundFloatToPixels(self->_navigationBarPaletteHeight + self->_navigationBarPaletteInsets.bottom);
  [(SFStartPageViewController *)self navigationBarHeight];
  return v4 - v3;
}

- (void)setNavigationBarPaletteHeight:(double)a3 alignmentInsets:(UIEdgeInsets)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 == 0.0)
  {
    a4 = **&MEMORY[0x1E69DDCE0];
  }

  if (self->_navigationBarPaletteHeight != a3 || (self->_navigationBarPaletteInsets.left == a4.left ? (v5 = self->_navigationBarPaletteInsets.top == a4.top) : (v5 = 0), v5 ? (v6 = self->_navigationBarPaletteInsets.right == a4.right) : (v6 = 0), v6 ? (v7 = self->_navigationBarPaletteInsets.bottom == a4.bottom) : (v7 = 0), !v7))
  {
    self->_navigationBarPaletteInsets = a4;
    self->_navigationBarPaletteHeight = a3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(UINavigationController *)self->_navigationController viewControllers];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v13 + 1) + 8 * i) navigationItem];
          [(SFStartPageViewController *)self configurePaletteForNavigationItem:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)configurePaletteForNavigationItem:(id)a3
{
  v4 = a3;
  navigationBarPaletteHeight = self->_navigationBarPaletteHeight;
  top = self->_navigationBarPaletteInsets.top;
  bottom = self->_navigationBarPaletteInsets.bottom;
  v16 = v4;
  v8 = [v4 _bottomPalette];
  v9 = v8;
  v10 = navigationBarPaletteHeight + top + bottom;
  if (v10 != 0.0 && v8 == 0)
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
    v12 = [v8 contentView];
    [v12 setFrame:{0.0, 0.0, 0.0, v10}];

    [v16 _setBottomPaletteNeedsUpdate];
  }
}

- (void)setNavigationBarPosition:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(SFStartPageViewController *)self navigationBarPosition]!= a3)
  {
    [(UINavigationController *)self->_navigationController _setPreferredNavigationBarPosition:a3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(UINavigationController *)self->_navigationController viewControllers];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
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
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setTopScrollEdgeEffectColor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_topScrollEdgeEffectColor, a3);
    [(UIScrollView *)self->_foregroundScrollView _setPocketColor:v5 forEdge:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(UINavigationController *)self->_navigationController viewControllers];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 scrollView];
            [v11 _setPocketColor:v5 forEdge:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)setTopScrollEdgeEffectStyle:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_topScrollEdgeEffectStyle != v5)
  {
    objc_storeStrong(&self->_topScrollEdgeEffectStyle, a3);
    v6 = [(UIScrollView *)self->_foregroundScrollView topEdgeEffect];
    [v6 setStyle:v5];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(UINavigationController *)self->_navigationController viewControllers];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 scrollView];
            v13 = [v12 topEdgeEffect];
            [v13 setStyle:v5];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)setAlternateContentViewController:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_alternateContentViewController != v5)
  {
    [(SFStartPageViewController *)self loadViewIfNeeded];
    v6 = [(UIViewController *)self->_alternateContentViewController navigationItem];
    objc_storeStrong(&self->_alternateContentViewController, a3);
    originalNavigationStack = self->_originalNavigationStack;
    if (!v5 || originalNavigationStack)
    {
      if (!v5)
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
      v8 = [(UINavigationController *)self->_navigationController viewControllers];
      v9 = self->_originalNavigationStack;
      self->_originalNavigationStack = v8;
    }

    v10 = [(UIViewController *)v5 navigationItem];
    [(SFStartPageViewController *)self configurePaletteForNavigationItem:v10];

    v15[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(UINavigationController *)self->_navigationController setViewControllers:v11];

    [(UIImageView *)self->_wallpaperView setHidden:1];
    v12 = ([(UINavigationController *)self->_navigationController isNavigationBarHidden]^ 1);
LABEL_7:
    [(UIVisualEffectView *)self->_statusBarBackdrop setAlpha:v12];
    [(SFStartPageViewController *)self updateOverrideTraitCollection];
    [(SFStartPageViewController *)self reloadNavigationItemAnimated:0];
    [(SFStartPageViewController *)self setNeedsStatusBarAppearanceUpdate];
    [v6 setLeftBarButtonItems:0];
    [v6 setRightBarButtonItems:0];
    [v6 _setBottomPalette:0];
  }
}

- (void)setBackgroundDisplayMode:(int64_t)a3
{
  if (self->_backgroundDisplayMode != a3)
  {
    self->_backgroundDisplayMode = a3;
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  }
}

- (void)setPreferredControlTintColor:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_preferredControlTintColor, a3);
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  }
}

- (void)_wallpaperDidChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 object], v6 = objc_claimAutoreleasedReturnValue(), wallpaperManager = self->_wallpaperManager, v6, v6 == wallpaperManager))
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
  v3 = [(SFStartPageViewController *)self _wallpaperImageIdentifier];
  [(WBSStartPageBackgroundManager *)wallpaperManager loadImageFromDiskForIdentifier:?];
}

- (void)_updateWallpaperIfNeededWithCompletionHandler:(id)a3
{
  v4 = a3;
  wallpaperManager = self->_wallpaperManager;
  v6 = [(SFStartPageViewController *)self _wallpaperImageIdentifier];
  v7 = [(WBProfile *)self->_profile identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SFStartPageViewController__updateWallpaperIfNeededWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E721D590;
  v9[4] = self;
  v8 = v4;
  v10 = v8;
  [(WBSStartPageBackgroundManager *)wallpaperManager getHasGeneratedBackgroundImage:v6 forProfileWithIdentifier:v7 completionHandler:v9];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E69C99F0] object:self];

  [(SFStartPageViewController *)self _reloadCustomizationViewController];
}

- (void)_updateOverrideTraitCollectionWithUserInterfaceStyle:(int64_t)a3
{
  v10 = [(UINavigationController *)self->_navigationController traitOverrides];
  if (self->_alternateContentViewController)
  {
    [v10 removeTrait:objc_opt_class()];
    [MEMORY[0x1E69DD1B8] safari_removeAllCustomTraits:v10];
  }

  else
  {
    if (a3)
    {
      [v10 setNSIntegerValue:a3 forTrait:objc_opt_class()];
    }

    else
    {
      [v10 removeTrait:objc_opt_class()];
    }

    if (self->_backgroundDisplayMode == 1)
    {
      [v10 setNSIntegerValue:1 forTrait:objc_opt_class()];
      v5 = [MEMORY[0x1E69DC730] effectWithStyle:8];
      [v10 setObject:v5 forTrait:objc_opt_class()];
    }

    else
    {
      v6 = [(UIImageView *)self->_wallpaperView image];

      if (v6)
      {
        [v10 setNSIntegerValue:1 forTrait:objc_opt_class()];
      }

      else
      {
        [v10 removeTrait:objc_opt_class()];
      }

      [v10 removeTrait:objc_opt_class()];
    }

    v7 = [(SFStartPageViewController *)self effectiveControlTintColor];
    if (v7)
    {
      [v10 setObject:v7 forTrait:objc_opt_class()];
    }

    else
    {
      [v10 removeTrait:objc_opt_class()];
    }

    v8 = [(SFStartPageViewController *)self traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == 2)
    {
      [v10 setNSIntegerValue:1 forTrait:objc_opt_class()];
    }

    else
    {
      [v10 removeTrait:objc_opt_class()];
    }
  }
}

- (void)unfocusGestureDidUpdate:(id)a3
{
  v8 = a3;
  if ([v8 state] == 2)
  {
    v4 = [(SFStartPageViewController *)self view];
    [v8 translationInView:v4];
    v6 = v5;

    if (v6 < -5.0)
    {
      [v8 setEnabled:0];
      [v8 setEnabled:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained startPageControllerDidCompleteUnfocusGesture:self];
    }
  }
}

- (id)sectionsForStartPageCollectionViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained sectionsForStartPageViewController:self];

  return v5;
}

- (void)startPageCollectionViewController:(id)a3 toggleSectionExpanded:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewController:self toggleSectionExpanded:v6];
  }
}

- (BOOL)startPageCollectionViewController:(id)a3 isSectionExpanded:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained startPageViewController:self isSectionExpanded:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)startPageCollectionViewControllerWillUpdateNavigationBar:(id)a3
{
  v9 = [a3 navigationItem];
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

  [v9 setSearchController:searchController];
  [(SFStartPageViewController *)self _setLeadingBarItems:1 trailingBarItems:1 onNavigationItem:v9 forSection:0];
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
    [v9 setTitle:v7];
    v8 = 1;
  }

  else
  {
    [v9 setTitle:0];
    v8 = 2;
  }

  [v9 setLargeTitleDisplayMode:v8];
}

- (void)_setLeadingBarItems:(BOOL)a3 trailingBarItems:(BOOL)a4 onNavigationItem:(id)a5 forSection:(id)a6
{
  v6 = a4;
  v7 = a3;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [WeakRetained startPageViewController:self leadingBarItemsForSection:0];
    [v12 setLeftBarButtonItems:v10];
  }

  else
  {
    [v12 setLeftBarButtonItems:0];
  }

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [WeakRetained startPageViewController:self trailingBarItemsForSection:0];
    [v12 setRightBarButtonItems:v11];
  }

  else
  {
    [v12 setRightBarButtonItems:0];
  }
}

- (int64_t)customizationControlPolicyForStartPageCollectionViewController:(id)a3
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
    v5 = [(UISearchController *)self->_searchController searchBar];
    v6 = [v5 searchTextField];

    v7 = [MEMORY[0x1E69DC888] labelColor];
    v8 = [v7 colorWithAlphaComponent:0.4];

    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = _WBSLocalizedString();
    v14 = *MEMORY[0x1E69DB650];
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v9 initWithString:v10 attributes:v11];
    [v6 setAttributedPlaceholder:v12];

    v13 = [v6 rightView];
    [v13 setTintColor:v8];

    [(SFStartPageViewController *)self _updateSearchBarAppearance];
  }
}

- (double)startPageCollectionViewControllerTopPadding:(id)a3
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

- (BOOL)startPageCollectionViewControllerShouldInstallCustomBackdrops:(id)a3
{
  v4 = a3;
  v5 = (_SFDeviceIsPad() & 1) == 0 && self->_rootCollectionViewController == v4;

  return v5;
}

- (void)startPageCollectionViewControllerDidChangeBackgroundStyle:(id)a3
{
  v5 = a3;
  v4 = [(UINavigationController *)self->_navigationController topViewController];

  if (v4 == v5)
  {
    [(SFStartPageViewController *)self _updateWallpaperIfNeededWithCompletionHandler:0];
  }
}

- (void)startPageCollectionViewController:(id)a3 didSelectItemWithIdentifier:(id)a4 atGridLocation:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewController:self didSelectItemWithIdentifier:v9 atGridLocation:{var0, var1}];
  }
}

- (void)beginCustomizationForStartPageCollectionViewController:(id)a3
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

  v8 = [(SFStartPageViewController *)self presentedViewController];
  [v8 dismissViewControllerAnimated:0 completion:0];

  [(SFStartPageViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)startPageCollectionViewControllerDidScroll:(id)a3
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

- (void)startPageCollectionViewControllerDidCompleteDismissGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageControllerDidCompleteDismissGesture:self];
  }
}

- (BOOL)startPageCollectionViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)a3
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

- (void)startPageCollectionViewControllerDidUpdateContent:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidUpdateContent:self];
  }
}

- (void)startPageCollectionViewController:(id)a3 shouldExpandSectionWithIdentifier:(id)a4
{
  v5 = a4;
  [(SFStartPageViewController *)self showDetailForItemWithIdentifier:v5];
  expandedSectionIdentifier = self->_expandedSectionIdentifier;
  self->_expandedSectionIdentifier = v5;
}

- (void)beginExtensionsOnboardingForStartPageCollectionViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained beginExtensionsOnboardingForStartPageViewController:self];
  }
}

- (id)previewViewControllerForItemIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([MEMORY[0x1E69C8880] is2024CloudTabsEnabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69C9668]))
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
    v20[4] = v4;
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
    v16[4] = v4;
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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v22 = a4;
  v7 = [v22 view];
  [v7 setInsetsLayoutMarginsFromSafeArea:0];
  v8 = [(SFStartPageViewController *)self view];
  [v8 layoutMargins];
  [v7 setLayoutMargins:?];

  v9 = [v22 navigationItem];
  [(SFStartPageViewController *)self configurePaletteForNavigationItem:v9];

  foregroundScrollView = self->_foregroundScrollView;
  if (foregroundScrollView)
  {
    [(UIScrollView *)foregroundScrollView _removeScrollViewScrollObserver:self];
    [(UIScrollView *)self->_foregroundScrollView _setPocketColor:0 forEdge:1];
    v11 = [MEMORY[0x1E69DCED8] automaticStyle];
    v12 = [(UIScrollView *)self->_foregroundScrollView topEdgeEffect];
    [v12 setStyle:v11];

    v13 = self->_foregroundScrollView;
    self->_foregroundScrollView = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v22 scrollView];
    [v14 _setPocketColor:self->_topScrollEdgeEffectColor forEdge:1];
    topScrollEdgeEffectStyle = self->_topScrollEdgeEffectStyle;
    v16 = [v14 topEdgeEffect];
    [v16 setStyle:topScrollEdgeEffectStyle];
  }

  else
  {
    v17 = [(SFStartPageViewController *)self scrollViewForStartPageCollectionViewsOnly:0];
    v18 = self->_foregroundScrollView;
    self->_foregroundScrollView = v17;

    [(UIScrollView *)self->_foregroundScrollView _addScrollViewScrollObserver:self];
    [(UIScrollView *)self->_foregroundScrollView _setPocketColor:self->_topScrollEdgeEffectColor forEdge:1];
    v19 = self->_topScrollEdgeEffectStyle;
    v14 = [(UIScrollView *)self->_foregroundScrollView topEdgeEffect];
    [v14 setStyle:v19];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidScroll:self animated:v5];
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

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageViewControllerDidChangeRootViewVisibility:self];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_unfocusGesture == a3)
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

- (void)_observeScrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollObserver);
  [WeakRetained startPageViewControllerDidScroll:self];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v7 searchBar];
    v6 = [v5 text];
    [WeakRetained startPageViewController:self didUpdateSearchPattern:v6];
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