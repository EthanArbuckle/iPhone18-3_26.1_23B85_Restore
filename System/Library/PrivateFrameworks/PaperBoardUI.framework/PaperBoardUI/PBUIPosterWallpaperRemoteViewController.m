@interface PBUIPosterWallpaperRemoteViewController
+ (BOOL)supportsLandscapeWallpaperContents;
- (BOOL)isHomeScreenWallpaperDimmed;
- (BOOL)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4 withAnimationFactory:(id)a5;
- (BOOL)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6;
- (BOOL)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6;
- (CGRect)preferredSalientContentRectangle;
- (PBUIPosterWallpaperRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate;
- (PLKLegibilityEnvironment)legibilityEnvironment;
- (double)_wallpaperScaleForVariant:(int64_t)a3;
- (id)_observerLock_observersForVariant:(int64_t)a3;
- (id)_wallpaperScaleAssertionForVariant:(int64_t)a3 scale:(double)a4;
- (id)createWallpaperFloatingViewForReason:(id)a3 ignoreReplica:(BOOL)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)legibilitySettingsForVariant:(int64_t)a3;
- (id)newFakeBlurViewForVariant:(int64_t)a3 style:(int64_t)a4 transformOptions:(unint64_t)a5;
- (id)requireWallpaperWithReason:(id)a3;
- (id)setHomescreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4;
- (id)setLockscreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4;
- (id)setWallpaperFloatingLayerContainerView:(id)a3 forReason:(id)a4 withAnimationFactory:(id)a5;
- (id)succinctDescription;
- (id)suspendWallpaperAnimationForReason:(id)a3;
- (uint64_t)updateWallpaperAnimationWithRotation:(_OWORD *)a3;
- (void)_addStateCaptureHandlers;
- (void)_fireObserverRespondingToSelector:(SEL)a3 variant:(int64_t)a4 block:(id)a5;
- (void)_fireObserversWallpaperDidChange;
- (void)_fireObserversWallpaperWillChange;
- (void)_legibilityUpdatedForVariants:(id)a3 notifyObservers:(BOOL)a4;
- (void)_updateFallbackView;
- (void)_updateWallpaperScaleWithAnimationFactory:(id)a3;
- (void)addObserver:(id)a3 forVariant:(int64_t)a4;
- (void)cancelInProcessAnimations;
- (void)dealloc;
- (void)noteWillAnimateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)posterComponent:(id)a3 didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateDeviceMotionEventsRequested:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateDeviceMotionMode:(unint64_t)a4;
- (void)posterComponent:(id)a3 didUpdateHideDimmingLayer:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateLegibilitySettings:(id)a4;
- (void)posterComponent:(id)a3 didUpdatePreferredDeviceMotionUpdateInterval:(double)a4;
- (void)posterComponent:(id)a3 didUpdatePreferredProminentColor:(id)a4;
- (void)posterComponent:(id)a3 didUpdatePreferredSalientContentRectangle:(CGRect)a4;
- (void)removeObserver:(id)a3 forVariant:(int64_t)a4;
- (void)setActiveVariant:(int64_t)a3 withOutAnimationFactory:(id)a4 inAnimationFactory:(id)a5 completion:(id)a6;
- (void)setAssociatedPosterConfiguration:(id)a3 withAnimationSettings:(id)a4;
- (void)setConfiguration:(id)a3 withAnimationSettings:(id)a4;
- (void)setDeviceMotionUpdateInterval:(double)a3;
- (void)setExternalDisplayConfiguration:(id)a3;
- (void)setWallpaperConfigurationManager:(id)a3;
- (void)triggerPosterTapEvent:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)wallpaperConfigurationManager:(id)a3 didChangeWallpaperConfigurationForVariants:(int64_t)a4;
@end

@implementation PBUIPosterWallpaperRemoteViewController

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v16 viewWillLayoutSubviews];
  if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive())
  {
    v3 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v15[0] = *MEMORY[0x277CBF2C0];
    v15[1] = v4;
    v15[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v3 setTransform:v15];
  }

  v5 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIView *)self->_containerView setBounds:v7, v9, v11, v13];
  containerView = self->_containerView;
  UIRectGetCenter();
  [(UIView *)containerView setCenter:?];
}

- (void)cancelInProcessAnimations
{
  v3 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  v2 = [v3 window];
  [v2 _removeAllRetargetableAnimations:1];
}

- (void)_updateFallbackView
{
  v3 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [(PBUIPosterWallpaperRemoteViewController *)self activeVariant];
  IsHidden = PBUIWallpaperStyleIsHidden([(PBUIPosterWallpaperViewController *)self->_viewController activeStyleForVariant:v4]);
  v6 = IsHidden;
  v7 = 0;
  if (v4 <= 1 && !IsHidden)
  {
    v8 = [(PBUIPosterWallpaperRemoteViewController *)self averageColorForVariant:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;

      v22 = 0;
      v23 = 0.0;
      v20 = 0;
      v21 = 0;
      if ([v10 getRed:&v22 green:&v21 blue:&v20 alpha:&v23])
      {
        if (BSFloatIsZero() && BSFloatIsZero())
        {
          v7 = BSFloatIsZero() ^ 1;
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
      }

      v3 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  v12 = [v11 backgroundColor];
  v13 = v12 == 0;

  v23 = 0.0;
  v14 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  v15 = [v14 backgroundColor];
  v16 = [v15 getRed:0 green:0 blue:0 alpha:&v23];

  if (v16)
  {
    v13 = v23 < 1.0 || v12 == 0;
  }

  v18 = v4 < 2 || v6;
  if (((v18 | v7) & 1) != 0 || v13)
  {
    v19 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    [v19 setBackgroundColor:v3];
  }
}

- (CGRect)preferredSalientContentRectangle
{
  [(PBUIPosterWallpaperViewController *)self->_viewController preferredSalientContentRectangle];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_fireObserversWallpaperWillChange
{
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperWillChangeForVariant_ variant:0 block:&__block_literal_global_19];

  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperWillChangeForVariant_ variant:1 block:&__block_literal_global_94];
}

- (void)_fireObserversWallpaperDidChange
{
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidChangeForVariant_ variant:0 block:&__block_literal_global_96];

  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidChangeForVariant_ variant:1 block:&__block_literal_global_98];
}

+ (BOOL)supportsLandscapeWallpaperContents
{
  v2 = soft_PF_IS_PAD_DEVICE();
  if (v2)
  {

    LOBYTE(v2) = soft_PUIDynamicRotationIsActive();
  }

  return v2;
}

- (PBUIPosterWallpaperRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v23.receiver = self;
  v23.super_class = PBUIPosterWallpaperRemoteViewController;
  v4 = [(PBUIPosterWallpaperRemoteViewController *)&v23 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_activeVariant = -1;
    v6 = [MEMORY[0x277CBEB58] set];
    stateCaptureHandles = v5->_stateCaptureHandles;
    v5->_stateCaptureHandles = v6;

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    effectViews = v5->_effectViews;
    v5->_effectViews = v8;

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    wallpaperScaleAssertions = v5->_wallpaperScaleAssertions;
    v5->_wallpaperScaleAssertions = v10;

    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observerLock_lockScreenObservers = v5->_observerLock_lockScreenObservers;
    v5->_observerLock_lockScreenObservers = v12;

    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observerLock_homeScreenObservers = v5->_observerLock_homeScreenObservers;
    v5->_observerLock_homeScreenObservers = v14;

    v5->_observerLock._os_unfair_lock_opaque = 0;
    v16 = objc_alloc_init(PBUIPosterWallpaperViewController);
    viewController = v5->_viewController;
    v5->_viewController = v16;

    [(PBUIPosterWallpaperViewController *)v5->_viewController setDelegate:v5];
    v18 = [[PBUIPosterPortalImageProvider alloc] initWithRootObject:v5->_viewController];
    portalImageProvider = v5->_portalImageProvider;
    v5->_portalImageProvider = v18;

    v20 = [[PBUIPosterActiveVariantImageProvider alloc] initWithRootObject:v5->_viewController];
    activeVariantProvider = v5->_activeVariantProvider;
    v5->_activeVariantProvider = v20;

    [(PBUIPosterWallpaperRemoteViewController *)v5 _addStateCaptureHandlers];
  }

  return v5;
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

  [(BSCompoundAssertion *)self->_animationSuspendedAssertion invalidate];
  v8.receiver = self;
  v8.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v8 dealloc];
}

- (void)setWallpaperConfigurationManager:(id)a3
{
  objc_storeStrong(&self->_wallpaperConfigurationManager, a3);
  v5 = a3;
  [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setDelegate:self];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v8 viewDidLoad];
  v3 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  containerView = self->_containerView;
  self->_containerView = v5;

  [(UIView *)self->_containerView setAutoresizingMask:18];
  [v3 addSubview:self->_containerView];
  v7 = [MEMORY[0x277D75348] systemOrangeColor];
  [v3 setBackgroundColor:v7];

  [(PBUIPosterWallpaperRemoteViewController *)self bs_addChildViewController:self->_viewController withSuperview:self->_containerView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v5 viewWillAppear:?];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_viewController toVisible:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v4 viewDidAppear:a3];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_endAppearanceTransitionForChildViewController:self->_viewController toVisible:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v5 viewWillDisappear:?];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_viewController toVisible:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v4 viewDidDisappear:a3];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_endAppearanceTransitionForChildViewController:self->_viewController toVisible:0];
}

- (void)posterComponent:(id)a3 didUpdateLegibilitySettings:(id)a4
{
  v5 = [a3 variant];
  v6 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v7 = [v6 setWithObject:v8];
  [(PBUIPosterWallpaperRemoteViewController *)self _legibilityUpdatedForVariants:v7 notifyObservers:1];
}

- (void)posterComponent:(id)a3 didUpdateHideDimmingLayer:(BOOL)a4
{
  v6 = [a3 variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateHideDimmingLayer___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0___PBUIWallpaperObserver__8l;
  v8 = a4;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_hideDimmingLayerDidChange_ variant:v6 block:v7];
}

- (void)posterComponent:(id)a3 didUpdatePreferredProminentColor:(id)a4
{
  v6 = a4;
  v7 = [a3 variant];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdatePreferredProminentColor___block_invoke;
  v9[3] = &unk_278363A68;
  v10 = v6;
  v8 = v6;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdatePreferredProminentColor_ variant:v7 block:v9];
}

- (void)posterComponent:(id)a3 didUpdatePreferredSalientContentRectangle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [a3 variant];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdatePreferredSalientContentRectangle___block_invoke;
  v10[3] = &__block_descriptor_64_e33_v16__0___PBUIWallpaperObserver__8l;
  *&v10[4] = x;
  *&v10[5] = y;
  *&v10[6] = width;
  *&v10[7] = height;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdatePreferredSalientContentRectangle_ variant:v9 block:v10];
}

- (void)posterComponent:(id)a3 didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a4
{
  v6 = [a3 variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __119__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0___PBUIWallpaperObserver__8l;
  v8 = a4;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle_ variant:v6 block:v7];
}

- (void)posterComponent:(id)a3 didUpdateDeviceMotionEventsRequested:(BOOL)a4
{
  v6 = [a3 variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateDeviceMotionEventsRequested___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0___PBUIWallpaperObserver__8l;
  v8 = a4;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_posterDidUpdateWantsMotionEvents_ variant:v6 block:v7];
}

- (void)posterComponent:(id)a3 didUpdateDeviceMotionMode:(unint64_t)a4
{
  v6 = [a3 variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateDeviceMotionMode___block_invoke;
  v7[3] = &__block_descriptor_40_e33_v16__0___PBUIWallpaperObserver__8l;
  v7[4] = a4;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_posterDidUpdateDeviceMotionMode_ variant:v6 block:v7];
}

- (void)posterComponent:(id)a3 didUpdatePreferredDeviceMotionUpdateInterval:(double)a4
{
  v6 = [a3 variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdatePreferredDeviceMotionUpdateInterval___block_invoke;
  v7[3] = &__block_descriptor_40_e33_v16__0___PBUIWallpaperObserver__8l;
  *&v7[4] = a4;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdatePreferredDeviceMotionUpdateInterval_ variant:v6 block:v7];
}

- (void)_legibilityUpdatedForVariants:(id)a3 notifyObservers:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    if (!self->_legibilityEnvironmentBuilder)
    {
      v7 = objc_alloc_init(getPLKLegibilityEnvironmentBuilderClass());
      legibilityEnvironmentBuilder = self->_legibilityEnvironmentBuilder;
      self->_legibilityEnvironmentBuilder = v7;
    }

    if ([v6 containsObject:&unk_282FD5C98])
    {
      v9 = [(PBUIPosterWallpaperRemoteViewController *)self legibilityEnvironmentContextForVariant:0];
    }

    else
    {
      v9 = 0;
    }

    if (([v6 containsObject:&unk_282FD5CB0] & 1) != 0 || (-[PLKLegibilityEnvironmentBuilder variants](self->_legibilityEnvironmentBuilder, "variants"), v10 = objc_claimAutoreleasedReturnValue(), getPLKLegibilityEnvironmentVariantHomeScreen(), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, (v12 & 1) == 0))
    {
      v13 = [(PBUIPosterWallpaperRemoteViewController *)self legibilityEnvironmentContextForVariant:1];
    }

    else
    {
      v13 = 0;
    }

    if (!(v9 | v13))
    {
      goto LABEL_33;
    }

    v34 = v4;
    if (v9)
    {
      v14 = self->_legibilityEnvironmentBuilder;
      v15 = MEMORY[0x277CBEB98];
      v16 = getPLKLegibilityEnvironmentVariantDefault();
      v17 = getPLKLegibilityEnvironmentVariantLockScreen();
      v18 = [v15 setWithObjects:{v16, v17, 0}];
      v19 = [(PLKLegibilityEnvironmentBuilder *)v14 updateWithContext:v9 variants:v18];

      if (v13)
      {
LABEL_14:
        v20 = [(PLKLegibilityEnvironmentBuilder *)self->_legibilityEnvironmentBuilder updateWithContext:v13];
LABEL_17:
        v21 = v34;
        if (((v19 | v20) & 1) == 0)
        {
          goto LABEL_29;
        }

        v22 = PBUILogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v46 = v19;
          v47 = 1024;
          v48 = v20;
          _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_DEFAULT, "Updating legibility environment; home updated? %{BOOL}u lockUpdated? %{BOOL}u", buf, 0xEu);
        }

        v23 = [(PLKLegibilityEnvironmentBuilder *)self->_legibilityEnvironmentBuilder buildWithError:0];
        if (v23)
        {
          if ((BSEqualObjects() & 1) == 0)
          {
            objc_storeStrong(&self->_currentLegibilityEnvironment, v23);
            if (v34)
            {
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __89__PBUIPosterWallpaperRemoteViewController__legibilityUpdatedForVariants_notifyObservers___block_invoke;
              v43[3] = &unk_278363A68;
              v24 = v23;
              v44 = v24;
              [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperLegibilityEnvironmentDidChange_ variant:1 block:v43];
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __89__PBUIPosterWallpaperRemoteViewController__legibilityUpdatedForVariants_notifyObservers___block_invoke_2;
              v41[3] = &unk_278363A68;
              v25 = v24;
              v21 = v34;
              v42 = v25;
              [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperLegibilityEnvironmentDidChange_ variant:0 block:v41];
            }
          }
        }

        if (v19)
        {
          currentLegibilityEnvironment = self->_currentLegibilityEnvironment;
          v27 = getPLKLegibilityEnvironmentVariantLockScreen();
          v28 = [(PLKLegibilityEnvironment *)currentLegibilityEnvironment legibilityEnvironmentContextForVariant:v27];
          v29 = [v28 legibilitySettings];

          if (v21)
          {
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __89__PBUIPosterWallpaperRemoteViewController__legibilityUpdatedForVariants_notifyObservers___block_invoke_3;
            v38[3] = &unk_278363AD0;
            v39 = v29;
            v40 = 0;
            [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperLegibilitySettingsDidChange_forVariant_ variant:0 block:v38];
          }

          if ((v20 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
LABEL_29:
          if (!v20)
          {
LABEL_33:

            goto LABEL_34;
          }
        }

        v30 = self->_currentLegibilityEnvironment;
        v31 = getPLKLegibilityEnvironmentVariantHomeScreen();
        v32 = [(PLKLegibilityEnvironment *)v30 legibilityEnvironmentContextForVariant:v31];
        v33 = [v32 legibilitySettings];

        if (v21)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __89__PBUIPosterWallpaperRemoteViewController__legibilityUpdatedForVariants_notifyObservers___block_invoke_4;
          v35[3] = &unk_278363AD0;
          v36 = v33;
          v37 = 1;
          [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperLegibilitySettingsDidChange_forVariant_ variant:1 block:v35];
        }

        goto LABEL_33;
      }
    }

    else
    {
      v19 = 0;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    v20 = 0;
    goto LABEL_17;
  }

LABEL_34:
}

- (void)wallpaperConfigurationManager:(id)a3 didChangeWallpaperConfigurationForVariants:(int64_t)a4
{
  v4 = a4;
  v10 = *MEMORY[0x277D85DE8];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PBUIStringForWallpaperLocations(v4);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Legacy wallpaper changed for %@", &v8, 0xCu);
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController updateLegacyPoster];
}

- (BOOL)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6
{
  v10 = a6;
  PBUIWallpaperStyleTransitionStateMake(a3, a3, v12, 0.0);
  LOBYTE(a5) = [(PBUIPosterWallpaperRemoteViewController *)self setWallpaperStyleTransitionState:v12 forPriority:a4 forVariant:a5 withAnimationFactory:v10];

  [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];
  return a5;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5 withAnimationFactory:(id)a6
{
  v11 = a6;
  if (!PBUIWallpaperVariantIsValid(a5))
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperStyleTransitionState:a2 forPriority:? forVariant:? withAnimationFactory:?];
  }

  if (!PBUIWallpaperStylePriorityIsValid(a4))
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperStyleTransitionState:a2 forPriority:? forVariant:? withAnimationFactory:?];
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController setWallpaperStyle:a3->var1 forPriority:a4 forVariant:a5];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];

  return 1;
}

- (BOOL)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4 withAnimationFactory:(id)a5
{
  v9 = a5;
  if (!PBUIWallpaperVariantIsValid(a4))
  {
    [PBUIPosterWallpaperRemoteViewController removeWallpaperStyleForPriority:a2 forVariant:? withAnimationFactory:?];
  }

  if (!PBUIWallpaperStylePriorityIsValid(a3))
  {
    [PBUIPosterWallpaperRemoteViewController removeWallpaperStyleForPriority:a2 forVariant:? withAnimationFactory:?];
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController removeWallpaperStyleForPriority:a3 forVariant:a4];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];

  return 1;
}

- (id)suspendWallpaperAnimationForReason:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v6 = v5;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v6)
  {
    [PBUIPosterWallpaperRemoteViewController suspendWallpaperAnimationForReason:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBUIPosterWallpaperRemoteViewController suspendWallpaperAnimationForReason:a2];
  }

  animationSuspendedAssertion = self->_animationSuspendedAssertion;
  if (!animationSuspendedAssertion)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__PBUIPosterWallpaperRemoteViewController_suspendWallpaperAnimationForReason___block_invoke;
    v12[3] = &unk_2783633B0;
    v12[4] = self;
    v8 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"AnimationSuspended" stateDidChangeHandler:v12];
    v9 = self->_animationSuspendedAssertion;
    self->_animationSuspendedAssertion = v8;

    animationSuspendedAssertion = self->_animationSuspendedAssertion;
  }

  v10 = [(BSCompoundAssertion *)animationSuspendedAssertion acquireForReason:v6];

  return v10;
}

- (void)addObserver:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_observerLock);
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _observerLock_observersForVariant:a4];
  [v7 addObject:v6];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeObserver:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_observerLock);
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _observerLock_observersForVariant:a4];
  [v7 removeObject:v6];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)setActiveVariant:(int64_t)a3 withOutAnimationFactory:(id)a4 inAnimationFactory:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (self->_activeVariant == a3)
  {
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }

  else
  {
    [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperWillChange];
    v14 = PBUILogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PBUIStringForWallpaperVariant(a3);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "Setting wallpaper variant to: %{public}@", &v16, 0xCu);
    }

    self->_activeVariant = a3;
    [(PBUIPosterWallpaperViewController *)self->_viewController setActiveVariant:a3];
    [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];
    [(PBUIPosterWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:0];
    [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperDidChange];
  }
}

- (id)setHomescreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _wallpaperScaleAssertionForVariant:1 scale:a3];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:v6];

  return v7;
}

- (id)setLockscreenWallpaperScale:(double)a3 withAnimationFactory:(id)a4
{
  v6 = a4;
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _wallpaperScaleAssertionForVariant:0 scale:a3];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:v6];

  return v7;
}

- (id)createWallpaperFloatingViewForReason:(id)a3 ignoreReplica:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [PBUIPosterFloatingLayerReplica alloc];
  v8 = [(PBUIPosterFloatingLayerReplica *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(PBUIPosterFloatingLayerReplica *)v8 setFloatingLayerStandin:!v4];
  v9 = [(PBUIPosterWallpaperViewController *)self->_viewController portalProviderForFloatingLayer];
  [(PBUIPortalReplicaView *)v8 setProvider:v9];

  [(PBUIPortalReplicaView *)v8 setReason:v6];

  return v8;
}

- (id)setWallpaperFloatingLayerContainerView:(id)a3 forReason:(id)a4 withAnimationFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  BSDispatchQueueAssertMain();
  if (!v10)
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperFloatingLayerContainerView:a2 forReason:? withAnimationFactory:?];
  }

  if (!v9)
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperFloatingLayerContainerView:a2 forReason:? withAnimationFactory:?];
  }

  v12 = [PBUIPosterFloatingLayerReplica alloc];
  [v9 bounds];
  v13 = [(PBUIPosterFloatingLayerReplica *)v12 initWithFrame:?];
  v14 = [(PBUIPosterWallpaperViewController *)self->_viewController portalProviderForFloatingLayer];
  [(PBUIPortalReplicaView *)v13 setProvider:v14];

  [(PBUIPortalReplicaView *)v13 setReason:v10];
  [v9 addSubview:v13];
  v15 = [PBUIWallpaperFloatingLayerAssertion alloc];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __113__PBUIPosterWallpaperRemoteViewController_setWallpaperFloatingLayerContainerView_forReason_withAnimationFactory___block_invoke;
  v19[3] = &unk_278363AF8;
  v20 = v13;
  v16 = v13;
  v17 = [(PBUIWallpaperFloatingLayerAssertion *)v15 initWithContainerView:v9 forReason:v10 invalidationBlock:v19];

  return v17;
}

- (uint64_t)updateWallpaperAnimationWithRotation:(_OWORD *)a3
{
  v3 = *(a1 + 1000);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [v3 setRotation:v6];
}

- (void)setConfiguration:(id)a3 withAnimationSettings:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  BSDispatchQueueAssertMain();
  v9 = v7;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!v9)
  {
    [PBUIPosterWallpaperRemoteViewController setConfiguration:a2 withAnimationSettings:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBUIPosterWallpaperRemoteViewController setConfiguration:a2 withAnimationSettings:?];
  }

  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperWillChange];
  [(PBUIPosterWallpaperViewController *)self->_viewController updateConfiguration:v9 withAnimationSettings:v8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_effectViews;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        [v15 updateImageFromProviderForWallpaperMode:0];
        [v15 reconfigureFromProvider];
      }

      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperDidChange];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_282FD5C98, &unk_282FD5CB0, 0, v17}];
  [(PBUIPosterWallpaperRemoteViewController *)self _legibilityUpdatedForVariants:v16 notifyObservers:1];
}

- (void)setAssociatedPosterConfiguration:(id)a3 withAnimationSettings:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperWillChangeForVariant:1];
  [(PBUIPosterWallpaperViewController *)self->_viewController updateAssociatedPosterConfiguration:v6 withAnimationSettings:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_effectViews;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 updateImageFromProviderForWallpaperMode:0];
        [v13 reconfigureFromProvider];
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperDidChangeForVariant:1];
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_282FD5CB0, 0}];
  [(PBUIPosterWallpaperRemoteViewController *)self _legibilityUpdatedForVariants:v14 notifyObservers:1];
}

- (void)noteWillAnimateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive())
  {
    v7 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    v22 = *MEMORY[0x277CBF2C0];
    v17 = v22;
    v23 = v16;
    v24 = *(MEMORY[0x277CBF2C0] + 32);
    v15 = v24;
    [v7 setTransform:&v22];

    v8 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    [v8 layoutIfNeeded];

    v9 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    v22 = v17;
    v23 = v16;
    v24 = v15;
    [(NSHashTable *)v9 setTransform:&v22];
  }

  else
  {
    v10 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    [v10 layoutIfNeeded];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_effectViews;
    v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v18 + 1) + 8 * v14++) rotateToInterfaceOrientation:a3];
        }

        while (v12 != v14);
        v12 = [(NSHashTable *)v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v12);
    }
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController rotateToInterfaceOrientation:a3 duration:a4];
}

- (id)requireWallpaperWithReason:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v6 = v5;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v6)
  {
    [PBUIPosterWallpaperRemoteViewController requireWallpaperWithReason:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBUIPosterWallpaperRemoteViewController requireWallpaperWithReason:a2];
  }

  v7 = [(PBUIPosterWallpaperViewController *)self->_viewController requireWallpaperWithReason:v6];

  return v7;
}

- (void)triggerPosterTapEvent:(id)a3
{
  viewController = self->_viewController;
  v5 = a3;
  v6 = [(PBUIPosterWallpaperViewController *)viewController view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = self->_viewController;

  [(PBUIPosterWallpaperViewController *)v11 noteUserTapOccurredWithLocation:v8, v10];
}

- (id)newFakeBlurViewForVariant:(int64_t)a3 style:(int64_t)a4 transformOptions:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  v9 = [WeakRetained wallpaperPresenter:self requestsOrientationWithRefresh:1];

  v10 = self;
  v11 = v10;
  v12 = v10;
  if ((a5 & 0x10) != 0)
  {
    v12 = v10->_portalImageProvider;
  }

  if ((a5 & 0x20) != 0)
  {
    v13 = v11->_activeVariantProvider;

    v12 = v13;
  }

  v14 = [[PBUIFakeBlurView alloc] initWithVariant:a3 imageProvider:v12 fakeBlurRegistry:v11 wallpaperViewDelegate:0 transformOptions:a5 reachabilityCoordinator:v11->_reachabilityCoordinator];
  v15 = v14;
  if (v9)
  {
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__PBUIPosterWallpaperRemoteViewController_newFakeBlurViewForVariant_style_transformOptions___block_invoke;
    v18[3] = &unk_278362880;
    v19 = v14;
    v20 = v9;
    [v16 performWithoutAnimation:v18];
  }

  return v15;
}

- (void)setExternalDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (![(PBUIExternalDisplayConfiguration *)self->_externalDisplayConfiguration isEqual:?])
  {
    objc_storeStrong(&self->_externalDisplayConfiguration, a3);
  }
}

- (BOOL)isHomeScreenWallpaperDimmed
{
  v2 = [(PBUIPosterWallpaperRemoteViewController *)self currentHomeVariantStyleState];
  v3 = [v2 isHomeScreenDimmed];

  return v3;
}

- (void)setDeviceMotionUpdateInterval:(double)a3
{
  if (self->_deviceMotionUpdateInterval != a3)
  {
    [(PBUIPosterWallpaperViewController *)self->_viewController setDeviceMotionUpdateInterval:?];
  }
}

- (id)_observerLock_observersForVariant:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___PBUIPosterWallpaperRemoteViewController__observerLock_homeScreenObservers;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!a3)
  {
    v4 = &OBJC_IVAR___PBUIPosterWallpaperRemoteViewController__observerLock_lockScreenObservers;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_fireObserverRespondingToSelector:(SEL)a3 variant:(int64_t)a4 block:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a5;
  if (v7)
  {
    os_unfair_lock_lock(&self->_observerLock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(PBUIPosterWallpaperRemoteViewController *)self _observerLock_observersForVariant:a4];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            if (!v11)
            {
              v11 = objc_opt_new();
            }

            [v11 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    os_unfair_lock_unlock(&self->_observerLock);
    if ([v11 count])
    {
      v15 = v11;
      v16 = v7;
      BSDispatchMain();
    }
  }
}

void __91__PBUIPosterWallpaperRemoteViewController__fireObserverRespondingToSelector_variant_block___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (PLKLegibilityEnvironment)legibilityEnvironment
{
  currentLegibilityEnvironment = self->_currentLegibilityEnvironment;
  if (!currentLegibilityEnvironment)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_282FD5CB0, &unk_282FD5C98, 0}];
    [(PBUIPosterWallpaperRemoteViewController *)self _legibilityUpdatedForVariants:v4 notifyObservers:0];

    currentLegibilityEnvironment = self->_currentLegibilityEnvironment;
  }

  v5 = currentLegibilityEnvironment;

  return v5;
}

- (id)legibilitySettingsForVariant:(int64_t)a3
{
  v3 = [(PBUIPosterWallpaperViewController *)self->_viewController legibilitySettingsForVariant:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = PBUIFallbackLegibilitySettings();
  }

  v6 = v5;

  return v6;
}

- (id)succinctDescription
{
  v2 = [(PBUIPosterWallpaperRemoteViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIPosterWallpaperRemoteViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PBUIPosterWallpaperRemoteViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__PBUIPosterWallpaperRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783622E0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __81__PBUIPosterWallpaperRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PBUIStringForWallpaperVariant(*(*(a1 + 40) + 1128));
  [v2 appendString:v3 withName:@"activeVariant"];

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 1072) allObjects];
  [v4 appendArraySection:v5 withName:@"scaleAssertions" skipIfEmpty:1];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"viewController"];
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
  [(PBUIPosterWallpaperRemoteViewController *)self _wallpaperScaleForVariant:[(PBUIPosterWallpaperRemoteViewController *)self activeVariant]];
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__PBUIPosterWallpaperRemoteViewController__updateWallpaperScaleWithAnimationFactory___block_invoke;
    v8[3] = &unk_278362880;
    v8[4] = self;
    *&v8[5] = v5;
    [MEMORY[0x277CF0D38] animateWithFactory:v4 actions:v8];
  }

  else
  {
    containerView = self->_containerView;
    CGAffineTransformMakeScale(&v7, v5, v5);
    [(UIView *)containerView setTransform:&v7];
  }
}

uint64_t __85__PBUIPosterWallpaperRemoteViewController__updateWallpaperScaleWithAnimationFactory___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 992);
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 40));
  return [v1 setTransform:&v3];
}

- (id)_wallpaperScaleAssertionForVariant:(int64_t)a3 scale:(double)a4
{
  objc_initWeak(&location, self);
  v7 = [PBUIWallpaperScaleAssertion alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallpaper scale %f", *&a4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PBUIPosterWallpaperRemoteViewController__wallpaperScaleAssertionForVariant_scale___block_invoke;
  v11[3] = &unk_2783629B0;
  objc_copyWeak(&v12, &location);
  v9 = [(PBUIWallpaperScaleAssertion *)v7 initWithVariant:a3 scale:v8 forReason:v11 invalidationBlock:a4];

  [(NSHashTable *)self->_wallpaperScaleAssertions addObject:v9];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __84__PBUIPosterWallpaperRemoteViewController__wallpaperScaleAssertionForVariant_scale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[134] removeObject:v8];
    [v7 _updateWallpaperScaleWithAnimationFactory:v5];
  }
}

- (void)_addStateCaptureHandlers
{
  v3 = MEMORY[0x277D85CD0];
  objc_initWeak(&location, self);
  stateCaptureHandles = self->_stateCaptureHandles;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIPosterWallpaperRemoteViewController - %p", self];
  objc_copyWeak(&v7, &location);
  v6 = BSLogAddStateCaptureBlockWithTitle();
  [(NSMutableSet *)stateCaptureHandles addObject:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

__CFString *__67__PBUIPosterWallpaperRemoteViewController__addStateCaptureHandlers__block_invoke(uint64_t a1)
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

- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);

  return WeakRetained;
}

- (void)setWallpaperStyleTransitionState:(char *)a1 forPriority:forVariant:withAnimationFactory:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PBUIWallpaperVariantIsValid(variant)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setWallpaperStyleTransitionState:(char *)a1 forPriority:forVariant:withAnimationFactory:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PBUIWallpaperStylePriorityIsValid(priority)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeWallpaperStyleForPriority:(char *)a1 forVariant:withAnimationFactory:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PBUIWallpaperVariantIsValid(variant)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeWallpaperStyleForPriority:(char *)a1 forVariant:withAnimationFactory:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PBUIWallpaperStylePriorityIsValid(priority)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)suspendWallpaperAnimationForReason:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)suspendWallpaperAnimationForReason:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setWallpaperFloatingLayerContainerView:(char *)a1 forReason:withAnimationFactory:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"containerView != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setWallpaperFloatingLayerContainerView:(char *)a1 forReason:withAnimationFactory:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"reason != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setConfiguration:(char *)a1 withAnimationSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setConfiguration:(char *)a1 withAnimationSettings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requireWallpaperWithReason:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)requireWallpaperWithReason:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_4(&dword_21E67D000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end