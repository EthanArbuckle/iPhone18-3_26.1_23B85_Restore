@interface PBUIWallpaperViewController
+ (id)substitutionFlatColorForWallpaperName:(id)name;
- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState;
- (BOOL)_isRasterizationDisallowedForCurrentVariant;
- (BOOL)_isWallpaperHiddenForVariant:(int64_t)variant;
- (BOOL)_setDisallowRasterization:(BOOL)rasterization withReason:(id)reason reasons:(id)reasons;
- (BOOL)_shouldSuspendMotionEffectsForState:(id *)state;
- (BOOL)_shouldSuspendMotionEffectsForStyle:(int64_t)style;
- (BOOL)_updateEffectViewForVariant:(int64_t)variant oldState:(id *)state newState:(id *)newState oldEffectView:(id *)view newEffectView:(id *)effectView;
- (BOOL)_updateEffectViewForVariant:(int64_t)variant withFactory:(id)factory;
- (BOOL)removeWallpaperStyleForPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (BOOL)setWallpaperStyle:(int64_t)style forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (BOOL)setWallpaperStyleTransitionState:(id *)state forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (BOOL)updateIrisWallpaperForStaticMode;
- (BOOL)variantsShareWallpaper;
- (PBUIIrisWallpaperPlaying)irisWallpaperPlayer;
- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate;
- (PBUIWallpaperViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_wallpaperScaleForVariant:(int64_t)variant;
- (double)contrastForVariant:(int64_t)variant;
- (double)contrastInRect:(CGRect)rect forVariant:(int64_t)variant;
- (double)minimumWallpaperScaleForVariant:(int64_t)variant;
- (id)_activeWallpaperView;
- (id)_blurViewsForVariant:(int64_t)variant;
- (id)_newWallpaperEffectViewForVariant:(int64_t)variant transitionState:(id *)state;
- (id)_observersForVariant:(int64_t)variant;
- (id)_sourceForFakeBlurView:(id)view;
- (id)_vendWallpaperViewForConfiguration:(id)configuration forVariant:(int64_t)variant shared:(BOOL)shared options:(unint64_t)options;
- (id)_wallpaperScaleAssertionForVariant:(int64_t)variant scale:(double)scale;
- (id)averageColorForVariant:(int64_t)variant;
- (id)averageColorInRect:(CGRect)rect forVariant:(int64_t)variant withSmudgeRadius:(double)radius;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)legibilitySettingsForVariant:(int64_t)variant;
- (id)newFakeBlurViewForVariant:(int64_t)variant style:(int64_t)style transformOptions:(unint64_t)options;
- (id)requireWallpaperWithReason:(id)reason;
- (id)setHomescreenWallpaperScale:(double)scale withAnimationFactory:(id)factory;
- (id)setLockscreenWallpaperScale:(double)scale withAnimationFactory:(id)factory;
- (id)substitutionWallpaperConfigurationForWallpaperConfiguration:(id)configuration;
- (id)succinctDescription;
- (id)suspendColorSamplingForReason:(id)reason;
- (id)suspendWallpaperAnimationForReason:(id)reason;
- (id)wallpaperConfigurationForUpdatingWallpaperViewsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types wallpaperMode:(int64_t)mode;
- (id)wallpaperStyleInfoForVariant:(int64_t)variant;
- (id)wallpaperView:(id)view wallpaperConfigurationIncludingValueTypes:(unint64_t)types;
- (id)wallpaperViewForVariant:(int64_t)variant;
- (unint64_t)_bestWallpaperViewInitializationOptionsForVariant:(int64_t)variant shared:(BOOL)shared wallpaperOptions:(id)options options:(unint64_t)a6;
- (unint64_t)supportedInterfaceOrientations;
- (void)_accessibilityReduceTransparencyChanged:(id)changed;
- (void)_beginDisallowRasterizationBlock;
- (void)_beginSuspendingMotionEffectsForStyleIfNeeded;
- (void)_clearWallpaperView:(id)view;
- (void)_endDisallowRasterizationBlock;
- (void)_endSuspendingMotionEffectsForStyleIfNeeded;
- (void)_handleWallpaperChangedForVariant:(int64_t)variant;
- (void)_handleWallpaperLegibilitySettingsChanged:(id)changed forVariant:(int64_t)variant;
- (void)_invalidateWallpaperAssertion:(id)assertion;
- (void)_precacheStyles:(id)styles usingTraitCollection:(id)collection;
- (void)_reconfigureBlurViewsForVariant:(int64_t)variant;
- (void)_registerFakeBlurView:(id)view;
- (void)_removeColorSamplingAssertion:(id)assertion;
- (void)_removeWallpaperAnimationAssertion:(id)assertion;
- (void)_setWallpaperHidden:(BOOL)hidden variant:(int64_t)variant reason:(id)reason;
- (void)_suspendOrResumeColorSampling;
- (void)_suspendOrResumeWallpaperAnimation;
- (void)_unregisterFakeBlurView:(id)view;
- (void)_updateAndPrewarmWallpapers;
- (void)_updateBlurGeneration;
- (void)_updateBlurImagesForVariant:(int64_t)variant;
- (void)_updateInactiveBlurEffectForWallpaperMode:(int64_t)mode;
- (void)_updateMotionEffectsForState:(id *)state;
- (void)_updateRasterizationState;
- (void)_updateSeparateWallpaperForVariants:(int64_t)variants options:(unint64_t)options wallpaperMode:(int64_t)mode;
- (void)_updateSharedWallpaperWithOptions:(unint64_t)options wallpaperMode:(int64_t)mode;
- (void)_updateWallpaperForLocations:(int64_t)locations options:(unint64_t)options wallpaperMode:(int64_t)mode withCompletion:(id)completion;
- (void)_updateWallpaperForWallpaperDimming:(BOOL)dimming;
- (void)_updateWallpaperForWallpaperMode:(int64_t)mode;
- (void)_updateWallpaperHidden;
- (void)_updateWallpaperParallax;
- (void)_updateWallpaperScaleWithAnimationFactory:(id)factory;
- (void)addObserver:(id)observer forVariant:(int64_t)variant;
- (void)beginDelayingHomescreenStyleChangesForReason:(id)reason;
- (void)beginSimulatedLiveWallpaperTouchWithReason:(id)reason;
- (void)cancelInProcessAnimations;
- (void)cleanupOldSharedWallpaper:(id)wallpaper lockSreenWallpaper:(id)sreenWallpaper homeScreenWallpaper:(id)screenWallpaper;
- (void)dealloc;
- (void)endDelayingHomescreenStyleChangesForReason:(id)reason animationFactory:(id)factory;
- (void)endSimulatedLiveWallpaperTouchWithReason:(id)reason;
- (void)loadView;
- (void)noteDidRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)noteWillAnimateToInterfaceOrientation:(int64_t)orientation;
- (void)preheatWallpaperForVariant:(int64_t)variant;
- (void)providerLegibilitySettingsChanged:(id)changed;
- (void)removeObserver:(id)observer forVariant:(int64_t)variant;
- (void)removeWallpaperRequiredAssertion:(id)assertion;
- (void)setActiveVariant:(int64_t)variant withOutAnimationFactory:(id)factory inAnimationFactory:(id)animationFactory completion:(id)completion;
- (void)setAlpha:(double)alpha forWallpaperVariant:(int64_t)variant;
- (void)setColorSamplingDisabled:(BOOL)disabled;
- (void)setDisallowsRasterization:(BOOL)rasterization forVariant:(int64_t)variant withReason:(id)reason;
- (void)setLockscreenOnlyWallpaperAlpha:(double)alpha;
- (void)setLockscreenWallpaperContentsRect:(CGRect)rect;
- (void)setWallpaperConfigurationManager:(id)manager;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)traitCollectionDidChange:(id)change;
- (void)updateIrisWallpaperForInteractiveMode;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wallpaperEffectImageForStyle:(int64_t)style variant:(int64_t)variant traitCollection:(id)collection result:(id)result;
- (void)wallpaperView:(id)view didChangeZoomFactor:(double)factor;
- (void)wallpaperViewDidChangeWantsRasterization:(id)rasterization;
- (void)wallpaperViewDidInvalidateBlurs:(id)blurs;
@end

@implementation PBUIWallpaperViewController

- (PBUIWallpaperViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v45.receiver = self;
  v45.super_class = PBUIWallpaperViewController;
  v4 = [(PBUIWallpaperViewController *)&v45 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_displayedVariant = -1;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lockscreenObservers = v5->_lockscreenObservers;
    v5->_lockscreenObservers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    homescreenObservers = v5->_homescreenObservers;
    v5->_homescreenObservers = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lockscreenBlurViews = v5->_lockscreenBlurViews;
    v5->_lockscreenBlurViews = weakObjectsHashTable3;

    weakObjectsHashTable4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    homescreenBlurViews = v5->_homescreenBlurViews;
    v5->_homescreenBlurViews = weakObjectsHashTable4;

    weakObjectsHashTable5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    suspendColorSamplingAssertions = v5->_suspendColorSamplingAssertions;
    v5->_suspendColorSamplingAssertions = weakObjectsHashTable5;

    weakObjectsHashTable6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    suspendWallpaperAnimationAssertions = v5->_suspendWallpaperAnimationAssertions;
    v5->_suspendWallpaperAnimationAssertions = weakObjectsHashTable6;

    weakObjectsHashTable7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    wallpaperScaleAssertions = v5->_wallpaperScaleAssertions;
    v5->_wallpaperScaleAssertions = weakObjectsHashTable7;

    weakObjectsHashTable8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    requireWallpaperAssertions = v5->_requireWallpaperAssertions;
    v5->_requireWallpaperAssertions = weakObjectsHashTable8;

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__accessibilityReduceTransparencyChanged_ name:*MEMORY[0x277D764C8] object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  view = [(PBUIWallpaperViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  wallpaperContainerView = self->_wallpaperContainerView;
  self->_wallpaperContainerView = v5;

  layer = [(UIView *)self->_wallpaperContainerView layer];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [layer setRasterizationScale:?];

  [(UIView *)self->_wallpaperContainerView setClipsToBounds:0];
  [(UIView *)self->_wallpaperContainerView setAutoresizingMask:18];
  [view addSubview:self->_wallpaperContainerView];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__PBUIWallpaperViewController_viewDidLoad__block_invoke;
  v9[3] = &unk_278361E18;
  v9[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v9];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  view = [(PBUIWallpaperViewController *)self view];
  window = [view window];

  _toWindowOrientation = [window _toWindowOrientation];
  _fromWindowOrientation = [window _fromWindowOrientation];
  [(PBUIWallpaperViewController *)self noteWillAnimateToInterfaceOrientation:_toWindowOrientation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__PBUIWallpaperViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_2783637D8;
  v10[4] = self;
  v10[5] = _fromWindowOrientation;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_18 completion:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = PBUIWallpaperViewController;
  changeCopy = change;
  [(PBUIWallpaperViewController *)&v15 traitCollectionDidChange:changeCopy];
  v5 = [(PBUIWallpaperViewController *)self traitCollection:v15.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  _backlightLuminance = [changeCopy _backlightLuminance];

  _backlightLuminance2 = [v5 _backlightLuminance];
  v10 = (_backlightLuminance != 1) ^ (_backlightLuminance2 == 1);
  if (userInterfaceStyle != userInterfaceStyle2 || (v10 & 1) == 0)
  {
    traitCollection = [(PBUIWallpaperViewController *)self traitCollection];
    userInterfaceStyle3 = [traitCollection userInterfaceStyle];

    v13 = userInterfaceStyle3 == 1;
    if (userInterfaceStyle3 == 2)
    {
      v13 = 2;
    }

    if (_backlightLuminance2 == 1)
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

- (void)_updateInactiveBlurEffectForWallpaperMode:(int64_t)mode
{
  v28[1] = *MEMORY[0x277D85DE8];
  traitCollection = [(PBUIWallpaperViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  blurPhotosWallpaperInAlwaysOn = [(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsStore blurPhotosWallpaperInAlwaysOn];
  v8 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:0 wallpaperMode:mode];
  v9 = [v8 wallpaperType] != 1 && objc_msgSend(v8, "wallpaperType") != 3;
  view = [(PBUIWallpaperViewController *)self view];
  layer = [view layer];
  filters = [layer filters];
  v13 = [filters bs_containsObjectPassingTest:&__block_literal_global_34_1];

  if ((v13 & 1) == 0)
  {
    v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v14 setName:@"gaussianBlur"];
    [v14 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
    [v14 setValue:&unk_282FD5C50 forKey:*MEMORY[0x277CDA4F0]];
    v28[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    view2 = [(PBUIWallpaperViewController *)self view];
    layer2 = [view2 layer];
    [layer2 setFilters:v15];
  }

  v19 = _backlightLuminance == 2 || _backlightLuminance == -1;
  v20 = 10.0;
  if (v9 || (blurPhotosWallpaperInAlwaysOn & 1) == 0 || v19)
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
  if (v9 || (blurPhotosWallpaperInAlwaysOn & 1) == 0 || v19)
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

- (void)setWallpaperConfigurationManager:(id)manager
{
  managerCopy = manager;
  wallpaperConfigurationManager = self->_wallpaperConfigurationManager;
  if (wallpaperConfigurationManager != managerCopy)
  {
    v7 = managerCopy;
    [(PBUIWallpaperConfigurationManager *)wallpaperConfigurationManager setDelegate:0];
    objc_storeStrong(&self->_wallpaperConfigurationManager, manager);
    [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setDelegate:self];
    wallpaperConfigurationManager = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setEnableWallpaperDimming:[(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsStore enableWallpaperDimming]];
    managerCopy = v7;
  }

  MEMORY[0x2821F96F8](wallpaperConfigurationManager, managerCopy);
}

- (void)wallpaperEffectImageForStyle:(int64_t)style variant:(int64_t)variant traitCollection:(id)collection result:(id)result
{
  resultCopy = result;
  collectionCopy = collection;
  v12 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__PBUIWallpaperViewController_wallpaperEffectImageForStyle_variant_traitCollection_result___block_invoke;
  v14[3] = &unk_278363848;
  v15 = resultCopy;
  v13 = resultCopy;
  [PBUIFakeBlurView _imageForStyle:style withSource:v12 overrideTraitCollection:collectionCopy result:v14];
}

- (void)beginSimulatedLiveWallpaperTouchWithReason:(id)reason
{
  reasonCopy = reason;
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

    [v8 beginSimulatedTouchWithReason:reasonCopy];
  }
}

- (void)endSimulatedLiveWallpaperTouchWithReason:(id)reason
{
  reasonCopy = reason;
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

  [v8 endSimulatedTouchWithReason:reasonCopy];
}

- (void)setActiveVariant:(int64_t)variant withOutAnimationFactory:(id)factory inAnimationFactory:(id)animationFactory completion:(id)completion
{
  factoryCopy = factory;
  animationFactoryCopy = animationFactory;
  completionCopy = completion;
  v13 = completionCopy;
  if (self->_displayedVariant == variant)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    v45 = factoryCopy;
    self->_displayedVariant = variant;
    v14 = [(PBUIWallpaperViewController *)self suspendColorSamplingForReason:@"settingVariant"];
    [(PBUIWallpaperViewController *)self _beginDisallowRasterizationBlock];
    if (variant)
    {
      v15 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenStyleInfo;
    }

    else
    {
      v15 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenStyleInfo;
    }

    v16 = *(&self->super.super.super.isa + *v15);
    if (variant)
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
    selfCopy = self;
    v76 = v78;
    v77 = v79;
    v43 = v13;
    v75 = v13;
    v44 = MEMORY[0x223D62EE0](v72);
    v41 = v20;
    wallpaperEffectView = [v20 wallpaperEffectView];
    wallpaperEffectView2 = [v18 wallpaperEffectView];
    [wallpaperEffectView setHidden:0];
    [wallpaperEffectView setAlpha:0.0];
    if (self->_sharedWallpaperView)
    {
      [(PBUIWallpaperViewController *)self _updateWallpaperHidden];
      [(PBUIWallpaperViewController *)self _updateWallpaperParallax];
      [(PBUIWallpaperView *)self->_sharedWallpaperView setVariant:variant withAnimationFactory:animationFactoryCopy];
      v24 = 0;
      v25 = 0;
    }

    else
    {
      if (variant)
      {
        v26 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenWallpaperView;
      }

      else
      {
        v26 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenWallpaperView;
      }

      v27 = *(&self->super.super.super.isa + *v26);
      if (variant)
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
      if ([wallpaperEffectView2 currentTransitionStateIsOpaque])
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
    v65 = wallpaperEffectView2;
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
    factoryCopy = v45;
    [v29 animateWithFactory:v45 actions:v64 completion:v57];
    if (variant)
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

    [(PBUIWallpaperView *)sharedWallpaperView setZoomFactor:animationFactoryCopy withAnimationFactory:?];
    v35 = MEMORY[0x277CF0D38];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __102__PBUIWallpaperViewController_setActiveVariant_withOutAnimationFactory_inAnimationFactory_completion___block_invoke_4;
    v52[3] = &unk_2783638C0;
    v36 = wallpaperEffectView;
    v53 = v36;
    v56 = lockscreenOnlyWallpaperAlpha;
    v54 = v31;
    selfCopy2 = self;
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
    [v35 animateWithFactory:animationFactoryCopy actions:v52 completion:v46];

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

- (void)addObserver:(id)observer forVariant:(int64_t)variant
{
  observerCopy = observer;
  v7 = observerCopy;
  if (variant == 1)
  {
    v8 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenObservers;
  }

  else
  {
    if (variant)
    {
      goto LABEL_6;
    }

    v8 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenObservers;
  }

  v9 = observerCopy;
  observerCopy = [*(&self->super.super.super.isa + *v8) addObject:observerCopy];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](observerCopy, v7);
}

- (void)removeObserver:(id)observer forVariant:(int64_t)variant
{
  observerCopy = observer;
  v7 = observerCopy;
  if (variant == 1)
  {
    v8 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenObservers;
  }

  else
  {
    if (variant)
    {
      goto LABEL_6;
    }

    v8 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenObservers;
  }

  v9 = observerCopy;
  observerCopy = [*(&self->super.super.super.isa + *v8) removeObject:observerCopy];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](observerCopy, v7);
}

- (void)setAlpha:(double)alpha forWallpaperVariant:(int64_t)variant
{
  if (variant)
  {
    if (variant != 1)
    {
      return;
    }

    wallpaperEffectView = [(PBUIWallpaperStyleInfo *)self->_homescreenStyleInfo wallpaperEffectView];
    [wallpaperEffectView setAlpha:alpha];

    p_homescreenWallpaperView = &self->_homescreenWallpaperView;
  }

  else
  {
    wallpaperEffectView2 = [(PBUIWallpaperStyleInfo *)self->_lockscreenStyleInfo wallpaperEffectView];
    [wallpaperEffectView2 setHidden:0];

    p_homescreenWallpaperView = &self->_lockscreenWallpaperView;
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setHidden:0];
    wallpaperEffectView3 = [(PBUIWallpaperStyleInfo *)self->_lockscreenStyleInfo wallpaperEffectView];
    [wallpaperEffectView3 setAlpha:alpha];
  }

  v10 = *p_homescreenWallpaperView;

  [(PBUIWallpaperView *)v10 setAlpha:alpha];
}

- (void)setLockscreenWallpaperContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (void)setLockscreenOnlyWallpaperAlpha:(double)alpha
{
  v4 = fmin(fmax(alpha, 0.0), 1.0);
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

- (id)setHomescreenWallpaperScale:(double)scale withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v7 = [(PBUIWallpaperViewController *)self _wallpaperScaleAssertionForVariant:1 scale:scale];
  [(PBUIWallpaperViewController *)self _updateWallpaperScaleWithAnimationFactory:factoryCopy];

  return v7;
}

- (id)setLockscreenWallpaperScale:(double)scale withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v7 = [(PBUIWallpaperViewController *)self _wallpaperScaleAssertionForVariant:0 scale:scale];
  [(PBUIWallpaperViewController *)self _updateWallpaperScaleWithAnimationFactory:factoryCopy];

  return v7;
}

- (void)_updateWallpaperScaleWithAnimationFactory:(id)factory
{
  factoryCopy = factory;
  homescreenWallpaperView = self->_homescreenWallpaperView;
  [(PBUIWallpaperViewController *)self homescreenWallpaperScale];
  [(PBUIWallpaperView *)homescreenWallpaperView setZoomFactor:factoryCopy withAnimationFactory:?];
  lockscreenWallpaperView = self->_lockscreenWallpaperView;
  [(PBUIWallpaperViewController *)self lockscreenWallpaperScale];
  [(PBUIWallpaperView *)lockscreenWallpaperView setZoomFactor:factoryCopy withAnimationFactory:?];
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

    [(PBUIWallpaperView *)self->_sharedWallpaperView setZoomFactor:factoryCopy withAnimationFactory:?];
  }
}

- (double)_wallpaperScaleForVariant:(int64_t)variant
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
          if ([(PBUIWallpaperScaleAssertion *)v13 variant]== variant)
          {
            scale = [(PBUIWallpaperScaleAssertion *)v13 scale];
            if (scale < v9)
            {
              v9 = scale;
            }

            if (scale >= v8)
            {
              v8 = scale;
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

- (id)_wallpaperScaleAssertionForVariant:(int64_t)variant scale:(double)scale
{
  v18 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v7 = [PBUIWallpaperScaleAssertion alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallpaper scale %f", *&scale];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__PBUIWallpaperViewController__wallpaperScaleAssertionForVariant_scale___block_invoke;
  v13[3] = &unk_2783629B0;
  objc_copyWeak(&v14, &location);
  v9 = [(PBUIWallpaperScaleAssertion *)v7 initWithVariant:variant scale:v8 forReason:v13 invalidationBlock:scale];

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

- (double)minimumWallpaperScaleForVariant:(int64_t)variant
{
  v4 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
  [v4 parallaxFactor];
  v6 = v5;

  wallpaperConfigurationManager = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  [wallpaperConfigurationManager wallpaperSize];
  v9 = v8;
  v11 = v10;
  parallaxDeviceType = [wallpaperConfigurationManager parallaxDeviceType];
  [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:parallaxDeviceType deviceType:1 parallaxFactor:v9 portrait:v11, v6];
  v14 = v13;
  v16 = v15;
  [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:parallaxDeviceType deviceType:1 parallaxFactor:v9 portrait:v11, 0.0];
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

- (void)setDisallowsRasterization:(BOOL)rasterization forVariant:(int64_t)variant withReason:(id)reason
{
  rasterizationCopy = rasterization;
  reasonCopy = reason;
  v10 = reasonCopy;
  if (variant == 1)
  {
    reasonCopy = [(PBUIWallpaperViewController *)self _setDisallowRasterization:rasterizationCopy withReason:reasonCopy reasons:self->_disallowRasterizationReasonsHomeVariant];
    v9 = v10;
    if (reasonCopy)
    {
LABEL_4:
      reasonCopy = [(PBUIWallpaperViewController *)self _updateRasterizationState];
      v9 = v10;
    }
  }

  else
  {
    v9 = reasonCopy;
    if (!variant)
    {
      reasonCopy = [(PBUIWallpaperViewController *)self _setDisallowRasterization:rasterizationCopy withReason:reasonCopy reasons:self->_disallowRasterizationReasonsLockVariant];
      v9 = v10;
      if (reasonCopy)
      {
        goto LABEL_4;
      }
    }
  }

  MEMORY[0x2821F96F8](reasonCopy, v9);
}

- (void)setColorSamplingDisabled:(BOOL)disabled
{
  if (self->_colorSamplingDisabled != disabled)
  {
    self->_colorSamplingDisabled = disabled;
    colorSamplingAssertion = self->_colorSamplingAssertion;
    if (disabled)
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

- (id)suspendColorSamplingForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[_PBUIWallpaperViewControllerAssertion alloc] initWithWallpaperViewController:self type:0 reason:reasonCopy];

  [(NSHashTable *)self->_suspendColorSamplingAssertions addObject:v5];
  [(PBUIWallpaperViewController *)self _suspendOrResumeColorSampling];

  return v5;
}

- (id)suspendWallpaperAnimationForReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = [[_PBUIWallpaperViewControllerAssertion alloc] initWithWallpaperViewController:self type:1 reason:reasonCopy];

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
  view = [(PBUIWallpaperViewController *)self view];
  window = [view window];
  [window _removeAllRetargetableAnimations:1];
}

- ($1D129F7B4C980C50E70029647222EF17)currentHomescreenStyleTransitionState
{
  homescreenStyleInfo = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
  if (homescreenStyleInfo)
  {
    v6 = homescreenStyleInfo;
    [homescreenStyleInfo styleTransitionState];
    homescreenStyleInfo = v6;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0.0;
  }

  return result;
}

- (BOOL)setWallpaperStyle:(int64_t)style forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  PBUIWallpaperStyleTransitionStateMake(style, style, v12, 0.0);
  LOBYTE(variant) = [(PBUIWallpaperViewController *)self setWallpaperStyleTransitionState:v12 forPriority:priority forVariant:variant withAnimationFactory:factoryCopy];

  return variant;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)state forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  v19 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  if (priority >= 5)
  {
    [PBUIWallpaperViewController setWallpaperStyleTransitionState:priority forPriority:? forVariant:? withAnimationFactory:?];
  }

  v11 = PBUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = PBUIStringForWallpaperVariant(variant);
    *buf = *&state->var0;
    *&buf[16] = state->var2;
    v13 = PBUIStringForStyleTransitionState(buf);
    *buf = 134218498;
    *&buf[4] = priority;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2114;
    *&buf[24] = v13;
    _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_INFO, "Set wallpaper style state for priority %li for variant %{public}@ to %{public}@", buf, 0x20u);
  }

  v14 = [(PBUIWallpaperViewController *)self wallpaperStyleInfoForVariant:variant];
  *&v17[3] = 0;
  *v17 = 0;
  *&v17[23] = state->var2;
  *&v17[7] = *&state->var0;
  buf[0] = 1;
  *&buf[1] = *v17;
  *&buf[16] = *&v17[15];
  [v14 setPriorityInfo:buf forPriority:{priority, *v17, *&v17[8], *&v17[16], *&v17[24]}];
  v15 = [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:variant withFactory:factoryCopy];

  return v15;
}

- (BOOL)removeWallpaperStyleForPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  v18 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  if (priority >= 5)
  {
    [PBUIWallpaperViewController removeWallpaperStyleForPriority:priority forVariant:? withAnimationFactory:?];
  }

  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = PBUIStringForWallpaperVariant(variant);
    v14 = 134218242;
    priorityCopy = priority;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "Remove wallpaper style for priority %li for variant %{public}@", &v14, 0x16u);
  }

  v11 = [(PBUIWallpaperViewController *)self wallpaperStyleInfoForVariant:variant];
  [v11 removePriorityInfoForPriority:priority];
  v12 = [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:variant withFactory:factoryCopy];

  return v12;
}

- (id)requireWallpaperWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[_PBUIWallpaperViewControllerAssertion alloc] initWithWallpaperViewController:self type:2 reason:reasonCopy];

  [(NSHashTable *)self->_requireWallpaperAssertions addObject:v5];
  [(PBUIWallpaperViewController *)self _updateWallpaperHidden];

  return v5;
}

- (void)preheatWallpaperForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
  [v3 preheatImageData];
}

- (void)beginDelayingHomescreenStyleChangesForReason:(id)reason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (!reasonCopy)
  {
    [PBUIWallpaperViewController beginDelayingHomescreenStyleChangesForReason:];
    reasonCopy = 0;
  }

  homescreenStyleChangeDelayReasons = self->_homescreenStyleChangeDelayReasons;
  if (!homescreenStyleChangeDelayReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_homescreenStyleChangeDelayReasons;
    self->_homescreenStyleChangeDelayReasons = v6;

    reasonCopy = v8;
    homescreenStyleChangeDelayReasons = self->_homescreenStyleChangeDelayReasons;
  }

  [(NSMutableSet *)homescreenStyleChangeDelayReasons addObject:reasonCopy];
}

- (void)endDelayingHomescreenStyleChangesForReason:(id)reason animationFactory:(id)factory
{
  reasonCopy = reason;
  factoryCopy = factory;
  if (!reasonCopy)
  {
    [PBUIWallpaperViewController endDelayingHomescreenStyleChangesForReason:animationFactory:];
  }

  shouldDelayHomescreenStyleUpdates = [(PBUIWallpaperViewController *)self shouldDelayHomescreenStyleUpdates];
  [(NSMutableSet *)self->_homescreenStyleChangeDelayReasons removeObject:reasonCopy];
  shouldDelayHomescreenStyleUpdates2 = [(PBUIWallpaperViewController *)self shouldDelayHomescreenStyleUpdates];
  if (shouldDelayHomescreenStyleUpdates && !shouldDelayHomescreenStyleUpdates2)
  {
    [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:1 withFactory:factoryCopy];
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

- (void)noteWillAnimateToInterfaceOrientation:(int64_t)orientation
{
  v27 = *MEMORY[0x277D85DE8];
  [(PBUIWallpaperView *)self->_sharedWallpaperView setRotating:1];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setRotating:1];
  [(PBUIWallpaperView *)self->_lockscreenWallpaperView setRotating:1];
  _activeWallpaperView = [(PBUIWallpaperViewController *)self _activeWallpaperView];
  needsImmediateLayoutBeforeRotation = [_activeWallpaperView needsImmediateLayoutBeforeRotation];

  if (needsImmediateLayoutBeforeRotation)
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

        [*(*(&v21 + 1) + 8 * v11++) rotateToInterfaceOrientation:orientation];
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

        [*(*(&v17 + 1) + 8 * v16++) rotateToInterfaceOrientation:{orientation, v17}];
      }

      while (v14 != v16);
      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  if (orientation != 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PBUIWallpaperView *)self->_sharedWallpaperView switchToIrisMode:1];
    }
  }
}

- (void)noteDidRotateFromInterfaceOrientation:(int64_t)orientation
{
  [(PBUIWallpaperView *)self->_sharedWallpaperView setRotating:0];
  [(PBUIWallpaperView *)self->_homescreenWallpaperView setRotating:0];
  lockscreenWallpaperView = self->_lockscreenWallpaperView;

  [(PBUIWallpaperView *)lockscreenWallpaperView setRotating:0];
}

- (id)newFakeBlurViewForVariant:(int64_t)variant style:(int64_t)style transformOptions:(unint64_t)options
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  v10 = [WeakRetained wallpaperPresenter:self requestsOrientationWithRefresh:1];

  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (style && IsReduceTransparencyEnabled)
  {
    v12 = [[PBUIAccessibilityTintView alloc] initWithVariant:variant wallpaperViewController:self];
    [(PBUIAccessibilityTintView *)v12 setTransformOptions:options];
  }

  else
  {
    v13 = [[PBUIFakeBlurView alloc] initWithVariant:variant wallpaperViewController:self transformOptions:options reachabilityCoordinator:self->_reachabilityCoordinator];
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

- (id)legibilitySettingsForVariant:(int64_t)variant
{
  if (self->_sharedWallpaperView)
  {
    sharedWallpaperView = self->_sharedWallpaperView;
  }

  else
  {
    if (variant)
    {
      if (variant != 1)
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

  legibilitySettings = [(PBUIWallpaperView *)sharedWallpaperView legibilitySettings];

  return legibilitySettings;
}

- (id)averageColorForVariant:(int64_t)variant
{
  v3 = [(PBUIWallpaperViewController *)self legibilitySettingsForVariant:variant];
  contentColor = [v3 contentColor];

  return contentColor;
}

- (id)averageColorInRect:(CGRect)rect forVariant:(int64_t)variant withSmudgeRadius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:?];
  if (!v12 || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, CGRectIsNull(v28)) || (v29.origin.x = x, v29.origin.y = y, v29.size.width = width, v29.size.height = height, CGRectIsEmpty(v29)) || (-[PBUIWallpaperViewController view](self, "view"), v13 = objc_claimAutoreleasedReturnValue(), [v13 window], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_screen"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "coordinateSpace"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "convertRect:fromCoordinateSpace:", v16, x, y, width, height), v18 = v17, v20 = v19, v22 = v21, v24 = v23, v16, v15, v14, v13, objc_msgSend(v12, "averageColorInRect:withSmudgeRadius:", v18, v20, v22, v24, radius), (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v25 = [(PBUIWallpaperViewController *)self averageColorForVariant:variant];
  }

  return v25;
}

- (double)contrastForVariant:(int64_t)variant
{
  v3 = *&PBUIWallpaperViewUnknownContrast;
  v4 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
  v5 = v4;
  if (v4)
  {
    [v4 contrast];
    v3 = v6;
  }

  return v3;
}

- (double)contrastInRect:(CGRect)rect forVariant:(int64_t)variant
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = *&PBUIWallpaperViewUnknownContrast;
  v10 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
  if (v10)
  {
    view = [(PBUIWallpaperViewController *)self view];
    window = [view window];
    _screen = [window _screen];
    coordinateSpace = [_screen coordinateSpace];
    [v10 convertRect:coordinateSpace fromCoordinateSpace:{x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [v10 contrastInRect:{v16, v18, v20, v22}];
    v9 = v23;
  }

  return v9;
}

- (id)wallpaperView:(id)view wallpaperConfigurationIncludingValueTypes:(unint64_t)types
{
  wallpaperConfigurationManager = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  v6 = [wallpaperConfigurationManager wallpaperConfigurationForVariant:1 includingValuesForTypes:types];

  return v6;
}

- (void)providerLegibilitySettingsChanged:(id)changed
{
  changedCopy = changed;
  v7 = changedCopy;
  if (self->_lockscreenWallpaperView == changedCopy || self->_sharedWallpaperView == changedCopy)
  {
    legibilitySettings = [(PBUIWallpaperView *)changedCopy legibilitySettings];
    [(PBUIWallpaperViewController *)self _handleWallpaperLegibilitySettingsChanged:legibilitySettings forVariant:0];

    changedCopy = v7;
  }

  if (self->_homescreenWallpaperView == changedCopy || self->_sharedWallpaperView == changedCopy)
  {
    legibilitySettings2 = [(PBUIWallpaperView *)v7 legibilitySettings];
    [(PBUIWallpaperViewController *)self _handleWallpaperLegibilitySettingsChanged:legibilitySettings2 forVariant:1];

    changedCopy = v7;
  }
}

- (void)wallpaperViewDidInvalidateBlurs:(id)blurs
{
  blursCopy = blurs;
  v5 = blursCopy;
  if (self->_lockscreenWallpaperView == blursCopy || self->_sharedWallpaperView == blursCopy)
  {
    [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:0];
    blursCopy = v5;
  }

  if (self->_homescreenWallpaperView == blursCopy || self->_sharedWallpaperView == blursCopy)
  {
    [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:1];
  }

  [MEMORY[0x277CD9FF0] setLowLatency:0];
}

- (void)wallpaperView:(id)view didChangeZoomFactor:(double)factor
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_lockscreenWallpaperView == viewCopy || self->_sharedWallpaperView == viewCopy)
  {
    [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:0];
    viewCopy = v6;
  }

  if (self->_homescreenWallpaperView == viewCopy || self->_sharedWallpaperView == viewCopy)
  {
    [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:1];
    viewCopy = v6;
  }
}

- (void)wallpaperViewDidChangeWantsRasterization:(id)rasterization
{
  rasterizationCopy = rasterization;
  if (self->_lockscreenWallpaperView == rasterizationCopy || self->_homescreenWallpaperView == rasterizationCopy || self->_sharedWallpaperView == rasterizationCopy)
  {
    v5 = rasterizationCopy;
    [(PBUIWallpaperViewController *)self _updateRasterizationState];
    rasterizationCopy = v5;
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:0, key];

  [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:1];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__PBUIWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v21[3] = &unk_2783622E0;
  v7 = v6;
  v22 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:@"HomeScreen" multilinePrefix:prefixCopy block:v21];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__PBUIWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v18 = &unk_2783622E0;
  v8 = v7;
  v19 = v8;
  selfCopy2 = self;
  [v8 appendBodySectionWithName:@"LockScreen" multilinePrefix:prefixCopy block:&v15];

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
  succinctDescriptionBuilder = [(PBUIWallpaperViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (BOOL)_setDisallowRasterization:(BOOL)rasterization withReason:(id)reason reasons:(id)reasons
{
  rasterizationCopy = rasterization;
  reasonCopy = reason;
  reasonsCopy = reasons;
  v9 = [reasonsCopy containsObject:reasonCopy];
  if (!rasterizationCopy)
  {
    if (v9)
    {
      [reasonsCopy removeObject:reasonCopy];
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

  [reasonsCopy addObject:reasonCopy];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PBUIWallpaperViewController.m" lineNumber:1083 description:@"unpaired disallowRastrizationBlock decrement"];

  *a4 = *a3;
}

- (void)_updateRasterizationState
{
  if (self->_disallowRasterizationBlockCount > 0 || [(PBUIWallpaperViewController *)self _isRasterizationDisallowedForCurrentVariant])
  {
    wantsRasterization = 0;
  }

  else
  {
    v6 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:self->_displayedVariant];
    wantsRasterization = [v6 wantsRasterization];
  }

  layer = [(UIView *)self->_wallpaperContainerView layer];
  shouldRasterize = [layer shouldRasterize];

  if (wantsRasterization != shouldRasterize)
  {
    layer2 = [(UIView *)self->_wallpaperContainerView layer];
    [layer2 setShouldRasterize:wantsRasterization];
  }
}

- (id)wallpaperViewForVariant:(int64_t)variant
{
  sharedWallpaperView = self->_sharedWallpaperView;
  if (sharedWallpaperView)
  {
LABEL_7:
    v6 = sharedWallpaperView;

    return v6;
  }

  if (variant == 1)
  {
    v5 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenWallpaperView;
    goto LABEL_6;
  }

  if (!variant)
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
  activeVariant = [(PBUIWallpaperViewController *)self activeVariant];

  return [(PBUIWallpaperViewController *)self wallpaperViewForVariant:activeVariant];
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

- (void)_invalidateWallpaperAssertion:(id)assertion
{
  assertionCopy = assertion;
  type = [assertionCopy type];
  if (type == 2)
  {
    type = [(PBUIWallpaperViewController *)self removeWallpaperRequiredAssertion:assertionCopy];
  }

  else if (type == 1)
  {
    type = [(PBUIWallpaperViewController *)self _removeWallpaperAnimationAssertion:assertionCopy];
  }

  else
  {
    v5 = assertionCopy;
    if (type)
    {
      goto LABEL_8;
    }

    type = [(PBUIWallpaperViewController *)self _removeColorSamplingAssertion:assertionCopy];
  }

  v5 = assertionCopy;
LABEL_8:

  MEMORY[0x2821F96F8](type, v5);
}

- (void)_removeColorSamplingAssertion:(id)assertion
{
  [(NSHashTable *)self->_suspendColorSamplingAssertions removeObject:assertion];

  [(PBUIWallpaperViewController *)self _suspendOrResumeColorSampling];
}

- (void)_removeWallpaperAnimationAssertion:(id)assertion
{
  v11 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  [(NSHashTable *)self->_suspendWallpaperAnimationAssertions removeObject:assertionCopy];
  [(PBUIWallpaperViewController *)self _suspendOrResumeWallpaperAnimation];
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    suspendWallpaperAnimationAssertions = self->_suspendWallpaperAnimationAssertions;
    v7 = 138412546;
    v8 = assertionCopy;
    v9 = 2112;
    v10 = suspendWallpaperAnimationAssertions;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_INFO, "Removing wallpaper animation (and parallax) assertion: %@ \nAll assertions: %@", &v7, 0x16u);
  }
}

- (id)wallpaperStyleInfoForVariant:(int64_t)variant
{
  if (variant == 1)
  {
    homescreenStyleInfo = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
  }

  else if (variant)
  {
    homescreenStyleInfo = 0;
  }

  else
  {
    homescreenStyleInfo = [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
  }

  return homescreenStyleInfo;
}

- (void)_setWallpaperHidden:(BOOL)hidden variant:(int64_t)variant reason:(id)reason
{
  v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideHomescreenWallpaperReasons;
  if (!variant)
  {
    v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideLockscreenWallpaperReasons;
  }

  v7 = *(&self->super.super.super.isa + *v6);
  if (hidden)
  {
    [v7 addObject:reason];
  }

  else
  {
    [v7 removeObject:reason];
  }

  [(PBUIWallpaperViewController *)self _updateWallpaperHidden];
}

- (BOOL)_isWallpaperHiddenForVariant:(int64_t)variant
{
  if ([(NSHashTable *)self->_requireWallpaperAssertions count])
  {
    return 0;
  }

  v6 = &OBJC_IVAR___PBUIWallpaperViewController__hideHomescreenWallpaperReasons;
  if (!variant)
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
    lockscreenStyleInfo = [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
    wallpaperEffectView = [lockscreenStyleInfo wallpaperEffectView];
    [wallpaperEffectView setHidden:1];

    homescreenStyleInfo = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
    wallpaperEffectView2 = [homescreenStyleInfo wallpaperEffectView];
    [wallpaperEffectView2 setHidden:1];
  }

  else
  {
    [(PBUIWallpaperView *)sharedWallpaperView setHidden:0];
    [(PBUIWallpaperView *)self->_lockscreenWallpaperView setHidden:self->_displayedVariant != 0];
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setHidden:self->_displayedVariant != 1];
    lockscreenStyleInfo2 = [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
    wallpaperEffectView3 = [lockscreenStyleInfo2 wallpaperEffectView];
    [wallpaperEffectView3 setHidden:self->_displayedVariant != 0];

    homescreenStyleInfo2 = [(PBUIWallpaperViewController *)self homescreenStyleInfo];
    wallpaperEffectView4 = [homescreenStyleInfo2 wallpaperEffectView];
    [wallpaperEffectView4 setHidden:self->_displayedVariant != 1];

    displayedVariant = self->_displayedVariant;

    [(PBUIWallpaperViewController *)self _updateEffectViewForVariant:displayedVariant withFactory:0];
  }
}

- (void)removeWallpaperRequiredAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([(NSHashTable *)self->_requireWallpaperAssertions containsObject:assertionCopy])
  {
    [(NSHashTable *)self->_requireWallpaperAssertions removeObject:assertionCopy];
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
  wallpaperConfigurationManager = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  sharedWallpaperView = self->_sharedWallpaperView;
  v13 = wallpaperConfigurationManager;
  v5 = [wallpaperConfigurationManager lockScreenWallpaperConfigurationIncludingValuesForTypes:16];
  wallpaperOptions = [v5 wallpaperOptions];

  [wallpaperOptions parallaxFactor];
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
    wallpaperOptions2 = [v9 wallpaperOptions];

    [wallpaperOptions2 parallaxFactor];
    v12 = v11;
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setParallaxFactor:?];
    [(PBUIWallpaperView *)self->_homescreenWallpaperView setParallaxEnabled:fabs(v12) >= 2.22044605e-16];
  }
}

+ (id)substitutionFlatColorForWallpaperName:(id)name
{
  nameCopy = name;
  if (([nameCopy hasSuffix:@".Solid_Black"] & 1) != 0 || objc_msgSend(nameCopy, "hasSuffix:", @".Solid Black"))
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    blackColor = 0;
  }

  return blackColor;
}

- (id)substitutionWallpaperConfigurationForWallpaperConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = configurationCopy;
  if ([(PBUIWallpaperConfiguration *)configurationCopy wallpaperType]== 1)
  {
    wallpaperOptions = [(PBUIWallpaperConfiguration *)configurationCopy wallpaperOptions];
    name = [wallpaperOptions name];
    v4 = configurationCopy;
    if (name)
    {
      v7 = [objc_opt_class() substitutionFlatColorForWallpaperName:name];
      v4 = configurationCopy;
      if (v7)
      {
        v8 = v7;
        v9 = PBUILogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412546;
          v12 = v8;
          v13 = 2112;
          v14 = name;
          _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "Substituting flat color '%@' for wallpaper with name '%@'", &v11, 0x16u);
        }

        v4 = [[PBUIWallpaperConfiguration alloc] initWithVariant:[(PBUIWallpaperConfiguration *)configurationCopy variant] type:4];
        [(PBUIWallpaperConfiguration *)v4 setWallpaperColor:v8];
        [(PBUIWallpaperConfiguration *)v4 setWallpaperOptions:wallpaperOptions];
      }
    }
  }

  return v4;
}

- (void)_updateWallpaperForLocations:(int64_t)locations options:(unint64_t)options wallpaperMode:(int64_t)mode withCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PBUIWallpaperViewController *)self variantsShareWallpaper])
  {
    [(PBUIWallpaperViewController *)self _updateSharedWallpaperWithOptions:options wallpaperMode:mode];
  }

  else
  {
    [(PBUIWallpaperViewController *)self _updateSeparateWallpaperForVariants:locations options:options wallpaperMode:mode];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__PBUIWallpaperViewController__updateWallpaperForLocations_options_wallpaperMode_withCompletion___block_invoke;
  v11[3] = &unk_278361E18;
  v11[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_updateSharedWallpaperWithOptions:(unint64_t)options wallpaperMode:(int64_t)mode
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
      subviews = [(UIView *)self->_wallpaperContainerView subviews];
      v19 = [subviews indexOfObject:self->_sharedWallpaperView];

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
    subviews2 = [(UIView *)self->_wallpaperContainerView subviews];
    v13 = [subviews2 indexOfObject:self->_lockscreenWallpaperView];

    v14 = objc_autoreleasePoolPush();
    [(PBUIWallpaperViewController *)self _clearWallpaperView:self->_lockscreenWallpaperView];
    [(PBUIWallpaperViewController *)self setLockscreenWallpaperView:0];
    objc_autoreleasePoolPop(v14);
    v37 = v11;
    [(UIView *)self->_wallpaperContainerView insertSubview:v11 atIndex:v13];
    LODWORD(v36) = ![(PBUIWallpaperViewController *)self _isWallpaperView:self->_homescreenWallpaperView displayingWallpaperWithConfiguration:v7 forVariant:1];
    v10 = self->_homescreenWallpaperView;
    subviews3 = [(UIView *)self->_wallpaperContainerView subviews];
    v16 = [subviews3 indexOfObject:self->_homescreenWallpaperView];

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

    v24 = [(PBUIWallpaperViewController *)self _makeWallpaperViewWithConfiguration:v7 forVariant:displayedVariant shared:1 options:options];
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
    selfCopy = self;
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
  if (mode < 2)
  {
    v28 = MEMORY[0x277D75C80];
    v29 = 1;
    goto LABEL_21;
  }

  if (mode == 3)
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
    if (mode == 2)
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
  wallpaperPresentingDelegate = [(PBUIWallpaperViewController *)self wallpaperPresentingDelegate];
  [wallpaperPresentingDelegate wallpaperPresenter:self didChangeWallpaperForLocations:3 withConfiguration:v7];
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

- (void)_precacheStyles:(id)styles usingTraitCollection:(id)collection
{
  stylesCopy = styles;
  collectionCopy = collection;
  if ((soft_PUIFeatureEnabled(2) & 1) == 0)
  {
    v8 = 29;
    v7 = [PBUIFakeBlurView _imageForStyle:&v8 withSource:stylesCopy overrideTraitCollection:collectionCopy];
  }
}

- (void)_updateSeparateWallpaperForVariants:(int64_t)variants options:(unint64_t)options wallpaperMode:(int64_t)mode
{
  variantsCopy = variants;
  v76[2] = *MEMORY[0x277D85DE8];
  if ((variants & 1) != 0 || self->_sharedWallpaperView)
  {
    v8 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:0 wallpaperMode:mode];
    if ((variantsCopy & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if ((variants & 2) != 0)
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
  v9 = [(PBUIWallpaperViewController *)self wallpaperConfigurationForUpdatingWallpaperViewsForVariant:1 wallpaperMode:mode];
LABEL_8:
  sharedWallpaperView = self->_sharedWallpaperView;
  v11 = 0x27CECE000uLL;
  v65 = v9;
  modeCopy = mode;
  if (sharedWallpaperView)
  {
    v64 = ![(PBUIWallpaperViewController *)self _isWallpaperView:sharedWallpaperView displayingWallpaperWithConfiguration:v8 forVariant:0];
    v12 = ![(PBUIWallpaperViewController *)self _isWallpaperView:self->_sharedWallpaperView displayingWallpaperWithConfiguration:v9 forVariant:1];
    v13 = self->_sharedWallpaperView;
    subviews = [(UIView *)self->_wallpaperContainerView subviews];
    v15 = [subviews indexOfObject:self->_sharedWallpaperView];

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

  if (variantsCopy)
  {
    if ([(PBUIWallpaperViewController *)self _isWallpaperView:self->_lockscreenWallpaperView displayingWallpaperWithConfiguration:v8 forVariant:0])
    {
      v18 = 0;
      v64 = 0;
    }

    else
    {
      v25 = self->_lockscreenWallpaperView;
      subviews2 = [(UIView *)self->_wallpaperContainerView subviews];
      v27 = [subviews2 indexOfObject:self->_lockscreenWallpaperView];

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
    if ((variantsCopy & 2) != 0)
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
  if ((variantsCopy & 2) == 0)
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
    v32 = [(PBUIWallpaperViewController *)self _makeWallpaperViewWithConfiguration:v8 forVariant:0 shared:0 options:options];
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
    v38 = [(PBUIWallpaperViewController *)self _makeWallpaperViewWithConfiguration:v65 forVariant:1 shared:0 options:options];
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

  if (modeCopy < 2)
  {
    v49 = MEMORY[0x277D75C80];
    v50 = 1;
    goto LABEL_69;
  }

  if (modeCopy == 3)
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
    if (modeCopy == 2)
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
  wallpaperPresentingDelegate = [(PBUIWallpaperViewController *)self wallpaperPresentingDelegate];
  v58 = wallpaperPresentingDelegate;
  if (v62)
  {
    [wallpaperPresentingDelegate wallpaperPresenter:self didChangeWallpaperForLocations:1 withConfiguration:v62];
  }

  if (v65)
  {
    [v58 wallpaperPresenter:self didChangeWallpaperForLocations:2 withConfiguration:v65];
  }
}

- (void)_beginSuspendingMotionEffectsForStyleIfNeeded
{
  wallpaperStyleAnimationAssertion = [(PBUIWallpaperViewController *)self wallpaperStyleAnimationAssertion];

  if (!wallpaperStyleAnimationAssertion)
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
  wallpaperStyleAnimationAssertion = [(PBUIWallpaperViewController *)self wallpaperStyleAnimationAssertion];

  if (wallpaperStyleAnimationAssertion)
  {
    v4 = PBUILogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21E67D000, v4, OS_LOG_TYPE_INFO, "Enabling dynamic wallpapers and parallax because of requested wallpaper style", v6, 2u);
    }

    wallpaperStyleAnimationAssertion2 = [(PBUIWallpaperViewController *)self wallpaperStyleAnimationAssertion];
    [wallpaperStyleAnimationAssertion2 invalidate];

    [(PBUIWallpaperViewController *)self setWallpaperStyleAnimationAssertion:0];
  }
}

- (BOOL)_shouldSuspendMotionEffectsForStyle:(int64_t)style
{
  result = _WallpaperStyleHasDarkBlur(style);
  if ((style - 1) < 2)
  {
    return 1;
  }

  return result;
}

- (BOOL)_shouldSuspendMotionEffectsForState:(id *)state
{
  v5 = [(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForStyle:state->var0];
  v6 = [(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForStyle:state->var1];
  var2 = state->var2;
  if (fabs(var2 + -1.0) < 2.22044605e-16 && v6)
  {
    return 1;
  }

  else
  {
    return v5 & (fabs(var2) < 2.22044605e-16 || v6);
  }
}

- (void)_updateMotionEffectsForState:(id *)state
{
  v4 = *state;
  if ([(PBUIWallpaperViewController *)self _shouldSuspendMotionEffectsForState:&v4])
  {
    [(PBUIWallpaperViewController *)self _beginSuspendingMotionEffectsForStyleIfNeeded];
  }

  else
  {
    [(PBUIWallpaperViewController *)self _endSuspendingMotionEffectsForStyleIfNeeded];
  }
}

- (BOOL)_updateEffectViewForVariant:(int64_t)variant oldState:(id *)state newState:(id *)newState oldEffectView:(id *)view newEffectView:(id *)effectView
{
  if (variant == 1)
  {
    [(PBUIWallpaperViewController *)self homescreenStyleInfo];
  }

  else
  {
    [(PBUIWallpaperViewController *)self lockscreenStyleInfo];
  }
  v13 = ;
  highestValidPriority = [v13 highestValidPriority];
  v15 = highestValidPriority;
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

  else if ((highestValidPriority & 0x8000000000000000) == 0)
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
  wallpaperEffectView = [v13 wallpaperEffectView];
  v17 = wallpaperEffectView;
  if (self->_displayedVariant != variant)
  {
    v22 = v33 == 1 || *(&v33 + 1) == 1;
    v23 = v22;
    if (v22)
    {
      [(PBUIWallpaperViewController *)self _clearWallpaperEffectView:wallpaperEffectView];
      [v13 setWallpaperEffectView:0];
    }

    else
    {
      v30 = v33;
      v31 = v34;
      if (wallpaperEffectView)
      {
        [wallpaperEffectView setTransitionState:&v30];
      }

      else
      {
        v17 = [(PBUIWallpaperViewController *)self _newWallpaperEffectViewForVariant:variant transitionState:&v30];
        [v13 setWallpaperEffectView:v17];
      }

      [v17 setHidden:1];
    }

    [(PBUIWallpaperViewController *)self _setWallpaperHidden:v23 variant:variant reason:@"WallpaperStyleHidden"];
    goto LABEL_56;
  }

  if (state)
  {
    *&state->var0 = v35;
    state->var2 = v36;
  }

  if (newState)
  {
    *&newState->var0 = v33;
    newState->var2 = v34;
  }

  v18 = 1;
  if (v35 != 1 && *(&v35 + 1) != 1)
  {
    v18 = [(PBUIWallpaperViewController *)self _isWallpaperHiddenForVariant:variant];
  }

  v19 = v33;
  if (v33 == 1)
  {
    [(PBUIWallpaperViewController *)self _setWallpaperHidden:1 variant:variant reason:@"WallpaperStyleHidden"];
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
          if (newState)
          {
            *&newState->var0 = v33;
            newState->var2 = v34;
          }
        }

        else
        {
          v30 = v33;
          v31 = v34;
          v26 = [(PBUIWallpaperViewController *)self _newWallpaperEffectViewForVariant:variant transitionState:&v30];
          [v26 setAlpha:0.0];
        }
      }

      else
      {
        v26 = 0;
      }

      [v13 setWallpaperEffectView:v26];
      if (view)
      {
        v28 = v17;
        *view = v17;
      }

      if (effectView)
      {
        v29 = v26;
        *effectView = v26;
      }

      goto LABEL_34;
    }

LABEL_56:
    v21 = 0;
    goto LABEL_57;
  }

  [(PBUIWallpaperViewController *)self _setWallpaperHidden:*(&v33 + 1) == 1 variant:variant reason:@"WallpaperStyleHidden"];
  [(PBUIWallpaperViewController *)self _clearWallpaperEffectView:v17];
  [v13 setWallpaperEffectView:0];
  if (v24 == 1)
  {
    goto LABEL_29;
  }

  v30 = v33;
  v31 = v34;
  v20 = [(PBUIWallpaperViewController *)self _newWallpaperEffectViewForVariant:variant transitionState:&v30];

  v17 = v20;
LABEL_28:
  [v13 setWallpaperEffectView:v20];
LABEL_29:
  if (view)
  {
    *view = 0;
  }

  if (effectView)
  {
    *effectView = 0;
  }

  v30 = v33;
  v31 = v34;
  [(PBUIWallpaperViewController *)self _updateMotionEffectsForState:&v30];
LABEL_34:
  v21 = 1;
LABEL_57:

  return v21;
}

- (BOOL)_updateEffectViewForVariant:(int64_t)variant withFactory:(id)factory
{
  factoryCopy = factory;
  if (variant == 1 && [(PBUIWallpaperViewController *)self shouldDelayHomescreenStyleUpdates])
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
    v11[10] = variant;
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
      [MEMORY[0x277CF0D38] animateWithFactory:factoryCopy actions:v10 completion:v9];
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

- (void)_handleWallpaperChangedForVariant:(int64_t)variant
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
          [v12 wallpaperWillChangeForVariant:variant];
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
          [v18 wallpaperDidChangeForVariant:{variant, v19}];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:variant];
  [(PBUIWallpaperViewController *)self _updateBlurImagesForVariant:variant];
}

- (BOOL)variantsShareWallpaper
{
  wallpaperConfigurationManager = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  v3 = [wallpaperConfigurationManager variantsShareWallpaperConfigurationForTypes:54];

  return v3;
}

- (id)wallpaperConfigurationForUpdatingWallpaperViewsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  wallpaperDataTypesToRequestForUpdatingWallpaperViews = [(PBUIWallpaperViewController *)self wallpaperDataTypesToRequestForUpdatingWallpaperViews];

  return [(PBUIWallpaperViewController *)self wallpaperConfigurationForVariant:variant includingValuesForTypes:wallpaperDataTypesToRequestForUpdatingWallpaperViews wallpaperMode:mode];
}

- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types wallpaperMode:(int64_t)mode
{
  wallpaperConfigurationManager = [(PBUIWallpaperViewController *)self wallpaperConfigurationManager];
  v10 = [wallpaperConfigurationManager wallpaperConfigurationForVariant:variant includingValuesForTypes:types | 0x10 wallpaperMode:mode];

  v11 = [(PBUIWallpaperViewController *)self substitutionWallpaperConfigurationForWallpaperConfiguration:v10];

  return v11;
}

- (void)_registerFakeBlurView:(id)view
{
  viewCopy = view;
  variant = [viewCopy variant];
  v6 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenBlurViews;
  if (!variant)
  {
    v6 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenBlurViews;
  }

  [*(&self->super.super.super.isa + *v6) addObject:viewCopy];

  [(PBUIWallpaperViewController *)self _updateBlurGeneration];
}

- (void)_unregisterFakeBlurView:(id)view
{
  lockscreenBlurViews = self->_lockscreenBlurViews;
  viewCopy = view;
  [(NSHashTable *)lockscreenBlurViews removeObject:viewCopy];
  [(NSHashTable *)self->_homescreenBlurViews removeObject:viewCopy];

  [(PBUIWallpaperViewController *)self _updateBlurGeneration];
}

- (id)_sourceForFakeBlurView:(id)view
{
  variant = [view variant];

  return [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
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

- (unint64_t)_bestWallpaperViewInitializationOptionsForVariant:(int64_t)variant shared:(BOOL)shared wallpaperOptions:(id)options options:(unint64_t)a6
{
  if (shared)
  {
    v6 = 11;
  }

  else
  {
    v6 = 10;
  }

  if ([options supportsCropping])
  {
    return v6;
  }

  else
  {
    return v6 | 0x10;
  }
}

- (id)_vendWallpaperViewForConfiguration:(id)configuration forVariant:(int64_t)variant shared:(BOOL)shared options:(unint64_t)options
{
  sharedCopy = shared;
  configurationCopy = configuration;
  [(UIView *)self->_wallpaperContainerView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  wallpaperOptions = [configurationCopy wallpaperOptions];
  wallpaperType = [configurationCopy wallpaperType];
  v21 = [(PBUIWallpaperViewController *)self _bestWallpaperViewInitializationOptionsForVariant:variant shared:sharedCopy wallpaperOptions:wallpaperOptions options:options];
  cachingIdentifier = [(PBUIWallpaperViewController *)self cachingIdentifier];
  v23 = [(PBUIWallpaperViewController *)self _wallpaperViewClassForType:wallpaperType];
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
  v25 = configurationCopy;
  v30 = v25;
  variantCopy = variant;
  v26 = cachingIdentifier;
  v31 = v26;
  selfCopy = self;
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

- (void)cleanupOldSharedWallpaper:(id)wallpaper lockSreenWallpaper:(id)sreenWallpaper homeScreenWallpaper:(id)screenWallpaper
{
  wallpaperCopy = wallpaper;
  sreenWallpaperCopy = sreenWallpaper;
  screenWallpaperCopy = screenWallpaper;
  v10 = objc_autoreleasePoolPush();
  [(PBUIWallpaperViewController *)self _clearWallpaperView:wallpaperCopy];
  [(PBUIWallpaperViewController *)self _clearWallpaperView:sreenWallpaperCopy];
  [(PBUIWallpaperViewController *)self _clearWallpaperView:screenWallpaperCopy];
  objc_autoreleasePoolPop(v10);
}

- (void)_clearWallpaperView:(id)view
{
  viewCopy = view;
  [viewCopy invalidate];
  [viewCopy setDelegate:0];
  [viewCopy setInternalObserver:0];
  [viewCopy setGeneratesBlurredImages:0];
  [viewCopy removeFromSuperview];
}

- (id)_newWallpaperEffectViewForVariant:(int64_t)variant transitionState:(id *)state
{
  v6 = [[PBUIWallpaperEffectViewBase alloc] initWithWallpaperPresenter:self variant:variant transformOptions:0];
  v8 = *state;
  [(PBUIWallpaperEffectViewBase *)v6 setTransitionState:&v8];
  [(UIView *)self->_wallpaperContainerView bounds];
  [(PBUIWallpaperEffectViewBase *)v6 setFrame:?];
  [(PBUIWallpaperEffectViewBase *)v6 setAutoresizingMask:18];
  [(UIView *)self->_wallpaperContainerView addSubview:v6];
  return v6;
}

- (id)_observersForVariant:(int64_t)variant
{
  v3 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenObservers;
  if (!variant)
  {
    v3 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenObservers;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (id)_blurViewsForVariant:(int64_t)variant
{
  v3 = &OBJC_IVAR___PBUIWallpaperViewController__homescreenBlurViews;
  if (!variant)
  {
    v3 = &OBJC_IVAR___PBUIWallpaperViewController__lockscreenBlurViews;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)_handleWallpaperLegibilitySettingsChanged:(id)changed forVariant:(int64_t)variant
{
  v19 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(PBUIWallpaperViewController *)self _observersForVariant:variant, 0];
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
          [v13 wallpaperLegibilitySettingsDidChange:changedCopy forVariant:variant];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(PBUIWallpaperViewController *)self _reconfigureBlurViewsForVariant:variant];
}

- (void)_reconfigureBlurViewsForVariant:(int64_t)variant
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PBUIWallpaperViewController *)self _blurViewsForVariant:variant, 0];
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

- (void)_updateBlurImagesForVariant:(int64_t)variant
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperViewController *)self _blurViewsForVariant:?];
  allObjects = [v5 allObjects];

  if ([allObjects count])
  {
    v7 = [(PBUIWallpaperViewController *)self wallpaperViewForVariant:variant];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = allObjects;
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

- (void)_accessibilityReduceTransparencyChanged:(id)changed
{
  [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:0];

  [(PBUIWallpaperViewController *)self _handleWallpaperChangedForVariant:1];
}

- (void)_updateWallpaperForWallpaperMode:(int64_t)mode
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = os_transaction_create();
  wallpaperMode = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager wallpaperMode];
  v8 = mode == 3 || wallpaperMode == 3;
  [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setWallpaperMode:mode];
  enableWallpaperDimming = [(PBUIWallpaperDefaultsDomain *)self->_wallpaperDefaultsStore enableWallpaperDimming];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager dataStores];
  v11 = [dataStores countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    v14 = enableWallpaperDimming | v8;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(dataStores);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([v16 hasWallpaperImageForVariant:0 wallpaperMode:mode] & 1) != 0 || ((objc_msgSend(v16, "hasWallpaperImageForVariant:wallpaperMode:", 1, mode) | v14))
        {
          [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:0 wallpaperMode:mode withCompletion:&__block_literal_global_141];
        }
      }

      v12 = [dataStores countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__PBUIWallpaperViewController__updateWallpaperForWallpaperMode___block_invoke_2;
  v17[3] = &unk_278362880;
  v17[4] = self;
  v17[5] = mode;
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

- (void)_updateWallpaperForWallpaperDimming:(BOOL)dimming
{
  [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setEnableWallpaperDimming:dimming];
  traitCollection = [(PBUIWallpaperViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if ([traitCollection _backlightLuminance] != 1 && userInterfaceStyle == 2)
  {
    [(PBUIWallpaperViewController *)self _updateWallpaperForLocations:3 options:0 wallpaperMode:2 withCompletion:&__block_literal_global_143];
  }
}

- (void)_updateAndPrewarmWallpapers
{
  traitCollection = [(PBUIWallpaperViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  traitCollection2 = [(PBUIWallpaperViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

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

  if (userInterfaceStyle2 == 1)
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