@interface PBUIWallpaperViewController
+ (id)substitutionFlatColorForWallpaperName:(id)a3;
- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState;
- (BOOL)_isRasterizationDisallowedForCurrentVariant;
- (BOOL)_isWallpaperHiddenForVariant:(int64_t)a3;
- (BOOL)_setDisallowRasterization:(BOOL)a3 withReason:(id)a4 reasons:(id)a5;
- (BOOL)_shouldSuspendMotionEffectsForState:(id *)a3;
- (BOOL)_shouldSuspendMotionEffectsForStyle:(int64_t)a3;
- (BOOL)_updateEffectViewForVariant:(int64_t)a3 oldState:(id *)a4 newState:(id *)a5 oldEffectView:(id *)a6 newEffectView:(id *)a7;
- (BOOL)_updateEffectViewForVariant:(int64_t)a3 withFactory:(id)a4;
- (BOOL)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4 withAnimationFactory:(id)a5;
- (BOOL)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6;
- (BOOL)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6;
- (BOOL)updateIrisWallpaperForStaticMode;
- (BOOL)variantsShareWallpaper;
- (PBUIIrisWallpaperPlaying)irisWallpaperPlayer;
- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate;
- (PBUIWallpaperViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_wallpaperScaleForVariant:(int64_t)a3;
- (double)contrastForVariant:(int64_t)a3;
- (double)contrastInRect:(CGRect)a3 forVariant:(int64_t)a4;
- (double)minimumWallpaperScaleForVariant:(int64_t)a3;
- (id)_activeWallpaperView;
- (id)_blurViewsForVariant:(int64_t)a3;
- (id)_newWallpaperEffectViewForVariant:(int64_t)a3 transitionState:(id *)a4;
- (id)_observersForVariant:(int64_t)a3;
- (id)_sourceForFakeBlurView:(id)a3;
- (id)_vendWallpaperViewForConfiguration:(id)a3 forVariant:(int64_t)a4 shared:(BOOL)a5 options:(unint64_t)a6;
- (id)_wallpaperScaleAssertionForVariant:(int64_t)a3 scale:(double)a4;
- (id)averageColorForVariant:(int64_t)a3;
- (id)averageColorInRect:(CGRect)a3 forVariant:(int64_t)a4 withSmudgeRadius:(double)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)legibilitySettingsForVariant:(int64_t)a3;
- (id)newFakeBlurViewForVariant:(int64_t)a3 style:(int64_t)a4 transformOptions:(unint64_t)a5;
- (id)requireWallpaperWithReason:(id)a3;
- (id)setHomescreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4;
- (id)setLockscreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4;
- (id)substitutionWallpaperConfigurationForWallpaperConfiguration:(id)a3;
- (id)succinctDescription;
- (id)suspendColorSamplingForReason:(id)a3;
- (id)suspendWallpaperAnimationForReason:(id)a3;
- (id)wallpaperConfigurationForUpdatingWallpaperViewsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperConfigurationForVariant:(int64_t)a3 includingValuesForTypes:(unint64_t)a4 wallpaperMode:(int64_t)a5;
- (id)wallpaperStyleInfoForVariant:(int64_t)a3;
- (id)wallpaperView:(id)a3 wallpaperConfigurationIncludingValueTypes:(unint64_t)a4;
- (id)wallpaperViewForVariant:(int64_t)a3;
- (unint64_t)_bestWallpaperViewInitializationOptionsForVariant:(int64_t)a3 shared:(BOOL)a4 wallpaperOptions:(id)a5 options:(unint64_t)a6;
- (unint64_t)supportedInterfaceOrientations;
- (void)_accessibilityReduceTransparencyChanged:(id)a3;
- (void)_beginDisallowRasterizationBlock;
- (void)_beginSuspendingMotionEffectsForStyleIfNeeded;
- (void)_clearWallpaperView:(id)a3;
- (void)_endDisallowRasterizationBlock;
- (void)_endSuspendingMotionEffectsForStyleIfNeeded;
- (void)_handleWallpaperChangedForVariant:(int64_t)a3;
- (void)_handleWallpaperLegibilitySettingsChanged:(id)a3 forVariant:(int64_t)a4;
- (void)_invalidateWallpaperAssertion:(id)a3;
- (void)_precacheStyles:(id)a3 usingTraitCollection:(id)a4;
- (void)_reconfigureBlurViewsForVariant:(int64_t)a3;
- (void)_registerFakeBlurView:(id)a3;
- (void)_removeColorSamplingAssertion:(id)a3;
- (void)_removeWallpaperAnimationAssertion:(id)a3;
- (void)_setWallpaperHidden:(BOOL)a3 variant:(int64_t)a4 reason:(id)a5;
- (void)_suspendOrResumeColorSampling;
- (void)_suspendOrResumeWallpaperAnimation;
- (void)_unregisterFakeBlurView:(id)a3;
- (void)_updateAndPrewarmWallpapers;
- (void)_updateBlurGeneration;
- (void)_updateBlurImagesForVariant:(int64_t)a3;
- (void)_updateInactiveBlurEffectForWallpaperMode:(int64_t)a3;
- (void)_updateMotionEffectsForState:(id *)a3;
- (void)_updateRasterizationState;
- (void)_updateSeparateWallpaperForVariants:(int64_t)a3 options:(unint64_t)a4 wallpaperMode:(int64_t)a5;
- (void)_updateSharedWallpaperWithOptions:(unint64_t)a3 wallpaperMode:(int64_t)a4;
- (void)_updateWallpaperForLocations:(int64_t)a3 options:(unint64_t)a4 wallpaperMode:(int64_t)a5 withCompletion:(id)a6;
- (void)_updateWallpaperForWallpaperDimming:(BOOL)a3;
- (void)_updateWallpaperForWallpaperMode:(int64_t)a3;
- (void)_updateWallpaperHidden;
- (void)_updateWallpaperParallax;
- (void)_updateWallpaperScaleWithAnimationFactory:(id)a3;
- (void)addObserver:(id)a3 forVariant:(int64_t)a4;
- (void)beginDelayingHomescreenStyleChangesForReason:(id)a3;
- (void)beginSimulatedLiveWallpaperTouchWithReason:(id)a3;
- (void)cancelInProcessAnimations;
- (void)cleanupOldSharedWallpaper:(id)a3 lockSreenWallpaper:(id)a4 homeScreenWallpaper:(id)a5;
- (void)dealloc;
- (void)endDelayingHomescreenStyleChangesForReason:(id)a3 animationFactory:(id)a4;
- (void)endSimulatedLiveWallpaperTouchWithReason:(id)a3;
- (void)loadView;
- (void)noteDidRotateFromInterfaceOrientation:(int64_t)a3;
- (void)noteWillAnimateToInterfaceOrientation:(int64_t)a3;
- (void)preheatWallpaperForVariant:(int64_t)a3;
- (void)providerLegibilitySettingsChanged:(id)a3;
- (void)removeObserver:(id)a3 forVariant:(int64_t)a4;
- (void)removeWallpaperRequiredAssertion:(id)a3;
- (void)setActiveVariant:(int64_t)a3 withOutAnimationFactory:(id)a4 inAnimationFactory:(id)a5 completion:(id)a6;
- (void)setAlpha:(double)a3 forWallpaperVariant:(int64_t)a4;
- (void)setColorSamplingDisabled:(BOOL)a3;
- (void)setDisallowsRasterization:(BOOL)a3 forVariant:(int64_t)a4 withReason:(id)a5;
- (void)setLockscreenOnlyWallpaperAlpha:(double)a3;
- (void)setLockscreenWallpaperContentsRect:(CGRect)a3;
- (void)setWallpaperConfigurationManager:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIrisWallpaperForInteractiveMode;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wallpaperEffectImageForStyle:(int64_t)a3 variant:(int64_t)a4 traitCollection:(id)a5 result:(id)a6;
- (void)wallpaperView:(id)a3 didChangeZoomFactor:(double)a4;
- (void)wallpaperViewDidChangeWantsRasterization:(id)a3;
- (void)wallpaperViewDidInvalidateBlurs:(id)a3;
@end

@implementation PBUIWallpaperViewController

- (PBUIWallpaperViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v45.receiver = self;
  v45.super_class = PBUIWallpaperViewController;
  v4 = [(PBUIWallpaperViewController *)&v45 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_displayedVariant = -1;
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lockscreenObservers = v5->_lockscreenObservers;
    v5->_lockscreenObservers = v6;

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    homescreenObservers = v5->_homescreenObservers;
    v5->_homescreenObservers = v8;

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lockscreenBlurViews = v5->_lockscreenBlurViews;
    v5->_lockscreenBlurViews = v10;

    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    homescreenBlurViews = v5->_homescreenBlurViews;
    v5->_homescreenBlurViews = v12;

    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    suspendColorSamplingAssertions = v5->_suspendColorSamplingAssertions;
    v5->_suspendColorSamplingAssertions = v14;

    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    suspendWallpaperAnimationAssertions = v5->_suspendWallpaperAnimationAssertions;
    v5->_suspendWallpaperAnimationAssertions = v16;

    v18 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    wallpaperScaleAssertions = v5->_wallpaperScaleAssertions;
    v5->_wallpaperScaleAssertions = v18;

    v20 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    requireWallpaperAssertions = v5->_requireWallpaperAssertions;
    v5->_requireWallpaperAssertions = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hideHomescreenWallpaperReasons = v5->_hideHomescreenWallpaperReasons;
    v5->_hideHomescreenWallpaperReasons = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hideLockscreenWallpaperReasons = v5->_hideLockscreenWallpaperReasons;
    v5->_hideLockscreenWallpaperReasons = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    disallowRasterizationReasonsHomeVariant = v5->_disallowRasterizationReasonsHomeVariant;
    v5->_disallowRasterizationReasonsHomeVariant = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    disallowRasterizationReasonsLockVariant = v5->_disallowRasterizationReasonsLockVariant;
    v5->_disallowRasterizationReasonsLockVariant = v28;

    v5->_lockscreenOnlyWallpaperAlpha = 1.0;
    v30 = objc_alloc_init(PBUIWallpaperStyleInfo);
    homescreenStyleInfo = v5->_homescreenStyleInfo;
    v5->_homescreenStyleInfo = v30;

    v32 = objc_alloc_init(PBUIWallpaperStyleInfo);
    lockscreenStyleInfo = v5->_lockscreenStyleInfo;
    v5->_lockscreenStyleInfo = v32;

    [(PBUIWallpaperConfigurationManager *)v5->_wallpaperConfigurationManager setDelegate:v5];
    v34 = objc_alloc_init(PBUIWallpaperDefaultsDomain);
    wallpaperDefaultsStore = v5->_wallpaperDefaultsStore;
    v5->_wallpaperDefaultsStore = v34;

    [(PBUIWallpaperConfigurationManager *)v5->_wallpaperConfigurationManager setEnableWallpaperDimming:[(PBUIWallpaperDefaultsDomain *)v5->_wallpaperDefaultsStore enableWallpaperDimming]];
    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:v5 selector:sel__accessibilityReduceTransparencyChanged_ name:*MEMORY[0x277D764C8] object:0];
    v37 = v5->_wallpaperDefaultsStore;
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableWallpaperDimming"];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __54__PBUIWallpaperViewController_initWithNibName_bundle___block_invoke;
    v43[3] = &unk_278361E18;
    v39 = v5;
    v44 = v39;
    v40 = [(BSAbstractDefaultDomain *)v37 observeDefault:v38 onQueue:MEMORY[0x277D85CD0] withBlock:v43];
    wallpaperEnableDimmingObserver = v39->_wallpaperEnableDimmingObserver;
    v39->_wallpaperEnableDimmingObserver = v40;
  }

  return v5;
}

uint64_t __54__PBUIWallpaperViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[142] enableWallpaperDimming];

  return [v1 _updateWallpaperForWallpaperDimming:v2];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(BSDefaultObserver *)self->_wallpaperEnableDimmingObserver invalidate];
  [(BSInvalidatable *)self->_colorSamplingAssertion invalidate];
  [(PBUIWallpaperViewController *)self _endSuspendingMotionEffectsForStyleIfNeeded];
  v4.receiver = self;
  v4.super_class = PBUIWallpaperViewController;
  [(PBUIWallpaperViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(_PBUIWallpaperBlurAnimatingView);
  [(PBUIWallpaperViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PBUIWallpaperViewController;
  [(PBUIWallpaperViewController *)&v10 viewDidLoad];
  v3 = [(PBUIWallpaperViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  wallpaperContainerView = self->_wallpaperContainerView;
  self->_wallpaperContainerView = v5;

  v7 = [(UIView *)self->_wallpaperContainerView layer];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  [v7 setRasterizationScale:?];

  [(UIView *)self->_wallpaperContainerView setClipsToBounds:0];
  [(UIView *)self->_wallpaperContainerView setAutoresizingMask:18];
  [v3 addSubview:self->_wallpaperContainerView];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__PBUIWallpaperViewController_viewDidLoad__block_invoke;
  v9[3] = &unk_278361E18;
  v9[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v9];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  v6 = [(PBUIWallpaperViewController *)self view];
  v7 = [v6 window];

  v8 = [v7 _toWindowOrientation];
  v9 = [v7 _fromWindowOrientation];
  [(PBUIWallpaperViewController *)self noteWillAnimateToInterfaceOrientation:v8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__PBUIWallpaperViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_2783637D8;
  v10[4] = self;
  v10[5] = v9;
  [v5 animateAlongsideTransition:&__block_literal_global_18 completion:v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = PBUIWallpaperViewController;
  v4 = a3;
  [(PBUIWallpaperViewController *)&v15 traitCollectionDidChange:v4];
  v5 = [(PBUIWallpaperViewController *)self traitCollection:v15.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];
  v8 = [v4 _backlightLuminance];

  v9 = [v5 _backlightLuminance];
  v10 = (v8 != 1) ^ (v9 == 1);
  if (v6 != v7 || (v10 & 1) == 0)
  {
    v11 = [(PBUIWallpaperViewController *)self traitCollection];
    v12 = [v11 userInterfaceStyle];

    v13 = v12 == 1;
    if (v12 == 2)
    {
      v13 = 2;
    }

    if (v9 == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      [(PBUIWallpaperViewController *)self _updateWallpaperForWallpaperMode:v14];
      if ((v10 & 1) == 0)
      {
        [(PBUIWallpaperViewController *)self _updateInactiveBlurEffectForWallpaperMode:v14];
      }
    }
  }
}

- (void)_updateInactiveBlurEffectForWallpaperMode:(int64_t)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperViewController *)self traitCollection];
  v6 = [v5 _backlightLuminance];

  v7 = [(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsStore blurPhotosWallpaperInAlwaysOn];
  v8 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:0 wallpaperMode:a3];
  v9 = [v8 wallpaperType] != 1 && objc_msgSend(v8, "wallpaperType") != 3;
  v10 = [(PBUIWallpaperViewController *)self view];
  v11 = [v10 layer];
  v12 = [v11 filters];
  v13 = [v12 bs_containsObjectPassingTest:&__block_literal_global_34_1];

  if ((v13 & 1) == 0)
  {
    v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v14 setName:@"gaussianBlur"];
    [v14 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
    [v14 setValue:&unk_282FD5C50 forKey:*MEMORY[0x277CDA4F0]];
    v28[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v16 = [(PBUIWallpaperViewController *)self view];
    v17 = [v16 layer];
    [v17 setFilters:v15];
  }

  v19 = v6 == 2 || v6 == -1;
  v20 = 10.0;
  if (v9 || (v7 & 1) == 0 || v19)
  {
    v20 = 0.0;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__PBUIWallpaperViewController__updateInactiveBlurEffectForWallpaperMode___block_invoke_44;
  v25[3] = &unk_278363820;
  v27 = v20;
  v25[4] = self;
  v26 = @"filters.gaussianBlur.inputRadius";
  if (v9 || (v7 & 1) == 0 || v19)
  {
    v21 = 0.3;
  }

  else
  {
    v21 = 0.5;
  }

  v22 = MEMORY[0x223D62EE0](v25);
  v23 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:0];
  v24 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v23 timingParameters:v21];
  [v24 addAnimations:v22];
  [v24 startAnimation];
}

uint64_t __73__PBUIWallpaperViewController__updateInactiveBlurEffectForWallpaperMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqual:@"gaussianBlur"];

  return v3;
}

void __73__PBUIWallpaperViewController__updateInactiveBlurEffectForWallpaperMode___block_invoke_44(uint64_t a1)
{
  v4 = [*(a1 + 32) view];
  v2 = [v4 layer];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [v2 setValue:v3 forKeyPath:*(a1 + 40)];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_fixedOrientation)
  {
    return 2;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PBUIWallpaperViewController;
  return [(PBUIWallpaperViewController *)&v5 supportedInterfaceOrientations];
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
    [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setDelegate:self];
    wallpaperConfigurationManager = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setEnableWallpaperDimming:[(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsStore enableWallpaperDimming]];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](wallpaperConfigurationManager, v5);
}

- (void)wallpaperEffectImageForStyle:(int64_t)a3 variant:(int64_t)a4 traitCollection:(id)a5 result:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:a4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__PBUIWallpaperViewController_wallpaperEffectImageForStyle_variant_traitCollection_result___block_invoke;
  v14[3] = &unk_278363848;
  v15 = v10;
  v13 = v10;
  [PBUIFakeBlurView _imageForStyle:a3 withSource:v12 overrideTraitCollection:v11 result:v14];
}

- (void)beginSimulatedLiveWallpaperTouchWithReason:(id)a3
{
  v9 = a3;
  if (![(PBUIWallpaperViewController *)self activeVariant])
  {
    v4 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:0];
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 beginSimulatedTouchWithReason:v9];
  }
}

- (void)endSimulatedLiveWallpaperTouchWithReason:(id)a3
{
  v9 = a3;
  v4 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:0];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 endSimulatedTouchWithReason:v9];
}

- (void)setActiveVariant:(int64_t)a3 withOutAnimationFactory:(id)a4 inAnimationFactory:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (self->_displayedVariant == a3)
  {
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }

  else
  {
    v45 = v10;
    self->_displayedVariant = a3;
    v14 = [(PBUIWallpaperViewController *)self suspendColorSamplingForReason:@"settingVariant"];
    [(PBUIWallpaperViewController *)self _beginDisallowRasterizationBlock];
    if (a3)
    {
      v15 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenStyleInfo;
    }

    else
    {
      v15 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenStyleInfo;
    }

    v16 = *(&self->super.super.super.isa + *v15);
    if (a3)
    {
      v17 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenStyleInfo;
    }

    else
    {
      v17 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenStyleInfo;
    }

    v18 = v16;
    v19 = *(&self->super.super.super.isa + *v17);
    v20 = v19;
    v78 = 0uLL;
    v79 = 0;
    if (v19)
    {
      [v19 styleTransitionState];
    }

    v69 = v78;
    v70 = v79;
    v21 = [(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForState:&v69];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke;
    v72[3] = &unk_278363870;
    v40 = v14;
    v73 = v40;
    v74 = self;
    v76 = v78;
    v77 = v79;
    v43 = v13;
    v75 = v13;
    v44 = MEMORY[0x223D62EE0](v72);
    v41 = v20;
    v22 = [v20 wallpaperEffectView];
    v23 = [v18 wallpaperEffectView];
    [v22 setHidden:0];
    [v22 setAlpha:0.0];
    if (self->_sharedWallpaperView)
    {
      [(PBUIWallpaperViewController *)self _updateWallpaperHidden];
      [(PBUIWallpaperViewController *)self _updateWallpaperParallax];
      [(PBUIWallpaperView *)self->_sharedWallpaperView setVariant:a3 withAnimationFactory:v11];
      v24 = 0;
      v25 = 0;
    }

    else
    {
      if (a3)
      {
        v26 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenWallpaperView;
      }

      else
      {
        v26 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenWallpaperView;
      }

      v27 = *(&self->super.super.super.isa + *v26);
      if (a3)
      {
        v28 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenWallpaperView;
      }

      else
      {
        v28 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenWallpaperView;
      }

      v24 = v27;
      v25 = *(&self->super.super.super.isa + *v28);
      [(UIView *)self->_wallpaperContainerView sendSubviewToBack:v25];
      [v24 setHidden:0];
      [v24 setAlpha:0.0];
      if ([v23 currentTransitionStateIsOpaque])
      {
        [v25 setAlpha:0.0];
      }
    }

    v42 = v18;
    if (!v21)
    {
      [(PBUIWallpaperViewController *)self _endSuspendingMotionEffectsForStyleIfNeeded];
    }

    *&v69 = 0;
    *(&v69 + 1) = &v69;
    v70 = 0x2020000000;
    v71 = 0;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    v29 = MEMORY[0x277CF0D38];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_2;
    v64[3] = &unk_2783622E0;
    v65 = v23;
    v66 = v25;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_3;
    v57[3] = &unk_278363898;
    v39 = v66;
    v58 = v39;
    v30 = v65;
    v59 = v30;
    v31 = v24;
    v60 = v31;
    v62 = &v69;
    v63 = v67;
    v32 = v44;
    v61 = v32;
    v10 = v45;
    [v29 animateWithFactory:v45 actions:v64 completion:v57];
    if (a3)
    {
      sharedWallpaperView = self->_sharedWallpaperView;
      [(PBUIWallpaperViewController *)self homescreenWallpaperScale];
      lockscreenOnlyWallpaperAlpha = 1.0;
    }

    else
    {
      lockscreenOnlyWallpaperAlpha = self->_lockscreenOnlyWallpaperAlpha;
      sharedWallpaperView = self->_sharedWallpaperView;
      [(PBUIWallpaperViewController *)self lockscreenWallpaperScale];
    }

    [(PBUIWallpaperView *)sharedWallpaperView setZoomFactor:v11 withAnimationFactory:?];
    v35 = MEMORY[0x277CF0D38];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_4;
    v52[3] = &unk_2783638C0;
    v36 = v22;
    v53 = v36;
    v56 = lockscreenOnlyWallpaperAlpha;
    v54 = v31;
    v55 = self;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_5;
    v46[3] = &unk_2783638E8;
    v37 = v54;
    v51 = lockscreenOnlyWallpaperAlpha;
    v47 = v37;
    v49 = v67;
    v50 = &v69;
    v38 = v32;
    v48 = v38;
    [v35 animateWithFactory:v11 actions:v52 completion:v46];

    _Block_object_dispose(v67, 8);
    _Block_object_dispose(&v69, 8);

    v13 = v43;
  }
}

uint64_t __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) _endDisallowRasterizationBlock];
  v2 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  [v2 _updateMotionEffectsForState:&v4];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) setHidden:1];
  [*(a1 + 32) prepareToDisappear];
  result = [*(a1 + 48) prepareToAppear];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v3 = *(*(a1 + 56) + 16);

    return v3();
  }

  return result;
}

uint64_t __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  if (([*(a1 + 32) currentTransitionStateIsOpaque] & 1) == 0)
  {
    [*(a1 + 40) setAlpha:*(a1 + 56)];
  }

  [*(*(a1 + 48) + 1216) setContentsRect:{0.0, 0.0, 1.0, 1.0}];
  [*(*(a1 + 48) + 1208) setContentsRect:{0.0, 0.0, 1.0, 1.0}];
  v2 = *(*(a1 + 48) + 1224);

  return [v2 setContentsRect:{0.0, 0.0, 1.0, 1.0}];
}

uint64_t __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) setAlpha:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)addObserver:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    v8 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenObservers;
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v8 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenObservers;
  }

  v9 = v6;
  v6 = [*(&self->super.super.super.isa + *v8) addObject:v6];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)removeObserver:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    v8 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenObservers;
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v8 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenObservers;
  }

  v9 = v6;
  v6 = [*(&self->super.super.super.isa + *v8) removeObject:v6];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)setAlpha:(double)a3 forWallpaperVariant:(int64_t)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    v6 = [(PBUIWallpaperStyleInfo *)self->_homescreenStyleInfo wallpaperEffectView];
    [v6 setAlpha:a3];

    p_homescreenWallpaperView = &self->_homescreenWallpaperView;
  }

  else
  {
    v8 = [(PBUIWallpaperStyleInfo *)self->_lockscreenStyleInfo wallpaperEffectView];
    [v8 setHidden:0];

    p_homescreenWallpaperView = &self->_lockscreenWallpaperView;
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setHidden:0];
    v9 = [(PBUIWallpaperStyleInfo *)self->_lockscreenStyleInfo wallpaperEffectView];
    [v9 setAlpha:a3];
  }

  v10 = *p_homescreenWallpaperView;

  [(PBUIWallpaperView *)v10 setAlpha:a3];
}

- (void)setLockscreenWallpaperContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(PBUIWallpaperView *)self->_lockscreenWallpaperView hasContentOutsideVisibleBounds])
  {
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setContentsRect:x, y, width, height];
  }

  if (!self->_displayedVariant && [(PBUIWallpaperView *)self->_sharedWallpaperView hasContentOutsideVisibleBounds])
  {
    sharedWallpaperView = self->_sharedWallpaperView;

    [(PBUIWallpaperView *)sharedWallpaperView setContentsRect:x, y, width, height];
  }
}

- (void)setLockscreenOnlyWallpaperAlpha:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  self->_lockscreenOnlyWallpaperAlpha = v4;
  if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__PBUIWallpaperViewController_setLockscreenOnlyWallpaperAlpha___block_invoke;
    v7[3] = &unk_278362880;
    v7[4] = self;
    *&v7[5] = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__PBUIWallpaperViewController_setLockscreenOnlyWallpaperAlpha___block_invoke_2;
    v6[3] = &unk_2783620F8;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:0.0];
  }

  else
  {
    lockscreenWallpaperView = self->_lockscreenWallpaperView;

    [(PBUIWallpaperView *)lockscreenWallpaperView setAlpha:v4];
  }
}

uint64_t __63__PBUIWallpaperViewController_setLockscreenOnlyWallpaperAlpha___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _beginDisallowRasterizationBlock];
  v2 = *(*(a1 + 32) + 1208);
  v3 = *(a1 + 40);

  return [v2 setAlpha:v3];
}

- (id)setHomescreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = [(PBUIWallpaperViewController *)self _wallpaperScaleAssertionForVariant:1 scale:a3];
  [(PBUIWallpaperViewController *)self _updateWallpaperScaleWithAnimationFactory:v6];

  return v7;
}

- (id)setLockscreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = [(PBUIWallpaperViewController *)self _wallpaperScaleAssertionForVariant:0 scale:a3];
  [(PBUIWallpaperViewController *)self _updateWallpaperScaleWithAnimationFactory:v6];

  return v7;
}

- (void)_updateWallpaperScaleWithAnimationFactory:(id)a3
{
  v6 = a3;
  homescreenWallpaperView = self->_homescreenWallpaperView;
  [(PBUIWallpaperViewController *)self homescreenWallpaperScale];
  [(PBUIWallpaperView *)homescreenWallpaperView setZoomFactor:v6 withAnimationFactory:?];
  lockscreenWallpaperView = self->_lockscreenWallpaperView;
  [(PBUIWallpaperViewController *)self lockscreenWallpaperScale];
  [(PBUIWallpaperView *)lockscreenWallpaperView setZoomFactor:v6 withAnimationFactory:?];
  if (self->_sharedWallpaperView)
  {
    if (self->_displayedVariant)
    {
      [(PBUIWallpaperViewController *)self homescreenWallpaperScale];
    }

    else
    {
      [(PBUIWallpaperViewController *)self lockscreenWallpaperScale];
    }

    [(PBUIWallpaperView *)self->_sharedWallpaperView setZoomFactor:v6 withAnimationFactory:?];
  }
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

- (id)_wallpaperScaleAssertionForVariant:(int64_t)a3 scale:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v7 = [PBUIWallpaperScaleAssertion alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallpaper scale %f", *&a4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__PBUIWallpaperViewController__wallpaperScaleAssertionForVariant_scale___block_invoke;
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

void __72__PBUIWallpaperViewController__wallpaperScaleAssertionForVariant_scale___block_invoke(uint64_t a1, void *a2, void *a3)
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

    [WeakRetained[144] removeObject:v5];
    [WeakRetained _updateWallpaperScaleWithAnimationFactory:v6];
  }
}

- (double)minimumWallpaperScaleForVariant:(int64_t)a3
{
  v4 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:a3];
  [v4 parallaxFactor];
  v6 = v5;

  v7 = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  [v7 wallpaperSize];
  v9 = v8;
  v11 = v10;
  v12 = [v7 parallaxDeviceType];
  [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:v12 deviceType:1 parallaxFactor:v9 portrait:v11, v6];
  v14 = v13;
  v16 = v15;
  [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:v12 deviceType:1 parallaxFactor:v9 portrait:v11, 0.0];
  v18 = v17 / v16;
  v20 = v19 / v14;
  if (v18 >= v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  return v21;
}

- (void)setDisallowsRasterization:(BOOL)a3 forVariant:(int64_t)a4 withReason:(id)a5
{
  v6 = a3;
  v8 = a5;
  v10 = v8;
  if (a4 == 1)
  {
    v8 = [(PBUIWallpaperViewController *)self _setDisallowRasterization:v6 withReason:v8 reasons:self->_disallowRasterizationReasonsHomeVariant];
    v9 = v10;
    if (v8)
    {
LABEL_4:
      v8 = [(PBUIWallpaperViewController *)self _updateRasterizationState];
      v9 = v10;
    }
  }

  else
  {
    v9 = v8;
    if (!a4)
    {
      v8 = [(PBUIWallpaperViewController *)self _setDisallowRasterization:v6 withReason:v8 reasons:self->_disallowRasterizationReasonsLockVariant];
      v9 = v10;
      if (v8)
      {
        goto LABEL_4;
      }
    }
  }

  MEMORY[0x2821F96F8](v8, v9);
}

- (void)setColorSamplingDisabled:(BOOL)a3
{
  if (self->_colorSamplingDisabled != a3)
  {
    self->_colorSamplingDisabled = a3;
    colorSamplingAssertion = self->_colorSamplingAssertion;
    if (a3)
    {
      if (colorSamplingAssertion)
      {
        return;
      }

      v5 = [(PBUIWallpaperViewController *)self suspendColorSamplingForReason:@"ExplicitlyDisabled"];
    }

    else
    {
      if (!colorSamplingAssertion)
      {
        return;
      }

      [(BSInvalidatable *)colorSamplingAssertion invalidate];
      v5 = 0;
    }

    v6 = self->_colorSamplingAssertion;
    self->_colorSamplingAssertion = v5;

    MEMORY[0x2821F96F8](v5, v6);
  }
}

- (id)suspendColorSamplingForReason:(id)a3
{
  v4 = a3;
  v5 = [[_PBUIWallpaperViewControllerAssertion alloc] initWithWallpaperViewController:self type:0 reason:v4];

  [(NSHashTable *)self->_suspendColorSamplingAssertions addObject:v5];
  [(PBUIWallpaperViewController *)self _suspendOrResumeColorSampling];

  return v5;
}

- (id)suspendWallpaperAnimationForReason:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[_PBUIWallpaperViewControllerAssertion alloc] initWithWallpaperViewController:self type:1 reason:v4];

  [(NSHashTable *)self->_suspendWallpaperAnimationAssertions addObject:v5];
  [(PBUIWallpaperViewController *)self _suspendOrResumeWallpaperAnimation];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    suspendWallpaperAnimationAssertions = self->_suspendWallpaperAnimationAssertions;
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = suspendWallpaperAnimationAssertions;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_INFO, "Adding wallpaper animation (and parallax) assertion: %@ \nAll assertions: %@", &v9, 0x16u);
  }

  return v5;
}

- (void)cancelInProcessAnimations
{
  v3 = [(PBUIWallpaperViewController *)self view];
  v2 = [v3 window];
  [v2 _removeAllRetargetableAnimations:1];
}

- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState
{
  v4 = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
  if (v4)
  {
    v6 = v4;
    [v4 styleTransitionState];
    v4 = v6;
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
  LOBYTE(a5) = [(PBUIWallpaperViewController *)self setWallpaperStyleTransitionState:v12 forPriority:a4 forVariant:a5 withAnimationFactory:v10];

  return a5;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (a4 >= 5)
  {
    [PBUIWallpaperViewController setWallpaperStyleTransitionState:a4 forPriority:? forVariant:? withAnimationFactory:?];
  }

  v11 = PBUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = PBUIStringForWallpaperVariant(a5);
    *buf = *&a3->var0;
    *&buf[16] = a3->var2;
    v13 = PBUIStringForStyleTransitionState(buf);
    *buf = 134218498;
    *&buf[4] = a4;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2114;
    *&buf[24] = v13;
    _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_INFO, "Set wallpaper style state for priority %li for variant %{public}@ to %{public}@", buf, 0x20u);
  }

  v14 = [(PBUIWallpaperViewController *)self wallpaperStyleInfoForVariant:a5];
  *&v17[3] = 0;
  *v17 = 0;
  *&v17[23] = a3->var2;
  *&v17[7] = *&a3->var0;
  buf[0] = 1;
  *&buf[1] = *v17;
  *&buf[16] = *&v17[15];
  [v14 setPriorityInfo:buf forPriority:{a4, *v17, *&v17[8], *&v17[16], *&v17[24]}];
  v15 = [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:a5 withFactory:v10];

  return v15;
}

- (BOOL)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4 withAnimationFactory:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a3 >= 5)
  {
    [PBUIWallpaperViewController removeWallpaperStyleForPriority:a3 forVariant:? withAnimationFactory:?];
  }

  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = PBUIStringForWallpaperVariant(a4);
    v14 = 134218242;
    v15 = a3;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "Remove wallpaper style for priority %li for variant %{public}@", &v14, 0x16u);
  }

  v11 = [(PBUIWallpaperViewController *)self wallpaperStyleInfoForVariant:a4];
  [v11 removePriorityInfoForPriority:a3];
  v12 = [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:a4 withFactory:v8];

  return v12;
}

- (id)requireWallpaperWithReason:(id)a3
{
  v4 = a3;
  v5 = [[_PBUIWallpaperViewControllerAssertion alloc] initWithWallpaperViewController:self type:2 reason:v4];

  [(NSHashTable *)self->_requireWallpaperAssertions addObject:v5];
  [(PBUIWallpaperViewController *)self _updateWallpaperHidden];

  return v5;
}

- (void)preheatWallpaperForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:a3];
  [v3 preheatImageData];
}

- (void)beginDelayingHomescreenStyleChangesForReason:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [PBUIWallpaperViewController beginDelayingHomescreenStyleChangesForReason:];
    v4 = 0;
  }

  homescreenStyleChangeDelayReasons = self->_homescreenStyleChangeDelayReasons;
  if (!homescreenStyleChangeDelayReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_homescreenStyleChangeDelayReasons;
    self->_homescreenStyleChangeDelayReasons = v6;

    v4 = v8;
    homescreenStyleChangeDelayReasons = self->_homescreenStyleChangeDelayReasons;
  }

  [(NSMutableSet *)homescreenStyleChangeDelayReasons addObject:v4];
}

- (void)endDelayingHomescreenStyleChangesForReason:(id)a3 animationFactory:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!v9)
  {
    [PBUIWallpaperViewController endDelayingHomescreenStyleChangesForReason:animationFactory:];
  }

  v7 = [(PBUIWallpaperViewController *)self shouldDelayHomescreenStyleUpdates];
  [(NSMutableSet *)self->_homescreenStyleChangeDelayReasons removeObject:v9];
  v8 = [(PBUIWallpaperViewController *)self shouldDelayHomescreenStyleUpdates];
  if (v7 && !v8)
  {
    [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:1 withFactory:v6];
  }
}

- (PBUIIrisWallpaperPlaying)irisWallpaperPlayer
{
  p_lockscreenWallpaperView = &self->_lockscreenWallpaperView;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (p_lockscreenWallpaperView = &self->_sharedWallpaperView, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = *p_lockscreenWallpaperView;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)updateIrisWallpaperForStaticMode
{
  sharedWallpaperView = self->_sharedWallpaperView;
  if (!sharedWallpaperView)
  {
    sharedWallpaperView = self->_lockscreenWallpaperView;
  }

  v3 = sharedWallpaperView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PBUIWallpaperView *)v3 irisPlaybackState])
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      [(PBUIWallpaperView *)v3 switchToIrisMode:1];
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)updateIrisWallpaperForInteractiveMode
{
  sharedWallpaperView = self->_sharedWallpaperView;
  if (!sharedWallpaperView)
  {
    sharedWallpaperView = self->_lockscreenWallpaperView;
  }

  v3 = sharedWallpaperView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PBUIWallpaperView *)v3 switchToIrisMode:0];
  }
}

- (void)noteWillAnimateToInterfaceOrientation:(int64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  [(PBUIWallpaperView *)self->_sharedWallpaperView setRotating:1];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setRotating:1];
  [(PBUIWallpaperView *)self->_lockscreenWallpaperView setRotating:1];
  v5 = [(PBUIWallpaperViewController *)self _activeWallpaperView];
  v6 = [v5 needsImmediateLayoutBeforeRotation];

  if (v6)
  {
    [(UIView *)self->_wallpaperContainerView layoutIfNeeded];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_lockscreenBlurViews;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v21 + 1) + 8 * v11++) rotateToInterfaceOrientation:a3];
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_homescreenBlurViews;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) rotateToInterfaceOrientation:{a3, v17}];
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if (a3 != 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PBUIWallpaperView *)self->_sharedWallpaperView switchToIrisMode:1];
    }
  }
}

- (void)noteDidRotateFromInterfaceOrientation:(int64_t)a3
{
  [(PBUIWallpaperView *)self->_sharedWallpaperView setRotating:0];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setRotating:0];
  lockscreenWallpaperView = self->_lockscreenWallpaperView;

  [(PBUIWallpaperView *)lockscreenWallpaperView setRotating:0];
}

- (id)newFakeBlurViewForVariant:(int64_t)a3 style:(int64_t)a4 transformOptions:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  v10 = [WeakRetained wallpaperPresenter:self requestsOrientationWithRefresh:1];

  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (a4 && IsReduceTransparencyEnabled)
  {
    v12 = [[PBUIAccessibilityTintView alloc] initWithVariant:a3 wallpaperViewController:self];
    [(PBUIAccessibilityTintView *)v12 setTransformOptions:a5];
  }

  else
  {
    v13 = [[PBUIFakeBlurView alloc] initWithVariant:a3 wallpaperViewController:self transformOptions:a5 reachabilityCoordinator:self->_reachabilityCoordinator];
    v12 = v13;
    if (v10)
    {
      v14 = MEMORY[0x277D75D18];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __80__PBUIWallpaperViewController_newFakeBlurViewForVariant_style_transformOptions___block_invoke;
      v16[3] = &unk_278362880;
      v12 = v13;
      v17 = v12;
      v18 = v10;
      [v14 performWithoutAnimation:v16];
    }
  }

  return v12;
}

- (id)legibilitySettingsForVariant:(int64_t)a3
{
  if (self->_sharedWallpaperView)
  {
    sharedWallpaperView = self->_sharedWallpaperView;
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid wallpaper variant to legibilitySettingsForVariant:" userInfo:0];
        objc_exception_throw(v7);
      }

      v4 = 1216;
    }

    else
    {
      v4 = 1208;
    }

    sharedWallpaperView = *(&self->super.super.super.isa + v4);
  }

  v5 = [(PBUIWallpaperView *)sharedWallpaperView legibilitySettings];

  return v5;
}

- (id)averageColorForVariant:(int64_t)a3
{
  v3 = [(PBUIWallpaperViewController *)self legibilitySettingsForVariant:a3];
  v4 = [v3 contentColor];

  return v4;
}

- (id)averageColorInRect:(CGRect)a3 forVariant:(int64_t)a4 withSmudgeRadius:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:?];
  if (!v12 || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, CGRectIsNull(v28)) || (v29.origin.x = x, v29.origin.y = y, v29.size.width = width, v29.size.height = height, CGRectIsEmpty(v29)) || (-[PBUIWallpaperViewController view](self, "view"), v13 = objc_claimAutoreleasedReturnValue(), [v13 window], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_screen"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "coordinateSpace"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "convertRect:fromCoordinateSpace:", v16, x, y, width, height), v18 = v17, v20 = v19, v22 = v21, v24 = v23, v16, v15, v14, v13, objc_msgSend(v12, "averageColorInRect:withSmudgeRadius:", v18, v20, v22, v24, a5), (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v25 = [(PBUIWallpaperViewController *)self averageColorForVariant:a4];
  }

  return v25;
}

- (double)contrastForVariant:(int64_t)a3
{
  v3 = *&PBUIWallpaperViewUnknownContrast;
  v4 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:a3];
  v5 = v4;
  if (v4)
  {
    [v4 contrast];
    v3 = v6;
  }

  return v3;
}

- (double)contrastInRect:(CGRect)a3 forVariant:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = *&PBUIWallpaperViewUnknownContrast;
  v10 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:a4];
  if (v10)
  {
    v11 = [(PBUIWallpaperViewController *)self view];
    v12 = [v11 window];
    v13 = [v12 _screen];
    v14 = [v13 coordinateSpace];
    [v10 convertRect:v14 fromCoordinateSpace:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [v10 contrastInRect:{v16, v18, v20, v22}];
    v9 = v23;
  }

  return v9;
}

- (id)wallpaperView:(id)a3 wallpaperConfigurationIncludingValueTypes:(unint64_t)a4
{
  v5 = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  v6 = [v5 wallpaperConfigurationForVariant:1 includingValuesForTypes:a4];

  return v6;
}

- (void)providerLegibilitySettingsChanged:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_lockscreenWallpaperView == v4 || self->_sharedWallpaperView == v4)
  {
    v5 = [(PBUIWallpaperView *)v4 legibilitySettings];
    [(PBUIWallpaperViewController *)self _handleWallpaperLegibilitySettingsChanged:v5 forVariant:0];

    v4 = v7;
  }

  if (self->_homescreenWallpaperView == v4 || self->_sharedWallpaperView == v4)
  {
    v6 = [(PBUIWallpaperView *)v7 legibilitySettings];
    [(PBUIWallpaperViewController *)self _handleWallpaperLegibilitySettingsChanged:v6 forVariant:1];

    v4 = v7;
  }
}

- (void)wallpaperViewDidInvalidateBlurs:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lockscreenWallpaperView == v4 || self->_sharedWallpaperView == v4)
  {
    [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:0];
    v4 = v5;
  }

  if (self->_homescreenWallpaperView == v4 || self->_sharedWallpaperView == v4)
  {
    [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:1];
  }

  [MEMORY[0x277CD9FF0] setLowLatency:0];
}

- (void)wallpaperView:(id)a3 didChangeZoomFactor:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (self->_lockscreenWallpaperView == v5 || self->_sharedWallpaperView == v5)
  {
    [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:0];
    v5 = v6;
  }

  if (self->_homescreenWallpaperView == v5 || self->_sharedWallpaperView == v5)
  {
    [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:1];
    v5 = v6;
  }
}

- (void)wallpaperViewDidChangeWantsRasterization:(id)a3
{
  v4 = a3;
  if (self->_lockscreenWallpaperView == v4 || self->_homescreenWallpaperView == v4 || self->_sharedWallpaperView == v4)
  {
    v5 = v4;
    [(PBUIWallpaperViewController *)self _updateRasterizationState];
    v4 = v5;
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:0, a4];

  [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:1];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__PBUIWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v21[3] = &unk_2783622E0;
  v7 = v6;
  v22 = v7;
  v23 = self;
  [v7 appendBodySectionWithName:@"HomeScreen" multilinePrefix:v5 block:v21];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__PBUIWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v18 = &unk_2783622E0;
  v8 = v7;
  v19 = v8;
  v20 = self;
  [v8 appendBodySectionWithName:@"LockScreen" multilinePrefix:v5 block:&v15];

  if ([(NSHashTable *)self->_suspendColorSamplingAssertions count:v15])
  {
    v9 = [v8 appendObject:self->_suspendColorSamplingAssertions withName:@"suspendColorSamplingAssertions"];
  }

  if ([(NSHashTable *)self->_suspendWallpaperAnimationAssertions count])
  {
    v10 = [v8 appendObject:self->_suspendWallpaperAnimationAssertions withName:@"suspendWallpaperAnimationAssertions"];
  }

  if ([(NSHashTable *)self->_requireWallpaperAssertions count])
  {
    v11 = [v8 appendObject:self->_requireWallpaperAssertions withName:@"requireWallpaperAssertions"];
  }

  v12 = [v8 appendObject:self->_wallpaperConfigurationManager withName:@"wallpaperConfigurationManager"];
  v13 = v8;

  return v8;
}

void __69__PBUIWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) homescreenStyleInfo];
  v4 = [v2 appendObject:v3 withName:@"StyleInfo"];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 1128) allObjects];
  [v5 appendArraySection:v6 withName:@"homescreenStyleChangeDelayReasons" skipIfEmpty:1];
}

void __69__PBUIWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) lockscreenStyleInfo];
  v2 = [v1 appendObject:v3 withName:@"StyleInfo"];
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BOOL)_isRasterizationDisallowedForCurrentVariant
{
  displayedVariant = self->_displayedVariant;
  if (displayedVariant == 1)
  {
    v3 = &OBJC_IVAR___PBUIWallpaperViewController__disallowRasterizationReasonsHomeVariant;
  }

  else
  {
    if (displayedVariant)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = &OBJC_IVAR___PBUIWallpaperViewController__disallowRasterizationReasonsLockVariant;
  }

  v4 = *(&self->super.super.super.isa + *v3);
LABEL_7:
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)_setDisallowRasterization:(BOOL)a3 withReason:(id)a4 reasons:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 containsObject:v7];
  if (!v6)
  {
    if (v9)
    {
      [v8 removeObject:v7];
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  [v8 addObject:v7];
LABEL_6:
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_beginDisallowRasterizationBlock
{
  disallowRasterizationBlockCount = self->_disallowRasterizationBlockCount;
  self->_disallowRasterizationBlockCount = disallowRasterizationBlockCount + 1;
  if (!disallowRasterizationBlockCount)
  {
    [(PBUIWallpaperViewController *)self _updateRasterizationState];
  }
}

- (void)_endDisallowRasterizationBlock
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperViewController.m" lineNumber:1083 description:@"unpaired disallowRastrizationBlock decrement"];

  *a4 = *a3;
}

- (void)_updateRasterizationState
{
  if (self->_disallowRasterizationBlockCount > 0 || [(PBUIWallpaperViewController *)self _isRasterizationDisallowedForCurrentVariant])
  {
    v3 = 0;
  }

  else
  {
    v6 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:self->_displayedVariant];
    v3 = [v6 wantsRasterization];
  }

  v4 = [(UIView *)self->_wallpaperContainerView layer];
  v5 = [v4 shouldRasterize];

  if (v3 != v5)
  {
    v7 = [(UIView *)self->_wallpaperContainerView layer];
    [v7 setShouldRasterize:v3];
  }
}

- (id)wallpaperViewForVariant:(int64_t)a3
{
  sharedWallpaperView = self->_sharedWallpaperView;
  if (sharedWallpaperView)
  {
LABEL_7:
    v6 = sharedWallpaperView;

    return v6;
  }

  if (a3 == 1)
  {
    v5 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenWallpaperView;
    goto LABEL_6;
  }

  if (!a3)
  {
    v5 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenWallpaperView;
LABEL_6:
    sharedWallpaperView = *(&self->super.super.super.isa + *v5);
    goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

- (id)_activeWallpaperView
{
  v3 = [(PBUIWallpaperViewController *)self activeVariant];

  return [(PBUIWallpaperViewController *)self wallpaperViewForVariant:v3];
}

- (void)_suspendOrResumeColorSampling
{
  v3 = [(NSHashTable *)self->_suspendColorSamplingAssertions count]== 0;
  [(PBUIWallpaperView *)self->_lockscreenWallpaperView setContinuousColorSamplingEnabled:v3];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setContinuousColorSamplingEnabled:v3];
  sharedWallpaperView = self->_sharedWallpaperView;

  [(PBUIWallpaperView *)sharedWallpaperView setContinuousColorSamplingEnabled:v3];
}

- (void)_suspendOrResumeWallpaperAnimation
{
  v3 = [(NSHashTable *)self->_suspendWallpaperAnimationAssertions count]== 0;
  [(PBUIWallpaperView *)self->_lockscreenWallpaperView setWallpaperAnimationEnabled:v3];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setWallpaperAnimationEnabled:v3];
  sharedWallpaperView = self->_sharedWallpaperView;

  [(PBUIWallpaperView *)sharedWallpaperView setWallpaperAnimationEnabled:v3];
}

- (void)_invalidateWallpaperAssertion:(id)a3
{
  v6 = a3;
  v4 = [v6 type];
  if (v4 == 2)
  {
    v4 = [(PBUIWallpaperViewController *)self removeWallpaperRequiredAssertion:v6];
  }

  else if (v4 == 1)
  {
    v4 = [(PBUIWallpaperViewController *)self _removeWallpaperAnimationAssertion:v6];
  }

  else
  {
    v5 = v6;
    if (v4)
    {
      goto LABEL_8;
    }

    v4 = [(PBUIWallpaperViewController *)self _removeColorSamplingAssertion:v6];
  }

  v5 = v6;
LABEL_8:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_removeColorSamplingAssertion:(id)a3
{
  [(NSHashTable *)self->_suspendColorSamplingAssertions removeObject:a3];

  [(PBUIWallpaperViewController *)self _suspendOrResumeColorSampling];
}

- (void)_removeWallpaperAnimationAssertion:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSHashTable *)self->_suspendWallpaperAnimationAssertions removeObject:v4];
  [(PBUIWallpaperViewController *)self _suspendOrResumeWallpaperAnimation];
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    suspendWallpaperAnimationAssertions = self->_suspendWallpaperAnimationAssertions;
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = suspendWallpaperAnimationAssertions;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_INFO, "Removing wallpaper animation (and parallax) assertion: %@ \nAll assertions: %@", &v7, 0x16u);
  }
}

- (id)wallpaperStyleInfoForVariant:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
  }

  return v3;
}

- (void)_setWallpaperHidden:(BOOL)a3 variant:(int64_t)a4 reason:(id)a5
{
  v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideHomescreenWallpaperReasons;
  if (!a4)
  {
    v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideLockscreenWallpaperReasons;
  }

  v7 = *(&self->super.super.super.isa + *v6);
  if (a3)
  {
    [v7 addObject:a5];
  }

  else
  {
    [v7 removeObject:a5];
  }

  [(PBUIWallpaperViewController *)self _updateWallpaperHidden];
}

- (BOOL)_isWallpaperHiddenForVariant:(int64_t)a3
{
  if ([(NSHashTable *)self->_requireWallpaperAssertions count])
  {
    return 0;
  }

  v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideHomescreenWallpaperReasons;
  if (!a3)
  {
    v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideLockscreenWallpaperReasons;
  }

  return [*(&self->super.super.super.isa + *v6) count] != 0;
}

- (void)_updateWallpaperHidden
{
  v3 = [(PBUIWallpaperViewController *)self _isWallpaperHiddenForVariant:self->_displayedVariant];
  sharedWallpaperView = self->_sharedWallpaperView;
  if (v3)
  {
    [(PBUIWallpaperView *)sharedWallpaperView setHidden:1];
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setHidden:1];
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setHidden:1];
    v5 = [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
    v6 = [v5 wallpaperEffectView];
    [v6 setHidden:1];

    v13 = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
    v7 = [v13 wallpaperEffectView];
    [v7 setHidden:1];
  }

  else
  {
    [(PBUIWallpaperView *)sharedWallpaperView setHidden:0];
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setHidden:self->_displayedVariant != 0];
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setHidden:self->_displayedVariant != 1];
    v8 = [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
    v9 = [v8 wallpaperEffectView];
    [v9 setHidden:self->_displayedVariant != 0];

    v10 = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
    v11 = [v10 wallpaperEffectView];
    [v11 setHidden:self->_displayedVariant != 1];

    displayedVariant = self->_displayedVariant;

    [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:displayedVariant withFactory:0];
  }
}

- (void)removeWallpaperRequiredAssertion:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_requireWallpaperAssertions containsObject:v4])
  {
    [(NSHashTable *)self->_requireWallpaperAssertions removeObject:v4];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__PBUIWallpaperViewController_removeWallpaperRequiredAssertion___block_invoke;
    v5[3] = &unk_2783623D0;
    v5[4] = self;
    PBUIWallpaperEnumerateVariantsForLocations(3, v5);
    [(PBUIWallpaperViewController *)self _updateWallpaperHidden];
  }
}

- (void)_updateWallpaperParallax
{
  v3 = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  sharedWallpaperView = self->_sharedWallpaperView;
  v13 = v3;
  v5 = [v3 lockScreenWallpaperConfigurationIncludingValuesForTypes:16];
  v6 = [v5 wallpaperOptions];

  [v6 parallaxFactor];
  v8 = fabs(v7) >= 2.22044605e-16;
  if (sharedWallpaperView)
  {
    [(PBUIWallpaperView *)self->_sharedWallpaperView setParallaxFactor:?];
    [(PBUIWallpaperView *)self->_sharedWallpaperView setParallaxEnabled:v8];
  }

  else
  {
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setParallaxFactor:?];
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setParallaxEnabled:v8];
    v9 = [v13 homeScreenWallpaperConfigurationIncludingValuesForTypes:16];
    v10 = [v9 wallpaperOptions];

    [v10 parallaxFactor];
    v12 = v11;
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setParallaxFactor:?];
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setParallaxEnabled:fabs(v12) >= 2.22044605e-16];
  }
}

+ (id)substitutionFlatColorForWallpaperName:(id)a3
{
  v3 = a3;
  if (([v3 hasSuffix:@".Solid_Black"] & 1) != 0 || objc_msgSend(v3, "hasSuffix:", @".Solid Black"))
  {
    v4 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)substitutionWallpaperConfigurationForWallpaperConfiguration:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if ([(PBUIWallpaperConfiguration *)v3 wallpaperType]== 1)
  {
    v5 = [(PBUIWallpaperConfiguration *)v3 wallpaperOptions];
    v6 = [v5 name];
    v4 = v3;
    if (v6)
    {
      v7 = [objc_opt_class() substitutionFlatColorForWallpaperName:v6];
      v4 = v3;
      if (v7)
      {
        v8 = v7;
        v9 = PBUILogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412546;
          v12 = v8;
          v13 = 2112;
          v14 = v6;
          _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "Substituting flat color '%@' for wallpaper with name '%@'", &v11, 0x16u);
        }

        v4 = [[PBUIWallpaperConfiguration alloc] initWithVariant:[(PBUIWallpaperConfiguration *)v3 variant] type:4];
        [(PBUIWallpaperConfiguration *)v4 setWallpaperColor:v8];
        [(PBUIWallpaperConfiguration *)v4 setWallpaperOptions:v5];
      }
    }
  }

  return v4;
}

- (void)_updateWallpaperForLocations:(int64_t)a3 options:(unint64_t)a4 wallpaperMode:(int64_t)a5 withCompletion:(id)a6
{
  v10 = a6;
  if ([(PBUIWallpaperViewController *)self variantsShareWallpaper])
  {
    [(PBUIWallpaperViewController *)self _updateSharedWallpaperWithOptions:a4 wallpaperMode:a5];
  }

  else
  {
    [(PBUIWallpaperViewController *)self _updateSeparateWallpaperForVariants:a3 options:a4 wallpaperMode:a5];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__PBUIWallpaperViewController__updateWallpaperForLocations_options_wallpaperMode_withCompletion___block_invoke;
  v11[3] = &unk_278361E18;
  v11[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  if (v10)
  {
    v10[2](v10);
  }
}

uint64_t __97__PBUIWallpaperViewController__updateWallpaperForLocations_options_wallpaperMode_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateWallpaperScaleWithAnimationFactory:0];
  [*(a1 + 32) setLockscreenOnlyWallpaperAlpha:*(*(a1 + 32) + 1080)];
  [*(a1 + 32) _updateWallpaperParallax];
  [*(a1 + 32) _updateWallpaperHidden];
  [*(a1 + 32) _updateBlurGeneration];
  [*(a1 + 32) _suspendOrResumeColorSampling];
  v2 = *(a1 + 32);

  return [v2 _suspendOrResumeWallpaperAnimation];
}

- (void)_updateSharedWallpaperWithOptions:(unint64_t)a3 wallpaperMode:(int64_t)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v7 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:0 wallpaperMode:?];
  sharedWallpaperView = self->_sharedWallpaperView;
  if (sharedWallpaperView)
  {
    if ([(PBUIWallpaperViewController *)self _isWallpaperView:sharedWallpaperView displayingWallpaperWithConfiguration:v7 forVariant:0])
    {
      v9 = 0;
      v36 = 0;
      v37 = 0;
      v10 = 0;
    }

    else
    {
      v9 = self->_sharedWallpaperView;
      v18 = [(UIView *)self->_wallpaperContainerView subviews];
      v19 = [v18 indexOfObject:self->_sharedWallpaperView];

      v20 = objc_autoreleasePoolPush();
      [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_sharedWallpaperView];
      [(PBUIWallpaperViewController *)self setSharedWallpaperView:0];
      objc_autoreleasePoolPop(v20);
      [(UIView *)self->_wallpaperContainerView insertSubview:v9 atIndex:v19];
      v37 = 0;
      v10 = 0;
      v36 = 0x100000001;
    }
  }

  else
  {
    HIDWORD(v36) = ![(PBUIWallpaperViewController *)self _isWallpaperView:self->_lockscreenWallpaperView displayingWallpaperWithConfiguration:v7 forVariant:0];
    v11 = self->_lockscreenWallpaperView;
    v12 = [(UIView *)self->_wallpaperContainerView subviews];
    v13 = [v12 indexOfObject:self->_lockscreenWallpaperView];

    v14 = objc_autoreleasePoolPush();
    [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_lockscreenWallpaperView];
    [(PBUIWallpaperViewController *)self setLockscreenWallpaperView:0];
    objc_autoreleasePoolPop(v14);
    v37 = v11;
    [(UIView *)self->_wallpaperContainerView insertSubview:v11 atIndex:v13];
    LODWORD(v36) = ![(PBUIWallpaperViewController *)self _isWallpaperView:self->_homescreenWallpaperView displayingWallpaperWithConfiguration:v7 forVariant:1];
    v10 = self->_homescreenWallpaperView;
    v15 = [(UIView *)self->_wallpaperContainerView subviews];
    v16 = [v15 indexOfObject:self->_homescreenWallpaperView];

    v17 = objc_autoreleasePoolPush();
    [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_homescreenWallpaperView];
    [(PBUIWallpaperViewController *)self setHomescreenWallpaperView:0];
    objc_autoreleasePoolPop(v17);
    [(UIView *)self->_wallpaperContainerView insertSubview:v10 atIndex:v16];
    v9 = 0;
  }

  v21 = self->_sharedWallpaperView;
  if (v21)
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
    if (self->_displayedVariant == -1)
    {
      displayedVariant = 0;
    }

    else
    {
      displayedVariant = self->_displayedVariant;
    }

    v24 = [(PBUIWallpaperViewController *)self _makeWallpaperViewWithConfiguration:v7 forVariant:displayedVariant shared:1 options:a3];
    [(PBUIWallpaperView *)v24 setAlpha:0.0];
    if (v24)
    {
      [(UIView *)self->_wallpaperContainerView insertSubview:v24 atIndex:0];
    }

    v25 = self->_sharedWallpaperView;
    self->_sharedWallpaperView = v24;
    v26 = v24;

    v27 = MEMORY[0x277D75D18];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __79__PBUIWallpaperViewController__updateSharedWallpaperWithOptions_wallpaperMode___block_invoke;
    v42[3] = &unk_278363910;
    v43 = v9;
    v44 = v37;
    v45 = v10;
    v46 = self;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __79__PBUIWallpaperViewController__updateSharedWallpaperWithOptions_wallpaperMode___block_invoke_2;
    v38[3] = &unk_278363938;
    v38[4] = self;
    v39 = v43;
    v40 = v44;
    v41 = v45;
    [v27 animateWithDuration:0 delay:v42 usingSpringWithDamping:v38 initialSpringVelocity:1.0 options:0.0 animations:0.99 completion:0.0];

    v21 = self->_sharedWallpaperView;
  }

  [(PBUIWallpaperView *)v21 prepareToAppear];
  if (a4 < 2)
  {
    v28 = MEMORY[0x277D75C80];
    v29 = 1;
    goto LABEL_21;
  }

  if (a4 == 3)
  {
    v31 = MEMORY[0x277D75C80];
    v32 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v47[0] = v32;
    v33 = [MEMORY[0x277D75C80] _traitCollectionWithBacklightLuminance:1];
    v47[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v30 = [v31 traitCollectionWithTraitsFromCollections:v34];
  }

  else
  {
    if (a4 == 2)
    {
      v28 = MEMORY[0x277D75C80];
      v29 = 2;
LABEL_21:
      v30 = [v28 traitCollectionWithUserInterfaceStyle:v29];
      goto LABEL_24;
    }

    v30 = 0;
  }

LABEL_24:
  [(PBUIWallpaperViewController *)self setFakeBlurViewOverrideTraitCollection:v30];
  [(PBUIWallpaperViewController *)self _precacheStyles:self->_sharedWallpaperView usingTraitCollection:v30];
  if (HIDWORD(v36))
  {
    [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:0];
  }

  if (v36)
  {
    [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:1];
  }

  [(PBUIWallpaperViewController *)self setFakeBlurViewOverrideTraitCollection:0];
  v35 = [(PBUIWallpaperViewController *)self wallpaperPresentingDelegate];
  [v35 wallpaperPresenter:self didChangeWallpaperForLocations:3 withConfiguration:v7];
}

uint64_t __79__PBUIWallpaperViewController__updateSharedWallpaperWithOptions_wallpaperMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    [*(a1 + 40) setAlpha:0.0];
    v2 = *(a1 + 48);
  }

  [v2 setAlpha:0.0];
  v3 = *(*(a1 + 56) + 1224);

  return [v3 setAlpha:1.0];
}

- (void)_precacheStyles:(id)a3 usingTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((soft_PUIFeatureEnabled(2) & 1) == 0)
  {
    v8 = 29;
    v7 = [PBUIFakeBlurView _imageForStyle:&v8 withSource:v5 overrideTraitCollection:v6];
  }
}

- (void)_updateSeparateWallpaperForVariants:(int64_t)a3 options:(unint64_t)a4 wallpaperMode:(int64_t)a5
{
  v6 = a3;
  v76[2] = *MEMORY[0x277D85DE8];
  if ((a3 & 1) != 0 || self->_sharedWallpaperView)
  {
    v8 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:0 wallpaperMode:a5];
    if ((v6 & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if ((a3 & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  if (!self->_sharedWallpaperView)
  {
    v9 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v9 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:1 wallpaperMode:a5];
LABEL_8:
  sharedWallpaperView = self->_sharedWallpaperView;
  v11 = 0x27CECE000uLL;
  v65 = v9;
  v59 = a5;
  if (sharedWallpaperView)
  {
    v64 = ![(PBUIWallpaperViewController *)self _isWallpaperView:sharedWallpaperView displayingWallpaperWithConfiguration:v8 forVariant:0];
    v12 = ![(PBUIWallpaperViewController *)self _isWallpaperView:self->_sharedWallpaperView displayingWallpaperWithConfiguration:v9 forVariant:1];
    v13 = self->_sharedWallpaperView;
    v14 = [(UIView *)self->_wallpaperContainerView subviews];
    v15 = [v14 indexOfObject:self->_sharedWallpaperView];

    v16 = objc_autoreleasePoolPush();
    [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_sharedWallpaperView];
    [(PBUIWallpaperViewController *)self setSharedWallpaperView:0];
    objc_autoreleasePoolPop(v16);
    v17 = v15;
    v11 = 0x27CECE000uLL;
    [(UIView *)self->_wallpaperContainerView insertSubview:v13 atIndex:v17];
    v18 = 0;
    v19 = 0;
    goto LABEL_21;
  }

  if (v6)
  {
    if ([(PBUIWallpaperViewController *)self _isWallpaperView:self->_lockscreenWallpaperView displayingWallpaperWithConfiguration:v8 forVariant:0])
    {
      v18 = 0;
      v64 = 0;
    }

    else
    {
      v25 = self->_lockscreenWallpaperView;
      v26 = [(UIView *)self->_wallpaperContainerView subviews];
      v27 = [v26 indexOfObject:self->_lockscreenWallpaperView];

      v28 = objc_autoreleasePoolPush();
      [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_lockscreenWallpaperView];
      [(PBUIWallpaperViewController *)self setLockscreenWallpaperView:0];
      v29 = v28;
      v18 = v25;
      objc_autoreleasePoolPop(v29);
      [(UIView *)self->_wallpaperContainerView insertSubview:v25 atIndex:v27];
      v64 = 1;
    }

    v11 = 0x27CECE000uLL;
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v13 = 0;
    v19 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v18 = 0;
  v64 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ([(PBUIWallpaperViewController *)self _isWallpaperView:self->_homescreenWallpaperView displayingWallpaperWithConfiguration:v9 forVariant:1])
  {
    v13 = 0;
    v19 = 0;
    v12 = 0;
  }

  else
  {
    v19 = self->_homescreenWallpaperView;
    [(UIView *)self->_wallpaperContainerView subviews];
    v21 = v20 = v18;
    v22 = [v21 indexOfObject:self->_homescreenWallpaperView];

    v23 = objc_autoreleasePoolPush();
    [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_homescreenWallpaperView];
    [(PBUIWallpaperViewController *)self setHomescreenWallpaperView:0];
    v24 = v23;
    v18 = v20;
    objc_autoreleasePoolPop(v24);
    [(UIView *)self->_wallpaperContainerView insertSubview:v19 atIndex:v22];
    v13 = 0;
    v12 = 1;
  }

  v11 = 0x27CECE000;
LABEL_21:
  p_lockscreenWallpaperView = &self->_lockscreenWallpaperView;
  if (v18)
  {
    v31 = 1;
  }

  else
  {
    v31 = self->_lockscreenWallpaperView == 0;
  }

  v62 = v8;
  if (v31 && v8)
  {
    v32 = [(PBUIWallpaperViewController *)self _makeWallpaperViewWithConfiguration:v8 forVariant:0 shared:0 options:a4];
    objc_storeStrong(p_lockscreenWallpaperView, v32);
    if (v13)
    {
      v33 = v13;
    }

    else
    {
      v33 = v18;
    }

    if (v13 | v18)
    {
      v34 = v33;
      if (*p_lockscreenWallpaperView)
      {
        [(UIView *)self->_wallpaperContainerView insertSubview:*p_lockscreenWallpaperView above:v34];
      }
    }

    else
    {
      if (*p_lockscreenWallpaperView)
      {
        [(UIView *)self->_wallpaperContainerView insertSubview:*p_lockscreenWallpaperView atIndex:0];
      }

      v34 = 0;
    }

    [(PBUIWallpaperView *)*p_lockscreenWallpaperView setAlpha:0.0];
    v35 = MEMORY[0x277D75D18];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __89__PBUIWallpaperViewController__updateSeparateWallpaperForVariants_options_wallpaperMode___block_invoke;
    v75[3] = &unk_278361E18;
    v75[4] = self;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __89__PBUIWallpaperViewController__updateSeparateWallpaperForVariants_options_wallpaperMode___block_invoke_2;
    v71[3] = &unk_278363938;
    v71[4] = self;
    v72 = v13;
    v73 = v18;
    v74 = v19;
    [v35 animateWithDuration:0 delay:v75 usingSpringWithDamping:v71 initialSpringVelocity:1.0 options:0.0 animations:0.99 completion:0.0];
  }

  v63 = v12;
  v36 = (&self->super.super.super.isa + *(v11 + 3260));
  if (v19)
  {
    v37 = 1;
  }

  else
  {
    v37 = *v36 == 0;
  }

  if (v37 && v65)
  {
    v38 = [(PBUIWallpaperViewController *)self _makeWallpaperViewWithConfiguration:v65 forVariant:1 shared:0 options:a4];
    objc_storeStrong(v36, v38);
    if (v13)
    {
      v39 = v13;
    }

    else
    {
      v39 = v19;
    }

    v40 = v18;
    if (v13 | v19)
    {
      v41 = v39;
      if (*v36)
      {
        [(UIView *)self->_wallpaperContainerView insertSubview:*v36 above:v41];
      }
    }

    else
    {
      if (*v36)
      {
        [(UIView *)self->_wallpaperContainerView insertSubview:*v36 atIndex:0];
      }

      v41 = 0;
    }

    [*v36 setAlpha:0.0];
    v42 = MEMORY[0x277D75D18];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __89__PBUIWallpaperViewController__updateSeparateWallpaperForVariants_options_wallpaperMode___block_invoke_3;
    v70[3] = &unk_278361E18;
    v70[4] = self;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __89__PBUIWallpaperViewController__updateSeparateWallpaperForVariants_options_wallpaperMode___block_invoke_4;
    v66[3] = &unk_278363938;
    v66[4] = self;
    v67 = v13;
    v68 = v40;
    v69 = v19;
    v43 = v42;
    v18 = v40;
    [v43 animateWithDuration:0 delay:v70 usingSpringWithDamping:v66 initialSpringVelocity:1.0 options:0.0 animations:0.99 completion:0.0];
  }

  displayedVariant = self->_displayedVariant;
  v45 = displayedVariant == 1;
  if (displayedVariant == 1)
  {
    v46 = &self->_lockscreenWallpaperView;
  }

  else
  {
    v46 = v36;
  }

  v61 = v18;
  if (!v45)
  {
    v18 = v19;
  }

  [(UIView *)self->_wallpaperContainerView sendSubviewToBack:*v46];
  [(UIView *)self->_wallpaperContainerView sendSubviewToBack:v18];
  v47 = v64;
  if (v64 && !self->_displayedVariant)
  {
    [(PBUIWallpaperView *)*p_lockscreenWallpaperView prepareToAppear];
  }

  v48 = v63;
  if (v63 && self->_displayedVariant == 1)
  {
    [*v36 prepareToAppear];
  }

  if (v59 < 2)
  {
    v49 = MEMORY[0x277D75C80];
    v50 = 1;
    goto LABEL_69;
  }

  if (v59 == 3)
  {
    v52 = MEMORY[0x277D75C80];
    v53 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v76[0] = v53;
    v54 = [MEMORY[0x277D75C80] _traitCollectionWithBacklightLuminance:1];
    v76[1] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
    v56 = v52;
    v47 = v64;
    v51 = [v56 traitCollectionWithTraitsFromCollections:v55];

    v48 = v63;
  }

  else
  {
    if (v59 == 2)
    {
      v49 = MEMORY[0x277D75C80];
      v50 = 2;
LABEL_69:
      v51 = [v49 traitCollectionWithUserInterfaceStyle:v50];
      goto LABEL_72;
    }

    v51 = 0;
  }

LABEL_72:
  [(PBUIWallpaperViewController *)self setFakeBlurViewOverrideTraitCollection:v51];
  if (v47)
  {
    [(PBUIWallpaperViewController *)self _precacheStyles:*p_lockscreenWallpaperView usingTraitCollection:v51];
    [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:0];
  }

  if (v48)
  {
    [(PBUIWallpaperViewController *)self _precacheStyles:*v36 usingTraitCollection:v51];
    [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:1];
  }

  [(PBUIWallpaperViewController *)self setFakeBlurViewOverrideTraitCollection:0];
  v57 = [(PBUIWallpaperViewController *)self wallpaperPresentingDelegate];
  v58 = v57;
  if (v62)
  {
    [v57 wallpaperPresenter:self didChangeWallpaperForLocations:1 withConfiguration:v62];
  }

  if (v65)
  {
    [v58 wallpaperPresenter:self didChangeWallpaperForLocations:2 withConfiguration:v65];
  }
}

- (void)_beginSuspendingMotionEffectsForStyleIfNeeded
{
  v3 = [(PBUIWallpaperViewController *)self wallpaperStyleAnimationAssertion];

  if (!v3)
  {
    v4 = PBUILogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_INFO, "Disabling dynamic wallpapers and parallax because of requested wallpaper style", v6, 2u);
    }

    v5 = [(PBUIWallpaperViewController *)self suspendWallpaperAnimationForReason:@"PBUIWallpaperViewIsDarkOrHiddenReason"];
    [(PBUIWallpaperViewController *)self setWallpaperStyleAnimationAssertion:v5];
  }
}

- (void)_endSuspendingMotionEffectsForStyleIfNeeded
{
  v3 = [(PBUIWallpaperViewController *)self wallpaperStyleAnimationAssertion];

  if (v3)
  {
    v4 = PBUILogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_INFO, "Enabling dynamic wallpapers and parallax because of requested wallpaper style", v6, 2u);
    }

    v5 = [(PBUIWallpaperViewController *)self wallpaperStyleAnimationAssertion];
    [v5 invalidate];

    [(PBUIWallpaperViewController *)self setWallpaperStyleAnimationAssertion:0];
  }
}

- (BOOL)_shouldSuspendMotionEffectsForStyle:(int64_t)a3
{
  result = _WallpaperStyleHasDarkBlur(a3);
  if ((a3 - 1) < 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)_shouldSuspendMotionEffectsForState:(id *)a3
{
  v5 = [(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForStyle:a3->var0];
  v6 = [(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForStyle:a3->var1];
  var2 = a3->var2;
  if (fabs(var2 + -1.0) < 2.22044605e-16 && v6)
  {
    return 1;
  }

  else
  {
    return v5 & (fabs(var2) < 2.22044605e-16 || v6);
  }
}

- (void)_updateMotionEffectsForState:(id *)a3
{
  v4 = *a3;
  if ([(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForState:&v4])
  {
    [(PBUIWallpaperViewController *)self _beginSuspendingMotionEffectsForStyleIfNeeded];
  }

  else
  {
    [(PBUIWallpaperViewController *)self _endSuspendingMotionEffectsForStyleIfNeeded];
  }
}

- (BOOL)_updateEffectViewForVariant:(int64_t)a3 oldState:(id *)a4 newState:(id *)a5 oldEffectView:(id *)a6 newEffectView:(id *)a7
{
  if (a3 == 1)
  {
    [(PBUIWallpaperViewController *)self homescreenStyleInfo];
  }

  else
  {
    [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
  }
  v13 = ;
  v14 = [v13 highestValidPriority];
  v15 = v14;
  v35 = 0uLL;
  v36 = 0.0;
  if (v13)
  {
    [v13 styleTransitionState];
    v33 = 0uLL;
    v34 = 0.0;
    if ((v15 & 0x8000000000000000) == 0)
    {
      [v13 priorityInfoForPriority:v15];
LABEL_9:
      v33 = *(v32 + 8);
      v34 = *(&v32[1] + 1);
      goto LABEL_11;
    }
  }

  else if ((v14 & 0x8000000000000000) == 0)
  {
    memset(v32, 0, sizeof(v32));
    goto LABEL_9;
  }

  v33 = 0uLL;
  v34 = 0.0;
LABEL_11:
  if ([(NSHashTable *)self->_requireWallpaperAssertions count])
  {
    if (v33 == 1 || *(&v33 + 1) == 1)
    {
      PBUIWallpaperStyleTransitionStateMake(0, 0, &v33, 0.0);
    }

    if (v35 == 1 || *(&v35 + 1) == 1)
    {
      PBUIWallpaperStyleTransitionStateMake(0, 0, &v30, 0.0);
      v35 = v30;
      v36 = v31;
    }
  }

  v30 = v33;
  v31 = v34;
  [v13 setStyleTransitionState:&v30];
  v16 = [v13 wallpaperEffectView];
  v17 = v16;
  if (self->_displayedVariant != a3)
  {
    v22 = v33 == 1 || *(&v33 + 1) == 1;
    v23 = v22;
    if (v22)
    {
      [(PBUIWallpaperViewController *)self _clearWallpaperEffectView:v16];
      [v13 setWallpaperEffectView:0];
    }

    else
    {
      v30 = v33;
      v31 = v34;
      if (v16)
      {
        [v16 setTransitionState:&v30];
      }

      else
      {
        v17 = [(PBUIWallpaperViewController *)self _newWallpaperEffectViewForVariant:a3 transitionState:&v30];
        [v13 setWallpaperEffectView:v17];
      }

      [v17 setHidden:1];
    }

    [(PBUIWallpaperViewController *)self _setWallpaperHidden:v23 variant:a3 reason:@"WallpaperStyleHidden"];
    goto LABEL_56;
  }

  if (a4)
  {
    *&a4->var0 = v35;
    a4->var2 = v36;
  }

  if (a5)
  {
    *&a5->var0 = v33;
    a5->var2 = v34;
  }

  v18 = 1;
  if (v35 != 1 && *(&v35 + 1) != 1)
  {
    v18 = [(PBUIWallpaperViewController *)self _isWallpaperHiddenForVariant:a3];
  }

  v19 = v33;
  if (v33 == 1)
  {
    [(PBUIWallpaperViewController *)self _setWallpaperHidden:1 variant:a3 reason:@"WallpaperStyleHidden"];
    [(PBUIWallpaperViewController *)self _clearWallpaperEffectView:v17];
    v20 = 0;
    goto LABEL_28;
  }

  v24 = *(&v33 + 1);
  if (*(&v33 + 1) != 1 && !v18)
  {
    if (v35 != v33 || (BSFloatEqualToFloat() & 1) == 0)
    {
      v25 = v17;
      v17 = v25;
      if (v19 | v24)
      {
        if ([v25 prepareToAnimateToTransitionState:&v33])
        {
          v26 = v17;
          if (a5)
          {
            *&a5->var0 = v33;
            a5->var2 = v34;
          }
        }

        else
        {
          v30 = v33;
          v31 = v34;
          v26 = [(PBUIWallpaperViewController *)self _newWallpaperEffectViewForVariant:a3 transitionState:&v30];
          [v26 setAlpha:0.0];
        }
      }

      else
      {
        v26 = 0;
      }

      [v13 setWallpaperEffectView:v26];
      if (a6)
      {
        v28 = v17;
        *a6 = v17;
      }

      if (a7)
      {
        v29 = v26;
        *a7 = v26;
      }

      goto LABEL_34;
    }

LABEL_56:
    v21 = 0;
    goto LABEL_57;
  }

  [(PBUIWallpaperViewController *)self _setWallpaperHidden:*(&v33 + 1) == 1 variant:a3 reason:@"WallpaperStyleHidden"];
  [(PBUIWallpaperViewController *)self _clearWallpaperEffectView:v17];
  [v13 setWallpaperEffectView:0];
  if (v24 == 1)
  {
    goto LABEL_29;
  }

  v30 = v33;
  v31 = v34;
  v20 = [(PBUIWallpaperViewController *)self _newWallpaperEffectViewForVariant:a3 transitionState:&v30];

  v17 = v20;
LABEL_28:
  [v13 setWallpaperEffectView:v20];
LABEL_29:
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v30 = v33;
  v31 = v34;
  [(PBUIWallpaperViewController *)self _updateMotionEffectsForState:&v30];
LABEL_34:
  v21 = 1;
LABEL_57:

  return v21;
}

- (BOOL)_updateEffectViewForVariant:(int64_t)a3 withFactory:(id)a4
{
  v6 = a4;
  if (a3 == 1 && [(PBUIWallpaperViewController *)self shouldDelayHomescreenStyleUpdates])
  {
    v7 = 1;
  }

  else
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3810000000;
    v21[3] = &unk_21E71DDAF;
    memset(&v21[4], 0, 24);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3810000000;
    v20[3] = &unk_21E71DDAF;
    memset(&v20[4], 0, 24);
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__4;
    v18[4] = __Block_byref_object_dispose__4;
    v19 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__4;
    v16[4] = __Block_byref_object_dispose__4;
    v17 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__PBUIWallpaperViewController__updateEffectViewForVariant_withFactory___block_invoke;
    v11[3] = &unk_278363960;
    v11[4] = self;
    v11[5] = &v12;
    v11[9] = v16;
    v11[10] = a3;
    v11[6] = v21;
    v11[7] = v20;
    v11[8] = v18;
    [MEMORY[0x277CF0D38] animateWithFactory:0 actions:v11];
    v7 = *(v13 + 24);
    if (v7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __71__PBUIWallpaperViewController__updateEffectViewForVariant_withFactory___block_invoke_2;
      v10[3] = &unk_278363988;
      v10[4] = self;
      v10[5] = v20;
      v10[6] = v16;
      v10[7] = v18;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __71__PBUIWallpaperViewController__updateEffectViewForVariant_withFactory___block_invoke_3;
      v9[3] = &unk_2783639B0;
      v9[4] = self;
      v9[5] = v18;
      v9[6] = v16;
      v9[7] = v20;
      [MEMORY[0x277CF0D38] animateWithFactory:v6 actions:v10 completion:v9];
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(v16, 8);

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v21, 8);
  }

  return v7;
}

void __71__PBUIWallpaperViewController__updateEffectViewForVariant_withFactory___block_invoke(void *a1)
{
  v2 = a1[4];
  v4 = a1[9];
  v3 = a1[10];
  v5 = *(a1[6] + 8);
  v6 = *(a1[8] + 8);
  v7 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v8 = *(v4 + 8);
  v10 = *(v8 + 40);
  v9 = [v2 _updateEffectViewForVariant:v3 oldState:v5 + 32 newState:v7 + 32 oldEffectView:&obj newEffectView:&v10];
  objc_storeStrong((v6 + 40), obj);
  objc_storeStrong((v8 + 40), v10);
  *(*(a1[5] + 8) + 24) = v9;
}

void __71__PBUIWallpaperViewController__updateEffectViewForVariant_withFactory___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v8 = *(v3 + 32);
  v9 = *(v3 + 48);
  if (([v2 _shouldSuspendMotionEffectsForState:&v8] & 1) == 0)
  {
    [*(a1 + 32) _endSuspendingMotionEffectsForStyleIfNeeded];
  }

  [*(a1 + 32) _beginDisallowRasterizationBlock];
  [*(*(*(a1 + 48) + 8) + 40) setAlpha:1.0];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 32);
  v9 = *(v5 + 48);
  [v4 setTransitionState:&v8];
  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (!v6 || v6 != *(*(*(a1 + 56) + 8) + 40) && ([v6 currentTransitionStateIsOpaque] & 1) == 0)
  {
    [*(*(*(a1 + 56) + 8) + 40) setAlpha:0.0];
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v7 = [*(a1 + 32) _activeWallpaperView];
      [v7 setAlpha:1.0];
    }
  }
}

uint64_t __71__PBUIWallpaperViewController__updateEffectViewForVariant_withFactory___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3 != *(*(v2 + 8) + 40))
  {
    [v3 removeFromSuperview];
  }

  [*(a1 + 32) _endDisallowRasterizationBlock];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 56) + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  return [v4 _updateMotionEffectsForState:&v7];
}

- (void)_handleWallpaperChangedForVariant:(int64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperViewController *)self _observersForVariant:?];
  v6 = [v5 copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 wallpaperWillChangeForVariant:a3];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 wallpaperDidChangeForVariant:{a3, v19}];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:a3];
  [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:a3];
}

- (BOOL)variantsShareWallpaper
{
  v2 = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  v3 = [v2 variantsShareWallpaperConfigurationForTypes:54];

  return v3;
}

- (id)wallpaperConfigurationForUpdatingWallpaperViewsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v7 = [(PBUIWallpaperViewController *)self wallpaperDataTypesToRequestForUpdatingWallpaperViews];

  return [(PBUIWallpaperViewController *)self wallpaperConfigurationForVariant:a3 includingValuesForTypes:v7 wallpaperMode:a4];
}

- (id)wallpaperConfigurationForVariant:(int64_t)a3 includingValuesForTypes:(unint64_t)a4 wallpaperMode:(int64_t)a5
{
  v9 = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  v10 = [v9 wallpaperConfigurationForVariant:a3 includingValuesForTypes:a4 | 0x10 wallpaperMode:a5];

  v11 = [(PBUIWallpaperViewController *)self substitutionWallpaperConfigurationForWallpaperConfiguration:v10];

  return v11;
}

- (void)_registerFakeBlurView:(id)a3
{
  v4 = a3;
  v5 = [v4 variant];
  v6 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenBlurViews;
  if (!v5)
  {
    v6 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenBlurViews;
  }

  [*(&self->super.super.super.isa + *v6) addObject:v4];

  [(PBUIWallpaperViewController *)self _updateBlurGeneration];
}

- (void)_unregisterFakeBlurView:(id)a3
{
  lockscreenBlurViews = self->_lockscreenBlurViews;
  v5 = a3;
  [(NSHashTable *)lockscreenBlurViews removeObject:v5];
  [(NSHashTable *)self->_homescreenBlurViews removeObject:v5];

  [(PBUIWallpaperViewController *)self _updateBlurGeneration];
}

- (id)_sourceForFakeBlurView:(id)a3
{
  v4 = [a3 variant];

  return [(PBUIWallpaperViewController *)self wallpaperViewForVariant:v4];
}

- (void)_updateBlurGeneration
{
  v3 = [(NSHashTable *)self->_homescreenBlurViews count];
  v4 = [(NSHashTable *)self->_lockscreenBlurViews count];
  v5 = v4 != 0;
  [(PBUIWallpaperView *)self->_sharedWallpaperView setGeneratesBlurredImages:(v3 | v4) != 0];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setGeneratesBlurredImages:v3 != 0];
  lockscreenWallpaperView = self->_lockscreenWallpaperView;

  [(PBUIWallpaperView *)lockscreenWallpaperView setGeneratesBlurredImages:v5];
}

- (unint64_t)_bestWallpaperViewInitializationOptionsForVariant:(int64_t)a3 shared:(BOOL)a4 wallpaperOptions:(id)a5 options:(unint64_t)a6
{
  if (a4)
  {
    v6 = 11;
  }

  else
  {
    v6 = 10;
  }

  if ([a5 supportsCropping])
  {
    return v6;
  }

  else
  {
    return v6 | 0x10;
  }
}

- (id)_vendWallpaperViewForConfiguration:(id)a3 forVariant:(int64_t)a4 shared:(BOOL)a5 options:(unint64_t)a6
{
  v7 = a5;
  v10 = a3;
  [(UIView *)self->_wallpaperContainerView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v10 wallpaperOptions];
  v20 = [v10 wallpaperType];
  v21 = [(PBUIWallpaperViewController *)self _bestWallpaperViewInitializationOptionsForVariant:a4 shared:v7 wallpaperOptions:v19 options:a6];
  v22 = [(PBUIWallpaperViewController *)self cachingIdentifier];
  v23 = [(PBUIWallpaperViewController *)self _wallpaperViewClassForType:v20];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__4;
  v45 = __Block_byref_object_dispose__4;
  v46 = 0;
  v24 = MEMORY[0x277D75D18];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __92__PBUIWallpaperViewController__vendWallpaperViewForConfiguration_forVariant_shared_options___block_invoke;
  v29[3] = &unk_2783639D8;
  v33 = &v41;
  v34 = v23;
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v38 = v18;
  v25 = v10;
  v30 = v25;
  v39 = a4;
  v26 = v22;
  v31 = v26;
  v32 = self;
  v40 = v21;
  [v24 performWithoutAnimation:v29];
  v27 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v27;
}

uint64_t __92__PBUIWallpaperViewController__vendWallpaperViewForConfiguration_forVariant_shared_options___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 64)) initWithFrame:*(a1 + 32) configuration:*(a1 + 104) variant:*(a1 + 40) cacheGroup:*(a1 + 48) delegate:*(a1 + 112) options:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 56) + 8) + 40) setAutoresizingMask:18];
  [*(*(*(a1 + 56) + 8) + 40) setDelegate:*(a1 + 48)];
  [*(*(*(a1 + 56) + 8) + 40) setInternalObserver:*(a1 + 48)];
  v5 = *(*(*(a1 + 56) + 8) + 40);

  return [v5 layoutIfNeeded];
}

- (void)cleanupOldSharedWallpaper:(id)a3 lockSreenWallpaper:(id)a4 homeScreenWallpaper:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [(PBUIWallpaperViewController *)self _clearWallpaperView:v11];
  [(PBUIWallpaperViewController *)self _clearWallpaperView:v8];
  [(PBUIWallpaperViewController *)self _clearWallpaperView:v9];
  objc_autoreleasePoolPop(v10);
}

- (void)_clearWallpaperView:(id)a3
{
  v3 = a3;
  [v3 invalidate];
  [v3 setDelegate:0];
  [v3 setInternalObserver:0];
  [v3 setGeneratesBlurredImages:0];
  [v3 removeFromSuperview];
}

- (id)_newWallpaperEffectViewForVariant:(int64_t)a3 transitionState:(id *)a4
{
  v6 = [[PBUIWallpaperEffectViewBase alloc] initWithWallpaperPresenter:self variant:a3 transformOptions:0];
  v8 = *a4;
  [(PBUIWallpaperEffectViewBase *)v6 setTransitionState:&v8];
  [(UIView *)self->_wallpaperContainerView bounds];
  [(PBUIWallpaperEffectViewBase *)v6 setFrame:?];
  [(PBUIWallpaperEffectViewBase *)v6 setAutoresizingMask:18];
  [(UIView *)self->_wallpaperContainerView addSubview:v6];
  return v6;
}

- (id)_observersForVariant:(int64_t)a3
{
  v3 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenObservers;
  if (!a3)
  {
    v3 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenObservers;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (id)_blurViewsForVariant:(int64_t)a3
{
  v3 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenBlurViews;
  if (!a3)
  {
    v3 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenBlurViews;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)_handleWallpaperLegibilitySettingsChanged:(id)a3 forVariant:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(PBUIWallpaperViewController *)self _observersForVariant:a4, 0];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 wallpaperLegibilitySettingsDidChange:v6 forVariant:a4];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:a4];
}

- (void)_reconfigureBlurViewsForVariant:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PBUIWallpaperViewController *)self _blurViewsForVariant:a3, 0];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) reconfigureWithSource:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateBlurImagesForVariant:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperViewController *)self _blurViewsForVariant:?];
  v6 = [v5 allObjects];

  if ([v6 count])
  {
    v7 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:a3];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) updateImageWithSource:{v7, v13}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_accessibilityReduceTransparencyChanged:(id)a3
{
  [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:0];

  [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:1];
}

- (void)_updateWallpaperForWallpaperMode:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = os_transaction_create();
  v6 = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager wallpaperMode];
  v8 = a3 == 3 || v6 == 3;
  [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setWallpaperMode:a3];
  v9 = [(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsStore enableWallpaperDimming];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager dataStores];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    v14 = v9 | v8;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([v16 hasWallpaperImageForVariant:0 wallpaperMode:a3] & 1) != 0 || ((objc_msgSend(v16, "hasWallpaperImageForVariant:wallpaperMode:", 1, a3) | v14))
        {
          [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:0 wallpaperMode:a3 withCompletion:&__block_literal_global_141];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__PBUIWallpaperViewController__updateWallpaperForWallpaperMode___block_invoke_2;
  v17[3] = &unk_278362880;
  v17[4] = self;
  v17[5] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:4 delay:v17 options:0 animations:0.8 completion:0.0];
}

void __64__PBUIWallpaperViewController__updateWallpaperForWallpaperMode___block_invoke_2(uint64_t a1)
{
  obj = *(*(a1 + 32) + 1000);
  v2 = [*(a1 + 32) view];
  if (*(a1 + 40) == 3 && ([*(a1 + 32) _activeWallpaperView], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "handlesInactiveAppearanceTreatment"), v3, (v4 & 1) == 0))
  {
    v6 = obj;
    if (!obj)
    {
      v7 = objc_alloc(MEMORY[0x277D75D18]);
      [v2 bounds];
      obja = [v7 initWithFrame:?];
      [obja setAutoresizingMask:18];
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [obja setBackgroundColor:v8];

      [v2 addSubview:obja];
      objc_storeStrong((*(a1 + 32) + 1000), obja);
      v6 = obja;
    }

    obj = v6;
    [v2 bringSubviewToFront:v6];
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [obj setAlpha:v5];
}

- (void)_updateWallpaperForWallpaperDimming:(BOOL)a3
{
  [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setEnableWallpaperDimming:a3];
  v5 = [(PBUIWallpaperViewController *)self traitCollection];
  v4 = [v5 userInterfaceStyle];
  if ([v5 _backlightLuminance] != 1 && v4 == 2)
  {
    [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:0 wallpaperMode:2 withCompletion:&__block_literal_global_143];
  }
}

- (void)_updateAndPrewarmWallpapers
{
  v3 = [(PBUIWallpaperViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(PBUIWallpaperViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (MGGetBoolAnswer())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__PBUIWallpaperViewController__updateAndPrewarmWallpapers__block_invoke;
    v11[3] = &unk_278361E18;
    v11[4] = self;
    [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:1 wallpaperMode:3 withCompletion:v11];
  }

  if ((soft_PUIFeatureEnabled(3) & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__PBUIWallpaperViewController__updateAndPrewarmWallpapers__block_invoke_2;
    v10[3] = &unk_278361E18;
    v10[4] = self;
    [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:1 wallpaperMode:v5 withCompletion:v10];
  }

  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__PBUIWallpaperViewController__updateAndPrewarmWallpapers__block_invoke_3;
  v9[3] = &unk_278361E18;
  v9[4] = self;
  [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:1 wallpaperMode:v8 withCompletion:v9];
}

void __58__PBUIWallpaperViewController__updateAndPrewarmWallpapers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperPresentingDelegate];
  [v2 wallpaperPresenterDidCompleteWallpaperChange:*(a1 + 32)];
}

void __58__PBUIWallpaperViewController__updateAndPrewarmWallpapers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperPresentingDelegate];
  [v2 wallpaperPresenterDidCompleteWallpaperChange:*(a1 + 32)];
}

void __58__PBUIWallpaperViewController__updateAndPrewarmWallpapers__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperPresentingDelegate];
  [v2 wallpaperPresenterDidCompleteWallpaperChange:*(a1 + 32)];
}

- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);

  return WeakRetained;
}

- (void)setWallpaperStyleTransitionState:(uint64_t)a1 forPriority:forVariant:withAnimationFactory:.cold.1(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v2 handleFailureInMethod:a1 object:? file:? lineNumber:? description:?];
}

- (void)removeWallpaperStyleForPriority:(uint64_t)a1 forVariant:withAnimationFactory:.cold.1(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v2 handleFailureInMethod:a1 object:? file:? lineNumber:? description:?];
}

- (void)beginDelayingHomescreenStyleChangesForReason:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)endDelayingHomescreenStyleChangesForReason:animationFactory:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end