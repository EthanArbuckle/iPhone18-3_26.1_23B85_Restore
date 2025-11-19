@interface PBUIWallpaperRemoteViewController
- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState;
- (BOOL)parallaxEnabledForVariant:(int64_t)a3;
- (BOOL)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4 withAnimationFactory:(id)a5;
- (BOOL)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6;
- (BOOL)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6;
- (BOOL)updateImageProviderView:(id)a3 withImage:(id)a4;
- (BOOL)updateIrisWallpaperForStaticMode;
- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate;
- (PBUIWallpaperRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PLKLegibilityEnvironment)legibilityEnvironment;
- (double)_wallpaperScaleForVariant:(int64_t)a3;
- (double)contrastForVariant:(int64_t)a3;
- (double)minimumHomescreenWallpaperScale;
- (double)minimumLockscreenWallpaperScale;
- (double)parallaxFactorForVariant:(int64_t)a3;
- (double)zoomFactorForVariant:(int64_t)a3;
- (id)_acquireSceneModeAssertionForReason:(id)a3 sceneMode:(int64_t)a4 completion:(id)a5;
- (id)_blurImageFromURL:(id)a3;
- (id)_blurViewsForVariant:(int64_t)a3;
- (id)_cachedBlurAssetForVariant:(int64_t)a3 requestedStyle:(int64_t)a4 traitCollection:(id)a5;
- (id)_disallowRasterizationReasonsForVariant:(int64_t)a3;
- (id)_hideWallpaperReasonsForVariant:(int64_t)a3;
- (id)_observersForVariant:(int64_t)a3;
- (id)_sceneClientSettings;
- (id)_sceneSettings;
- (id)_simpleAssertionWithReasonsSet:(id)a3 identifier:(id)a4 reason:(id)a5 updater:(id)a6;
- (id)_wallpaperScaleAssertionForVariant:(int64_t)a3 scale:(double)a4;
- (id)averageColorForVariant:(int64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)imageForWallpaperStyle:(int64_t *)a3 variant:(int64_t)a4 traitCollection:(id)a5;
- (id)legibilitySettingsForVariant:(int64_t)a3;
- (id)newFakeBlurViewForVariant:(int64_t)a3 style:(int64_t)a4 transformOptions:(unint64_t)a5;
- (id)requireWallpaperWithReason:(id)a3;
- (id)setHomescreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4;
- (id)setLockscreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4;
- (id)succinctDescription;
- (id)suspendWallpaperAnimationForReason:(id)a3;
- (id)wallpaperView:(id)a3 wallpaperConfigurationIncludingValueTypes:(unint64_t)a4;
- (int64_t)_effectiveSceneMode;
- (void)_addStateCaptureHandlers;
- (void)_cacheBlurImageForVariant:(int64_t)a3 requestedStyle:(int64_t)a4 actualStyle:(int64_t)a5 traitCollection:(id)a6 image:(id)a7 imageURL:(id)a8;
- (void)_cancelSceneDeactivation;
- (void)_invalidateBlurCacheForVariant:(int64_t)a3;
- (void)_legibilityUpdatedWithDictionary:(id)a3 notifyObservers:(BOOL)a4;
- (void)_modifySceneSettings:(id)a3 forSceneMode:(int64_t)a4;
- (void)_notifyAllObserversOfNewWallpaperScene;
- (void)_performWithLiveScene:(id)a3;
- (void)_reconfigureBlurViewsForVariant:(int64_t)a3;
- (void)_registerFakeBlurView:(id)a3;
- (void)_scheduleSceneDeactivation;
- (void)_setupSceneWithCompletion:(id)a3;
- (void)_unregisterFakeBlurView:(id)a3;
- (void)_updateBlurViewsForVariant:(int64_t)a3;
- (void)_updateFallbackView;
- (void)_updateSceneModeWithCompletion:(id)a3;
- (void)_updateWallpaperScaleWithAnimationFactory:(id)a3;
- (void)_updateWallpaperSceneSettingsWithBlock:(id)a3 postUpdateBlock:(id)a4;
- (void)_updateWallpaperSceneSettingsWithTransitionBlock:(id)a3;
- (void)addObserver:(id)a3 forVariant:(int64_t)a4;
- (void)beginDelayingHomescreenStyleChangesForReason:(id)a3;
- (void)cancelInProcessAnimations;
- (void)dealloc;
- (void)endDelayingHomescreenStyleChangesForReason:(id)a3 animationFactory:(id)a4;
- (void)noteWillAnimateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)preheatWallpaperForVariant:(int64_t)a3;
- (void)remoteIrisWallpaperPlayer:(id)a3 touchActiveChanged:(BOOL)a4;
- (void)removeObserver:(id)a3 forVariant:(int64_t)a4;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)setActiveVariant:(int64_t)a3 withOutAnimationFactory:(id)a4 inAnimationFactory:(id)a5 completion:(id)a6;
- (void)setAlpha:(double)a3 forWallpaperVariant:(int64_t)a4;
- (void)setCachingIdentifier:(id)a3;
- (void)setDisallowsRasterization:(BOOL)a3 forVariant:(int64_t)a4 withReason:(id)a5;
- (void)setLockscreenOnlyWallpaperAlpha:(double)a3;
- (void)setLockscreenWallpaperContentsRect:(CGRect)a3;
- (void)setWallpaperConfigurationManager:(id)a3;
- (void)setWallpaperHidden:(BOOL)a3 variant:(int64_t)a4 reason:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIrisWallpaperForInteractiveMode;
- (void)updateWallpaperForLocations:(int64_t)a3 wallpaperMode:(int64_t)a4 withCompletion:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wallpaperConfigurationManager:(id)a3 didChangeWallpaperConfigurationForVariants:(int64_t)a4;
@end

@implementation PBUIWallpaperRemoteViewController

- (PBUIWallpaperRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v45.receiver = self;
  v45.super_class = PBUIWallpaperRemoteViewController;
  v4 = [(PBUIWallpaperRemoteViewController *)&v45 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    stateCaptureHandles = v4->_stateCaptureHandles;
    v4->_stateCaptureHandles = v5;

    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lockscreenObservers = v4->_lockscreenObservers;
    v4->_lockscreenObservers = v7;

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    homescreenObservers = v4->_homescreenObservers;
    v4->_homescreenObservers = v9;

    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lockscreenBlurViews = v4->_lockscreenBlurViews;
    v4->_lockscreenBlurViews = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    homescreenBlurViews = v4->_homescreenBlurViews;
    v4->_homescreenBlurViews = v13;

    v15 = objc_alloc_init(PBUIDefaultSessionReconnectPolicy);
    reconnectPolicy = v4->_reconnectPolicy;
    v4->_reconnectPolicy = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    disallowRasterizationReasonsHomeVariant = v4->_disallowRasterizationReasonsHomeVariant;
    v4->_disallowRasterizationReasonsHomeVariant = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    disallowRasterizationReasonsLockVariant = v4->_disallowRasterizationReasonsLockVariant;
    v4->_disallowRasterizationReasonsLockVariant = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hideWallpaperReasonsHomeVariant = v4->_hideWallpaperReasonsHomeVariant;
    v4->_hideWallpaperReasonsHomeVariant = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hideWallpaperReasonsLockVariant = v4->_hideWallpaperReasonsLockVariant;
    v4->_hideWallpaperReasonsLockVariant = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    wallpaperAnimationSuspendedReasons = v4->_wallpaperAnimationSuspendedReasons;
    v4->_wallpaperAnimationSuspendedReasons = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    wallpaperRequiredReasons = v4->_wallpaperRequiredReasons;
    v4->_wallpaperRequiredReasons = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    homescreenChangesDelayedReasons = v4->_homescreenChangesDelayedReasons;
    v4->_homescreenChangesDelayedReasons = v29;

    v31 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    wallpaperScaleAssertions = v4->_wallpaperScaleAssertions;
    v4->_wallpaperScaleAssertions = v31;

    v33 = [MEMORY[0x277CBEB58] set];
    externalSceneModeAssertionActions = v4->_externalSceneModeAssertionActions;
    v4->_externalSceneModeAssertionActions = v33;

    v35 = objc_alloc(MEMORY[0x277CF0C28]);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v35 initWithName:v37 onQueue:MEMORY[0x277D85CD0]];
    eventQueue = v4->_eventQueue;
    v4->_eventQueue = v38;

    v40 = objc_alloc_init(PBUIRemoteIrisWallpaperPlayer);
    remoteIrisWallpaperPlayer = v4->_remoteIrisWallpaperPlayer;
    v4->_remoteIrisWallpaperPlayer = v40;

    [(PBUIRemoteIrisWallpaperPlayer *)v4->_remoteIrisWallpaperPlayer setDelegate:v4];
    v42 = [MEMORY[0x277CBEB58] set];
    pendingEffectViewImageSlots = v4->_pendingEffectViewImageSlots;
    v4->_pendingEffectViewImageSlots = v42;

    [(PBUIWallpaperRemoteViewController *)v4 _addStateCaptureHandlers];
  }

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_stateCaptureHandles;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = PBUIWallpaperRemoteViewController;
  [(PBUIWallpaperRemoteViewController *)&v8 dealloc];
}

- (void)setCachingIdentifier:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:self->_cachingIdentifier] & 1) == 0)
  {
    v5 = [v4 copy];
    cachingIdentifier = self->_cachingIdentifier;
    self->_cachingIdentifier = v5;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__PBUIWallpaperRemoteViewController_setCachingIdentifier___block_invoke;
    v7[3] = &unk_278362838;
    v7[4] = self;
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v7];
  }
}

- (void)setWallpaperConfigurationManager:(id)a3
{
  v5 = a3;
  wallpaperConfigurationManager = self->_wallpaperConfigurationManager;
  if (wallpaperConfigurationManager != v5)
  {
    v7 = v5;
    [(PBUIWallpaperConfigurationManager *)wallpaperConfigurationManager setDelegate:0];
    objc_storeStrong(&self->_wallpaperConfigurationManager, a3);
    wallpaperConfigurationManager = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](wallpaperConfigurationManager, v5);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PBUIWallpaperRemoteViewController;
  [(PBUIWallpaperRemoteViewController *)&v3 viewDidLoad];
  [(PBUIWallpaperRemoteViewController *)self _setupScene];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PBUIWallpaperRemoteViewController;
  [(PBUIWallpaperRemoteViewController *)&v6 viewWillAppear:a3];
  if (!self->_sceneModeAssertionForViewAppeared)
  {
    v4 = [(PBUIWallpaperRemoteViewController *)self _acquireSceneModeAssertionForReason:@"View Appeared" sceneMode:3];
    sceneModeAssertionForViewAppeared = self->_sceneModeAssertionForViewAppeared;
    self->_sceneModeAssertionForViewAppeared = v4;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PBUIWallpaperRemoteViewController;
  [(PBUIWallpaperRemoteViewController *)&v5 viewDidDisappear:a3];
  [(BSInvalidatable *)self->_sceneModeAssertionForViewAppeared invalidate];
  sceneModeAssertionForViewAppeared = self->_sceneModeAssertionForViewAppeared;
  self->_sceneModeAssertionForViewAppeared = 0;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = PBUIWallpaperRemoteViewController;
  v7 = a4;
  [(PBUIWallpaperRemoteViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PBUIWallpaperRemoteViewController *)self view:v13.receiver];
  v9 = [v8 window];
  v10 = [v9 _toWindowOrientation];
  [v7 transitionDuration];
  v12 = v11;

  [(PBUIWallpaperRemoteViewController *)self noteWillAnimateToInterfaceOrientation:v10 duration:v12];
}

- (void)traitCollectionDidChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = PBUIWallpaperRemoteViewController;
  v4 = a3;
  [(PBUIWallpaperRemoteViewController *)&v15 traitCollectionDidChange:v4];
  v5 = [(PBUIWallpaperRemoteViewController *)self traitCollection];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];
  v7 = [v4 _backlightLuminance];

  v8 = [v5 _backlightLuminance];
  if ((v6 & 1) != 0 || (v7 == 1) != (v8 == 1))
  {
    v9 = [v5 userInterfaceStyle];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__PBUIWallpaperRemoteViewController_traitCollectionDidChange___block_invoke;
    v14[3] = &unk_278362880;
    v14[4] = self;
    v14[5] = v9;
    [(PBUIWallpaperRemoteViewController *)self _performWithLiveScene:v14];
    v10 = v9 == 1;
    if (v9 == 2)
    {
      v10 = 2;
    }

    if (v8 == 1)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    v12 = PBUILogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PBUIStringForWallpaperMode(v11);
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEFAULT, "Setting wallpaper mode to %@", buf, 0xCu);
    }

    if (v11)
    {
      [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setWallpaperMode:v11];
    }
  }
}

uint64_t __62__PBUIWallpaperRemoteViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__PBUIWallpaperRemoteViewController_traitCollectionDidChange___block_invoke_2;
  v3[3] = &__block_descriptor_40_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _updateWallpaperSceneSettingsWithBlock:v3];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PBUIWallpaperRemoteViewController;
  [(PBUIWallpaperRemoteViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(PBUIWallpaperRemoteViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIScenePresentation *)self->_scenePresentationView setBounds:v5, v7, v9, v11];
  scenePresentationView = self->_scenePresentationView;
  UIRectGetCenter();
  [(UIScenePresentation *)scenePresentationView setCenter:?];
}

- (void)wallpaperConfigurationManager:(id)a3 didChangeWallpaperConfigurationForVariants:(int64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PBUIStringForWallpaperLocations(a4);
    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Wallpaper did change for variants: %{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__PBUIWallpaperRemoteViewController_wallpaperConfigurationManager_didChangeWallpaperConfigurationForVariants___block_invoke;
  v8[3] = &unk_278362880;
  v8[4] = self;
  v8[5] = a4;
  [(PBUIWallpaperRemoteViewController *)self _performWithLiveScene:v8];
}

void __110__PBUIWallpaperRemoteViewController_wallpaperConfigurationManager_didChangeWallpaperConfigurationForVariants___block_invoke(uint64_t a1)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v3 = MEMORY[0x277CBEB98];
  v4 = [PBUIWallpaperUpdateLocationsAction alloc];
  v5 = *(a1 + 40);
  v6 = MEMORY[0x277CF0B60];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __110__PBUIWallpaperRemoteViewController_wallpaperConfigurationManager_didChangeWallpaperConfigurationForVariants___block_invoke_2;
  v26[3] = &unk_2783628A8;
  v7 = v2;
  v27 = v7;
  v8 = [v6 responderWithHandler:v26];
  v9 = [(PBUIWallpaperUpdateLocationsAction *)v4 initWithLocations:v5 wallpaperMode:0 responder:v8];
  v28[0] = v9;
  v10 = [PBUIWallpaperUpdateAndPrewarmAction alloc];
  v11 = MEMORY[0x277CF0B60];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __110__PBUIWallpaperRemoteViewController_wallpaperConfigurationManager_didChangeWallpaperConfigurationForVariants___block_invoke_3;
  v24[3] = &unk_2783628A8;
  v12 = v7;
  v25 = v12;
  v13 = [v11 responderWithHandler:v24];
  v14 = [(PBUIWallpaperUpdateAndPrewarmAction *)v10 initWithResponder:v13];
  v28[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v16 = [v3 setWithArray:v15];

  if ([v16 count])
  {
    v17 = 0;
    do
    {
      dispatch_group_enter(v12);
      ++v17;
    }

    while (v17 < [v16 count]);
  }

  v18 = PBUILogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_DEFAULT, "Acquiring foreground support scene mode assertion for wallpaper change", buf, 2u);
  }

  v19 = [*(a1 + 32) _acquireSceneModeAssertionForReason:@"DidChangeWallpaperConfiguration" sceneMode:2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__PBUIWallpaperRemoteViewController_wallpaperConfigurationManager_didChangeWallpaperConfigurationForVariants___block_invoke_36;
  block[3] = &unk_278361E18;
  v22 = v19;
  v20 = v19;
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);
  [*(*(a1 + 32) + 992) sendActions:v16];
}

uint64_t __110__PBUIWallpaperRemoteViewController_wallpaperConfigurationManager_didChangeWallpaperConfigurationForVariants___block_invoke_36(uint64_t a1)
{
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "Releasing foreground support scene mode assertion for wallpaper change", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

- (void)_registerFakeBlurView:(id)a3
{
  v6 = a3;
  v4 = [v6 variant];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__homescreenBlurViews;
  }

  else
  {
    v5 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__lockscreenBlurViews;
  }

  [*(&self->super.super.super.isa + *v5) addObject:v6];
LABEL_6:
}

- (void)_unregisterFakeBlurView:(id)a3
{
  lockscreenBlurViews = self->_lockscreenBlurViews;
  v5 = a3;
  [(NSHashTable *)lockscreenBlurViews removeObject:v5];
  [(NSHashTable *)self->_homescreenBlurViews removeObject:v5];
}

- (BOOL)updateImageProviderView:(id)a3 withImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = objc_opt_class();
  v12 = v6;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = 0;
  if (v10 && v14)
  {
    v16 = [v10 imageSlot];
    v15 = v14 != v16;
    if (v14 != v16)
    {
      [v10 setImageSlot:v14];
    }
  }

  return v15;
}

- (id)imageForWallpaperStyle:(int64_t *)a3 variant:(int64_t)a4 traitCollection:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v34 = *a3;
  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PBUIWallpaperStyleDescription(*a3);
    v11 = PBUIStringForWallpaperVariant(a4);
    v12 = _UIUserInterfaceStyleDescription([v8 userInterfaceStyle]);
    *buf = 138543874;
    v48 = v10;
    v49 = 2114;
    v50 = v11;
    v51 = 2114;
    v52 = v12;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "Fetching image for wallpaper style:%{public}@ variant:%{public}@ traitCollection.userInterfaceStyle:%{public}@", buf, 0x20u);
  }

  v13 = [(PBUIWallpaperRemoteViewController *)self _cachedBlurAssetForVariant:a4 requestedStyle:v34 traitCollection:v8];
  v14 = v13;
  if (v13)
  {
    *a3 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = v14[3];
    if (v16)
    {
      v17 = PBUILogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v48 = v16;
        _os_log_impl(&dword_21E67D000, v17, OS_LOG_TYPE_DEFAULT, "Satisfied image request from cache with image %{public}@", buf, 0xCu);
      }

      v18 = [[PBUIImageSlot alloc] initWithImage:v16 lifetimeToken:0];
      goto LABEL_17;
    }

    if (v15)
    {
      v19 = [PBUIImageSlot alloc];
      v20 = [(PBUIWallpaperRemoteViewController *)self _blurImageFromURL:v15];
      v18 = [(PBUIImageSlot *)v19 initWithImage:v20 lifetimeToken:0];

      v21 = PBUILogCommon();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v22)
        {
          *buf = 138543362;
          v48 = v15;
          _os_log_impl(&dword_21E67D000, v21, OS_LOG_TYPE_DEFAULT, "Satisfied image request from cache with image URL %{public}@", buf, 0xCu);
        }

LABEL_17:
        if (v18)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v22)
      {
        *buf = 138543362;
        v48 = v15;
        _os_log_impl(&dword_21E67D000, v21, OS_LOG_TYPE_DEFAULT, "Received cached image URL %{public}@ but could not load image.", buf, 0xCu);
      }
    }

    v18 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v23 = [MEMORY[0x277CCAD78] UUID];
  v24 = [v23 UUIDString];

  [(NSMutableSet *)self->_pendingEffectViewImageSlots addObject:v24];
  objc_initWeak(buf, self);
  v25 = [PBUIWallpaperImageSlotRequestAction alloc];
  v26 = MEMORY[0x277D85CD0];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke;
  v44[3] = &unk_2783628D0;
  objc_copyWeak(&v46, buf);
  v27 = v24;
  v45 = v27;
  v28 = [(PBUIWallpaperImageSlotRequestAction *)v25 initWithVariant:a4 desiredStyle:v35 traitCollection:v8 slotIdentifier:v27 forResponseOnQueue:MEMORY[0x277D85CD0] withHandler:v44];

  v29 = [[PBUIDeferredImageSlot alloc] initWithLifetimeToken:v28];
  v30 = [(PBUIWallpaperRemoteViewController *)self averageColorForVariant:a4];
  [(PBUIDeferredImageSlot *)v29 setFallbackColor:v30];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_48;
  v36[3] = &unk_278362948;
  v31 = v27;
  v37 = v31;
  v38 = self;
  v32 = v28;
  v39 = v32;
  v18 = v29;
  v40 = v18;
  v42 = a4;
  v43 = v35;
  v41 = v8;
  [(PBUIWallpaperRemoteViewController *)self _performWithLiveScene:v36];

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);

  if (!v18)
  {
    self->_missingEffectViewImages = 1;
  }

LABEL_20:

  return v18;
}

void __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained[146] containsObject:v4];
    v6 = @"fulfilled";
    if (v5)
    {
      v6 = @"unfulfilled";
    }

    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Image slot invalidated: %{public}@ (%{public}@)", &v7, 0x16u);
  }
}

void __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_48(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v27 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "Acquiring foreground scene mode assertion for image request %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) _acquireSceneModeAssertionForReason:@"ImageForWallpaperStyle" sceneMode:3];
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v27 = v6;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Sending image slot request action for image slot request %{public}@", buf, 0xCu);
  }

  v7 = *(*(a1 + 40) + 992);
  v8 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
  [v7 sendActions:v8];

  v9 = [PBUIWallpaperEffectImageRequestAction alloc];
  v10 = *(a1 + 32);
  v11 = dispatch_get_global_queue(25, 0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_53;
  v19[3] = &unk_278362920;
  v20 = v10;
  v12 = v4;
  v13 = *(a1 + 40);
  v21 = v12;
  v22 = v13;
  v23 = *(a1 + 56);
  v25 = *(a1 + 72);
  v24 = *(a1 + 64);
  v14 = [(PBUIWallpaperEffectImageRequestAction *)v9 initWithSlotIdentifier:v20 forResponseOnQueue:v11 withHandler:v19];

  v15 = PBUILogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138543362;
    v27 = v16;
    _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "Sending image request action for image slot request %{public}@", buf, 0xCu);
  }

  v17 = *(*(a1 + 40) + 992);
  v18 = [MEMORY[0x277CBEB98] setWithObject:v14];
  [v17 sendActions:v18];
}

void __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_53(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_2;
  block[3] = &unk_2783622E0;
  v8 = (a1 + 32);
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v7)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_55;
    v35[3] = &unk_2783622E0;
    v35[4] = *(a1 + 48);
    v36 = *(a1 + 32);
    v9 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v35);

    v10 = [v7 actualStyle];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      v12 = [v11 imageURL];
      v13 = [*(a1 + 48) _blurImageFromURL:v12];
      v14 = PBUILogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v8;
        *buf = 138543874;
        v41 = v12;
        v42 = 2114;
        v43 = v13;
        v44 = 2114;
        v45 = v15;
        _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "Received image URL %{public}@ resulting in image %{public}@ for image request %{public}@", buf, 0x20u);
      }

      if (v13)
      {
        [*(a1 + 56) updateWithImage:v13];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_57;
        v29[3] = &unk_2783628F8;
        v29[4] = *(a1 + 48);
        v33 = *(a1 + 72);
        v34 = v10;
        v30 = *(a1 + 64);
        v31 = v13;
        v32 = v12;
        v16 = MEMORY[0x277D85CD0];
        dispatch_async(MEMORY[0x277D85CD0], v29);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = PBUILogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v8;
          *buf = 138543618;
          v41 = v7;
          v42 = 2114;
          v43 = v27;
          _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected response %{public}@ for image request %{public}@", buf, 0x16u);
        }

        goto LABEL_14;
      }

      v11 = v7;
      v12 = [v11 ioSurface];
      [v11 size];
      v21 = v20;
      v22 = PBUILogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [v11 size];
        v23 = BSStringFromCGSize();
        v24 = *v8;
        *buf = 138543874;
        v41 = v12;
        v42 = 2114;
        v43 = v23;
        v44 = 2114;
        v45 = v24;
        _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_DEFAULT, "Received IOSurface %{public}@ size %{public}@ for image request %{public}@", buf, 0x20u);
      }

      if ((BSFloatIsZero() & 1) == 0)
      {
        v25 = [v12 width];
        v26 = [MEMORY[0x277D755B8] pbui_imageWithIOSurface:v12 scale:0 orientation:v25 / v21];
        if (v26)
        {
          [*(a1 + 56) updateWithImage:v26];
        }
      }
    }

LABEL_14:
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_60;
    v28[3] = &unk_278362880;
    v17 = *(a1 + 72);
    v28[4] = *(a1 + 48);
    v28[5] = v17;
    v18 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v28);

    goto LABEL_18;
  }

  v19 = PBUILogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_53_cold_1(v8, v19);
  }

LABEL_18:
}

uint64_t __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "Releasing foreground scene mode assertion for image request %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) invalidate];
}

void __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_60(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) _blurViewsForVariant:{*(a1 + 40), 0}];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setNeedsLayout];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (double)parallaxFactorForVariant:(int64_t)a3
{
  if (!a3)
  {
    v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
    [v4 lockscreenParallaxFactor];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (a3 == 1)
  {
    v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
    [v4 homescreenParallaxFactor];
LABEL_5:
    v3 = v5;
  }

  return v3;
}

- (BOOL)parallaxEnabledForVariant:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
    v4 = [v3 homescreenParallaxEnabled];
  }

  else
  {
    v3 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
    v4 = [v3 lockscreenParallaxEnabled];
  }

  v5 = v4;

  return v5;
}

- (double)zoomFactorForVariant:(int64_t)a3
{
  if (!a3)
  {
    v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
    [v4 lockscreenZoomFactor];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (a3 == 1)
  {
    v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
    [v4 homescreenZoomFactor];
LABEL_5:
    v3 = v5;
  }

  return v3;
}

- (id)wallpaperView:(id)a3 wallpaperConfigurationIncludingValueTypes:(unint64_t)a4
{
  v5 = [(PBUIWallpaperRemoteViewController *)self wallpaperConfigurationManager];
  v6 = [v5 wallpaperConfigurationForVariant:1 includingValuesForTypes:a4];

  return v6;
}

- (void)setActiveVariant:(int64_t)a3 withOutAnimationFactory:(id)a4 inAnimationFactory:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(PBUIWallpaperWindowSceneTwoCurveTransitionContext);
  if ([(FBScene *)self->_scene isActive])
  {
    v14 = [v11 settings];
    [(PBUIWallpaperWindowSceneTwoCurveTransitionContext *)v13 setInAnimationSettings:v14];

    v15 = [v10 settings];
    [(PBUIWallpaperWindowSceneTwoCurveTransitionContext *)v13 setOutAnimationSettings:v15];

    v16 = [(PBUIWallpaperRemoteViewController *)self view];
    v17 = [v16 window];
    v18 = [v17 windowScene];

    [v18 _synchronizeDrawing];
    v19 = [v18 _synchronizedDrawingFence];
    [(PBUIWallpaperWindowSceneTwoCurveTransitionContext *)v13 setAnimationFence:v19];
  }

  v20 = [(FBScene *)self->_scene settings];
  v21 = [v20 mutableCopy];
  v22 = objc_opt_class();
  v23 = v21;
  if (v22)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  activeVariant = self->_activeVariant;
  self->_activeVariant = a3;
  v27 = PBUILogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    PBUIStringForWallpaperVariant(a3);
    v33 = v12;
    v28 = a3;
    v29 = v11;
    v31 = v30 = v10;
    v32 = PBUIStringForWallpaperVariant(activeVariant);
    *buf = 138543618;
    v35 = v31;
    v36 = 2114;
    v37 = v32;
    _os_log_impl(&dword_21E67D000, v27, OS_LOG_TYPE_DEFAULT, "Setting wallpaper variant to %{public}@ from %{public}@", buf, 0x16u);

    v10 = v30;
    v11 = v29;
    a3 = v28;
    v12 = v33;
  }

  [v25 setWallpaperVariant:a3];
  [(FBScene *)self->_scene updateSettings:v25 withTransitionContext:v13];
  [(PBUIWallpaperRemoteViewController *)self _updateFallbackView];
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:0];
  if (v12)
  {
    v12[2](v12);
  }
}

- (void)addObserver:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  v7 = [(PBUIWallpaperRemoteViewController *)self _observersForVariant:a4];
  [v7 addObject:v6];
}

- (void)removeObserver:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  v7 = [(PBUIWallpaperRemoteViewController *)self _observersForVariant:a4];
  [v7 removeObject:v6];
}

- (void)setAlpha:(double)a3 forWallpaperVariant:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = PBUILogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PBUIStringForWallpaperVariant(a4);
    *buf = 134218242;
    v11 = a3;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "Setting alpha %f for variant %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PBUIWallpaperRemoteViewController_setAlpha_forWallpaperVariant___block_invoke;
  v9[3] = &__block_descriptor_48_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
  v9[4] = a4;
  *&v9[5] = a3;
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v9];
}

void __66__PBUIWallpaperRemoteViewController_setAlpha_forWallpaperVariant___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 setHomescreenWallpaperAlpha:*(a1 + 40)];
  }

  else
  {
    v5 = v3;
    [v3 setLockscreenWallpaperAlpha:*(a1 + 40)];
  }

  v3 = v5;
LABEL_6:
}

- (void)setLockscreenWallpaperContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = *MEMORY[0x277D85DE8];
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = BSStringFromCGRect();
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Setting lockscreen wallpaper contents rect %{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__PBUIWallpaperRemoteViewController_setLockscreenWallpaperContentsRect___block_invoke;
  v10[3] = &__block_descriptor_64_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
  *&v10[4] = x;
  *&v10[5] = y;
  *&v10[6] = width;
  *&v10[7] = height;
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v10];
}

- (void)setLockscreenOnlyWallpaperAlpha:(double)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Setting lockscreen-only wallpaper alpha %f", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PBUIWallpaperRemoteViewController_setLockscreenOnlyWallpaperAlpha___block_invoke;
  v6[3] = &__block_descriptor_40_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
  *&v6[4] = a3;
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v6];
}

- (id)setHomescreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = [(PBUIWallpaperRemoteViewController *)self _wallpaperScaleAssertionForVariant:1 scale:a3];
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:v6];

  return v7;
}

- (double)minimumHomescreenWallpaperScale
{
  v2 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  [v2 homescreenMinimumWallpaperScale];
  v4 = v3;

  return v4;
}

- (id)setLockscreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = [(PBUIWallpaperRemoteViewController *)self _wallpaperScaleAssertionForVariant:0 scale:a3];
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:v6];

  return v7;
}

- (double)minimumLockscreenWallpaperScale
{
  v2 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  [v2 lockscreenMinimumWallpaperScale];
  v4 = v3;

  return v4;
}

- (id)_wallpaperScaleAssertionForVariant:(int64_t)a3 scale:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v7 = [PBUIWallpaperScaleAssertion alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallpaper scale %f", *&a4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__PBUIWallpaperRemoteViewController__wallpaperScaleAssertionForVariant_scale___block_invoke;
  v13[3] = &unk_2783629B0;
  objc_copyWeak(&v14, &location);
  v9 = [(PBUIWallpaperScaleAssertion *)v7 initWithVariant:a3 scale:v8 forReason:v13 invalidationBlock:a4];

  v10 = PBUILogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 description];
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEFAULT, "Acquiring wallpaper scale assertion %@", buf, 0xCu);
  }

  [(NSHashTable *)self->_wallpaperScaleAssertions addObject:v9];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __78__PBUIWallpaperRemoteViewController__wallpaperScaleAssertionForVariant_scale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = PBUILogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 description];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Removing wallpaper scale assertion %@", &v10, 0xCu);
    }

    [WeakRetained[139] removeObject:v5];
    [WeakRetained _updateWallpaperScaleWithAnimationFactory:v6];
  }
}

- (void)setDisallowsRasterization:(BOOL)a3 forVariant:(int64_t)a4 withReason:(id)a5
{
  v6 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(PBUIWallpaperRemoteViewController *)self _disallowRasterizationReasonsForVariant:a4];
  v10 = [v9 count];
  if (v6)
  {
    [v9 addObject:v8];
  }

  else
  {
    [v9 removeObject:v8];
  }

  v11 = [v9 count];
  v12 = v11 != 0;
  v13 = PBUILogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PBUIStringForWallpaperVariant(a4);
    *buf = 67109890;
    v18 = v11 != 0;
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v8;
    v23 = 1024;
    v24 = v10 != 0;
    _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_DEFAULT, "Setting rasterization disabled:%{BOOL}u for variant %{public}@ with reason %{public}@ (was disabled: %{BOOL}u)", buf, 0x22u);

    v12 = v11 != 0;
  }

  if ((v10 != 0) != (v11 != 0))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__PBUIWallpaperRemoteViewController_setDisallowsRasterization_forVariant_withReason___block_invoke;
    v15[3] = &__block_descriptor_41_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
    v15[4] = a4;
    v16 = v12;
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v15];
  }
}

void __85__PBUIWallpaperRemoteViewController_setDisallowsRasterization_forVariant_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 setDisallowHomescreenRasterization:*(a1 + 40)];
  }

  else
  {
    v5 = v3;
    [v3 setDisallowLockscreenRasterization:*(a1 + 40)];
  }

  v3 = v5;
LABEL_6:
}

- (void)setWallpaperHidden:(BOOL)a3 variant:(int64_t)a4 reason:(id)a5
{
  v6 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(PBUIWallpaperRemoteViewController *)self _hideWallpaperReasonsForVariant:a4];
  v10 = [v9 count];
  if (v6)
  {
    [v9 addObject:v8];
  }

  else
  {
    [v9 removeObject:v8];
  }

  v11 = [v9 count];
  v12 = v11 != 0;
  v13 = PBUILogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PBUIStringForWallpaperVariant(a4);
    *buf = 67109890;
    v18 = v11 != 0;
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v8;
    v23 = 1024;
    v24 = v10 != 0;
    _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_DEFAULT, "Setting wallpaper hidden:%{BOOL}u for variant %{public}@ with reason %{public}@ (was hidden: %{BOOL}u)", buf, 0x22u);

    v12 = v11 != 0;
  }

  if ((v10 != 0) != (v11 != 0))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__PBUIWallpaperRemoteViewController_setWallpaperHidden_variant_reason___block_invoke;
    v15[3] = &__block_descriptor_41_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
    v15[4] = a4;
    v16 = v12;
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v15];
  }
}

void __71__PBUIWallpaperRemoteViewController_setWallpaperHidden_variant_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 setHomescreenWallpaperHidden:*(a1 + 40)];
  }

  else
  {
    v5 = v3;
    [v3 setLockscreenWallpaperHidden:*(a1 + 40)];
  }

  v3 = v5;
LABEL_6:
}

- (id)suspendWallpaperAnimationForReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  wallpaperAnimationSuspendedReasons = self->_wallpaperAnimationSuspendedReasons;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__PBUIWallpaperRemoteViewController_suspendWallpaperAnimationForReason___block_invoke;
  v10[3] = &unk_278362A18;
  objc_copyWeak(&v13, &location);
  v6 = v4;
  v11 = v6;
  v12 = self;
  v7 = [(PBUIWallpaperRemoteViewController *)self _simpleAssertionWithReasonsSet:wallpaperAnimationSuspendedReasons identifier:@"WallpaperAnimationSuspended" reason:v6 updater:v10];
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Suspending animation for reason %{public}@ assertion %p", buf, 0x16u);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __72__PBUIWallpaperRemoteViewController_suspendWallpaperAnimationForReason___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = PBUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v10 = v6;
      v11 = 1024;
      v12 = a2 ^ 1;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Animation suspension assertion for reason %{public}@ invalidated. Setting sampling suspended:%{BOOL}u", buf, 0x12u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__PBUIWallpaperRemoteViewController_suspendWallpaperAnimationForReason___block_invoke_75;
    v7[3] = &__block_descriptor_33_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
    v8 = a2;
    [WeakRetained _updateWallpaperSceneSettingsWithBlock:v7];
    [*(a1 + 40) _reconfigureBlurViewsForVariant:1];
    [*(a1 + 40) _reconfigureBlurViewsForVariant:0];
  }
}

- (void)updateIrisWallpaperForInteractiveMode
{
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Updating iris wallpaper for interactive mode", v4, 2u);
  }

  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:&__block_literal_global_11];
}

- (BOOL)updateIrisWallpaperForStaticMode
{
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Updating iris wallpaper for static mode", v7, 2u);
  }

  v4 = [(PBUIWallpaperRemoteViewController *)self irisWallpaperPlayer];
  v5 = [v4 irisPlaybackState];

  if (!v5)
  {
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:&__block_literal_global_79];
  }

  return v5 == 0;
}

- (void)cancelInProcessAnimations
{
  v3 = [(PBUIWallpaperRemoteViewController *)self view];
  v2 = [v3 window];
  [v2 _removeAllRetargetableAnimations:1];
}

- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState
{
  v7 = [(PBUIWallpaperRemoteViewController *)self _sceneSettings];
  v4 = [v7 homescreenStyleTransitionState];
  v5 = v4;
  if (v4)
  {
    [v4 highestPriorityStyleTransitionState];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0.0;
  }

  return result;
}

- (BOOL)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6
{
  v10 = a6;
  PBUIWallpaperStyleTransitionStateMake(a3, a3, v12, 0.0);
  LOBYTE(a5) = [(PBUIWallpaperRemoteViewController *)self setWallpaperStyleTransitionState:v12 forPriority:a4 forVariant:a5 withAnimationFactory:v10];

  return a5;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [(PBUIWallpaperRemoteViewController *)self _sceneSettings];
  v12 = v11;
  if (!a5)
  {
    v13 = [v11 lockscreenStyleTransitionState];
LABEL_5:
    v14 = v13;
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a5 == 1)
  {
    v13 = [v11 homescreenStyleTransitionState];
    goto LABEL_5;
  }

LABEL_6:
  v14 = objc_alloc_init(PBUIWallpaperWindowSceneStyleTransitionState);
LABEL_7:
  v15 = [(PBUIWallpaperWindowSceneStyleTransitionState *)v14 copy];
  *buf = *&a3->var0;
  *&buf[16] = a3->var2;
  [v15 setWallpaperStyleTransitionState:buf forPriority:a4];
  v16 = [v15 isEqual:v14];
  v17 = v16;
  v26 = v16 ^ 1;
  v18 = PBUILogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *&a3->var0;
    *&buf[16] = a3->var2;
    v19 = PBUIStringForStyleTransitionState(buf);
    v20 = PBUIStringForWallpaperStylePriority(a4);
    PBUIStringForWallpaperVariant(a5);
    v25 = self;
    v21 = v12;
    v23 = v22 = v10;
    *buf = 138544130;
    *&buf[4] = v19;
    *&buf[12] = 2114;
    *&buf[14] = v20;
    *&buf[22] = 2114;
    v33 = v23;
    v34 = 1024;
    v35 = v26;
    _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_DEFAULT, "Setting wallpaper style transition state %{public}@ for priority %{public}@ variant %{public}@. Is different:%{BOOL}u", buf, 0x26u);

    v10 = v22;
    v12 = v21;
    self = v25;
  }

  if ((v17 & 1) == 0)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __114__PBUIWallpaperRemoteViewController_setWallpaperStyleTransitionState_forPriority_forVariant_withAnimationFactory___block_invoke;
    v27[3] = &unk_278362A60;
    v31 = a5;
    v28 = v15;
    v29 = v10;
    v30 = self;
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithTransitionBlock:v27];
  }

  return v26;
}

id __114__PBUIWallpaperRemoteViewController_setWallpaperStyleTransitionState_forPriority_forVariant_withAnimationFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    if (v5 == 1)
    {
      [v3 setHomescreenStyleTransitionState:*(a1 + 32)];
    }
  }

  else
  {
    [v3 setLockscreenStyleTransitionState:*(a1 + 32)];
  }

  v6 = [MEMORY[0x277D75188] transitionContext];
  v7 = [*(a1 + 40) settings];
  if (v7)
  {
    v8 = [*(a1 + 48) view];
    v9 = [v8 window];
    v10 = [v9 windowScene];

    [v10 _synchronizeDrawing];
    v11 = [v10 _synchronizedDrawingFence];
    [v6 setAnimationFence:v11];

    [v6 setAnimationSettings:v7];
  }

  return v6;
}

- (BOOL)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4 withAnimationFactory:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(PBUIWallpaperRemoteViewController *)self _sceneSettings];
  v10 = v9;
  if (!a4)
  {
    v11 = [v9 lockscreenStyleTransitionState];
LABEL_5:
    v12 = v11;
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v11 = [v9 homescreenStyleTransitionState];
    goto LABEL_5;
  }

LABEL_6:
  v12 = objc_alloc_init(PBUIWallpaperWindowSceneStyleTransitionState);
LABEL_7:
  v13 = [(PBUIWallpaperWindowSceneStyleTransitionState *)v12 copy];
  [v13 removeWallpaperStyleTransitionStateForPriority:a3];
  v14 = [v13 isEqual:v12];
  v15 = v14;
  v16 = v14 ^ 1;
  v17 = PBUILogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PBUIStringForWallpaperStylePriority(a3);
    PBUIStringForWallpaperVariant(a4);
    v23 = self;
    v19 = v10;
    v21 = v20 = v8;
    *buf = 138543874;
    v30 = v18;
    v31 = 2114;
    v32 = v21;
    v33 = 1024;
    v34 = v16;
    _os_log_impl(&dword_21E67D000, v17, OS_LOG_TYPE_DEFAULT, "Removing wallpaper style transition state for priority %{public}@ variant %{public}@. Is different:%{BOOL}u", buf, 0x1Cu);

    v8 = v20;
    v10 = v19;
    self = v23;
  }

  if ((v15 & 1) == 0)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __101__PBUIWallpaperRemoteViewController_removeWallpaperStyleForPriority_forVariant_withAnimationFactory___block_invoke;
    v24[3] = &unk_278362A60;
    v28 = a4;
    v25 = v13;
    v26 = v8;
    v27 = self;
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithTransitionBlock:v24];
  }

  return v16;
}

id __101__PBUIWallpaperRemoteViewController_removeWallpaperStyleForPriority_forVariant_withAnimationFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    if (v5 == 1)
    {
      [v3 setHomescreenStyleTransitionState:*(a1 + 32)];
    }
  }

  else
  {
    [v3 setLockscreenStyleTransitionState:*(a1 + 32)];
  }

  v6 = [MEMORY[0x277D75188] transitionContext];
  v7 = [*(a1 + 40) settings];
  if (v7)
  {
    v8 = [*(a1 + 48) view];
    v9 = [v8 window];
    v10 = [v9 windowScene];

    [v10 _synchronizeDrawing];
    v11 = [v10 _synchronizedDrawingFence];
    [v6 setAnimationFence:v11];

    [v6 setAnimationSettings:v7];
  }

  return v6;
}

- (id)requireWallpaperWithReason:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  wallpaperRequiredReasons = self->_wallpaperRequiredReasons;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PBUIWallpaperRemoteViewController_requireWallpaperWithReason___block_invoke;
  v10[3] = &unk_278362A88;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v11 = v6;
  v7 = [(PBUIWallpaperRemoteViewController *)self _simpleAssertionWithReasonsSet:wallpaperRequiredReasons identifier:@"WallpaperRequired" reason:v6 updater:v10];
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Beginning wallpaper requiring for reason %{public}@ assertion %p", buf, 0x16u);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

void __64__PBUIWallpaperRemoteViewController_requireWallpaperWithReason___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = PBUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v10 = v6;
      v11 = 1024;
      v12 = a2 ^ 1;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Ending wallpaper requiring with reason %{public}@. Setting wallpaper required:%{BOOL}u", buf, 0x12u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__PBUIWallpaperRemoteViewController_requireWallpaperWithReason___block_invoke_86;
    v7[3] = &__block_descriptor_33_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
    v8 = a2;
    [WeakRetained _updateWallpaperSceneSettingsWithBlock:v7];
  }
}

- (void)preheatWallpaperForVariant:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(FBScene *)self->_scene isActive])
  {
    v5 = PBUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PBUIStringForWallpaperVariant(a3);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Sending wallpaper preheat action for variant %{public}@", &v11, 0xCu);
    }

    scene = self->_scene;
    v8 = MEMORY[0x277CBEB98];
    v9 = [[PBUIWallpaperPreheatAction alloc] initWithVariant:a3];
    v10 = [v8 setWithObject:v9];
    [(FBScene *)scene sendActions:v10];
  }
}

- (void)beginDelayingHomescreenStyleChangesForReason:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableSet *)self->_homescreenChangesDelayedReasons addObject:v4];
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Beginning delaying homescreen style changes for reason %{public}@", &v6, 0xCu);
  }

  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:&__block_literal_global_89];
}

- (void)endDelayingHomescreenStyleChangesForReason:(id)a3 animationFactory:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->_homescreenChangesDelayedReasons removeObject:v6];
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSMutableSet *)self->_homescreenChangesDelayedReasons count];
    *buf = 138543618;
    v14 = v6;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Ending delaying homescreen style changes for reason %{public}@. Remaining reasons: %ld", buf, 0x16u);
  }

  if (![(NSMutableSet *)self->_homescreenChangesDelayedReasons count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __97__PBUIWallpaperRemoteViewController_endDelayingHomescreenStyleChangesForReason_animationFactory___block_invoke;
    v10[3] = &unk_278362AB0;
    v11 = v7;
    v12 = self;
    [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithTransitionBlock:v10];
  }
}

id __97__PBUIWallpaperRemoteViewController_endDelayingHomescreenStyleChangesForReason_animationFactory___block_invoke(uint64_t a1, void *a2)
{
  [a2 setHomescreenStyleChangesDelayed:0];
  v3 = [MEMORY[0x277D75188] transitionContext];
  v4 = [*(a1 + 32) settings];
  if (v4)
  {
    v5 = [*(a1 + 40) view];
    v6 = [v5 window];
    v7 = [v6 windowScene];

    [v7 _synchronizeDrawing];
    v8 = [v7 _synchronizedDrawingFence];
    [v3 setAnimationFence:v8];

    [v3 setAnimationSettings:v4];
  }

  return v3;
}

- (id)newFakeBlurViewForVariant:(int64_t)a3 style:(int64_t)a4 transformOptions:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  v9 = [WeakRetained wallpaperPresenter:self requestsOrientationWithRefresh:1];

  v10 = [[PBUIFakeBlurView alloc] initWithVariant:a3 imageProvider:self fakeBlurRegistry:self wallpaperViewDelegate:self transformOptions:a5 reachabilityCoordinator:self->_reachabilityCoordinator];
  v11 = v10;
  if (v9)
  {
    v12 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__PBUIWallpaperRemoteViewController_newFakeBlurViewForVariant_style_transformOptions___block_invoke;
    v14[3] = &unk_278362880;
    v15 = v10;
    v16 = v9;
    [v12 performWithoutAnimation:v14];
  }

  return v11;
}

- (void)updateWallpaperForLocations:(int64_t)a3 wallpaperMode:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__PBUIWallpaperRemoteViewController_updateWallpaperForLocations_wallpaperMode_withCompletion___block_invoke;
  v10[3] = &unk_278362B00;
  v10[4] = self;
  v11 = v8;
  v12 = a3;
  v13 = a4;
  v9 = v8;
  [(PBUIWallpaperRemoteViewController *)self _performWithLiveScene:v10];
}

void __94__PBUIWallpaperRemoteViewController_updateWallpaperForLocations_wallpaperMode_withCompletion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "Acquiring foreground support scene mode assertion for wallpaper update", buf, 2u);
  }

  v3 = [*(a1 + 32) _acquireSceneModeAssertionForReason:@"UpdateWallpaperForLocations" sceneMode:2];
  v4 = MEMORY[0x277CF0B60];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__PBUIWallpaperRemoteViewController_updateWallpaperForLocations_wallpaperMode_withCompletion___block_invoke_95;
  v17 = &unk_278362AD8;
  v5 = *(a1 + 40);
  v18 = v3;
  v19 = v5;
  v6 = v3;
  v7 = [v4 responderWithHandler:&v14];
  [v7 setQueue:{MEMORY[0x277D85CD0], v14, v15, v16, v17}];
  [v7 setTimeout:15];
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PBUIStringForWallpaperLocations(*(a1 + 48));
    v10 = PBUIStringForWallpaperMode(*(a1 + 56));
    *buf = 138543618;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Sending wallpaper update locations action for locations %{public}@ wallpaper mode %{public}@", buf, 0x16u);
  }

  v11 = [[PBUIWallpaperUpdateLocationsAction alloc] initWithLocations:*(a1 + 48) wallpaperMode:*(a1 + 56) responder:v7];
  v12 = *(*(a1 + 32) + 992);
  v13 = [MEMORY[0x277CBEB98] setWithObject:v11];
  [v12 sendActions:v13];
}

void __94__PBUIWallpaperRemoteViewController_updateWallpaperForLocations_wallpaperMode_withCompletion___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating foreground support scene mode assertion for wallpaper update", v6, 2u);
  }

  [*(a1 + 32) invalidate];
}

- (void)noteWillAnimateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_lockscreenBlurViews;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v22 + 1) + 8 * v11++) rotateToInterfaceOrientation:a3];
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_homescreenBlurViews;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * v16++) rotateToInterfaceOrientation:a3];
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__PBUIWallpaperRemoteViewController_noteWillAnimateToInterfaceOrientation_duration___block_invoke;
  v17[3] = &unk_278362B28;
  v17[4] = self;
  v17[5] = a3;
  *&v17[6] = a4;
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithTransitionBlock:v17];
}

id __84__PBUIWallpaperRemoteViewController_noteWillAnimateToInterfaceOrientation_duration___block_invoke(uint64_t a1, void *a2)
{
  [a2 setInterfaceOrientation:*(a1 + 40)];
  v3 = [MEMORY[0x277D75188] transitionContext];
  v4 = [*(a1 + 32) view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  [v6 _synchronizeDrawing];
  v7 = [v6 _synchronizedDrawingFence];
  [v3 setAnimationFence:v7];

  v8 = [MEMORY[0x277CF0B70] settingsWithDuration:*(a1 + 48)];
  [v3 setAnimationSettings:v8];

  return v3;
}

- (PLKLegibilityEnvironment)legibilityEnvironment
{
  v10[2] = *MEMORY[0x277D85DE8];
  currentLegibilityEnvironment = self->_currentLegibilityEnvironment;
  if (currentLegibilityEnvironment)
  {
    v3 = currentLegibilityEnvironment;
  }

  else
  {
    v5 = [(PBUIWallpaperRemoteViewController *)self legibilitySettingsForVariant:1];
    v6 = [(PBUIWallpaperRemoteViewController *)self legibilitySettingsForVariant:0];
    v9[0] = &unk_282FD5BC0;
    v9[1] = &unk_282FD5BD8;
    v10[0] = v5;
    v10[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [(PBUIWallpaperRemoteViewController *)self _legibilityUpdatedWithDictionary:v7 notifyObservers:0];

    v3 = self->_currentLegibilityEnvironment;
  }

  return v3;
}

- (id)legibilitySettingsForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  v5 = v4;
  if (!a3)
  {
    v6 = [v4 lockscreenLegibilitySettings];
LABEL_5:
    v7 = v6;
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v6 = [v4 homescreenLegibilitySettings];
    goto LABEL_5;
  }

LABEL_6:
  v7 = PBUIFallbackLegibilitySettings();
LABEL_7:

  return v7;
}

- (id)averageColorForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  v5 = v4;
  if (!a3)
  {
    v6 = [v4 lockscreenAverageColor];
LABEL_5:
    v7 = v6;
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v6 = [v4 homescreenAverageColor];
    goto LABEL_5;
  }

LABEL_6:
  v7 = [MEMORY[0x277D75348] clearColor];
LABEL_7:

  return v7;
}

- (double)contrastForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  v5 = v4;
  if (!a3)
  {
    [v4 lockscreenContrast];
    goto LABEL_5;
  }

  v6 = 0.0;
  if (a3 == 1)
  {
    [v4 homescreenContrast];
LABEL_5:
    v6 = v7;
  }

  return v6;
}

- (void)remoteIrisWallpaperPlayer:(id)a3 touchActiveChanged:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Setting live wallpaper touch active: %{BOOL}u", buf, 8u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__PBUIWallpaperRemoteViewController_remoteIrisWallpaperPlayer_touchActiveChanged___block_invoke;
  v7[3] = &__block_descriptor_33_e49_v16__0__PBUIMutableWallpaperWindowSceneSettings_8l;
  v8 = v4;
  [(PBUIWallpaperRemoteViewController *)self _updateWallpaperSceneSettingsWithBlock:v7];
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a4;
  v24 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v24)
  {
    v23 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * i);
        v6 = PBUILogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v41 = v5;
          _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Received action %{public}@", buf, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          WeakRetained = v5;
          v8 = [WeakRetained variant];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v9 = [(PBUIWallpaperRemoteViewController *)self _observersForVariant:v8];
          v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v31;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v31 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v30 + 1) + 8 * j);
                if (objc_opt_respondsToSelector())
                {
                  [v14 wallpaperWillChangeForVariant:v8];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v11);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            WeakRetained = v5;
            v15 = [WeakRetained variant];
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v16 = [(PBUIWallpaperRemoteViewController *)self _observersForVariant:v15];
            v17 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v27;
              do
              {
                for (k = 0; k != v18; ++k)
                {
                  if (*v27 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v26 + 1) + 8 * k);
                  if (objc_opt_respondsToSelector())
                  {
                    [v21 wallpaperDidChangeForVariant:v15];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
              }

              while (v18);
            }

            [(PBUIWallpaperRemoteViewController *)self _reconfigureBlurViewsForVariant:v15];
            [(PBUIWallpaperRemoteViewController *)self _updateBlurViewsForVariant:v15];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
            [WeakRetained wallpaperPresenterDidCompleteWallpaperChange:self];
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_scene == a3)
  {
    v7 = PBUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *v17 = self;
      *&v17[8] = 2112;
      v18 = *&v6;
      _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "Remote wallpaper controller %p scene did deactivate with error: %@", buf, 0x16u);
    }

    [(PBUISessionReconnectPolicy *)self->_reconnectPolicy sessionDidDisconnect];
    v8 = [(PBUIWallpaperRemoteViewController *)self _effectiveSceneMode];
    v9 = self->_missingEffectViewImages || [(NSMutableSet *)self->_pendingEffectViewImageSlots count]!= 0;
    v10 = PBUILogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v17 = v8 != 0;
      *&v17[4] = 1024;
      *&v17[6] = v9;
      _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEFAULT, "shouldReactivateForSceneMode: %{BOOL}u\nshouldReactivateForEffectImages: %{BOOL}u\n", buf, 0xEu);
    }

    if (v8 != 0 || v9)
    {
      [(PBUISessionReconnectPolicy *)self->_reconnectPolicy sessionReconnectDelay];
      v12 = v11;
      v13 = PBUILogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *v17 = self;
        *&v17[8] = 2048;
        v18 = v12;
        _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_DEFAULT, "Attempting reactivation of remote wallpaper controller %p scene in %0.3f seconds.", buf, 0x16u);
      }

      v14 = dispatch_time(0, (v12 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__PBUIWallpaperRemoteViewController_sceneDidDeactivate_withError___block_invoke;
      block[3] = &unk_278361E18;
      block[4] = self;
      dispatch_after(v14, MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __66__PBUIWallpaperRemoteViewController_sceneDidDeactivate_withError___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "Reactivating remote wallpaper controller scene %p.", &v5, 0xCu);
  }

  return [*(a1 + 32) _setupScene];
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v51[3] = &unk_278362B50;
  v51[4] = &v52;
  v14 = MEMORY[0x223D62EE0](v51);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2;
  v46[3] = &unk_278362B50;
  v46[4] = &v47;
  v32 = MEMORY[0x223D62EE0](v46);
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_3;
  v43[3] = &unk_278362B50;
  v43[4] = v44;
  v33 = MEMORY[0x223D62EE0](v43);
  v15 = objc_alloc_init(PBUIWallpaperWindowSceneClientSettingsDiffInspector);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_4;
  v42[3] = &unk_278362B50;
  v42[4] = &v72;
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeHomescreenLegibilitySettingsWithBlock:v42];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_5;
  v41[3] = &unk_278362B50;
  v41[4] = &v68;
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenLegibilitySettingsWithBlock:v41];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_6;
  v40[3] = &unk_278362B50;
  v40[4] = &v64;
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeHomescreenAverageColorWithBlock:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_7;
  v39[3] = &unk_278362B50;
  v39[4] = &v60;
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenContrastWithBlock:v39];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeHomescreenContentStaticWithBlock:v33];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenContentStaticWithBlock:v33];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenContentLiveWallpaperWithBlock:v33];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeHomescreenParallaxFactorWithBlock:v14];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeHomescreenParallaxEnabledWithBlock:v14];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeHomescreenZoomFactorWithBlock:v14];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenParallaxFactorWithBlock:v32];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenParallaxEnabledWithBlock:v32];
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLockscreenZoomFactorWithBlock:v32];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __111__PBUIWallpaperRemoteViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_8;
  v38[3] = &unk_278362B50;
  v38[4] = &v56;
  [(PBUIWallpaperWindowSceneClientSettingsDiffInspector *)v15 observeLiveWallpaperPlaybackStateWithBlock:v38];
  [v11 evaluateWithInspector:v15 context:0];
  v31 = objc_opt_new();
  v16 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  v17 = v16;
  if (*(v73 + 24) == 1)
  {
    v18 = [v16 homescreenLegibilitySettings];
    [v31 bs_setSafeObject:v18 forKey:&unk_282FD5BC0];
  }

  if (*(v69 + 24) == 1)
  {
    v19 = [v17 lockscreenLegibilitySettings];
    v27 = self;
    v28 = v13;
    v29 = v11;
    v30 = v10;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = self->_lockscreenObservers;
    v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v34 objects:v78 count:16];
    if (v21)
    {
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v24 wallpaperLegibilitySettingsDidChange:v19 forVariant:0];
          }
        }

        v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v34 objects:v78 count:16];
      }

      while (v21);
    }

    v11 = v29;
    v10 = v30;
    v13 = v28;
    self = v27;
    [(PBUIWallpaperRemoteViewController *)v27 _reconfigureBlurViewsForVariant:0];
  }

  if ((v73[3] & 1) != 0 || *(v69 + 24) == 1)
  {
    [(PBUIWallpaperRemoteViewController *)self _legibilityUpdatedWithDictionary:v31 notifyObservers:1];
  }

  if ((v65[3] & 1) != 0 || *(v61 + 24) == 1)
  {
    [(PBUIWallpaperRemoteViewController *)self _updateFallbackView];
  }

  if (*(v53 + 24) == 1)
  {
    [(PBUIWallpaperRemoteViewController *)self _reconfigureBlurViewsForVariant:1];
  }

  if (*(v48 + 24) == 1)
  {
    [(PBUIWallpaperRemoteViewController *)self _reconfigureBlurViewsForVariant:0];
  }

  if (*(v57 + 24) == 1)
  {
    v25 = PBUILogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PBUIIrisWallpaperPlaybackStateDescription([v17 liveWallpaperPlaybackState]);
      *buf = 138543362;
      v77 = v26;
      _os_log_impl(&dword_21E67D000, v25, OS_LOG_TYPE_DEFAULT, "Live wallpaper playback state changed. Playback state: %{public}@", buf, 0xCu);
    }

    -[PBUIRemoteIrisWallpaperPlayer _setIrisPlaybackState:](self->_remoteIrisWallpaperPlayer, "_setIrisPlaybackState:", [v17 liveWallpaperPlaybackState]);
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
}

- (void)_legibilityUpdatedWithDictionary:(id)a3 notifyObservers:(BOOL)a4
{
  v4 = a4;
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:&unk_282FD5BD8];
  v8 = [v6 objectForKeyedSubscript:&unk_282FD5BC0];
  if (!(v7 | v8))
  {
    goto LABEL_57;
  }

  if (!self->_legibilityEnvironmentBuilder)
  {
    v9 = objc_alloc_init(getPLKLegibilityEnvironmentBuilderClass());
    legibilityEnvironmentBuilder = self->_legibilityEnvironmentBuilder;
    self->_legibilityEnvironmentBuilder = v9;
  }

  if (!(v7 | v8))
  {
    goto LABEL_57;
  }

  v49 = v4;
  v11 = self->_legibilityEnvironmentBuilder;
  if (v7)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = getPLKLegibilityEnvironmentVariantLockScreen();
    getPLKLegibilityEnvironmentVariantDefault();
    v15 = v14 = self;
    v16 = [v12 setWithObjects:{v13, v15, 0}];
    [(PLKLegibilityEnvironmentBuilder *)v11 updateWithLegibilitySettings:v7 variants:v16];

    self = v14;
    v11 = v14->_legibilityEnvironmentBuilder;
  }

  if (v8)
  {
    v17 = MEMORY[0x277CBEB98];
    v18 = getPLKLegibilityEnvironmentVariantHomeScreen();
    v19 = [v17 setWithObjects:{v18, 0}];
    [(PLKLegibilityEnvironmentBuilder *)v11 updateWithLegibilitySettings:v8 variants:v19];

    v11 = self->_legibilityEnvironmentBuilder;
  }

  v20 = v49;
  v21 = [(PLKLegibilityEnvironmentBuilder *)v11 buildWithError:0];
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_currentLegibilityEnvironment, v21);
    if (!v49)
    {

      if (!v7)
      {
        if (!v8)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      goto LABEL_43;
    }

    v48 = v6;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v22 = self->_lockscreenObservers;
    v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v63;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v63 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v62 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v27 wallpaperLegibilityEnvironmentDidChange:v21];
          }
        }

        v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v24);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v28 = self->_homescreenObservers;
    v29 = [(NSHashTable *)v28 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v59;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v58 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v33 wallpaperLegibilityEnvironmentDidChange:v21];
          }
        }

        v30 = [(NSHashTable *)v28 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v30);
    }

    v6 = v48;
    v20 = v49;
  }

  if (!v7)
  {
    goto LABEL_44;
  }

  if (v20)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v34 = self;
    v35 = self->_lockscreenObservers;
    v36 = [(NSHashTable *)v35 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v54 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v40 wallpaperLegibilitySettingsDidChange:v7 forVariant:0];
          }
        }

        v37 = [(NSHashTable *)v35 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v37);
    }

    self = v34;
    v20 = v49;
  }

LABEL_43:
  [(PBUIWallpaperRemoteViewController *)self _reconfigureBlurViewsForVariant:0];
LABEL_44:
  if (v8)
  {
    if (v20)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v41 = self;
      v42 = self->_homescreenObservers;
      v43 = [(NSHashTable *)v42 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v51;
        do
        {
          for (m = 0; m != v44; ++m)
          {
            if (*v51 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v50 + 1) + 8 * m);
            if (objc_opt_respondsToSelector())
            {
              [v47 wallpaperLegibilitySettingsDidChange:v8 forVariant:1];
            }
          }

          v44 = [(NSHashTable *)v42 countByEnumeratingWithState:&v50 objects:v66 count:16];
        }

        while (v44);
      }

      self = v41;
    }

LABEL_56:
    [(PBUIWallpaperRemoteViewController *)self _reconfigureBlurViewsForVariant:1];
  }

LABEL_57:
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperRemoteViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__PBUIWallpaperRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783622E0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __75__PBUIWallpaperRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"scenePresenter"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1008) withName:@"reconnectPolicy"];
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 1016) allObjects];
  [v4 appendArraySection:v5 withName:@"lockscreenObservers" skipIfEmpty:1 objectTransformer:&__block_literal_global_128];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 1024) allObjects];
  [v6 appendArraySection:v7 withName:@"homescreenObservers" skipIfEmpty:1 objectTransformer:&__block_literal_global_133];

  v8 = *(a1 + 32);
  v9 = [*(*(a1 + 40) + 1032) allObjects];
  [v8 appendArraySection:v9 withName:@"lockscreenBlurViews" skipIfEmpty:1];

  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 1040) allObjects];
  [v10 appendArraySection:v11 withName:@"homescreenBlurViews" skipIfEmpty:1];

  v12 = *(a1 + 32);
  v13 = [*(*(a1 + 40) + 1064) allObjects];
  [v12 appendArraySection:v13 withName:@"disallowRasterizationReasonsLockVariant" skipIfEmpty:1];

  v14 = *(a1 + 32);
  v15 = [*(*(a1 + 40) + 1056) allObjects];
  [v14 appendArraySection:v15 withName:@"disallowRasterizationReasonsHomeVariant" skipIfEmpty:1];

  v16 = *(a1 + 32);
  v17 = [*(*(a1 + 40) + 1080) allObjects];
  [v16 appendArraySection:v17 withName:@"hideWallpaperReasonsLockVariant" skipIfEmpty:1];

  v18 = *(a1 + 32);
  v19 = [*(*(a1 + 40) + 1072) allObjects];
  [v18 appendArraySection:v19 withName:@"hideWallpaperReasonsHomeVariant" skipIfEmpty:1];

  v20 = *(a1 + 32);
  v21 = [*(*(a1 + 40) + 1088) allObjects];
  [v20 appendArraySection:v21 withName:@"wallpaperAnimationSuspendedReasons" skipIfEmpty:1];

  v22 = *(a1 + 32);
  v23 = [*(*(a1 + 40) + 1096) allObjects];
  [v22 appendArraySection:v23 withName:@"wallpaperRequiredReasons" skipIfEmpty:1];

  v24 = *(a1 + 32);
  v25 = [*(*(a1 + 40) + 1104) allObjects];
  [v24 appendArraySection:v25 withName:@"homescreenChangesDelayedReasons" skipIfEmpty:1];

  v26 = *(a1 + 32);
  v27 = [*(*(a1 + 40) + 1112) allObjects];
  [v26 appendArraySection:v27 withName:@"scaleAssertions" skipIfEmpty:1];

  v28 = *(a1 + 32);
  v29 = [*(*(a1 + 40) + 1120) allObjects];
  [v28 appendArraySection:v29 withName:@"sceneModeAssertions" skipIfEmpty:1];

  v30 = *(a1 + 32);
  v31 = [*(*(a1 + 40) + 1128) allObjects];
  [v30 appendArraySection:v31 withName:@"externalSceneModeAssertionActions" skipIfEmpty:1];

  v32 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1136) withName:@"sceneModeAssertionForViewMode"];
  v33 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1152) withName:@"scenePresentationView"];
  v34 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1160) withName:@"missingEffectViewImages" ifEqualTo:1];
  v35 = *(a1 + 32);
  v36 = [*(*(a1 + 40) + 1168) allObjects];
  [v35 appendArraySection:v36 withName:@"pendingEffectViewImageSlots" skipIfEmpty:1];

  v37 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1176) withName:@"eventQueue"];
  v38 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1184) withName:@"remoteIrisWallpaperPlayer"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 1216) withName:@"cachingIdentifier"];
  v39 = *(a1 + 32);
  v40 = [MEMORY[0x277CF0C00] succinctDescriptionForObject:*(*(a1 + 40) + 1224)];
  v41 = [v39 appendObject:v40 withName:@"wallpaperConfigurationManager"];

  v42 = MEMORY[0x277CF0C00];
  v43 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1232));
  v45 = [v42 succinctDescriptionForObject:WeakRetained];
  v46 = [v43 appendObject:v45 withName:@"wallpaperPresentingDelegate"];

  v47 = *(a1 + 32);
  v48 = PBUIStringForWallpaperVariant(*(*(a1 + 40) + 1248));
  [v47 appendString:v48 withName:@"activeVariant"];

  v49 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1144) withName:@"sceneDeactivationTimer" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 992) withName:@"scene"];
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperRemoteViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)_performWithLiveScene:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CF0C30];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__PBUIWallpaperRemoteViewController__performWithLiveScene___block_invoke;
  v11 = &unk_278362420;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 eventWithName:@"Perform with live scene" handler:&v8];
  [(BSEventQueue *)self->_eventQueue executeOrInsertEvent:v7 atPosition:1, v8, v9, v10, v11, v12];
}

void __59__PBUIWallpaperRemoteViewController__performWithLiveScene___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 992) isActive])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__PBUIWallpaperRemoteViewController__performWithLiveScene___block_invoke_2;
    v5[3] = &unk_278362B98;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v3 _setupSceneWithCompletion:v5];
  }
}

uint64_t __59__PBUIWallpaperRemoteViewController__performWithLiveScene___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _performWithLiveScene:*(a1 + 40)];
  }
}

- (void)_updateWallpaperSceneSettingsWithTransitionBlock:(id)a3
{
  v4 = a3;
  scene = self->_scene;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__PBUIWallpaperRemoteViewController__updateWallpaperSceneSettingsWithTransitionBlock___block_invoke;
  v7[3] = &unk_278362BC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FBScene *)scene updateSettingsWithTransitionBlock:v7];
}

void *__86__PBUIWallpaperRemoteViewController__updateWallpaperSceneSettingsWithTransitionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = 0;
  }

  if ([*(*(a1 + 32) + 992) isActive])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (void)_updateWallpaperSceneSettingsWithBlock:(id)a3 postUpdateBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CF0C30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__PBUIWallpaperRemoteViewController__updateWallpaperSceneSettingsWithBlock_postUpdateBlock___block_invoke;
  v12[3] = &unk_278362BE8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 eventWithName:@"Update scene settings" handler:v12];
  [(BSEventQueue *)self->_eventQueue executeOrInsertEvent:v11 atPosition:1];
}

void __92__PBUIWallpaperRemoteViewController__updateWallpaperSceneSettingsWithBlock_postUpdateBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 992);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__PBUIWallpaperRemoteViewController__updateWallpaperSceneSettingsWithBlock_postUpdateBlock___block_invoke_2;
  v4[3] = &unk_278362808;
  v5 = *(a1 + 40);
  [v2 updateSettingsWithBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void __92__PBUIWallpaperRemoteViewController__updateWallpaperSceneSettingsWithBlock_postUpdateBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_setupSceneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_scene == 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke;
  v14[3] = &unk_278362C10;
  v6 = !v5;
  v16 = v6;
  v14[4] = self;
  v15 = v4;
  v7 = v4;
  v8 = MEMORY[0x223D62EE0](v14);
  v9 = MEMORY[0x277CF0C30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_219;
  v12[3] = &unk_278362420;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  v11 = [v9 eventWithName:@"Setup scene" handler:v12];
  [(BSEventQueue *)self->_eventQueue executeOrInsertEvent:v11 atPosition:1];
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Scene setup completed. Success: %{BOOL}u Error: %{public}@", v9, 0x12u);
  }

  if (a2)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      [*(a1 + 32) _notifyAllObserversOfNewWallpaperScene];
      [*(a1 + 32) _updateFallbackView];
    }

    v7 = *(a1 + 32);
    if ((*(v7 + 1160) & 1) == 0)
    {
      if (![*(v7 + 1168) count])
      {
        goto LABEL_10;
      }

      v7 = *(a1 + 32);
    }

    *(v7 + 1160) = 0;
    [*(*(a1 + 32) + 1168) removeAllObjects];
    [*(a1 + 32) _reconfigureBlurViewsForVariant:1];
    [*(a1 + 32) _reconfigureBlurViewsForVariant:0];
    [*(a1 + 32) _updateBlurViewsForVariant:1];
    [*(a1 + 32) _updateBlurViewsForVariant:0];
  }

LABEL_10:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_219(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 992))
  {
    v2 = PBUILogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 992);
      *buf = 138543362;
      v31 = v3;
      _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "Activating existing wallpaper scene %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 992);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_220;
    v29[3] = &unk_278362C38;
    v29[4] = v5;
    [v6 performUpdate:v29 withCompletion:v4];
  }

  else
  {
    if (_PBUIWallpaperRemoteViewControllerSceneWorkspace_onceToken != -1)
    {
      __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_219_cold_1();
    }

    v7 = _PBUIWallpaperRemoteViewControllerSceneWorkspace_workspace;
    v8 = [v7 createScene:&__block_literal_global_224];
    v9 = *(a1 + 32);
    v10 = *(v9 + 992);
    *(v9 + 992) = v8;

    v11 = PBUILogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 992);
      *buf = 138543362;
      v31 = v12;
      _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEFAULT, "Created new wallpaper scene %{public}@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 992) setDelegate:?];
    v13 = [*(*(a1 + 32) + 992) layerManager];
    [v13 addObserver:*(a1 + 32)];

    v14 = *(a1 + 32);
    v15 = *(v14 + 992);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_234;
    v28[3] = &unk_278362CC8;
    v28[4] = v14;
    [v15 configureParameters:v28];
    v16 = [*(*(a1 + 32) + 992) uiPresentationManager];
    v17 = PBUIWallpaperWorkspaceIdentifier_block_invoke_sequenceNumber++;
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIWallpaperRemoteViewController-%ld", v17];
    v19 = [v16 createPresenterWithIdentifier:v18];
    v20 = *(a1 + 32);
    v21 = *(v20 + 1000);
    *(v20 + 1000) = v19;

    [*(*(a1 + 32) + 1000) modifyPresentationContext:&__block_literal_global_247];
    [*(*(a1 + 32) + 1000) activate];
    v22 = PBUILogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_DEFAULT, "Installing live scene view on scene setup", buf, 2u);
    }

    v23 = [*(*(a1 + 32) + 1000) presentationView];
    v24 = [*(a1 + 32) view];
    [v24 bounds];
    [v23 setFrame:?];
    [v23 setAutoresizingMask:18];
    [v24 setClipsToBounds:1];
    [v24 addSubview:v23];
    [v24 sendSubviewToBack:v23];
    v25 = *(a1 + 32);
    v26 = *(v25 + 1152);
    *(v25 + 1152) = v23;
    v27 = v23;

    [*(*(a1 + 32) + 992) performUpdate:&__block_literal_global_250 withCompletion:*(a1 + 40)];
  }
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_220(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _modifySceneSettings:v3 forSceneMode:{objc_msgSend(v2, "_effectiveSceneMode")}];
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D46F60];
  v3 = a2;
  v6 = [v2 identityForAngelJobLabel:@"com.apple.PaperBoard"];
  [v3 setIdentifier:@"sceneID:com.apple.PaperBoard-wallpaper"];
  v4 = +[(FBSSceneSpecification *)PBUIWallpaperWindowSceneSpecification];
  [v3 setSpecification:v4];

  v5 = [MEMORY[0x277D0ADA8] identityForProcessIdentity:v6];
  [v3 setClientIdentity:v5];
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_234(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_2_235;
  v3[3] = &unk_278362C80;
  v3[4] = *(a1 + 32);
  v2 = a2;
  [v2 updateSettingsWithBlock:v3];
  [v2 updateClientSettingsWithBlock:&__block_literal_global_239];
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_2_235(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v14 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1232));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained wallpaperPresenter:*(a1 + 32) requestsOrientationWithRefresh:1];
  }

  v10 = [MEMORY[0x277D0AA90] mainConfiguration];
  [v10 bounds];
  [v6 setFrame:?];
  [v6 setInterfaceOrientation:v7];
  [v6 setDisplayConfiguration:v10];
  v11 = [*(a1 + 32) traitCollection];
  [v6 setUserInterfaceStyle:{objc_msgSend(v11, "userInterfaceStyle")}];

  [*(a1 + 32) _modifySceneSettings:v6 forSceneMode:3];
  [v6 setWallpaperVariant:*(*(a1 + 32) + 1248)];
  [v6 setHomescreenWallpaperAlpha:1.0];
  [v6 setLockscreenWallpaperAlpha:1.0];
  [v6 setLockscreenOnlyWallpaperAlpha:1.0];
  [v6 setLockscreenWallpaperContentsRect:{0.0, 0.0, 1.0, 1.0}];
  [v6 setCachingIdentifier:*(*(a1 + 32) + 1216)];
  v12 = objc_opt_new();
  [v6 setHomescreenStyleTransitionState:v12];

  v13 = objc_opt_new();
  [v6 setLockscreenStyleTransitionState:v13];
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setHomescreenMinimumWallpaperScale:1.0];
  [v5 setLockscreenMinimumWallpaperScale:1.0];
}

void __63__PBUIWallpaperRemoteViewController__setupSceneWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setClippingDisabled:1];
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
}

- (id)_sceneSettings
{
  v2 = [(FBScene *)self->_scene settings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (id)_sceneClientSettings
{
  v2 = [(FBScene *)self->_scene clientSettings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)_updateFallbackView
{
  v3 = [(PBUIWallpaperRemoteViewController *)self activeVariant];
  if (v3 < 2)
  {
    v4 = [(PBUIWallpaperRemoteViewController *)self averageColorForVariant:v3];
LABEL_5:
    v6 = v4;
    goto LABEL_7;
  }

  if (v3 == -1)
  {
    v4 = [MEMORY[0x277D75348] systemTealColor];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  v5 = [(PBUIWallpaperRemoteViewController *)self view];
  [v5 setBackgroundColor:v6];
}

- (void)_notifyAllObserversOfNewWallpaperScene
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(PBUIWallpaperRemoteViewController *)self _sceneClientSettings];
  v4 = [v3 homescreenLegibilitySettings];
  v18 = v3;
  v5 = [v3 lockscreenLegibilitySettings];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self;
  v6 = self->_homescreenObservers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 wallpaperWillChangeForVariant:1];
        }

        if (objc_opt_respondsToSelector())
        {
          [v11 wallpaperDidChangeForVariant:1];
        }

        if (objc_opt_respondsToSelector())
        {
          [v11 wallpaperLegibilitySettingsDidChange:v4 forVariant:1];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v19->_lockscreenObservers;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 wallpaperWillChangeForVariant:0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v17 wallpaperDidChangeForVariant:0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v17 wallpaperLegibilitySettingsDidChange:v5 forVariant:0];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  [(PBUIWallpaperRemoteViewController *)v19 _reconfigureBlurViewsForVariant:1];
  [(PBUIWallpaperRemoteViewController *)v19 _reconfigureBlurViewsForVariant:0];
  [(PBUIWallpaperRemoteViewController *)v19 _updateBlurViewsForVariant:1];
  [(PBUIWallpaperRemoteViewController *)v19 _updateBlurViewsForVariant:0];
}

- (id)_observersForVariant:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__homescreenObservers;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!a3)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__lockscreenObservers;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_disallowRasterizationReasonsForVariant:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__disallowRasterizationReasonsHomeVariant;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!a3)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__disallowRasterizationReasonsLockVariant;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_hideWallpaperReasonsForVariant:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__hideWallpaperReasonsHomeVariant;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!a3)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__hideWallpaperReasonsLockVariant;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_simpleAssertionWithReasonsSet:(id)a3 identifier:(id)a4 reason:(id)a5 updater:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v9)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PBUIWallpaperRemoteViewController _simpleAssertionWithReasonsSet:identifier:reason:updater:];
    if (v13)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_10:
      [PBUIWallpaperRemoteViewController _simpleAssertionWithReasonsSet:identifier:reason:updater:];
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [PBUIWallpaperRemoteViewController _simpleAssertionWithReasonsSet:identifier:reason:updater:];
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_11:
  [PBUIWallpaperRemoteViewController _simpleAssertionWithReasonsSet:identifier:reason:updater:];
LABEL_5:
  objc_initWeak(&location, v9);
  v14 = objc_alloc(MEMORY[0x277CF0CE8]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __94__PBUIWallpaperRemoteViewController__simpleAssertionWithReasonsSet_identifier_reason_updater___block_invoke;
  v22 = &unk_278362D10;
  objc_copyWeak(&v25, &location);
  v15 = v11;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = [v14 initWithIdentifier:v10 forReason:v15 invalidationBlock:&v19];
  [v9 addObject:{v15, v19, v20, v21, v22}];
  (*(v16 + 2))(v16, 0);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v17;
}

void __94__PBUIWallpaperRemoteViewController__simpleAssertionWithReasonsSet_identifier_reason_updater___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObject:*(a1 + 32)];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [WeakRetained count] == 0);
}

- (double)_wallpaperScaleForVariant:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = 1.0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_wallpaperScaleAssertions;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v8 = 1.0;
    v9 = 1.0;
    if (v7)
    {
      v10 = v7;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([(PBUIWallpaperScaleAssertion *)v13 variant]== a3)
          {
            v14 = [(PBUIWallpaperScaleAssertion *)v13 scale];
            if (v14 < v9)
            {
              v9 = v14;
            }

            if (v14 >= v8)
            {
              v8 = v14;
            }
          }
        }

        v10 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    if (v8 <= 1.0)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

- (void)_updateWallpaperScaleWithAnimationFactory:(id)a3
{
  v4 = a3;
  [(PBUIWallpaperRemoteViewController *)self _wallpaperScaleForVariant:[(PBUIWallpaperRemoteViewController *)self activeVariant]];
  v6 = v5;
  if (v4)
  {
    objc_initWeak(&v9, self);
    v7 = MEMORY[0x277CF0D38];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__PBUIWallpaperRemoteViewController__updateWallpaperScaleWithAnimationFactory___block_invoke;
    v10[3] = &unk_278362D38;
    objc_copyWeak(v11, &v9);
    v11[1] = *&v6;
    [v7 animateWithFactory:v4 actions:v10 completion:&__block_literal_global_276];
    objc_destroyWeak(v11);
    objc_destroyWeak(&v9);
  }

  else
  {
    scenePresentationView = self->_scenePresentationView;
    CGAffineTransformMakeScale(&v9, v5, v5);
    [(UIScenePresentation *)scenePresentationView setTransform:&v9];
  }
}

void __79__PBUIWallpaperRemoteViewController__updateWallpaperScaleWithAnimationFactory___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 144);
    CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
    [v4 setTransform:&v5];
  }
}

- (id)_blurViewsForVariant:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__homescreenBlurViews;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!a3)
  {
    v4 = &OBJC_IVAR___PBUIWallpaperRemoteViewController__lockscreenBlurViews;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_reconfigureBlurViewsForVariant:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PBUIWallpaperRemoteViewController *)self _blurViewsForVariant:a3, 0];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) reconfigureFromProvider];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateBlurViewsForVariant:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(PBUIWallpaperRemoteViewController *)self _invalidateBlurCacheForVariant:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(PBUIWallpaperRemoteViewController *)self _blurViewsForVariant:a3, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) updateImageFromProviderForWallpaperMode:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_cacheBlurImageForVariant:(int64_t)a3 requestedStyle:(int64_t)a4 actualStyle:(int64_t)a5 traitCollection:(id)a6 image:(id)a7 imageURL:(id)a8
{
  v26 = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = [[PBUIFakeBlurConfiguration alloc] initWithVariant:a3 style:a4 traitCollection:v16];

  v18 = [[PBUIFakeBlurAsset alloc] initWithActualStyle:a5 imageURL:v14 image:v15];
  if (!self->_fakeBlurCache)
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    fakeBlurCache = self->_fakeBlurCache;
    self->_fakeBlurCache = v19;
  }

  v21 = PBUILogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543618;
    v23 = v18;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_21E67D000, v21, OS_LOG_TYPE_DEFAULT, "Caching asset %{public}@ for configuration %{public}@", &v22, 0x16u);
  }

  [(NSMutableDictionary *)self->_fakeBlurCache setObject:v18 forKeyedSubscript:v17];
}

- (void)_invalidateBlurCacheForVariant:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  fakeBlurCache = self->_fakeBlurCache;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__PBUIWallpaperRemoteViewController__invalidateBlurCacheForVariant___block_invoke;
  v9[3] = &__block_descriptor_40_e61_B32__0__PBUIFakeBlurConfiguration_8__PBUIFakeBlurAsset_16_B24l;
  v9[4] = a3;
  v5 = [(NSMutableDictionary *)fakeBlurCache keysOfEntriesPassingTest:v9];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating cached assets for configurations %{public}@", buf, 0xCu);
  }

  if (v5)
  {
    v7 = self->_fakeBlurCache;
    v8 = [v5 allObjects];
    [(NSMutableDictionary *)v7 removeObjectsForKeys:v8];
  }
}

- (id)_blurImageFromURL:(id)a3
{
  v3 = a3;
  v4 = PBUIWallpaperDataForFileURL(v3, 0);
  if (v4)
  {
    cf = 0;
    v17 = 0;
    ImagesFromData = CPBitmapCreateImagesFromData();
    if (ImagesFromData)
    {
      v6 = ImagesFromData;
      ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
      objc_opt_class();
      objc_opt_isKindOfClass();
      v9 = MEMORY[0x277D759A0];
      v10 = 0;
      v11 = [v9 mainScreen];
      [v11 scale];
      v13 = v12;

      v14 = [[PBUIWallpaperImage alloc] initWithCGImage:ValueAtIndex scale:0 orientation:v3 wallpaperFileURL:v13];
      CFRelease(v6);
    }

    else
    {
      v8 = PBUILogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(PBUIWallpaperRemoteViewController *)v3 _blurImageFromURL:v8];
      }

      v14 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)_effectiveSceneMode
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_sceneModeAssertions;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) sceneMode];
        if (v5 <= v8)
        {
          v5 = v8;
        }
      }

      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_modifySceneSettings:(id)a3 forSceneMode:(int64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_278362EE8[a4];
    }

    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Modifying scene settings for scene mode %{public}@", &v8, 0xCu);
  }

  if (a4 <= 3)
  {
    [v5 setActivityMode:(0xF6F600u >> (8 * a4))];
    [v5 setForeground:(0xCu >> (a4 & 0xF)) & 1];
  }
}

- (void)_scheduleSceneDeactivation
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__PBUIWallpaperRemoteViewController__scheduleSceneDeactivation__block_invoke;
  v6[3] = &unk_278362DA0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:5.0];
  sceneDeactivationTimer = self->_sceneDeactivationTimer;
  self->_sceneDeactivationTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __63__PBUIWallpaperRemoteViewController__scheduleSceneDeactivation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained _effectiveSceneMode])
    {
      v3 = PBUILogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 0;
        _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Deactivating idle wallpaper scene due to inactivity.", v5, 2u);
      }

      [v2[124] deactivateWithTransitionContext:0];
    }

    v4 = v2[143];
    v2[143] = 0;
  }
}

- (void)_cancelSceneDeactivation
{
  [(NSTimer *)self->_sceneDeactivationTimer invalidate];
  sceneDeactivationTimer = self->_sceneDeactivationTimer;
  self->_sceneDeactivationTimer = 0;
}

- (void)_updateSceneModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PBUIWallpaperRemoteViewController *)self _effectiveSceneMode];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__PBUIWallpaperRemoteViewController__updateSceneModeWithCompletion___block_invoke;
  v10[3] = &unk_278362DF0;
  v10[4] = self;
  v12 = v5;
  v6 = v4;
  v11 = v6;
  v7 = MEMORY[0x223D62EE0](v10);
  if ((v5 - 1) >= 3)
  {
    if (!v5)
    {
      eventQueue = self->_eventQueue;
      v9 = [MEMORY[0x277CF0C30] eventWithName:@"Update scene mode to idle" handler:v7];
      [(BSEventQueue *)eventQueue executeOrInsertEvent:v9 atPosition:1];
    }
  }

  else
  {
    [(PBUIWallpaperRemoteViewController *)self _performWithLiveScene:v7];
  }
}

void __68__PBUIWallpaperRemoteViewController__updateSceneModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 992) settings];
  v3 = [v2 mutableCopy];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [*(a1 + 32) _modifySceneSettings:v7 forSceneMode:*(a1 + 48)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 992);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PBUIWallpaperRemoteViewController__updateSceneModeWithCompletion___block_invoke_2;
  v11[3] = &unk_278362DC8;
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v11[4] = v8;
  v12 = v10;
  [v9 updateSettings:v7 withTransitionContext:0 completion:v11];
}

uint64_t __68__PBUIWallpaperRemoteViewController__updateSceneModeWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v2)
  {
    [v3 _cancelSceneDeactivation];
  }

  else
  {
    [v3 _scheduleSceneDeactivation];
  }

  result = a1[5];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)_acquireSceneModeAssertionForReason:(id)a3 sceneMode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [_PBUIWallpaperRemoteViewControllerSceneModeAssertion alloc];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __94__PBUIWallpaperRemoteViewController__acquireSceneModeAssertionForReason_sceneMode_completion___block_invoke;
  v19 = &unk_278362E18;
  objc_copyWeak(&v20, &location);
  v11 = [(_PBUIWallpaperRemoteViewControllerSceneModeAssertion *)v10 initWithIdentifier:@"PBUIWallpaperRemoteViewController.sceneMode" forReason:v8 sceneMode:a4 invalidationBlock:&v16];
  sceneModeAssertions = self->_sceneModeAssertions;
  if (!sceneModeAssertions)
  {
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v14 = self->_sceneModeAssertions;
    self->_sceneModeAssertions = v13;

    sceneModeAssertions = self->_sceneModeAssertions;
  }

  [(NSHashTable *)sceneModeAssertions addObject:v11, v16, v17, v18, v19];
  [(PBUIWallpaperRemoteViewController *)self _updateSceneModeWithCompletion:v9];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v11;
}

void __94__PBUIWallpaperRemoteViewController__acquireSceneModeAssertionForReason_sceneMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[140] removeObject:v5];
    [v4 _updateSceneMode];
  }
}

- (void)_addStateCaptureHandlers
{
  v3 = MEMORY[0x277D85CD0];
  objc_initWeak(location, self);
  stateCaptureHandles = self->_stateCaptureHandles;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIWallpaperRemoteViewController - %p", self];
  v18[1] = MEMORY[0x277D85DD0];
  v18[2] = 3221225472;
  v18[3] = __61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke;
  v18[4] = &unk_278362E40;
  objc_copyWeak(&v19, location);
  v6 = BSLogAddStateCaptureBlockWithTitle();
  [(NSMutableSet *)stateCaptureHandles addObject:v6];

  v7 = self->_stateCaptureHandles;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIWallpaperRemoteViewController - %p - Scene", self];
  v17[1] = MEMORY[0x277D85DD0];
  v17[2] = 3221225472;
  v17[3] = __61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke_2;
  v17[4] = &unk_278362E40;
  objc_copyWeak(v18, location);
  v9 = BSLogAddStateCaptureBlockWithTitle();
  [(NSMutableSet *)v7 addObject:v9];

  v10 = self->_stateCaptureHandles;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIWallpaperRemoteViewController - %p - SceneMode", self];
  v16[1] = MEMORY[0x277D85DD0];
  v16[2] = 3221225472;
  v16[3] = __61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke_3;
  v16[4] = &unk_278362E40;
  objc_copyWeak(v17, location);
  v12 = BSLogAddStateCaptureBlockWithTitle();
  [(NSMutableSet *)v10 addObject:v12];

  v13 = self->_stateCaptureHandles;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIWallpaperRemoteViewController - %p - WallpaperConfigurationManager", self];
  objc_copyWeak(v16, location);
  v15 = BSLogAddStateCaptureBlockWithTitle();
  [(NSMutableSet *)v13 addObject:v15];

  objc_destroyWeak(v16);
  objc_destroyWeak(v17);
  objc_destroyWeak(v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
}

__CFString *__61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionWithMultilinePrefix:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_282FB34B0;
  }

  v5 = v4;

  return v4;
}

__CFString *__61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[124] debugDescription];
  }

  else
  {
    v3 = &stru_282FB34B0;
  }

  return v3;
}

__CFString *__61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v3 = &stru_282FB34B0;
  if (WeakRetained)
  {
    v4 = [WeakRetained[140] allObjects];
    v5 = [v4 bs_map:&__block_literal_global_308];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_282FB34B0;
    }

    v3 = v7;
  }

  return v3;
}

__CFString *__61__PBUIWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[153] description];
  }

  else
  {
    v3 = &stru_282FB34B0;
  }

  return v3;
}

- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);

  return WeakRetained;
}

- (id)_cachedBlurAssetForVariant:(int64_t)a3 requestedStyle:(int64_t)a4 traitCollection:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [[PBUIFakeBlurConfiguration alloc] initWithVariant:a3 style:a4 traitCollection:v8];

  v10 = [(NSMutableDictionary *)self->_fakeBlurCache objectForKeyedSubscript:v9];
  v11 = PBUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEFAULT, "Retrieved cached asset %{public}@ for configuration %{public}@", &v13, 0x16u);
  }

  return v10;
}

BOOL __68__PBUIWallpaperRemoteViewController__invalidateBlurCacheForVariant___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

void __84__PBUIWallpaperRemoteViewController_imageForWallpaperStyle_variant_traitCollection___block_invoke_53_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "Did not receive response for image request %{public}@", &v3, 0xCu);
}

- (void)_simpleAssertionWithReasonsSet:identifier:reason:updater:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"reasonsSet" object:? file:? lineNumber:? description:?];
}

- (void)_simpleAssertionWithReasonsSet:identifier:reason:updater:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"updater" object:? file:? lineNumber:? description:?];
}

- (void)_simpleAssertionWithReasonsSet:identifier:reason:updater:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)_simpleAssertionWithReasonsSet:identifier:reason:updater:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_blurImageFromURL:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21E67D000, log, OS_LOG_TYPE_ERROR, "Error deserializing wallpaper image from URL %{public}@: %{public}@", &v4, 0x16u);
}

@end