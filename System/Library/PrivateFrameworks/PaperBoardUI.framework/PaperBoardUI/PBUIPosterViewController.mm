@interface PBUIPosterViewController
- (BOOL)_homeScreenConfigurationRequiresPosterContent;
- (BOOL)_isSceneContentReady;
- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle;
- (BOOL)handlesWakeAnimation;
- (BOOL)hasRequestedDeviceMotionEvents;
- (BOOL)hidesDimmingLayer;
- (BOOL)salientContentRectangleUpdatesRequested;
- (BOOL)updateAssociatedPosterConfiguration:(id)a3;
- (BOOL)updateConfiguration:(id)a3;
- (BOOL)updateCurrentPosterWithUpdates:(id)a3 error:(id *)a4;
- (BOOL)updateHomeScene;
- (BOOL)userTapEventsRequested;
- (BOOL)wantsDefaultParallaxTreatment;
- (CGRect)preferredSalientContentRectangle;
- (CGRect)salientContentRectangle;
- (PBUIHomeVariantStyleState)currentHomeVariantStyleState;
- (PBUIPosterComponentDelegate)delegate;
- (PBUIPosterViewController)init;
- (PLKLegibilityEnvironmentContext)legibilityEnvironmentContext;
- (UIColor)averageColor;
- (_UILegibilitySettings)legibilitySettings;
- (__n128)rotation;
- (double)averageContrast;
- (double)averageContrastForVariant:(int64_t)a3;
- (double)averageSaturation;
- (double)contrastInRect:(CGRect)a3;
- (double)contrastInRect:(CGRect)a3 forVariant:(int64_t)a4;
- (double)lumaInRect:(CGRect)a3;
- (double)preferredDeviceMotionUpdateInterval;
- (double)saturationInRect:(CGRect)a3;
- (double)saturationInRect:(CGRect)a3 forVariant:(int64_t)a4;
- (float64_t)setRotation:(uint64_t)a3;
- (id)_activeViewController;
- (id)_legacyWallpaperConfigurationManager;
- (id)_replicaProviderForVariant:(int64_t)a3;
- (id)_viewControllerForVariant:(int64_t)a3;
- (id)acquireDuckHomeScreenWallpaperDimAssertionWithReason:(id)a3;
- (id)averageColorForVariant:(int64_t)a3;
- (id)averageColorInRect:(CGRect)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)legibilityEnvironmentContextForVariant:(int64_t)a3;
- (id)legibilitySettingsForVariant:(int64_t)a3;
- (id)posterComponentExternalDisplayConfiguration:(id)a3;
- (id)requireWallpaperRasterizationWithReason:(id)a3;
- (id)scenesForBacklightSession;
- (id)succinctDescription;
- (int64_t)activeStyleForVariant:(int64_t)a3;
- (uint64_t)updateMotionWithRotation:(_OWORD *)a3;
- (unint64_t)deviceMotionMode;
- (unint64_t)posterSignificantEventsCounter;
- (unint64_t)significantEventsCounterForPosterWithIdentifier:(id)a3;
- (void)_createHomeViewControllerIfNeeded;
- (void)_finalizeActiveVariantTransitionWithReason:(int64_t)a3;
- (void)_invalidateComponents;
- (void)_prepareActiveVariantTransition;
- (void)_updateActivePosterSceneMode;
- (void)_updateActiveVariantTransitionProgress:(double)a3;
- (void)_updateDebugHUD;
- (void)_updateLandscapeBlur;
- (void)_updateLegibilitySettings:(id)a3;
- (void)_updateLockViewControllerVisibility;
- (void)_updatePosterScenesForReasons:(int64_t)a3 updater:(id)a4 completion:(id)a5;
- (void)_updatePowerlogStatus;
- (void)_updateRasterization;
- (void)_userInterfaceStyleTraitDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)beginActiveVariantTransition;
- (void)dealloc;
- (void)didRotateToInterfaceOrientation:(int64_t)a3;
- (void)endActiveVariantTransition;
- (void)fetchWallpaperProminentColor:(id)a3;
- (void)finishUnlockWithAnimationParameters:(CGSize)a3;
- (void)invalidate;
- (void)posterComponent:(id)a3 didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateDeviceMotionEventsRequested:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateDeviceMotionMode:(unint64_t)a4;
- (void)posterComponent:(id)a3 didUpdateHideDimmingLayer:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateInExtendedRenderSession:(BOOL)a4;
- (void)posterComponent:(id)a3 didUpdateLegibilitySettings:(id)a4;
- (void)posterComponent:(id)a3 didUpdatePreferredDeviceMotionUpdateInterval:(double)a4;
- (void)posterComponent:(id)a3 didUpdatePreferredProminentColor:(id)a4;
- (void)posterComponent:(id)a3 didUpdatePreferredSalientContentRectangle:(CGRect)a4;
- (void)posterComponent:(id)a3 didUpdateSalientContentRectangleUpdatesRequested:(BOOL)a4;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)setActiveStyle:(int64_t)a3 forVariant:(int64_t)a4;
- (void)setActiveVariant:(int64_t)a3;
- (void)setActivelyRequired:(BOOL)a3;
- (void)setActivelyRequiredReasons:(id)a3;
- (void)setDeviceMotionEventGenerationActive:(BOOL)a3;
- (void)setUnlockProgress:(double)a3;
- (void)setWallpaperObscured:(BOOL)a3;
- (void)updateActiveVariantTransitionProgress:(double)a3;
- (void)updateLegacyPoster;
- (void)updatePoster:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willRotateToInterfaceOrientation:(int64_t)a3;
@end

@implementation PBUIPosterViewController

- (void)_updateLandscapeBlur
{
  if (!soft_PF_IS_PAD_DEVICE() || (soft_PUIDynamicRotationIsActive() & 1) == 0)
  {
    [(PBUIPosterVariantViewController *)self->_lockViewController setBlurEnabled:self->_landscapeBlurEnabled];
    if (![(PBUIPosterViewController *)self homeScreenReflectsLockScreen])
    {
      homeViewController = self->_homeViewController;
      landscapeBlurEnabled = self->_landscapeBlurEnabled;

      [(PBUIPosterVariantViewController *)homeViewController setBlurEnabled:landscapeBlurEnabled];
    }
  }
}

- (void)_updateDebugHUD
{
  if (MEMORY[0x223D62950]("[PBUIPosterViewController _updateDebugHUD]", a2))
  {
    activeVariant = self->_activeVariant;
    v3 = [(FBScene *)self->_scene settings];
    v4 = [v3 activityMode];

    v5 = [(FBScene *)self->_homeScene settings];
    v6 = [v5 activityMode];

    homeScene = self->_homeScene;
    if (homeScene)
    {
      v8 = self->_scene == homeScene;
    }

    else
    {
      v8 = 1;
    }

    v9 = +[PBUIPosterHUDController sharedInstance];
    activeStyle = self->_activeStyle;
    v11 = [(PBUIPosterViewController *)self activelyRequired];
    v12 = [(PBUIPosterViewController *)self activelyRequiredReasons];
    v13 = [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion reasons];
    v14 = [v13 bs_array];
    [v9 updateWithLockSceneActivityMode:v4 homeSceneActivityMode:v6 activeVariant:activeVariant wallpaperStyle:activeStyle homeAndLockAreSame:v8 isActivelyRequired:v11 activelyRequiredReasons:v12 assertionReasons:v14];

    v16 = +[PBUIPosterHUDController sharedInstance];
    [v16 showHUDIfEnabled];
  }
}

- (BOOL)wantsDefaultParallaxTreatment
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(FBScene *)self->_scene settings];
  v4 = [v3 pr_effectiveMotionEffectsMode] == 1;

  return v4;
}

- (BOOL)_homeScreenConfigurationRequiresPosterContent
{
  v3 = [(FBScene *)self->_scene settings];
  v4 = [v3 pr_posterConfiguredProperties];
  v5 = [v4 homeScreenConfiguration];

  if (v5 || ![(FBScene *)self->_scene pui_isLegacyProvider])
  {
    v8 = [v5 selectedAppearanceType];
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_14;
        }

        v9 = [v5 solidColorAppearance];
        v10 = [v9 effectiveColor];

        if (!v10)
        {
          goto LABEL_14;
        }

LABEL_16:
        v7 = 0;
        goto LABEL_17;
      }

      v11 = [v5 lockPosterAppearance];
      goto LABEL_13;
    }

    if (v8 == 2)
    {
      v13 = [v5 gradientAppearance];

      if (v13)
      {
        goto LABEL_16;
      }
    }

    else if (v8 == 3)
    {
      v11 = [v5 homePosterAppearance];
LABEL_13:
      v12 = v11;
      [v11 isLegibilityBlurEnabled];
    }

LABEL_14:
    v7 = 1;
    goto LABEL_17;
  }

  v6 = [(PBUIPosterViewController *)self _legacyWallpaperConfigurationManager];
  v7 = [v6 variantsShareWallpaperConfiguration];

LABEL_17:
  return v7;
}

- (void)_updateLockViewControllerVisibility
{
  v3 = BSFloatLessThanFloat();
  activeVariant = self->_activeVariant;
  v5 = [(PBUIPosterViewController *)self _homeScreenConfigurationRequiresPosterContent];
  if (activeVariant != 1)
  {
    v3 = 1;
  }

  v6 = [(PBUIPosterLockViewController *)self->_lockViewController view];
  [v6 setHidden:((v3 | v5) & 1) == 0];
}

- (void)_updateRasterization
{
  v3 = [(BSCompoundAssertion *)self->_shouldRasterizeWallpaperAssertion isActive];
  v9 = [(PBUIPosterViewController *)self viewIfLoaded];
  v4 = [v9 layer];
  [v4 setShouldRasterize:v3];
  if (self->_activeVariant != 1 || (v5 = 1.0, ![(PBUIPosterHomeViewController *)self->_homeViewController isBlurred]))
  {
    v6 = [v9 window];
    v7 = [v6 screen];
    [v7 scale];
    if (v8 == 0.0)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = v8;
    }
  }

  [v4 setRasterizationScale:v5];
}

- (PBUIPosterComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle
{
  v2 = [(PBUIPosterViewController *)self _activeViewController];
  v3 = [v2 adaptiveTimeHonorsPreferredSalientContentRectangle];

  return v3;
}

- (id)_activeViewController
{
  p_homeViewController = &self->_homeViewController;
  if ([(PBUIPosterHomeViewController *)self->_homeViewController reflectsLock])
  {
    goto LABEL_4;
  }

  activeVariant = self->_activeVariant;
  if (activeVariant == 1)
  {
LABEL_5:
    v5 = *p_homeViewController;
    goto LABEL_6;
  }

  if (!activeVariant)
  {
LABEL_4:
    p_homeViewController = &self->_lockViewController;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (CGRect)preferredSalientContentRectangle
{
  v2 = [(PBUIPosterViewController *)self _activeViewController];
  [v2 preferredSalientContentRectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PBUIHomeVariantStyleState)currentHomeVariantStyleState
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_homeViewController)
  {
    v2 = [(PBUIPosterHomeViewController *)self->_homeViewController currentHomeVariantStyleState];
  }

  else
  {
    configuration = self->_configuration;
    if (configuration)
    {
      v8 = 0;
      v4 = [(PRSPosterConfiguration *)configuration pr_loadHomeScreenConfigurationWithError:&v8];
      v5 = v8;
      if (v5)
      {
        v6 = PBUILogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v10 = v5;
          _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Error loading home screen configuration: %{public}@", buf, 0xCu);
        }

        v2 = 0;
      }

      else
      {
        v2 = PBUIHomeVariantStyleStateFromPRPosterHomeScreenConfiguration(v4);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (void)beginActiveVariantTransition
{
  if (!self->_transitioningActiveVariant)
  {
    [(PBUIPosterViewController *)self _prepareActiveVariantTransition];
  }

  self->_transitioningActiveVariant = 1;
}

- (void)_prepareActiveVariantTransition
{
  [(PBUIPosterViewController *)self _updateLandscapeBlur];
  if (![(PBUIPosterViewController *)self homeScreenReflectsLockScreen]|| [(PBUIPosterHomeViewController *)self->_homeViewController isBlurred]|| [(PBUIPosterHomeViewController *)self->_homeViewController isDimmed])
  {
    if (self->_activeVariant == 1)
    {
      v3 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
      v4 = 1.0;
      [v3 setAlpha:1.0];

      v5 = 1048;
    }

    else
    {
      v6 = [(PBUIPosterLockViewController *)self->_lockViewController view];
      [v6 setAlpha:1.0];

      v5 = 1088;
      v4 = 0.0;
    }

    v7 = [*(&self->super.super.super.isa + v5) view];
    [v7 setAlpha:v4];

    v8 = [(PBUIPosterLockViewController *)self->_lockViewController view];
    [v8 setHidden:0];

    v9 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
    [v9 setHidden:0];
  }
}

- (void)endActiveVariantTransition
{
  if (self->_transitioningActiveVariant)
  {
    self->_transitioningActiveVariant = 0;
    [(PBUIPosterViewController *)self _finalizeActiveVariantTransitionWithReason:2];
  }
}

- (BOOL)handlesWakeAnimation
{
  v2 = [(FBScene *)self->_scene clientSettings];
  v3 = [v2 pr_handlesWakeAnimation];

  return v3;
}

void __32__PBUIPosterViewController_init__block_invoke_8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 isActive];
    v6 = PBUILogRuntime();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [WeakRetained[140] reasons];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Active Poster assertion noted that poster should be running for reasons: %@", &v9, 0xCu);
      }
    }

    else if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Active Poster assertions are gone; poster should not be active.", &v9, 2u);
    }

    [WeakRetained _updateActivePosterSceneMode];
    [WeakRetained _updatePowerlogStatus];
  }
}

- (void)_updateActivePosterSceneMode
{
  if (self->_scene || self->_homeScene)
  {
    [(PBUIPosterViewController *)self activeVariant];
    v3 = [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion isActive];
    activeStyle = self->_activeStyle;
    v5 = self->_scene;
    if (PBUIWallpaperStyleIsHidden(activeStyle) | v3 ^ 1)
    {
      v6 = -50;
    }

    else
    {
      v6 = -10;
    }

    v7 = [(FBScene *)v5 settings];

    v8 = [v7 activityMode];
    if (v6 == v8)
    {
      [(PBUIPosterViewController *)self _updatePowerlogStatus];

      [(PBUIPosterViewController *)self _updateDebugHUD];
    }

    else
    {

      [(PBUIPosterViewController *)self _updatePosterScenesForReasons:2 completion:0];
    }
  }
}

- (id)scenesForBacklightSession
{
  if (self->_scene)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PBUIPosterViewController)init
{
  v31[1] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = PBUIPosterViewController;
  v2 = [(PBUIPosterViewController *)&v30 init];
  v3 = v2;
  if (v2)
  {
    v2->_activelyRequired = 0;
    v2->_activeStyle = 0;
    v2->_activeVariant = -1;
    v2->_activeOrientation = 1;
    v2->_deviceOrientation = 0;
    v4 = objc_alloc_init(PBUIDefaultSessionReconnectPolicy);
    reconnectPolicy = v3->_reconnectPolicy;
    v3->_reconnectPolicy = v4;

    v3->_unlockProgress = 0.0;
    v3->_deviceRoll = 0.0;
    v3->_devicePitch = 0.0;
    v3->_deviceYaw = 0.0;
    v3->_landscapeBlurEnabled = 0;
    v3->_lockWallpaperStyle = 0;
    v6 = *(MEMORY[0x277CBF398] + 16);
    v3->_salientContentRectangle.origin = *MEMORY[0x277CBF398];
    v3->_salientContentRectangle.size = v6;
    v3->_deviceMotionUpdateInterval = 0.01667;
    v3->_homeScreenUpdateLock._os_unfair_lock_opaque = 0;
    v7 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:0 portalProvider:&__block_literal_global_22 snapshotProvider:&__block_literal_global_5_0];
    lockReplicaProvider = v3->_lockReplicaProvider;
    v3->_lockReplicaProvider = v7;

    v9 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:0 portalProvider:&__block_literal_global_8_0 snapshotProvider:&__block_literal_global_11_0];
    homeReplicaProvider = v3->_homeReplicaProvider;
    v3->_homeReplicaProvider = v9;

    v11 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:0 portalProvider:&__block_literal_global_13 snapshotProvider:0];
    lockFloatingLayerReplicaProvider = v3->_lockFloatingLayerReplicaProvider;
    v3->_lockFloatingLayerReplicaProvider = v11;

    v13 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:0 portalProvider:&__block_literal_global_16_0 snapshotProvider:&__block_literal_global_19_0];
    activeVariantReplicaProvider = v3->_activeVariantReplicaProvider;
    v3->_activeVariantReplicaProvider = v13;

    objc_initWeak(&location, v3);
    v15 = MEMORY[0x277CF0BD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __32__PBUIPosterViewController_init__block_invoke_8;
    v27 = &unk_278361E80;
    objc_copyWeak(&v28, &location);
    v16 = [v15 assertionWithIdentifier:@"_activePosterSceneDefaultModeAssertion" stateDidChangeHandler:&v24];
    activePosterSceneDefaultModeAssertion = v3->_activePosterSceneDefaultModeAssertion;
    v3->_activePosterSceneDefaultModeAssertion = v16;

    v18 = v3->_activePosterSceneDefaultModeAssertion;
    v19 = PBUILogRuntime();
    [(BSCompoundAssertion *)v18 setLog:v19, v24, v25, v26, v27];

    v20 = objc_opt_self();
    v31[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v22 = [(PBUIPosterViewController *)v3 registerForTraitChanges:v21 withAction:sel__userInterfaceStyleTraitDidChange_previousTraitCollection_];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(PBUIPosterViewController *)self _invalidateComponents];
  v3.receiver = self;
  v3.super_class = PBUIPosterViewController;
  [(PBUIPosterViewController *)&v3 dealloc];
}

- (float64_t)setRotation:(uint64_t)a3
{
  v3 = a1[80];
  v4 = a1[81];
  v5 = *(a3 + 16);
  v6 = vandq_s8(vceqq_f64(v3, *a3), vceqq_f64(v4, v5));
  if ((vandq_s8(v6, vdupq_laneq_s64(v6, 1)).u64[0] & 0x8000000000000000) == 0)
  {
    v3 = vandq_s8(vceqq_f64(v3, vnegq_f64(*a3)), vceqq_f64(v4, vnegq_f64(v5)));
    *&v3.f64[0] = vandq_s8(v3, vdupq_laneq_s64(v3, 1)).u64[0];
    if ((*&v3.f64[0] & 0x8000000000000000) == 0)
    {
      v8 = *(a3 + 16);
      a1[80] = *a3;
      a1[81] = v8;
      v9 = *(a3 + 16);
      v25 = v9;
      v26 = *a3;
      _D9 = *(a3 + 8);
      v11 = *(a3 + 24);
      v12 = vmuld_lane_f64(v26.f64[1], v26, 1);
      *&v9 = vmuld_lane_f64(*&v9, *a3, 1);
      v13 = atan2(*&v9 + *(&v9 + 1) * v26.f64[0] + *&v9 + *(&v9 + 1) * v26.f64[0], (v12 + v26.f64[0] * v26.f64[0]) * -2.0 + 1.0);
      _V1.D[1] = *(&v25 + 1);
      __asm { FMLA            D0, D9, V1.D[1] }

      v20 = _D0 + _D0;
      if (v20 > 1.0)
      {
        v20 = 1.0;
      }

      if (v20 < -1.0)
      {
        v20 = -1.0;
      }

      v21 = asin(v20);
      v22 = vmuld_lane_f64(v26.f64[0], v26, 1);
      *&v22 = v22 + v11 * *&v25 + v22 + v11 * *&v25;
      v23 = (v12 + *&v25 * *&v25) * -2.0 + 1.0;
      v3.f64[0] = atan2f(*&v22, v23);
      a1[76].f64[0] = v13;
      a1[76].f64[1] = v21;
      a1[75].f64[1] = v3.f64[0];
    }
  }

  return v3.f64[0];
}

- (uint64_t)updateMotionWithRotation:(_OWORD *)a3
{
  v3 = *(a1 + 1152);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [v3 updateMotionWithRotation:v6];
}

- (void)setActivelyRequired:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_activelyRequired != a3)
  {
    v3 = a3;
    v5 = PBUILogRuntime();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Actively required was updated: %{BOOL}u", v6, 8u);
    }

    self->_activelyRequired = v3;
    [(PBUIPosterViewController *)self _updatePowerlogStatus];
    [(PBUIPosterViewController *)self _updateDebugHUD];
  }
}

- (void)setActivelyRequiredReasons:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSArray *)self->_activelyRequiredReasons isEqualToArray:v4])
  {
    v5 = PBUILogRuntime();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Actively required reasons were updated: %@", &v8, 0xCu);
    }

    v6 = [v4 copy];
    activelyRequiredReasons = self->_activelyRequiredReasons;
    self->_activelyRequiredReasons = v6;

    [(PBUIPosterViewController *)self _updatePowerlogStatus];
    [(PBUIPosterViewController *)self _updateDebugHUD];
  }
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)a3
{
  if (self->_deviceMotionEventGenerationActive != a3)
  {
    self->_deviceMotionEventGenerationActive = a3;
    [(PRRenderingServiceSceneComponent *)self->_renderingServiceSceneComponent setDeviceMotionEventGenerationActive:?];
  }
}

- (BOOL)updateConfiguration:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = a3;
  configuration = self->_configuration;
  if (!configuration)
  {
    objc_storeStrong(&self->_configuration, a3);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v41) = 0;
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __48__PBUIPosterViewController_updateConfiguration___block_invoke;
    v34[3] = &unk_2783640C8;
    objc_copyWeak(&v38, &location);
    v35 = 0;
    v36 = v30;
    v37 = buf;
    v18 = MEMORY[0x223D62EE0](v34);
    v18[2]();
    if (self->_scene)
    {
      goto LABEL_12;
    }

    v19 = PBUILogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_21E67D000, v19, OS_LOG_TYPE_DEFAULT, "Failed to create new poster scene. Trying again.", v33, 2u);
    }

    *(*&buf[8] + 24) = 1;
    (v18[2])(v18);
    if (self->_scene)
    {
LABEL_12:
      [(PRRenderingServiceSceneComponent *)self->_renderingServiceSceneComponent invalidate];
      v20 = [objc_alloc(getPRRenderingServiceSceneComponentClass()) initWithScene:self->_scene];
      renderingServiceSceneComponent = self->_renderingServiceSceneComponent;
      self->_renderingServiceSceneComponent = v20;
    }

    v22 = [(PBUIPosterVariantViewController *)[PBUIPosterLockViewController alloc] initWithScene:self->_scene counterpart:0];
    lockViewController = self->_lockViewController;
    self->_lockViewController = v22;

    [(PBUIPosterVariantViewController *)self->_lockViewController setDelegate:self];
    [(PBUIPosterVariantViewController *)self->_lockViewController setActiveStyle:self->_lockWallpaperStyle];
    [(PBUIPosterViewController *)self bs_addChildViewController:self->_lockViewController];
    [(PBUIPosterViewController *)self _createHomeViewControllerIfNeeded];
    [(PBUIPosterViewController *)self _updateLockViewControllerVisibility];
    [(PBUIDynamicProviderWrapper *)self->_lockReplicaProvider setRootObject:self->_lockViewController];
    [(PBUIDynamicProviderWrapper *)self->_lockFloatingLayerReplicaProvider setRootObject:self->_lockViewController];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
    goto LABEL_20;
  }

  v6 = [(PRSPosterConfiguration *)configuration _path];
  v7 = [v30 _path];
  v8 = [v6 serverIdentity];
  v9 = [v7 serverIdentity];
  if (v6)
  {
    [getPRPosterPathModelObjectCacheClass() invalidateModelObjectCacheForPath:v6];
  }

  v10 = [v8 posterUUID];
  v11 = [v9 posterUUID];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    objc_storeStrong(&self->_configuration, a3);
    [getPRUISPosterWorkspaceClass() noteWorkspaceUpdateForScene:self->_scene poster:v30 userInfo:&unk_282FD5AB8];
    v13 = [v9 version];
    v14 = v13 == [v8 version];
    v15 = PBUILogCommon();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = [(FBScene *)self->_scene pui_shortDescription];
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "Refreshing lock poster %{public}@.", buf, 0xCu);
      }
    }

    else if (v16)
    {
      v26 = [(FBScene *)self->_scene pui_shortDescription];
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = [v8 version];
      *&buf[22] = 2048;
      v41 = [v9 version];
      _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "Updating lock poster %{public}@ from version %llu to %llu.", buf, 0x20u);
    }

    scene = self->_scene;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __48__PBUIPosterViewController_updateConfiguration___block_invoke_51;
    v31[3] = &unk_2783640F0;
    v31[4] = self;
    v32 = v7;
    v28 = v7;
    [(FBScene *)scene pb_update:v31];

LABEL_20:
    [(PBUIPosterViewController *)self _updateForActiveVariant:1];
    v25 = 1;
    goto LABEL_21;
  }

  v24 = PBUILogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v24, OS_LOG_TYPE_DEFAULT, "Cannot update to proposed poster configuration.", buf, 2u);
  }

  v25 = 0;
LABEL_21:

  return v25;
}

void __48__PBUIPosterViewController_updateConfiguration___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D0AAC8];
    v4 = getPUISceneRoleRendering();
    v5 = [WeakRetained[125] _path];
    v6 = [v3 pr_createPosterSceneWithRole:v4 path:v5];

    [v6 setDelegate:WeakRetained];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__PBUIPosterViewController_updateConfiguration___block_invoke_2;
    v15[3] = &unk_278362C38;
    v15[4] = WeakRetained;
    [v6 pb_update:v15];
    v7 = WeakRetained[129];
    if (v7)
    {
      v8 = v7;
      [getPRUISPosterWorkspaceClass() noteWorkspaceInstanceTeardownForScene:v8 poster:*(a1 + 32) userInfo:&unk_282FD5A68];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__PBUIPosterViewController_updateConfiguration___block_invoke_3;
      v13[3] = &unk_278361E18;
      v14 = v8;
      v9 = v8;
      [v9 pui_invalidateWithCompletion:v13];
    }

    objc_storeStrong(WeakRetained + 129, v6);
    if (v6)
    {
      v10 = PBUILogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 pui_shortDescription];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEFAULT, "Created new lock poster scene: %@", buf, 0xCu);
      }

      [getPRUISPosterWorkspaceClass() noteWorkspaceInstanceSetupForScene:v6 poster:*(a1 + 40) userInfo:&unk_282FD5A90];
    }

    else if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v12 = PBUILogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create new poster scene again.", buf, 2u);
      }
    }
  }
}

void __48__PBUIPosterViewController_updateConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x277D0AA90] mainConfiguration];
  v4 = 1;
  [v7 setForeground:1];
  [v3 bounds];
  [v7 setFrame:?];
  v5 = *(*(a1 + 32) + 1176);
  if (soft_PF_IS_PAD_DEVICE())
  {
    if (soft_PUIDynamicRotationIsActive())
    {
      v4 = *(*(a1 + 32) + 1184);
    }

    else
    {
      v4 = 1;
    }
  }

  [v7 setInterfaceOrientation:v5];
  [v7 pui_setDeviceOrientation:v4];
  [v7 setDisplayConfiguration:v3];
  v6 = [*(a1 + 32) traitCollection];
  [v7 setUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];

  [v7 setActivityMode:10];
  [v7 pb_setActiveVariant:0];
}

void __48__PBUIPosterViewController_updateConfiguration___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) pui_shortDescription];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "invalidated poster scene: %@", &v4, 0xCu);
  }
}

void __48__PBUIPosterViewController_updateConfiguration___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [v6 pr_posterConfiguredProperties];
  [*(*(a1 + 32) + 1032) pr_updateWithPath:*(a1 + 40) inSettings:v6];
  v8 = [v6 pr_posterConfiguredProperties];

  v9 = [v7 homeScreenConfiguration];
  v10 = [v8 homeScreenConfiguration];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v12 = PBUILogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(a1 + 32) + 1032) pui_shortDescription];
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEFAULT, "Home appearance changed for %{public}@.", &v14, 0xCu);
    }

    [v5 pb_setHomeAppearanceChanged:1];
    [*(a1 + 32) _updateLockViewControllerVisibility];
  }
}

- (BOOL)updateAssociatedPosterConfiguration:(id)a3
{
  v4 = a3;
  if (self->_associatedConfiguration)
  {
    PRPosterPathModelObjectCacheClass = getPRPosterPathModelObjectCacheClass();
    v6 = [(PRSPosterConfiguration *)self->_associatedConfiguration _path];
    [PRPosterPathModelObjectCacheClass invalidateModelObjectCacheForPath:v6];
  }

  associatedConfiguration = self->_associatedConfiguration;
  self->_associatedConfiguration = v4;

  return [(PBUIPosterViewController *)self updateHomeScene];
}

- (BOOL)updateHomeScene
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = [(FBScene *)self->_homeScene settings];
  v4 = [v3 pui_posterContents];

  v77 = [(PRSPosterConfiguration *)self->_configuration pr_loadHomeScreenConfigurationWithError:0];
  if ([v77 selectedAppearanceType] == 3)
  {
    v5 = [(PRSPosterConfiguration *)self->_associatedConfiguration _path];
    if (v5)
    {
      v6 = v5;
      v7 = v4 != 0;
      v8 = 1;
      goto LABEL_11;
    }
  }

  if ([(FBScene *)self->_scene pui_isLegacyProvider])
  {
    v9 = [(PBUIPosterViewController *)self _legacyWallpaperConfigurationManager];
    if ([v9 variantsShareWallpaperConfiguration])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(PRSPosterConfiguration *)self->_configuration _path];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 != 0;
  v8 = v6 != 0;
  if (v4 | v6)
  {
LABEL_11:
    v10 = v4;
    v11 = [v4 serverIdentity];
    v12 = v6;
    v13 = [v6 serverIdentity];
    v14 = v8;
    v76 = v11;
    if (!v8 || ([v11 posterUUID], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "posterUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, !v17))
    {
      v4 = v10;
      if (self->_homeScene)
      {
        PRUISPosterWorkspaceClass = getPRUISPosterWorkspaceClass();
        v37 = PRUISPosterWorkspaceClass;
        homeScene = self->_homeScene;
        if (v7)
        {
          v39 = [objc_alloc(getPRSPosterConfigurationClass()) _initWithPath:v10];
          [v37 noteWorkspaceInstanceTeardownForScene:homeScene poster:v39 userInfo:&unk_282FD5B08];
        }

        else
        {
          [PRUISPosterWorkspaceClass noteWorkspaceInstanceTeardownForScene:self->_homeScene poster:0 userInfo:&unk_282FD5B08];
        }
      }

      goto LABEL_34;
    }

    v75 = v13;
    v18 = [v13 version];
    v19 = [v11 version];
    v4 = v10;
    v20 = [v10 contentsURL];
    v21 = [v12 contentsURL];
    v22 = [v20 isEqual:v21];

    if (v18 == v19)
    {
      v13 = v75;
      if ((v22 & 1) == 0)
      {
        v23 = PBUILogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(PBUIPosterViewController *)v23 updateHomeScene:v24];
        }
      }

      v31 = PBUILogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(FBScene *)self->_scene pui_shortDescription];
        *buf = 138543362;
        v84 = v32;
        v33 = "Refreshing home poster %{public}@.";
        v34 = v31;
        v35 = 12;
LABEL_31:
        _os_log_impl(&dword_21E67D000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }

    else
    {
      v13 = v75;
      if (v22)
      {
        v41 = PBUILogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [(PBUIPosterViewController *)v41 updateHomeScene:v42];
        }
      }

      v31 = PBUILogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(FBScene *)self->_scene pui_shortDescription];
        *buf = 138543874;
        v84 = v32;
        v85 = 2048;
        v86 = [v76 version];
        v87 = 2048;
        v88 = [v75 version];
        v33 = "Updating home poster %{public}@ from version %llu to %llu.";
        v34 = v31;
        v35 = 32;
        goto LABEL_31;
      }
    }

    if (self->_homeScene)
    {
      v49 = getPRUISPosterWorkspaceClass();
      v50 = self->_homeScene;
      v51 = [objc_alloc(getPRSPosterConfigurationClass()) _initWithPath:v12];
      [v49 noteWorkspaceUpdateForScene:v50 poster:v51 userInfo:&unk_282FD5AE0];

      v52 = self->_homeScene;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __43__PBUIPosterViewController_updateHomeScene__block_invoke;
      v81[3] = &unk_2783640F0;
      v81[4] = self;
      v82 = v12;
      [(FBScene *)v52 pb_update:v81];

LABEL_42:
      v40 = 1;
      goto LABEL_43;
    }

LABEL_34:
    [(FBScene *)self->_homeScene pui_invalidateWithCompletion:0];
    v53 = self->_homeScene;
    self->_homeScene = 0;

    [(PBUIPosterVariantViewController *)self->_homeViewController invalidate];
    [(PBUIPosterViewController *)self bs_removeChildViewController:self->_homeViewController];
    homeViewController = self->_homeViewController;
    self->_homeViewController = 0;

    [(PBUIPosterVariantViewController *)self->_lockViewController setCounterpart:0];
    if (v14)
    {
      v55 = MEMORY[0x277D0AAC8];
      v56 = getPUISceneRoleRendering();
      v57 = [v55 pr_createPosterSceneWithRole:v56 path:v12];
      v58 = self->_homeScene;
      self->_homeScene = v57;

      [(FBScene *)self->_homeScene setDelegate:self];
      v59 = PBUILogCommon();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [(FBScene *)self->_homeScene pui_shortDescription];
        *buf = 138412290;
        v84 = v60;
        _os_log_impl(&dword_21E67D000, v59, OS_LOG_TYPE_DEFAULT, "Created new home poster scene: %@", buf, 0xCu);
      }

      v61 = getPRUISPosterWorkspaceClass();
      v62 = self->_homeScene;
      v63 = [objc_alloc(getPRSPosterConfigurationClass()) _initWithPath:v12];
      [v61 noteWorkspaceInstanceSetupForScene:v62 poster:v63 userInfo:&unk_282FD5B30];

      v64 = [PBUIPosterVariantPathProvider alloc];
      v65 = [v12 instanceURL];
      v66 = [(PBUIPosterVariantPathProvider *)v64 initWithInstanceURL:v65 variant:1];

      v67 = [PBUIURLBackedSnapshotSource alloc];
      v68 = +[(PBUIPosterVariantViewController *)PBUIPosterHomeViewController];
      v69 = [(PBUIURLBackedSnapshotSource *)v67 initWithPathProvider:v66 format:v68];

      v70 = [(PBUIURLBackedSnapshotSource *)v69 posterPreferredProminentColor];
      if (v70 || ([(PRSPosterConfiguration *)self->_configuration pr_suggestedTintColor], (v70 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v71 = self->_homeScene;
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __43__PBUIPosterViewController_updateHomeScene__block_invoke_70;
        v79[3] = &unk_278362CC8;
        v72 = v70;
        v80 = v72;
        [(FBScene *)v71 configureParameters:v79];
      }

      else
      {
        v72 = 0;
      }

      v73 = self->_homeScene;
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __43__PBUIPosterViewController_updateHomeScene__block_invoke_3;
      v78[3] = &unk_278362C38;
      v78[4] = self;
      [(FBScene *)v73 pb_update:v78];
    }

    [(PBUIPosterViewController *)self _updateLockViewControllerVisibility];
    [(PBUIPosterViewController *)self _createHomeViewControllerIfNeeded];
    goto LABEL_42;
  }

  v40 = 0;
LABEL_43:

  return v40;
}

void __43__PBUIPosterViewController_updateHomeScene__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 1040);
  v6 = a3;
  [v5 pr_updateWithPath:v4 inSettings:a2];
  [v6 pb_setHomeAppearanceChanged:1];
}

void __43__PBUIPosterViewController_updateHomeScene__block_invoke_70(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__PBUIPosterViewController_updateHomeScene__block_invoke_2;
  v3[3] = &unk_278364118;
  v4 = *(a1 + 32);
  [a2 updateClientSettingsWithBlock:v3];
}

void __43__PBUIPosterViewController_updateHomeScene__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 BSColor];
  [v3 pr_setPreferredProminentColor:v4];
}

void __43__PBUIPosterViewController_updateHomeScene__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x277D0AA90] mainConfiguration];
  v4 = 1;
  [v6 setForeground:1];
  [v3 bounds];
  [v6 setFrame:?];
  [v6 setInterfaceOrientation:*(*(a1 + 32) + 1176)];
  if (soft_PF_IS_PAD_DEVICE())
  {
    if (soft_PUIDynamicRotationIsActive())
    {
      v4 = *(*(a1 + 32) + 1184);
    }

    else
    {
      v4 = 1;
    }
  }

  [v6 pui_setDeviceOrientation:v4];
  [v6 setDisplayConfiguration:v3];
  v5 = [*(a1 + 32) traitCollection];
  [v6 setUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  [v6 setActivityMode:10];
  [v6 pb_setActiveVariant:1];
}

- (void)updatePoster:(id)a3
{
  (*(a3 + 2))(a3, self);

  [(PBUIPosterViewController *)self _updateForActiveVariant:0];
}

- (void)updateActiveVariantTransitionProgress:(double)a3
{
  if (self->_transitioningActiveVariant)
  {
    [(PBUIPosterViewController *)self _updateActiveVariantTransitionProgress:a3];
  }
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3
{
  [(PBUIPosterHomeViewController *)self->_homeViewController noteWillRotateToInterfaceOrientation:?];
  [(PBUIPosterVariantViewController *)self->_lockViewController noteWillRotateToInterfaceOrientation:a3];
  deviceOrientation = self->_deviceOrientation;
  if (soft_PF_IS_PAD_DEVICE())
  {
    if (soft_PUIDynamicRotationIsActive())
    {
      v6 = a3;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  self->_deviceOrientation = v6;
  activePosterSceneDefaultModeAssertion = self->_activePosterSceneDefaultModeAssertion;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"interface orientation change from %lu to %lu", deviceOrientation, a3];
  v9 = [(BSCompoundAssertion *)activePosterSceneDefaultModeAssertion acquireForReason:v8];

  if (soft_PF_IS_PAD_DEVICE())
  {
    if (soft_PUIDynamicRotationIsActive())
    {
      v10 = 64;
    }

    else
    {
      v10 = 32;
    }
  }

  else
  {
    v10 = 32;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__PBUIPosterViewController_willRotateToInterfaceOrientation___block_invoke;
  v15[3] = &__block_descriptor_40_e75_v32__0__FBScene_8__FBSMutableSceneSettings_16__FBSSceneTransitionContext_24l;
  v15[4] = v6;
  [(PBUIPosterViewController *)self _updatePosterScenesForReasons:v10 updater:v15 completion:0];
  v11 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PBUIPosterViewController_willRotateToInterfaceOrientation___block_invoke_2;
  block[3] = &unk_278361E18;
  v14 = v9;
  v12 = v9;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
}

- (void)didRotateToInterfaceOrientation:(int64_t)a3
{
  [(PBUIPosterVariantViewController *)self->_homeViewController noteDidRotateToInterfaceOrientation:?];
  lockViewController = self->_lockViewController;

  [(PBUIPosterVariantViewController *)lockViewController noteDidRotateToInterfaceOrientation:a3];
}

- (void)finishUnlockWithAnimationParameters:(CGSize)a3
{
  scene = self->_scene;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__PBUIPosterViewController_finishUnlockWithAnimationParameters___block_invoke;
  v4[3] = &unk_278364160;
  v5 = a3;
  v4[4] = self;
  [(FBScene *)scene pb_update:v4];
}

uint64_t __64__PBUIPosterViewController_finishUnlockWithAnimationParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    return [a3 pr_setFinishUnlockParameters:{*(a1 + 40), *(a1 + 48)}];
  }

  *(*(a1 + 32) + 1200) = 0x3FF0000000000000;
  return [a2 pr_setUnlockProgress:1.0];
}

- (PLKLegibilityEnvironmentContext)legibilityEnvironmentContext
{
  v2 = [(PBUIPosterViewController *)self _viewControllerForVariant:[(PBUIPosterViewController *)self activeVariant]];
  v3 = [v2 legibilityEnvironmentContext];

  return v3;
}

- (id)legibilityEnvironmentContextForVariant:(int64_t)a3
{
  v3 = [(PBUIPosterViewController *)self _viewControllerForVariant:a3];
  v4 = [v3 legibilityEnvironmentContext];

  return v4;
}

- (id)legibilitySettingsForVariant:(int64_t)a3
{
  v3 = [(PBUIPosterViewController *)self _viewControllerForVariant:a3];
  v4 = [v3 legibilitySettings];

  return v4;
}

- (id)averageColorForVariant:(int64_t)a3
{
  v3 = [(PBUIPosterViewController *)self _viewControllerForVariant:a3];
  v4 = [v3 averageColor];

  return v4;
}

- (double)averageContrastForVariant:(int64_t)a3
{
  v3 = [(PBUIPosterViewController *)self _viewControllerForVariant:a3];
  [v3 averageContrast];
  v5 = v4;

  return v5;
}

- (double)contrastInRect:(CGRect)a3 forVariant:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PBUIPosterViewController *)self _viewControllerForVariant:a4];
  [v8 contrastInRect:{x, y, width, height}];
  v10 = v9;

  return v10;
}

- (double)saturationInRect:(CGRect)a3 forVariant:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PBUIPosterViewController *)self _viewControllerForVariant:a4];
  [v8 saturationInRect:{x, y, width, height}];
  v10 = v9;

  return v10;
}

- (BOOL)userTapEventsRequested
{
  v3 = [(FBScene *)self->_scene clientSettings];
  v4 = [v3 pui_significantEventOptions];

  if (soft_PUIPosterSignificantEventOptionsContainsEvent(v4, 2))
  {
    return 1;
  }

  v6 = [(FBScene *)self->_scene clientSettings];
  if ([v6 pui_userTapEventsRequested])
  {
    v5 = 1;
  }

  else
  {
    v7 = [(FBScene *)self->_scene clientSettings];
    v8 = [v7 pr_requestedRenderingEventTypes];
    v5 = [v8 containsObject:@"PRRenderingEventTypeTap"];
  }

  return v5;
}

- (unint64_t)significantEventsCounterForPosterWithIdentifier:(id)a3
{
  scene = self->_scene;
  v5 = a3;
  v6 = [(FBScene *)scene pui_posterPath];
  v7 = [v6 serverIdentity];

  v8 = [v7 posterUUID];
  v9 = [v8 isEqual:v5];

  if (v9)
  {
    v10 = [(FBScene *)self->_scene settings];
    v11 = [v10 pb_significantEventsCounter];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)posterSignificantEventsCounter
{
  v2 = [(FBScene *)self->_scene settings];
  v3 = [v2 pb_significantEventsCounter];

  return v3;
}

- (void)updateLegacyPoster
{
  v3 = [(FBScene *)self->_scene settings];
  v4 = [v3 pui_provider];
  v5 = [v4 isEqual:@"com.apple.PaperBoard.LegacyPoster"];

  if ((v5 & 1) == 0)
  {
    v9 = PBUILogCommon();
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      [(PBUIPosterViewController *)&v9->super.super updateLegacyPoster:v10];
    }

    goto LABEL_6;
  }

  [(FBScene *)self->_scene pui_postSignificantEvent:4];
  if ([(FBScene *)self->_scene isActive])
  {
    v6 = [[PBUIWallpaperUpdateLocationsAction alloc] initWithLocations:3 wallpaperMode:0 responder:0];
    scene = self->_scene;
    v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
    [(FBScene *)scene sendActions:v8];
  }

  else
  {
    v6 = PBUILogCommon();
    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E67D000, &v6->super.super, OS_LOG_TYPE_DEFAULT, "Didn't update lock Legacy Poster because scene is inactive.", buf, 2u);
    }
  }

  homeScene = self->_homeScene;
  if (homeScene)
  {
    v18 = [(FBScene *)homeScene settings];
    v19 = [v18 pui_provider];
    v20 = [v19 isEqual:@"com.apple.PaperBoard.LegacyPoster"];

    if (v20)
    {
      [(FBScene *)self->_homeScene pui_postSignificantEvent:4];
      if ([(FBScene *)self->_homeScene isActive])
      {
        v9 = [[PBUIWallpaperUpdateLocationsAction alloc] initWithLocations:3 wallpaperMode:0 responder:0];
        v21 = self->_homeScene;
        v22 = [MEMORY[0x277CBEB98] setWithObject:v9];
        [(FBScene *)v21 sendActions:v22];
      }

      else
      {
        v9 = PBUILogCommon();
        if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&dword_21E67D000, &v9->super.super, OS_LOG_TYPE_DEFAULT, "Didn't update home Legacy Poster because scene is inactive.", v23, 2u);
        }
      }

LABEL_6:
    }
  }
}

- (unint64_t)deviceMotionMode
{
  v2 = [(FBScene *)self->_scene clientSettings];
  v3 = PBUIDeviceMotionModeForPRPosterDeviceMotionMode([v2 pr_deviceMotionMode]);

  return v3;
}

- (BOOL)hasRequestedDeviceMotionEvents
{
  v2 = [(FBScene *)self->_scene clientSettings];
  v3 = [v2 pr_deviceMotionEventsRequested];

  return v3;
}

- (BOOL)hidesDimmingLayer
{
  v2 = [(FBScene *)self->_scene clientSettings];
  v3 = [v2 pr_hideDimmingLayer];

  return v3;
}

- (id)requireWallpaperRasterizationWithReason:(id)a3
{
  v4 = a3;
  shouldRasterizeWallpaperAssertion = self->_shouldRasterizeWallpaperAssertion;
  if (!shouldRasterizeWallpaperAssertion)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__PBUIPosterViewController_requireWallpaperRasterizationWithReason___block_invoke;
    v14 = &unk_278361E80;
    objc_copyWeak(&v15, &location);
    v7 = [v6 assertionWithIdentifier:@"requireWallpaperRasterization" stateDidChangeHandler:&v11];
    v8 = self->_shouldRasterizeWallpaperAssertion;
    self->_shouldRasterizeWallpaperAssertion = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    shouldRasterizeWallpaperAssertion = self->_shouldRasterizeWallpaperAssertion;
  }

  v9 = [(BSCompoundAssertion *)shouldRasterizeWallpaperAssertion acquireForReason:v4, v11, v12, v13, v14];

  return v9;
}

void __68__PBUIPosterViewController_requireWallpaperRasterizationWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRasterization];
}

- (void)setWallpaperObscured:(BOOL)a3
{
  scene = self->_scene;
  if (scene)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__PBUIPosterViewController_setWallpaperObscured___block_invoke;
    v4[3] = &__block_descriptor_33_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
    v5 = a3;
    [(FBScene *)scene pb_update:v4];
  }
}

- (void)setUnlockProgress:(double)a3
{
  if (self->_unlockProgress != a3)
  {
    IsOne = BSFloatIsOne();
    v6 = BSFloatIsOne();
    self->_unlockProgress = a3;
    if (IsOne != v6)
    {
      [(PBUIPosterViewController *)self _updateLockViewControllerVisibility];
    }

    [(PBUIPosterViewController *)self _updateHomeViewControllerVisibility];
  }
}

- (int64_t)activeStyleForVariant:(int64_t)a3
{
  v3 = [(PBUIPosterViewController *)self _viewControllerForVariant:a3];
  v4 = [v3 activeStyle];

  return v4;
}

- (void)setActiveStyle:(int64_t)a3 forVariant:(int64_t)a4
{
  if (!a4)
  {
    self->_lockWallpaperStyle = a3;
  }

  v6 = [(PBUIPosterViewController *)self _viewControllerForVariant:a4];
  [v6 setActiveStyle:a3];

  [(PBUIPosterViewController *)self _updateForActiveVariant:2];
  [(PBUIPosterViewController *)self _updatePowerlogStatus];

  [(PBUIPosterViewController *)self _updateDebugHUD];
}

- (void)setActiveVariant:(int64_t)a3
{
  if (self->_activeVariant != a3)
  {
    v6 = [(PBUIPosterViewController *)self _viewControllerForVariant:?];
    [v6 invalidateSnapshotPreconditions:@"moving to inactive variant"];
    self->_activeVariant = a3;
    v5 = [(PBUIPosterViewController *)self _viewControllerForVariant:a3];
    [v5 invalidateSnapshotPreconditions:@"moved to active variant"];
  }
}

- (void)invalidate
{
  if (self->_homeScene)
  {
    [getPRUISPosterWorkspaceClass() noteWorkspaceInstanceTeardownForScene:self->_homeScene poster:self->_associatedConfiguration userInfo:&unk_282FD5B58];
  }

  if (self->_scene)
  {
    [getPRUISPosterWorkspaceClass() noteWorkspaceInstanceTeardownForScene:self->_scene poster:self->_configuration userInfo:&unk_282FD5B80];
  }

  objc_storeWeak(&self->_delegate, 0);
  [(FBScene *)self->_scene pui_invalidateWithCompletion:0];
  [(FBScene *)self->_homeScene pui_invalidateWithCompletion:0];
  [(PBUIPosterViewController *)self _invalidateComponents];

  [(PBUIPosterViewController *)self _updatePowerlogStatus];
}

- (void)fetchWallpaperProminentColor:(id)a3
{
  v5 = a3;
  homeViewController = self->_homeViewController;
  if (homeViewController || (homeViewController = self->_lockViewController) != 0)
  {
    v8 = v5;
    [homeViewController fetchWallpaperProminentColor:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"lockViewController/homeViewController is nil!"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(PBUIPosterViewController *)a2 fetchWallpaperProminentColor:v7];
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
  }
}

- (BOOL)updateCurrentPosterWithUpdates:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self->_configuration;
  if (v7)
  {
    PRSPosterUpdaterClass = getPRSPosterUpdaterClass();
    v9 = [(PRSPosterConfiguration *)v7 _path];
    v10 = [PRSPosterUpdaterClass updaterForPath:v9];

    LODWORD(a4) = [v10 applyUpdatesLocally:v6 error:a4];
    if (a4)
    {
      [(PBUIPosterHomeViewController *)self->_homeViewController noteHomeVariantStyleStateMayHaveUpdated];
    }
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA470];
    v15[0] = @"No poster set; cannot updateCurrentPosterWithUpdates:error:";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v11 errorWithDomain:@"com.apple.PaperBoardUI" code:-1 userInfo:v12];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (id)acquireDuckHomeScreenWallpaperDimAssertionWithReason:(id)a3
{
  homeViewController = self->_homeViewController;
  if (homeViewController)
  {
    homeViewController = [homeViewController acquireDuckHomeScreenWallpaperDimAssertionWithReason:a3];
    v3 = vars8;
  }

  return homeViewController;
}

- (BOOL)salientContentRectangleUpdatesRequested
{
  v2 = [(FBScene *)self->_scene clientSettings];
  v3 = [v2 pui_salientContentRectangleUpdatesRequested];

  return v3;
}

- (BOOL)_isSceneContentReady
{
  v3 = [(FBScene *)self->_scene clientSettings];
  v4 = [v3 pui_didFinishInitialization];

  return v4 && [(FBScene *)self->_scene contentState]== 2;
}

- (id)_viewControllerForVariant:(int64_t)a3
{
  v3 = &OBJC_IVAR___PBUIPosterViewController__homeViewController;
  if (!a3)
  {
    v3 = &OBJC_IVAR___PBUIPosterViewController__lockViewController;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (id)_replicaProviderForVariant:(int64_t)a3
{
  v3 = &OBJC_IVAR___PBUIPosterViewController__homeReplicaProvider;
  if (!a3)
  {
    v3 = &OBJC_IVAR___PBUIPosterViewController__lockReplicaProvider;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)_updateActiveVariantTransitionProgress:(double)a3
{
  if (![(PBUIPosterViewController *)self homeScreenReflectsLockScreen]|| [(PBUIPosterHomeViewController *)self->_homeViewController isBlurred]|| [(PBUIPosterHomeViewController *)self->_homeViewController isDimmed])
  {
    v5 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
    [v5 setAlpha:a3];
  }
}

- (void)_finalizeActiveVariantTransitionWithReason:(int64_t)a3
{
  if (self->_transitioningActiveVariant)
  {
    v5 = a3 | 2;

    [(PBUIPosterViewController *)self _updatePosterScenesForReasons:v5 completion:0];
    return;
  }

  [(PBUIPosterViewController *)self _updateLandscapeBlur];
  v6 = 1088;
  v7 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
  [v7 setAlpha:1.0];

  v8 = [(PBUIPosterLockViewController *)self->_lockViewController view];
  [v8 setAlpha:1.0];

  activeVariant = self->_activeVariant;
  v10 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
  v11 = v10;
  if (activeVariant != 1)
  {
    v6 = 1048;
  }

  [v10 setHidden:activeVariant != 1];

  v14 = *(&self->super.super.super.isa + v6);
  [(PBUIPosterViewController *)self _updateLockViewControllerVisibility];
  [(PBUIDynamicProviderWrapper *)self->_activeVariantReplicaProvider setRootObject:v14];
  [(PBUIPosterViewController *)self _updatePosterScenesForReasons:a3 | 2 completion:0];
  v12 = [v14 legibilitySettings];
  [(PBUIPosterViewController *)self _updateLegibilitySettings:v12];

  if (![(PBUIPosterViewController *)self wantsDefaultParallaxTreatment]|| (_os_feature_enabled_impl() & 1) == 0)
  {
    if (![(PBUIPosterLockViewController *)self->_lockViewController areMotionEffectsEnabled])
    {
      goto LABEL_15;
    }

    [(PBUIPosterLockViewController *)self->_lockViewController setMotionEffectsEnabled:1];
    goto LABEL_14;
  }

  v13 = _os_feature_enabled_impl();
  if (v13 != [(PBUIPosterLockViewController *)self->_lockViewController areMotionEffectsEnabled])
  {
    [(PBUIPosterLockViewController *)self->_lockViewController setMotionEffectsEnabled:1];
    if (v13)
    {
      [(PBUIPosterLockViewController *)self->_lockViewController setMotionEffectsWithFloating:15.0 foreground:5.0 background:-15.0];
      goto LABEL_15;
    }

LABEL_14:
    [(PBUIPosterLockViewController *)self->_lockViewController removeAllMotionEffects];
  }

LABEL_15:
}

- (void)_updatePosterScenesForReasons:(int64_t)a3 updater:(id)a4 completion:(id)a5
{
  v7 = a4;
  v30 = a5;
  if (self->_scene)
  {
    v8 = self->_homeScene == 0;
  }

  else
  {
    v8 = 0;
  }

  unlockProgress = self->_unlockProgress;
  wakeSourceIsSwipeToUnlock = self->_wakeSourceIsSwipeToUnlock;
  activeVariant = self->_activeVariant;
  IsHidden = PBUIWallpaperStyleIsHidden(self->_lockWallpaperStyle);
  v13 = [(FBScene *)self->_scene clientSettings];
  if ([v13 pui_salientContentRectangleUpdatesRequested])
  {
    p_salientContentRectangle = &self->_salientContentRectangle;
  }

  else
  {
    p_salientContentRectangle = MEMORY[0x277CBF398];
  }

  size = p_salientContentRectangle->size;
  origin = p_salientContentRectangle->origin;
  v52 = size;

  deviceMotionUpdateInterval = self->_deviceMotionUpdateInterval;
  activelyRequired = self->_activelyRequired;
  lockWallpaperStyle = self->_lockWallpaperStyle;
  v19 = [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion isActive];
  v20 = activelyRequired || !PBUIWallpaperStyleIsHidden(self->_activeStyle);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __77__PBUIPosterViewController__updatePosterScenesForReasons_updater_completion___block_invoke;
  v37[3] = &unk_2783641A8;
  v46 = v8;
  v47 = v20;
  v41 = unlockProgress;
  v48 = v19;
  v42 = lockWallpaperStyle;
  v43 = origin;
  v44 = v52;
  v45 = deviceMotionUpdateInterval;
  v49 = IsHidden;
  v50 = wakeSourceIsSwipeToUnlock;
  v39 = a3;
  v40 = activeVariant;
  v37[4] = self;
  v21 = v7;
  v38 = v21;
  v22 = MEMORY[0x223D62EE0](v37);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __77__PBUIPosterViewController__updatePosterScenesForReasons_updater_completion___block_invoke_120;
  v35[3] = &unk_2783641D0;
  v23 = v22;
  v35[4] = self;
  v36 = v23;
  v24 = MEMORY[0x223D62EE0](v35);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __77__PBUIPosterViewController__updatePosterScenesForReasons_updater_completion___block_invoke_2;
  v33[3] = &unk_2783641D0;
  v25 = v23;
  v33[4] = self;
  v34 = v25;
  v26 = MEMORY[0x223D62EE0](v33);
  scene = self->_scene;
  if (v20)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__PBUIPosterViewController__updatePosterScenesForReasons_updater_completion___block_invoke_3;
    v31[3] = &unk_2783641F8;
    v28 = v30;
    v31[4] = self;
    v32 = v30;
    [(FBScene *)scene pb_activate:v24 withCompletion:v31];
    [(FBScene *)self->_homeScene pb_activate:v26];
  }

  else
  {
    [(FBScene *)scene pb_update:v24];
    [(FBScene *)self->_homeScene pb_update:v26];
    v28 = v30;
    if (v30)
    {
      v30[2](v30);
    }

    [(PBUIPosterViewController *)self _updatePowerlogStatus];
    [(PBUIPosterViewController *)self _updateDebugHUD];
  }
}

void __77__PBUIPosterViewController__updatePosterScenesForReasons_updater_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  if ((*(a1 + 120) & 1) != 0 || [v8 pb_activeVariant] == *(a1 + 56))
  {
    v11 = 0;
    if (*(a1 + 121))
    {
      v12 = 0;
    }

    else
    {
      v12 = -10;
    }
  }

  else
  {
    v11 = 1;
    v12 = -10;
  }

  [v8 setJetsamMode:v12];
  if ([v8 pb_activeVariant])
  {
    if ([v8 pb_activeVariant] != 1 || (*(a1 + 120) & 1) != 0)
    {
      goto LABEL_19;
    }

    v13 = v8;
    v14 = 4294967246;
    goto LABEL_18;
  }

  [v8 pr_setUnlockProgress:*(a1 + 64)];
  v15 = [v8 activityMode];
  v16 = *(a1 + 122);
  if (PBUIWallpaperStyleIsHidden(*(a1 + 72)) || (v16 & 1) == 0)
  {
    v17 = 4294967246;
  }

  else
  {
    v17 = 4294967286;
  }

  if (v15 != v17)
  {
    v18 = PBUILogRuntime();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromFBSSceneActivityMode();
      v39 = 138412546;
      v40 = v7;
      v41 = 2114;
      v42 = v19;
      _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_INFO, "Updating activity mode for scene %@ to %{public}@", &v39, 0x16u);
    }

    v13 = v8;
    v14 = v17;
LABEL_18:
    [v13 setActivityMode:v14];
  }

LABEL_19:
  [v8 pui_setSalientContentRectangle:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  [v8 pr_setDeviceMotionUpdateInterval:*(a1 + 112)];
  v20 = [v8 pr_posterConfiguredProperties];
  v21 = [v20 renderingConfiguration];
  v22 = [v21 isDepthEffectDisabled];

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = *(a1 + 123);
  }

  [v8 pr_setDepthEffectDisallowed:v23 & 1];
  [v8 pr_setWakeSourceIsSwipeToUnlock:*(a1 + 124)];
  if (soft_PF_IS_PAD_DEVICE() && (soft_PUIDynamicRotationIsActive() & 1) != 0)
  {
    v24 = *(*(a1 + 32) + 1184);
    v25 = [v8 pui_deviceOrientation];
    if (!v25)
    {
      v25 = [v8 interfaceOrientation];
    }

    if (v25 != v24)
    {
      [v8 pui_setDeviceOrientation:v24];
      v10 |= 0x40uLL;
    }
  }

  else
  {
    v26 = *(*(a1 + 32) + 1176);
    if ([v8 interfaceOrientation] != v26)
    {
      [v8 setInterfaceOrientation:v26];
      v10 |= 0x20uLL;
    }
  }

  if ((v10 & 0x61) == 0 || v9 == 0)
  {
    v28 = 1;
  }

  else
  {
    v28 = v11;
  }

  if ((v28 & 1) != 0 || ![v7 isActive])
  {
    v31 = PBUIRenderingLogFenceReason();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v37 = NSStringFrom_PBUIPosterViewControllerUpdateReasons(v10);
      v39 = 138543362;
      v40 = v37;
      _os_log_impl(&dword_21E67D000, v31, OS_LOG_TYPE_DEFAULT, "Poster scenes un-fenced update for reasons: %{public}@", &v39, 0xCu);
    }
  }

  else
  {
    v29 = [*(a1 + 32) view];
    v30 = [v29 window];
    v31 = [v30 windowScene];

    [v31 _synchronizeDrawing];
    v32 = [v31 _synchronizedDrawingFence];
    [v9 setAnimationFence:v32];

    v33 = MEMORY[0x277CF0B70];
    [MEMORY[0x277D75D18] inheritedAnimationDuration];
    v34 = [v33 settingsWithDuration:?];
    [v9 setAnimationSettings:v34];

    v35 = PBUIRenderingLogFenceReason();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = NSStringFrom_PBUIPosterViewControllerUpdateReasons(v10);
      v39 = 138543362;
      v40 = v36;
      _os_log_impl(&dword_21E67D000, v35, OS_LOG_TYPE_DEFAULT, "Poster scenes FENCED update for reasons: %{public}@", &v39, 0xCu);
    }
  }

  v38 = *(a1 + 40);
  if (v38)
  {
    (*(v38 + 16))(v38, v7, v8, v9);
  }
}

uint64_t __77__PBUIPosterViewController__updatePosterScenesForReasons_updater_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) _updatePowerlogStatus];
  v3 = *(a1 + 32);

  return [v3 _updateDebugHUD];
}

- (void)_updatePowerlogStatus
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PRSPosterConfiguration *)self->_configuration providerBundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
  {
    v4 = [(PBUIPosterViewController *)self activelyRequiredReasons];
    if ([v4 count])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion reasons];
      v5 = [v6 count] != 0;
    }

    if (self->_posterIsActive != v5)
    {
      self->_posterIsActive = v5;
      v7 = [(FBScene *)self->_scene clientSettings];
      v8 = [v7 pui_powerlogIdentifier];

      v9 = PBUILogRuntime();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v5)
      {
        if (v10)
        {
          v11 = [(PBUIPosterViewController *)self activelyRequiredReasons];
          v12 = [v11 count];
          v13 = [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion reasons];
          v14 = 138544130;
          v15 = v3;
          v16 = 2048;
          v17 = v8;
          v18 = 2048;
          v19 = v12;
          v20 = 2048;
          v21 = [v13 count];
          _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "Updating powerlog for %{public}@ (%lu): going foreground with %lu activelyRequiredReasons, %lu defaultModeAssertion reasons", &v14, 0x2Au);
        }
      }

      else if (v10)
      {
        v14 = 138543618;
        v15 = v3;
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "Updating powerlog for %{public}@ (%lu): going background", &v14, 0x16u);
      }

      [PBUIPowerLogger sendTelemetryForPosterForegroundChange:v5 posterProviderID:v3 posterPowerlogIdentifier:v8];
    }
  }
}

- (void)_updateLegibilitySettings:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained posterComponent:self didUpdateLegibilitySettings:v6];
  }
}

- (void)_createHomeViewControllerIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_homeViewController)
  {
    v3 = [(PBUIPosterVariantViewController *)[PBUIPosterHomeViewController alloc] initWithScene:self->_homeScene counterpart:self->_lockViewController];
    homeViewController = self->_homeViewController;
    self->_homeViewController = v3;

    [(PBUIPosterVariantViewController *)self->_lockViewController setCounterpart:self->_homeViewController];
    [(PBUIPosterViewController *)self bs_addChildViewController:self->_homeViewController];
    [(PBUIPosterVariantViewController *)self->_homeViewController setDelegate:self];
    [(PBUIDynamicProviderWrapper *)self->_homeReplicaProvider setRootObject:self->_homeViewController];
    v5 = PBUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FBScene *)self->_homeScene pui_shortDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Created new home poster scene: %@", &v7, 0xCu);
    }

    [(PBUIPosterViewController *)self _updateForActiveVariant:16];
  }
}

- (id)_legacyWallpaperConfigurationManager
{
  lazy_legacyWallpaperConfigurationManager = self->_lazy_legacyWallpaperConfigurationManager;
  if (!lazy_legacyWallpaperConfigurationManager)
  {
    v4 = objc_alloc_init(PBUIWallpaperConfigurationManager);
    v5 = self->_lazy_legacyWallpaperConfigurationManager;
    self->_lazy_legacyWallpaperConfigurationManager = v4;

    lazy_legacyWallpaperConfigurationManager = self->_lazy_legacyWallpaperConfigurationManager;
  }

  return lazy_legacyWallpaperConfigurationManager;
}

- (void)_invalidateComponents
{
  [(PBUIPosterLockViewController *)self->_lockViewController invalidate];
  lockViewController = self->_lockViewController;
  self->_lockViewController = 0;

  [(PBUIPosterVariantViewController *)self->_homeViewController invalidate];
  homeViewController = self->_homeViewController;
  self->_homeViewController = 0;

  [(PBUIDynamicProviderWrapper *)self->_lockReplicaProvider invalidate];
  lockReplicaProvider = self->_lockReplicaProvider;
  self->_lockReplicaProvider = 0;

  [(PBUIDynamicProviderWrapper *)self->_homeReplicaProvider invalidate];
  homeReplicaProvider = self->_homeReplicaProvider;
  self->_homeReplicaProvider = 0;

  [(PBUIDynamicProviderWrapper *)self->_lockFloatingLayerReplicaProvider invalidate];
  lockFloatingLayerReplicaProvider = self->_lockFloatingLayerReplicaProvider;
  self->_lockFloatingLayerReplicaProvider = 0;

  [(PBUIDynamicProviderWrapper *)self->_activeVariantReplicaProvider invalidate];
  activeVariantReplicaProvider = self->_activeVariantReplicaProvider;
  self->_activeVariantReplicaProvider = 0;

  [(PRRenderingServiceSceneComponent *)self->_renderingServiceSceneComponent invalidate];
  renderingServiceSceneComponent = self->_renderingServiceSceneComponent;
  self->_renderingServiceSceneComponent = 0;

  [(BSCompoundAssertion *)self->_shouldRasterizeWallpaperAssertion invalidate];
  shouldRasterizeWallpaperAssertion = self->_shouldRasterizeWallpaperAssertion;
  self->_shouldRasterizeWallpaperAssertion = 0;

  [(BSInvalidatable *)self->_unlockingKeepRunningAssertion invalidate];
  unlockingKeepRunningAssertion = self->_unlockingKeepRunningAssertion;
  self->_unlockingKeepRunningAssertion = 0;

  [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion invalidate];
  activePosterSceneDefaultModeAssertion = self->_activePosterSceneDefaultModeAssertion;
  self->_activePosterSceneDefaultModeAssertion = 0;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PBUIPosterViewController;
  [(PBUIPosterViewController *)&v4 viewDidLoad];
  v3 = [(PBUIPosterViewController *)self view];
  [v3 setAutoresizingMask:18];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PBUIPosterViewController;
  [(PBUIPosterViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(PBUIPosterViewController *)self view];
  v4 = [(PBUIPosterLockViewController *)self->_lockViewController view];
  [v3 bounds];
  [v4 setFrame:?];

  v5 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
  [v3 bounds];
  [v5 setFrame:?];

  v6 = [(PBUIPosterHomeViewController *)self->_homeViewController view];
  [v3 bringSubviewToFront:v6];
}

- (void)_userInterfaceStyleTraitDidChange:(id)a3 previousTraitCollection:(id)a4
{
  activePosterSceneDefaultModeAssertion = self->_activePosterSceneDefaultModeAssertion;
  v6 = a3;
  v7 = [(BSCompoundAssertion *)activePosterSceneDefaultModeAssertion acquireForReason:@"user interface style did change"];
  v8 = [v6 traitCollection];

  v9 = [v8 userInterfaceStyle];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__PBUIPosterViewController__userInterfaceStyleTraitDidChange_previousTraitCollection___block_invoke;
  v13[3] = &__block_descriptor_40_e75_v32__0__FBScene_8__FBSMutableSceneSettings_16__FBSSceneTransitionContext_24l;
  v13[4] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__PBUIPosterViewController__userInterfaceStyleTraitDidChange_previousTraitCollection___block_invoke_2;
  v11[3] = &unk_278361E18;
  v12 = v7;
  v10 = v7;
  [(PBUIPosterViewController *)self _updatePosterScenesForReasons:1 updater:v13 completion:v11];
}

void __86__PBUIPosterViewController__userInterfaceStyleTraitDidChange_previousTraitCollection___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CD9FF0];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __86__PBUIPosterViewController__userInterfaceStyleTraitDidChange_previousTraitCollection___block_invoke_3;
  v2[3] = &unk_278361E18;
  v3 = *(a1 + 32);
  [v1 bs_performAfterSynchronizedCommit:v2];
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 clientSettings];
  v10 = [v9 pui_significantEventOptions];

  if (soft_PUIPosterSignificantEventOptionsContainsEvent(v10, 3))
  {
    v11 = [v7 pr_adjustedLuminance];
    v12 = [v14 settings];
    v13 = [v12 pr_adjustedLuminance];

    if (v11 == 2 && v13 != 2)
    {
      [v7 pui_setSignificantEventsCounter:{objc_msgSend(v7, "pui_significantEventsCounter") + 1}];
      [v8 pui_setSignificantEvent:3];
    }
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a4;
  if (self->_scene == a3)
  {
    v12 = v6;
    v7 = [v6 settingsDiff];
    v8 = [v7 pr_unlockProgressDidChange];

    v6 = v12;
    if (v8)
    {
      v9 = [v12 settings];
      [v9 pr_unlockProgress];

      if (BSFloatGreaterThanFloat() && BSFloatLessThanFloat())
      {
        v6 = v12;
        if (self->_unlockingKeepRunningAssertion)
        {
          goto LABEL_9;
        }

        v10 = [(BSCompoundAssertion *)self->_activePosterSceneDefaultModeAssertion acquireForReason:@"unlock progress"];
        unlockingKeepRunningAssertion = self->_unlockingKeepRunningAssertion;
        self->_unlockingKeepRunningAssertion = v10;
      }

      else
      {
        [(BSInvalidatable *)self->_unlockingKeepRunningAssertion invalidate];
        unlockingKeepRunningAssertion = self->_unlockingKeepRunningAssertion;
        self->_unlockingKeepRunningAssertion = 0;
      }

      v6 = v12;
    }
  }

LABEL_9:
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__PBUIPosterViewController_scene_didUpdateClientSettings___block_invoke;
  v8[3] = &unk_278364220;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [a4 inspect:v8];
}

void __58__PBUIPosterViewController_scene_didUpdateClientSettings___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  if ([a4 pui_extendedRenderSessionDidChange])
  {
    if (([v8 pui_inExtendedRenderSession] & 1) == 0)
    {
      v6 = [*(a1 + 32) settings];
      v7 = [v6 activityMode];

      if (v7 == 10)
      {
        [*(a1 + 40) _updatePosterScenesForReasons:2 completion:0];
      }
    }
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 processHandle];
  v7 = PBUILogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 pui_shortDescription];
    v9 = [v6 pf_shortDesc];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ now connected to %{public}@", &v10, 0x16u);
  }
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = PBUILogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Poster received actions: %@", &v6, 0xCu);
  }
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 pui_shortDescription];
    v10 = [v7 descriptionWithMultilinePrefix:0];
    *buf = 138543618;
    v19 = *&v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Poster %{public}@ deactivated with error: %{public}@", buf, 0x16u);
  }

  [(PBUISessionReconnectPolicy *)self->_reconnectPolicy sessionDidDisconnect];
  if ([(PBUIPosterViewController *)self _appearState])
  {
    [(PBUISessionReconnectPolicy *)self->_reconnectPolicy sessionReconnectDelay];
    v12 = v11;
    v13 = PBUILogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v12;
      _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_DEFAULT, "Will attempt reactivation of wallpaper scene in %0.3f seconds.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14 = dispatch_time(0, (v12 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PBUIPosterViewController_sceneDidDeactivate_withError___block_invoke;
    block[3] = &unk_278363040;
    objc_copyWeak(&v17, buf);
    dispatch_after(v14, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = PBUILogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "Not attempting reactivation of wallpaper scene at this time.", buf, 2u);
    }
  }
}

void __57__PBUIPosterViewController_sceneDidDeactivate_withError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePosterScenesForReasons:4 completion:0];
}

- (UIColor)averageColor
{
  v2 = [(PBUIPosterViewController *)self _activeViewController];
  v3 = [v2 averageColor];

  return v3;
}

- (double)averageContrast
{
  v2 = [(PBUIPosterViewController *)self _activeViewController];
  [v2 averageContrast];
  v4 = v3;

  return v4;
}

- (double)averageSaturation
{
  v2 = [(PBUIPosterViewController *)self _activeViewController];
  [v2 averageSaturation];
  v4 = v3;

  return v4;
}

- (_UILegibilitySettings)legibilitySettings
{
  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings)
  {
    v3 = legibilitySettings;
  }

  else
  {
    v4 = [(PBUIPosterViewController *)self _activeViewController];
    v3 = [v4 legibilitySettings];
  }

  return v3;
}

- (double)preferredDeviceMotionUpdateInterval
{
  v2 = [(PBUIPosterViewController *)self _activeViewController];
  [v2 preferredDeviceMotionUpdateInterval];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PBUIPosterViewController *)self _activeViewController];
  [v7 contrastInRect:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)saturationInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PBUIPosterViewController *)self _activeViewController];
  [v7 saturationInRect:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (double)lumaInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PBUIPosterViewController *)self _activeViewController];
  [v7 lumaInRect:{x, y, width, height}];
  v9 = v8;

  return v9;
}

- (id)averageColorInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PBUIPosterViewController *)self _activeViewController];
  v8 = [v7 averageColorInRect:{x, y, width, height}];

  return v8;
}

- (void)posterComponent:(id)a3 didUpdateLegibilitySettings:(id)a4
{
  v7 = a4;
  activeVariant = self->_activeVariant;
  if (activeVariant == [a3 variant])
  {
    [(PBUIPosterViewController *)self _updateLegibilitySettings:v7];
  }
}

- (void)posterComponent:(id)a3 didUpdateHideDimmingLayer:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterViewController *)self delegate];
  [v6 posterComponent:self didUpdateHideDimmingLayer:v4];
}

- (void)posterComponent:(id)a3 didUpdatePreferredProminentColor:(id)a4
{
  v5 = a4;
  v6 = [(PBUIPosterViewController *)self delegate];
  [v6 posterComponent:self didUpdatePreferredProminentColor:v5];
}

- (id)posterComponentExternalDisplayConfiguration:(id)a3
{
  v4 = [(PBUIPosterViewController *)self delegate];
  v5 = [v4 posterComponentExternalDisplayConfiguration:self];

  return v5;
}

- (void)posterComponent:(id)a3 didUpdateDeviceMotionEventsRequested:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterViewController *)self delegate];
  [v6 posterComponent:self didUpdateDeviceMotionEventsRequested:v4];
}

- (void)posterComponent:(id)a3 didUpdateDeviceMotionMode:(unint64_t)a4
{
  v6 = [(PBUIPosterViewController *)self delegate];
  [v6 posterComponent:self didUpdateDeviceMotionMode:a4];
}

- (void)posterComponent:(id)a3 didUpdatePreferredSalientContentRectangle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(PBUIPosterViewController *)self delegate];
  [v9 posterComponent:self didUpdatePreferredSalientContentRectangle:{x, y, width, height}];
}

- (void)posterComponent:(id)a3 didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterViewController *)self delegate];
  [v6 posterComponent:self didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:v4];
}

- (void)posterComponent:(id)a3 didUpdateSalientContentRectangleUpdatesRequested:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterViewController *)self delegate];
  [v6 posterComponent:self didUpdateSalientContentRectangleUpdatesRequested:v4];
}

- (void)posterComponent:(id)a3 didUpdatePreferredDeviceMotionUpdateInterval:(double)a4
{
  v6 = a3;
  v7 = [(PBUIPosterViewController *)self delegate];
  [v7 posterComponent:v6 didUpdatePreferredDeviceMotionUpdateInterval:a4];
}

- (void)posterComponent:(id)a3 didUpdateInExtendedRenderSession:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PBUIPosterViewController *)self delegate];
  [v7 posterComponent:v6 didUpdateInExtendedRenderSession:v4];
}

- (id)succinctDescription
{
  v2 = [(PBUIPosterViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIPosterViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PBUIPosterViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PBUIPosterViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783622E0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __66__PBUIPosterViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1160) withName:@"activelyRequired"];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 1120) withName:{"isActive"), @"activePosterSceneDefaultModeAssertion"}];
  v4 = *(a1 + 32);
  v5 = PBUIWallpaperStyleDescription(*(*(a1 + 40) + 1264));
  v6 = [v4 appendObject:v5 withName:@"activeStyle"];

  v7 = *(a1 + 32);
  v8 = PBUIStringForWallpaperVariant(*(*(a1 + 40) + 1168));
  v9 = [v7 appendObject:v8 withName:@"activeVariant"];

  v10 = *(*(a1 + 40) + 1176);
  v11 = @"UIInterfaceOrientationLandscapeRight";
  v12 = @"UIInterfaceOrientationLandscapeLeft";
  v13 = @"UIInterfaceOrientationPortraitUpsideDown";
  if (v10 != 2)
  {
    v13 = 0;
  }

  if (v10 != 4)
  {
    v12 = v13;
  }

  if (v10 != 3)
  {
    v11 = v12;
  }

  if (v10 == 1)
  {
    v14 = @"UIInterfaceOrientationPortrait";
  }

  else
  {
    v14 = v11;
  }

  v15 = [*(a1 + 32) appendObject:v14 withName:@"activeOrientation"];
  v16 = [*(a1 + 32) appendDouble:@"unlockProgress" withName:2 decimalPrecision:*(*(a1 + 40) + 1200)];
  v17 = [*(a1 + 32) appendDouble:@"deviceRoll" withName:2 decimalPrecision:*(*(a1 + 40) + 1208)];
  v18 = [*(a1 + 32) appendDouble:@"devicePitch" withName:2 decimalPrecision:*(*(a1 + 40) + 1216)];
  v19 = [*(a1 + 32) appendDouble:@"deviceYaw" withName:2 decimalPrecision:*(*(a1 + 40) + 1224)];
  v20 = *(a1 + 32);
  PFDeviceMotionUtilitiesClass = getPFDeviceMotionUtilitiesClass();
  v22 = *(*(a1 + 40) + 1296);
  v29[0] = *(*(a1 + 40) + 1280);
  v29[1] = v22;
  v23 = [PFDeviceMotionUtilitiesClass descriptionForRotation:v29];
  [v20 appendString:v23 withName:@"rotation"];

  v24 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 1163) withName:@"landscapeBlurEnabled"];
  v25 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"configuration"];
  v26 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1008) withName:@"associatedConfiguration"];
  v27 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1048) withName:@"lockController"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1088) withName:@"homeController"];
}

- (__n128)rotation
{
  result = *(a1 + 1280);
  v3 = *(a1 + 1296);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)fetchWallpaperProminentColor:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PBUIPosterViewController.m";
  v16 = 1024;
  v17 = 864;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end