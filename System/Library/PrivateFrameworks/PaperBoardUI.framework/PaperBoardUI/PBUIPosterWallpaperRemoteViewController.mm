@interface PBUIPosterWallpaperRemoteViewController
+ (BOOL)supportsLandscapeWallpaperContents;
- (BOOL)isHomeScreenWallpaperDimmed;
- (BOOL)removeWallpaperStyleForPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (BOOL)setWallpaperStyle:(int64_t)style forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (BOOL)setWallpaperStyleTransitionState:(id *)state forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory;
- (CGRect)preferredSalientContentRectangle;
- (PBUIPosterWallpaperRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PBUIWallpaperPresentingDelegate)wallpaperPresentingDelegate;
- (PLKLegibilityEnvironment)legibilityEnvironment;
- (double)_wallpaperScaleForVariant:(int64_t)variant;
- (id)_observerLock_observersForVariant:(int64_t)variant;
- (id)_wallpaperScaleAssertionForVariant:(int64_t)variant scale:(double)scale;
- (id)createWallpaperFloatingViewForReason:(id)reason ignoreReplica:(BOOL)replica;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)legibilitySettingsForVariant:(int64_t)variant;
- (id)newFakeBlurViewForVariant:(int64_t)variant style:(int64_t)style transformOptions:(unint64_t)options;
- (id)requireWallpaperWithReason:(id)reason;
- (id)setHomescreenWallpaperScale:(double)scale withAnimationFactory:(id)factory;
- (id)setLockscreenWallpaperScale:(double)scale withAnimationFactory:(id)factory;
- (id)setWallpaperFloatingLayerContainerView:(id)view forReason:(id)reason withAnimationFactory:(id)factory;
- (id)succinctDescription;
- (id)suspendWallpaperAnimationForReason:(id)reason;
- (uint64_t)updateWallpaperAnimationWithRotation:(_OWORD *)rotation;
- (void)_addStateCaptureHandlers;
- (void)_fireObserverRespondingToSelector:(SEL)selector variant:(int64_t)variant block:(id)block;
- (void)_fireObserversWallpaperDidChange;
- (void)_fireObserversWallpaperWillChange;
- (void)_legibilityUpdatedForVariants:(id)variants notifyObservers:(BOOL)observers;
- (void)_updateFallbackView;
- (void)_updateWallpaperScaleWithAnimationFactory:(id)factory;
- (void)addObserver:(id)observer forVariant:(int64_t)variant;
- (void)cancelInProcessAnimations;
- (void)dealloc;
- (void)noteWillAnimateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)posterComponent:(id)component didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)rectangle;
- (void)posterComponent:(id)component didUpdateDeviceMotionEventsRequested:(BOOL)requested;
- (void)posterComponent:(id)component didUpdateDeviceMotionMode:(unint64_t)mode;
- (void)posterComponent:(id)component didUpdateHideDimmingLayer:(BOOL)layer;
- (void)posterComponent:(id)component didUpdateLegibilitySettings:(id)settings;
- (void)posterComponent:(id)component didUpdatePreferredDeviceMotionUpdateInterval:(double)interval;
- (void)posterComponent:(id)component didUpdatePreferredProminentColor:(id)color;
- (void)posterComponent:(id)component didUpdatePreferredSalientContentRectangle:(CGRect)rectangle;
- (void)removeObserver:(id)observer forVariant:(int64_t)variant;
- (void)setActiveVariant:(int64_t)variant withOutAnimationFactory:(id)factory inAnimationFactory:(id)animationFactory completion:(id)completion;
- (void)setAssociatedPosterConfiguration:(id)configuration withAnimationSettings:(id)settings;
- (void)setConfiguration:(id)configuration withAnimationSettings:(id)settings;
- (void)setDeviceMotionUpdateInterval:(double)interval;
- (void)setExternalDisplayConfiguration:(id)configuration;
- (void)setWallpaperConfigurationManager:(id)manager;
- (void)triggerPosterTapEvent:(id)event;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)wallpaperConfigurationManager:(id)manager didChangeWallpaperConfigurationForVariants:(int64_t)variants;
@end

@implementation PBUIPosterWallpaperRemoteViewController

- (void)viewWillLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v16 viewWillLayoutSubviews];
  if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive())
  {
    view = [(PBUIPosterWallpaperRemoteViewController *)self view];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v15[0] = *MEMORY[0x277CBF2C0];
    v15[1] = v4;
    v15[2] = *(MEMORY[0x277CBF2C0] + 32);
    [view setTransform:v15];
  }

  view2 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  [view2 bounds];
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
  view = [(PBUIPosterWallpaperRemoteViewController *)self view];
  window = [view window];
  [window _removeAllRetargetableAnimations:1];
}

- (void)_updateFallbackView
{
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  activeVariant = [(PBUIPosterWallpaperRemoteViewController *)self activeVariant];
  IsHidden = PBUIWallpaperStyleIsHidden([(PBUIPosterWallpaperViewController *)self->_viewController activeStyleForVariant:activeVariant]);
  v6 = IsHidden;
  v7 = 0;
  if (activeVariant <= 1 && !IsHidden)
  {
    v8 = [(PBUIPosterWallpaperRemoteViewController *)self averageColorForVariant:activeVariant];
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

      systemBlackColor = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  view = [(PBUIPosterWallpaperRemoteViewController *)self view];
  backgroundColor = [view backgroundColor];
  v13 = backgroundColor == 0;

  v23 = 0.0;
  view2 = [(PBUIPosterWallpaperRemoteViewController *)self view];
  backgroundColor2 = [view2 backgroundColor];
  v16 = [backgroundColor2 getRed:0 green:0 blue:0 alpha:&v23];

  if (v16)
  {
    v13 = v23 < 1.0 || backgroundColor == 0;
  }

  v18 = activeVariant < 2 || v6;
  if (((v18 | v7) & 1) != 0 || v13)
  {
    view3 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    [view3 setBackgroundColor:systemBlackColor];
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

- (PBUIPosterWallpaperRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v23.receiver = self;
  v23.super_class = PBUIPosterWallpaperRemoteViewController;
  v4 = [(PBUIPosterWallpaperRemoteViewController *)&v23 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_activeVariant = -1;
    v6 = [MEMORY[0x277CBEB58] set];
    stateCaptureHandles = v5->_stateCaptureHandles;
    v5->_stateCaptureHandles = v6;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    effectViews = v5->_effectViews;
    v5->_effectViews = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    wallpaperScaleAssertions = v5->_wallpaperScaleAssertions;
    v5->_wallpaperScaleAssertions = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observerLock_lockScreenObservers = v5->_observerLock_lockScreenObservers;
    v5->_observerLock_lockScreenObservers = weakObjectsHashTable3;

    weakObjectsHashTable4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observerLock_homeScreenObservers = v5->_observerLock_homeScreenObservers;
    v5->_observerLock_homeScreenObservers = weakObjectsHashTable4;

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

- (void)setWallpaperConfigurationManager:(id)manager
{
  objc_storeStrong(&self->_wallpaperConfigurationManager, manager);
  managerCopy = manager;
  [(PBUIWallpaperConfigurationManager *)self->_wallpaperConfigurationManager setDelegate:self];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v8 viewDidLoad];
  view = [(PBUIPosterWallpaperRemoteViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  containerView = self->_containerView;
  self->_containerView = v5;

  [(UIView *)self->_containerView setAutoresizingMask:18];
  [view addSubview:self->_containerView];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [view setBackgroundColor:systemOrangeColor];

  [(PBUIPosterWallpaperRemoteViewController *)self bs_addChildViewController:self->_viewController withSuperview:self->_containerView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v5 viewWillAppear:?];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_viewController toVisible:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v4 viewDidAppear:appear];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_endAppearanceTransitionForChildViewController:self->_viewController toVisible:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v5 viewWillDisappear:?];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_viewController toVisible:0 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PBUIPosterWallpaperRemoteViewController;
  [(PBUIPosterWallpaperRemoteViewController *)&v4 viewDidDisappear:disappear];
  [(PBUIPosterWallpaperRemoteViewController *)self bs_endAppearanceTransitionForChildViewController:self->_viewController toVisible:0];
}

- (void)posterComponent:(id)component didUpdateLegibilitySettings:(id)settings
{
  variant = [component variant];
  v6 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:variant];
  v7 = [v6 setWithObject:v8];
  [(PBUIPosterWallpaperRemoteViewController *)self _legibilityUpdatedForVariants:v7 notifyObservers:1];
}

- (void)posterComponent:(id)component didUpdateHideDimmingLayer:(BOOL)layer
{
  variant = [component variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateHideDimmingLayer___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0___PBUIWallpaperObserver__8l;
  layerCopy = layer;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_hideDimmingLayerDidChange_ variant:variant block:v7];
}

- (void)posterComponent:(id)component didUpdatePreferredProminentColor:(id)color
{
  colorCopy = color;
  variant = [component variant];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdatePreferredProminentColor___block_invoke;
  v9[3] = &unk_278363A68;
  v10 = colorCopy;
  v8 = colorCopy;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdatePreferredProminentColor_ variant:variant block:v9];
}

- (void)posterComponent:(id)component didUpdatePreferredSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  variant = [component variant];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdatePreferredSalientContentRectangle___block_invoke;
  v10[3] = &__block_descriptor_64_e33_v16__0___PBUIWallpaperObserver__8l;
  *&v10[4] = x;
  *&v10[5] = y;
  *&v10[6] = width;
  *&v10[7] = height;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdatePreferredSalientContentRectangle_ variant:variant block:v10];
}

- (void)posterComponent:(id)component didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)rectangle
{
  variant = [component variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __119__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0___PBUIWallpaperObserver__8l;
  rectangleCopy = rectangle;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle_ variant:variant block:v7];
}

- (void)posterComponent:(id)component didUpdateDeviceMotionEventsRequested:(BOOL)requested
{
  variant = [component variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateDeviceMotionEventsRequested___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0___PBUIWallpaperObserver__8l;
  requestedCopy = requested;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_posterDidUpdateWantsMotionEvents_ variant:variant block:v7];
}

- (void)posterComponent:(id)component didUpdateDeviceMotionMode:(unint64_t)mode
{
  variant = [component variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdateDeviceMotionMode___block_invoke;
  v7[3] = &__block_descriptor_40_e33_v16__0___PBUIWallpaperObserver__8l;
  v7[4] = mode;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_posterDidUpdateDeviceMotionMode_ variant:variant block:v7];
}

- (void)posterComponent:(id)component didUpdatePreferredDeviceMotionUpdateInterval:(double)interval
{
  variant = [component variant];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__PBUIPosterWallpaperRemoteViewController_posterComponent_didUpdatePreferredDeviceMotionUpdateInterval___block_invoke;
  v7[3] = &__block_descriptor_40_e33_v16__0___PBUIWallpaperObserver__8l;
  *&v7[4] = interval;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserverRespondingToSelector:sel_wallpaperDidUpdatePreferredDeviceMotionUpdateInterval_ variant:variant block:v7];
}

- (void)_legibilityUpdatedForVariants:(id)variants notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v49 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  if ([variantsCopy count])
  {
    if (!self->_legibilityEnvironmentBuilder)
    {
      v7 = objc_alloc_init(getPLKLegibilityEnvironmentBuilderClass());
      legibilityEnvironmentBuilder = self->_legibilityEnvironmentBuilder;
      self->_legibilityEnvironmentBuilder = v7;
    }

    if ([variantsCopy containsObject:&unk_282FD5C98])
    {
      v9 = [(PBUIPosterWallpaperRemoteViewController *)self legibilityEnvironmentContextForVariant:0];
    }

    else
    {
      v9 = 0;
    }

    if (([variantsCopy containsObject:&unk_282FD5CB0] & 1) != 0 || (-[PLKLegibilityEnvironmentBuilder variants](self->_legibilityEnvironmentBuilder, "variants"), v10 = objc_claimAutoreleasedReturnValue(), getPLKLegibilityEnvironmentVariantHomeScreen(), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, (v12 & 1) == 0))
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

    v34 = observersCopy;
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
          legibilitySettings = [v28 legibilitySettings];

          if (v21)
          {
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __89__PBUIPosterWallpaperRemoteViewController__legibilityUpdatedForVariants_notifyObservers___block_invoke_3;
            v38[3] = &unk_278363AD0;
            v39 = legibilitySettings;
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
        legibilitySettings2 = [v32 legibilitySettings];

        if (v21)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __89__PBUIPosterWallpaperRemoteViewController__legibilityUpdatedForVariants_notifyObservers___block_invoke_4;
          v35[3] = &unk_278363AD0;
          v36 = legibilitySettings2;
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

- (void)wallpaperConfigurationManager:(id)manager didChangeWallpaperConfigurationForVariants:(int64_t)variants
{
  variantsCopy = variants;
  v10 = *MEMORY[0x277D85DE8];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PBUIStringForWallpaperLocations(variantsCopy);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Legacy wallpaper changed for %@", &v8, 0xCu);
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController updateLegacyPoster];
}

- (BOOL)setWallpaperStyle:(int64_t)style forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  PBUIWallpaperStyleTransitionStateMake(style, style, v12, 0.0);
  LOBYTE(variant) = [(PBUIPosterWallpaperRemoteViewController *)self setWallpaperStyleTransitionState:v12 forPriority:priority forVariant:variant withAnimationFactory:factoryCopy];

  [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];
  return variant;
}

- (BOOL)setWallpaperStyleTransitionState:(id *)state forPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  if (!PBUIWallpaperVariantIsValid(variant))
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperStyleTransitionState:a2 forPriority:? forVariant:? withAnimationFactory:?];
  }

  if (!PBUIWallpaperStylePriorityIsValid(priority))
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperStyleTransitionState:a2 forPriority:? forVariant:? withAnimationFactory:?];
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController setWallpaperStyle:state->var1 forPriority:priority forVariant:variant];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];

  return 1;
}

- (BOOL)removeWallpaperStyleForPriority:(int64_t)priority forVariant:(int64_t)variant withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  if (!PBUIWallpaperVariantIsValid(variant))
  {
    [PBUIPosterWallpaperRemoteViewController removeWallpaperStyleForPriority:a2 forVariant:? withAnimationFactory:?];
  }

  if (!PBUIWallpaperStylePriorityIsValid(priority))
  {
    [PBUIPosterWallpaperRemoteViewController removeWallpaperStyleForPriority:a2 forVariant:? withAnimationFactory:?];
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController removeWallpaperStyleForPriority:priority forVariant:variant];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];

  return 1;
}

- (id)suspendWallpaperAnimationForReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  v6 = reasonCopy;
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

- (void)addObserver:(id)observer forVariant:(int64_t)variant
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _observerLock_observersForVariant:variant];
  [v7 addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeObserver:(id)observer forVariant:(int64_t)variant
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _observerLock_observersForVariant:variant];
  [v7 removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)setActiveVariant:(int64_t)variant withOutAnimationFactory:(id)factory inAnimationFactory:(id)animationFactory completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  animationFactoryCopy = animationFactory;
  completionCopy = completion;
  v13 = completionCopy;
  if (self->_activeVariant == variant)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperWillChange];
    v14 = PBUILogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PBUIStringForWallpaperVariant(variant);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "Setting wallpaper variant to: %{public}@", &v16, 0xCu);
    }

    self->_activeVariant = variant;
    [(PBUIPosterWallpaperViewController *)self->_viewController setActiveVariant:variant];
    [(PBUIPosterWallpaperRemoteViewController *)self _updateFallbackView];
    [(PBUIPosterWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:0];
    [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperDidChange];
  }
}

- (id)setHomescreenWallpaperScale:(double)scale withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _wallpaperScaleAssertionForVariant:1 scale:scale];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:factoryCopy];

  return v7;
}

- (id)setLockscreenWallpaperScale:(double)scale withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v7 = [(PBUIPosterWallpaperRemoteViewController *)self _wallpaperScaleAssertionForVariant:0 scale:scale];
  [(PBUIPosterWallpaperRemoteViewController *)self _updateWallpaperScaleWithAnimationFactory:factoryCopy];

  return v7;
}

- (id)createWallpaperFloatingViewForReason:(id)reason ignoreReplica:(BOOL)replica
{
  replicaCopy = replica;
  reasonCopy = reason;
  v7 = [PBUIPosterFloatingLayerReplica alloc];
  v8 = [(PBUIPosterFloatingLayerReplica *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(PBUIPosterFloatingLayerReplica *)v8 setFloatingLayerStandin:!replicaCopy];
  portalProviderForFloatingLayer = [(PBUIPosterWallpaperViewController *)self->_viewController portalProviderForFloatingLayer];
  [(PBUIPortalReplicaView *)v8 setProvider:portalProviderForFloatingLayer];

  [(PBUIPortalReplicaView *)v8 setReason:reasonCopy];

  return v8;
}

- (id)setWallpaperFloatingLayerContainerView:(id)view forReason:(id)reason withAnimationFactory:(id)factory
{
  viewCopy = view;
  reasonCopy = reason;
  factoryCopy = factory;
  BSDispatchQueueAssertMain();
  if (!reasonCopy)
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperFloatingLayerContainerView:a2 forReason:? withAnimationFactory:?];
  }

  if (!viewCopy)
  {
    [PBUIPosterWallpaperRemoteViewController setWallpaperFloatingLayerContainerView:a2 forReason:? withAnimationFactory:?];
  }

  v12 = [PBUIPosterFloatingLayerReplica alloc];
  [viewCopy bounds];
  v13 = [(PBUIPosterFloatingLayerReplica *)v12 initWithFrame:?];
  portalProviderForFloatingLayer = [(PBUIPosterWallpaperViewController *)self->_viewController portalProviderForFloatingLayer];
  [(PBUIPortalReplicaView *)v13 setProvider:portalProviderForFloatingLayer];

  [(PBUIPortalReplicaView *)v13 setReason:reasonCopy];
  [viewCopy addSubview:v13];
  v15 = [PBUIWallpaperFloatingLayerAssertion alloc];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __113__PBUIPosterWallpaperRemoteViewController_setWallpaperFloatingLayerContainerView_forReason_withAnimationFactory___block_invoke;
  v19[3] = &unk_278363AF8;
  v20 = v13;
  v16 = v13;
  v17 = [(PBUIWallpaperFloatingLayerAssertion *)v15 initWithContainerView:viewCopy forReason:reasonCopy invalidationBlock:v19];

  return v17;
}

- (uint64_t)updateWallpaperAnimationWithRotation:(_OWORD *)rotation
{
  v3 = *(self + 1000);
  v4 = rotation[1];
  v6[0] = *rotation;
  v6[1] = v4;
  return [v3 setRotation:v6];
}

- (void)setConfiguration:(id)configuration withAnimationSettings:(id)settings
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  v9 = configurationCopy;
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
  [(PBUIPosterWallpaperViewController *)self->_viewController updateConfiguration:v9 withAnimationSettings:settingsCopy];
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

- (void)setAssociatedPosterConfiguration:(id)configuration withAnimationSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  settingsCopy = settings;
  [(PBUIPosterWallpaperRemoteViewController *)self _fireObserversWallpaperWillChangeForVariant:1];
  [(PBUIPosterWallpaperViewController *)self->_viewController updateAssociatedPosterConfiguration:configurationCopy withAnimationSettings:settingsCopy];
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

- (void)noteWillAnimateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v26 = *MEMORY[0x277D85DE8];
  if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive())
  {
    view = [(PBUIPosterWallpaperRemoteViewController *)self view];
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    v22 = *MEMORY[0x277CBF2C0];
    v17 = v22;
    v23 = v16;
    v24 = *(MEMORY[0x277CBF2C0] + 32);
    v15 = v24;
    [view setTransform:&v22];

    view2 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    [view2 layoutIfNeeded];

    view3 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    v22 = v17;
    v23 = v16;
    v24 = v15;
    [(NSHashTable *)view3 setTransform:&v22];
  }

  else
  {
    view4 = [(PBUIPosterWallpaperRemoteViewController *)self view];
    [view4 layoutIfNeeded];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    view3 = self->_effectViews;
    v11 = [(NSHashTable *)view3 countByEnumeratingWithState:&v18 objects:v25 count:16];
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
            objc_enumerationMutation(view3);
          }

          [*(*(&v18 + 1) + 8 * v14++) rotateToInterfaceOrientation:orientation];
        }

        while (v12 != v14);
        v12 = [(NSHashTable *)view3 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v12);
    }
  }

  [(PBUIPosterWallpaperViewController *)self->_viewController rotateToInterfaceOrientation:orientation duration:duration];
}

- (id)requireWallpaperWithReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  v6 = reasonCopy;
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

- (void)triggerPosterTapEvent:(id)event
{
  viewController = self->_viewController;
  eventCopy = event;
  view = [(PBUIPosterWallpaperViewController *)viewController view];
  [eventCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  v11 = self->_viewController;

  [(PBUIPosterWallpaperViewController *)v11 noteUserTapOccurredWithLocation:v8, v10];
}

- (id)newFakeBlurViewForVariant:(int64_t)variant style:(int64_t)style transformOptions:(unint64_t)options
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperPresentingDelegate);
  v9 = [WeakRetained wallpaperPresenter:self requestsOrientationWithRefresh:1];

  selfCopy = self;
  v11 = selfCopy;
  v12 = selfCopy;
  if ((options & 0x10) != 0)
  {
    v12 = selfCopy->_portalImageProvider;
  }

  if ((options & 0x20) != 0)
  {
    v13 = v11->_activeVariantProvider;

    v12 = v13;
  }

  v14 = [[PBUIFakeBlurView alloc] initWithVariant:variant imageProvider:v12 fakeBlurRegistry:v11 wallpaperViewDelegate:0 transformOptions:options reachabilityCoordinator:v11->_reachabilityCoordinator];
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

- (void)setExternalDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(PBUIExternalDisplayConfiguration *)self->_externalDisplayConfiguration isEqual:?])
  {
    objc_storeStrong(&self->_externalDisplayConfiguration, configuration);
  }
}

- (BOOL)isHomeScreenWallpaperDimmed
{
  currentHomeVariantStyleState = [(PBUIPosterWallpaperRemoteViewController *)self currentHomeVariantStyleState];
  isHomeScreenDimmed = [currentHomeVariantStyleState isHomeScreenDimmed];

  return isHomeScreenDimmed;
}

- (void)setDeviceMotionUpdateInterval:(double)interval
{
  if (self->_deviceMotionUpdateInterval != interval)
  {
    [(PBUIPosterWallpaperViewController *)self->_viewController setDeviceMotionUpdateInterval:?];
  }
}

- (id)_observerLock_observersForVariant:(int64_t)variant
{
  if (variant == 1)
  {
    v4 = &OBJC_IVAR___PBUIPosterWallpaperRemoteViewController__observerLock_homeScreenObservers;
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!variant)
  {
    v4 = &OBJC_IVAR___PBUIPosterWallpaperRemoteViewController__observerLock_lockScreenObservers;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_fireObserverRespondingToSelector:(SEL)selector variant:(int64_t)variant block:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock(&self->_observerLock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(PBUIPosterWallpaperRemoteViewController *)self _observerLock_observersForVariant:variant];
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
      v16 = blockCopy;
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

- (id)legibilitySettingsForVariant:(int64_t)variant
{
  v3 = [(PBUIPosterWallpaperViewController *)self->_viewController legibilitySettingsForVariant:variant];
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
  succinctDescriptionBuilder = [(PBUIPosterWallpaperRemoteViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIPosterWallpaperRemoteViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(PBUIPosterWallpaperRemoteViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__PBUIPosterWallpaperRemoteViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783622E0;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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

- (void)_updateWallpaperScaleWithAnimationFactory:(id)factory
{
  factoryCopy = factory;
  [(PBUIPosterWallpaperRemoteViewController *)self _wallpaperScaleForVariant:[(PBUIPosterWallpaperRemoteViewController *)self activeVariant]];
  if (factoryCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__PBUIPosterWallpaperRemoteViewController__updateWallpaperScaleWithAnimationFactory___block_invoke;
    v8[3] = &unk_278362880;
    v8[4] = self;
    *&v8[5] = v5;
    [MEMORY[0x277CF0D38] animateWithFactory:factoryCopy actions:v8];
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

- (id)_wallpaperScaleAssertionForVariant:(int64_t)variant scale:(double)scale
{
  objc_initWeak(&location, self);
  v7 = [PBUIWallpaperScaleAssertion alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallpaper scale %f", *&scale];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PBUIPosterWallpaperRemoteViewController__wallpaperScaleAssertionForVariant_scale___block_invoke;
  v11[3] = &unk_2783629B0;
  objc_copyWeak(&v12, &location);
  v9 = [(PBUIWallpaperScaleAssertion *)v7 initWithVariant:variant scale:v8 forReason:v11 invalidationBlock:scale];

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