@interface PBUIPosterWallpaperViewController
- (CGRect)preferredSalientContentRectangle;
- (CGRect)salientContentRectangle;
- (PBUIPosterComponentDelegate)delegate;
- (PBUIPosterWallpaperViewController)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)posterComponentExternalDisplayConfiguration:(id)a3;
- (id)replicaProviderForVariant:(int64_t)a3;
- (id)requireWallpaperWithReason:(id)a3;
- (id)succinctDescription;
- (uint64_t)setRotation:(_OWORD *)a3;
- (void)_posterConfigsDidChange:(id)a3 withTransition:(id)a4;
- (void)_posterControllerDidChange;
- (void)_updateStyleForVariant:(int64_t)a3;
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
- (void)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4;
- (void)rotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)setActiveVariant:(int64_t)a3;
- (void)setDeviceMotionEventGenerationActive:(BOOL)a3;
- (void)setDeviceMotionUpdateInterval:(double)a3;
- (void)setDevicePitch:(double)a3 roll:(double)a4 yaw:(double)a5;
- (void)setSalientContentRectangle:(CGRect)a3;
- (void)setUnlockProgress:(double)a3;
- (void)setWakeSourceIsSwipeToUnlock:(BOOL)a3;
- (void)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5;
- (void)updateActiveVariantTransitionProgress:(double)a3;
- (void)updateConfiguration:(id)a3 withAnimationSettings:(id)a4;
- (void)viewDidLoad;
@end

@implementation PBUIPosterWallpaperViewController

- (PBUIPosterComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)preferredSalientContentRectangle
{
  [(PBUIPosterViewController *)self->_posterController preferredSalientContentRectangle];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PBUIPosterWallpaperViewController)init
{
  v32.receiver = self;
  v32.super_class = PBUIPosterWallpaperViewController;
  v2 = [(PBUIPosterWallpaperViewController *)&v32 init];
  v3 = v2;
  if (v2)
  {
    v2->_activeVariant = -1;
    v4 = MEMORY[0x277D76620];
    v2->_activeOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
    v3->_unlockProgress = 0.0;
    v3->_deviceRoll = 0.0;
    v3->_devicePitch = 0.0;
    v3->_deviceYaw = 0.0;
    v5 = *(MEMORY[0x277CBF398] + 16);
    v3->_salientContentRectangle.origin = *MEMORY[0x277CBF398];
    v3->_salientContentRectangle.size = v5;
    v6 = vdupq_lane_s64(-1, 0);
    *&v3->_activeStyles[0][1] = v6;
    *&v3->_activeStyles[1][1] = v6;
    *&v3->_activeStyles[1][3] = v6;
    *&v3->_activeStyles[0][3] = v6;
    objc_initWeak(&location, v3);
    getPRSWallpaperLocationStateObserverClass();
    v7 = objc_opt_new();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __41__PBUIPosterWallpaperViewController_init__block_invoke;
    v29[3] = &unk_2783631A8;
    objc_copyWeak(&v30, &location);
    [v7 setHandler:v29];
    [v7 setLocations:12];
    [v7 setNeedsSandboxExtensions:1];
    v8 = objc_alloc_init(getPRSWallpaperObserverConfigurationClass());
    [v8 setLocationStateObserver:v7];
    v9 = dispatch_get_global_queue(25, 0);
    [v8 setQueue:v9];

    v10 = objc_alloc(getPRSWallpaperObserverClass());
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PBUIPosterWallpaperViewController-%p", v3];
    v12 = [v10 initWithExplanation:v11];
    posterObserver = v3->_posterObserver;
    v3->_posterObserver = v12;

    [(PRSWallpaperObserver *)v3->_posterObserver activateWithConfiguration:v8];
    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    LODWORD(v10) = [v14 BOOLForKey:@"PBKeepWallpaperForegroundRunning"];

    if (v10)
    {
      v15 = PBUILogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(PBUIPosterWallpaperViewController *)v15 init];
      }

      v16 = [(PBUIPosterWallpaperViewController *)v3 requireWallpaperWithReason:@"KeepForegroundRunning"];
      keepForegroundRunning = v3->_keepForegroundRunning;
      v3->_keepForegroundRunning = v16;
    }

    v18 = objc_alloc_init(PBUIPosterViewController);
    posterController = v3->_posterController;
    v3->_posterController = v18;

    [(PBUIPosterViewController *)v3->_posterController setDelegate:v3];
    if (+[PBUIPosterWallpaperRemoteViewController supportsLandscapeWallpaperContents])
    {
      -[PBUIPosterWallpaperViewController rotateToInterfaceOrientation:duration:](v3, "rotateToInterfaceOrientation:duration:", [*v4 activeInterfaceOrientation], 0.0);
    }

    v20 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:v3->_posterController portalProvider:&__block_literal_global_14 snapshotProvider:&__block_literal_global_15];
    lockPosterReplicaProvider = v3->_lockPosterReplicaProvider;
    v3->_lockPosterReplicaProvider = v20;

    v22 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:v3->_posterController portalProvider:&__block_literal_global_17_0 snapshotProvider:&__block_literal_global_19];
    homePosterReplicaProvider = v3->_homePosterReplicaProvider;
    v3->_homePosterReplicaProvider = v22;

    v24 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:v3->_posterController portalProvider:&__block_literal_global_21 snapshotProvider:0];
    lockFloatingLayerPosterReplicaProvider = v3->_lockFloatingLayerPosterReplicaProvider;
    v3->_lockFloatingLayerPosterReplicaProvider = v24;

    v26 = [[PBUIDynamicProviderWrapper alloc] initWithRootObject:v3->_posterController portalProvider:&__block_literal_global_23_0 snapshotProvider:&__block_literal_global_25];
    activeVariantReplicaProvider = v3->_activeVariantReplicaProvider;
    v3->_activeVariantReplicaProvider = v26;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __41__PBUIPosterWallpaperViewController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _posterConfigsDidChange:v6 withTransition:v5];
}

- (void)updateActiveVariantTransitionProgress:(double)a3
{
  posterController = self->_posterController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__PBUIPosterWallpaperViewController_updateActiveVariantTransitionProgress___block_invoke;
  v4[3] = &__block_descriptor_40_e30_v16__0___PBUIPosterUpdating__8l;
  *&v4[4] = a3;
  [(PBUIPosterViewController *)posterController updatePoster:v4];
}

- (void)setActiveVariant:(int64_t)a3
{
  if (!PBUIWallpaperVariantIsValid(a3))
  {
    [(PBUIPosterWallpaperViewController *)a2 setActiveVariant:?];
  }

  self->_activeVariant = a3;
  posterController = self->_posterController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PBUIPosterWallpaperViewController_setActiveVariant___block_invoke;
  v7[3] = &unk_278363210;
  v7[4] = self;
  v7[5] = a3;
  [(PBUIPosterViewController *)posterController updatePoster:v7];
}

uint64_t __54__PBUIPosterWallpaperViewController_setActiveVariant___block_invoke(uint64_t a1, void *a2)
{
  [a2 setActiveVariant:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _updateStyleForVariant:v4];
}

- (void)setUnlockProgress:(double)a3
{
  if (self->_unlockProgress == a3)
  {
    return;
  }

  self->_unlockProgress = a3;
  IsZero = BSFloatIsZero();
  IsOne = BSFloatIsOne();
  if (IsOne)
  {
    v7 = PBUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Now all the way unlocked.";
LABEL_8:
      _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else
  {
    if (!IsZero)
    {
      if (!self->_transitioningLockState)
      {
        v10 = [(PBUIPosterWallpaperViewController *)self requireWallpaperWithReason:@"LockUnlock"];
        transitioningLockState = self->_transitioningLockState;
        self->_transitioningLockState = v10;
      }

      v9 = 0;
      goto LABEL_13;
    }

    v7 = PBUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Now all the way locked.";
      goto LABEL_8;
    }
  }

  v9 = IsZero | IsOne;
LABEL_13:
  posterController = self->_posterController;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__PBUIPosterWallpaperViewController_setUnlockProgress___block_invoke;
  v15[3] = &__block_descriptor_40_e30_v16__0___PBUIPosterUpdating__8l;
  *&v15[4] = a3;
  [(PBUIPosterViewController *)posterController updatePoster:v15];
  if (v9)
  {
    v13 = self->_transitioningLockState;
    if (v13)
    {
      [(BSInvalidatable *)v13 invalidate];
      v14 = self->_transitioningLockState;
      self->_transitioningLockState = 0;
    }
  }
}

- (uint64_t)setRotation:(_OWORD *)a3
{
  v3 = *(a1 + 1000);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [v3 updateMotionWithRotation:v6];
}

- (void)setDevicePitch:(double)a3 roll:(double)a4 yaw:(double)a5
{
  devicePitch = self->_devicePitch;
  if (devicePitch != a3)
  {
    self->_devicePitch = a3;
  }

  if (self->_deviceRoll != a4)
  {
    self->_deviceRoll = a4;
    p_deviceYaw = &self->_deviceYaw;
    if (self->_deviceYaw == a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  p_deviceYaw = &self->_deviceYaw;
  if (self->_deviceYaw != a5)
  {
LABEL_7:
    *p_deviceYaw = a5;
LABEL_8:
    v10[7] = v5;
    v10[8] = v6;
    posterController = self->_posterController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__PBUIPosterWallpaperViewController_setDevicePitch_roll_yaw___block_invoke;
    v10[3] = &__block_descriptor_56_e30_v16__0___PBUIPosterUpdating__8l;
    *&v10[4] = a3;
    *&v10[5] = a4;
    *&v10[6] = a5;
    [(PBUIPosterViewController *)posterController updatePoster:v10];
    return;
  }

  if (devicePitch != a3)
  {
    goto LABEL_8;
  }
}

void __61__PBUIPosterWallpaperViewController_setDevicePitch_roll_yaw___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDevicePitch:v3];
  [v4 setDeviceRoll:a1[5]];
  [v4 setDeviceYaw:a1[6]];
}

- (void)setWakeSourceIsSwipeToUnlock:(BOOL)a3
{
  posterController = self->_posterController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__PBUIPosterWallpaperViewController_setWakeSourceIsSwipeToUnlock___block_invoke;
  v4[3] = &__block_descriptor_33_e30_v16__0___PBUIPosterUpdating__8l;
  v5 = a3;
  [(PBUIPosterViewController *)posterController updatePoster:v4];
}

- (void)setSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_salientContentRectangle = &self->_salientContentRectangle;
  if (!CGRectEqualToRect(a3, self->_salientContentRectangle))
  {
    p_salientContentRectangle->origin.x = x;
    p_salientContentRectangle->origin.y = y;
    p_salientContentRectangle->size.width = width;
    p_salientContentRectangle->size.height = height;
    if ([(PBUIPosterViewController *)self->_posterController salientContentRectangleUpdatesRequested])
    {
      posterController = self->_posterController;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__PBUIPosterWallpaperViewController_setSalientContentRectangle___block_invoke;
      v10[3] = &__block_descriptor_64_e30_v16__0___PBUIPosterUpdating__8l;
      *&v10[4] = x;
      *&v10[5] = y;
      *&v10[6] = width;
      *&v10[7] = height;
      [(PBUIPosterViewController *)posterController updatePoster:v10];
    }
  }
}

- (void)setDeviceMotionUpdateInterval:(double)a3
{
  if (self->_deviceMotionUpdateInterval != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_deviceMotionUpdateInterval = a3;
    posterController = self->_posterController;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__PBUIPosterWallpaperViewController_setDeviceMotionUpdateInterval___block_invoke;
    v6[3] = &__block_descriptor_40_e30_v16__0___PBUIPosterUpdating__8l;
    *&v6[4] = a3;
    [(PBUIPosterViewController *)posterController updatePoster:v6];
  }
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)a3
{
  if (self->_deviceMotionEventGenerationActive == a3)
  {
    return;
  }

  v4 = a3;
  self->_deviceMotionEventGenerationActive = a3;
  deviceMotionKeepActiveReason = self->_deviceMotionKeepActiveReason;
  if (!a3)
  {
    [(BSInvalidatable *)deviceMotionKeepActiveReason invalidate];
    v7 = 0;
    goto LABEL_6;
  }

  if (!deviceMotionKeepActiveReason)
  {
    v7 = [(PBUIPosterWallpaperViewController *)self requireWallpaperWithReason:@"device motion"];
LABEL_6:
    v8 = self->_deviceMotionKeepActiveReason;
    self->_deviceMotionKeepActiveReason = v7;
  }

  posterController = self->_posterController;

  [(PBUIPosterViewController *)posterController setDeviceMotionEventGenerationActive:v4];
}

- (void)updateConfiguration:(id)a3 withAnimationSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!v9)
  {
    [PBUIPosterWallpaperViewController updateConfiguration:a2 withAnimationSettings:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBUIPosterWallpaperViewController updateConfiguration:a2 withAnimationSettings:?];
  }

  if (![(PBUIPosterViewController *)self->_posterController updateConfiguration:v9])
  {
    v10 = self->_posterController;
    [(PBUIPosterViewController *)v10 setDelegate:0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke;
    v28[3] = &unk_2783622E0;
    v28[4] = self;
    v11 = v10;
    v29 = v11;
    v12 = MEMORY[0x223D62EE0](v28);
    v13 = objc_alloc_init(PBUIPosterViewController);
    v14 = [(PBUIPosterViewController *)v13 view];
    v15 = [(PBUIPosterWallpaperViewController *)self view];
    [v15 bounds];
    [v14 setFrame:?];

    [v14 setAutoresizingMask:18];
    [v14 setAlpha:0.0];
    if (v8)
    {
      v16 = [v14 layer];
      [v16 setAllowsGroupOpacity:1];
    }

    [(PBUIPosterWallpaperViewController *)self bs_addChildViewController:v13];
    objc_storeStrong(&self->_posterController, v13);
    if (+[PBUIPosterWallpaperRemoteViewController supportsLandscapeWallpaperContents])
    {
      -[PBUIPosterWallpaperViewController rotateToInterfaceOrientation:duration:](self, "rotateToInterfaceOrientation:duration:", [*MEMORY[0x277D76620] activeInterfaceOrientation], 0.0);
    }

    [(PBUIPosterViewController *)self->_posterController setDelegate:self];
    [(PBUIPosterViewController *)self->_posterController updateConfiguration:v9];
    [(PBUIPosterWallpaperViewController *)self _posterControllerDidChange];
    posterController = self->_posterController;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_2;
    v26[3] = &unk_278363298;
    v26[4] = self;
    v27 = v11;
    v18 = v11;
    [(PBUIPosterViewController *)posterController updatePoster:v26];
    v19 = self->_posterController;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_3;
    v22[3] = &unk_278363310;
    v22[4] = self;
    v23 = v13;
    v24 = v8;
    v25 = v12;
    v20 = v12;
    v21 = v13;
    [(PBUIPosterViewController *)v19 activateWithCompletion:v22];
  }
}

uint64_t __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!+[PBUIPosterWallpaperRemoteViewController supportsLandscapeWallpaperContents])
  {
    [v3 setLandscapeBlurEnabled:(*(*(a1 + 32) + 1088) - 3) < 2];
  }

  [v3 setActiveVariant:*(*(a1 + 32) + 1080)];
  [v3 setUnlockProgress:*(*(a1 + 32) + 1184)];
  [v3 setDeviceRoll:*(*(a1 + 32) + 1192)];
  [v3 setDevicePitch:*(*(a1 + 32) + 1200)];
  [v3 setDeviceYaw:*(*(a1 + 32) + 1208)];
  [v3 setActiveStyle:objc_msgSend(*(a1 + 40) forVariant:{"activeStyleForVariant:", objc_msgSend(*(a1 + 40), "activeVariant")), *(*(a1 + 32) + 1080)}];
  [v3 setActivelyRequired:1];
  if (MEMORY[0x223D62950]("[PBUIPosterWallpaperViewController updateConfiguration:withAnimationSettings:]_block_invoke_2"))
  {
    [v3 setActivelyRequiredReasons:&unk_282FD5990];
  }
}

void __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_3(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 40);
  if (*(*(a1 + 32) + 1000) == v2)
  {
    v4 = MEMORY[0x277CF0D38];
    v5 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_4;
    v14[3] = &unk_278361E18;
    v15 = v2;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_5;
    v10 = &unk_2783632E8;
    v6 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v6;
    v13 = *(a1 + 56);
    [v4 animateWithSettings:v5 actions:v14 completion:&v7];
    [*(a1 + 32) _posterControllerDidChange];
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

void __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_5(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (*(v3 + 1000) == v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_6;
    v5[3] = &unk_2783632C0;
    v5[4] = v3;
    [v2 updatePoster:v5];
  }

  return (*(a1[6] + 16))();
}

void __79__PBUIPosterWallpaperViewController_updateConfiguration_withAnimationSettings___block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setActivelyRequired:{objc_msgSend(*(*(a1 + 32) + 1040), "isActive")}];
  if (MEMORY[0x223D62950]("[PBUIPosterWallpaperViewController updateConfiguration:withAnimationSettings:]_block_invoke_6"))
  {
    v3 = [*(*(a1 + 32) + 1040) reasons];
    v4 = [v3 bs_array];
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];
    [v6 setActivelyRequiredReasons:v5];
  }
}

- (void)rotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive())
  {
    [(PBUIPosterViewController *)self->_posterController willRotateToInterfaceOrientation:a3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__PBUIPosterWallpaperViewController_rotateToInterfaceOrientation_duration___block_invoke;
    v11[3] = &unk_278363338;
    v11[4] = self;
    v11[5] = a3;
    v7 = MEMORY[0x223D62EE0](v11);
  }

  else
  {
    v7 = 0;
  }

  self->_activeOrientation = a3;
  v8 = MEMORY[0x277CF0D38];
  v9 = [MEMORY[0x277CF0B70] settingsWithDuration:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__PBUIPosterWallpaperViewController_rotateToInterfaceOrientation_duration___block_invoke_2;
  v10[3] = &unk_278361E18;
  v10[4] = self;
  [v8 animateWithSettings:v9 actions:v10 completion:v7];
}

void __75__PBUIPosterWallpaperViewController_rotateToInterfaceOrientation_duration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 backgroundColor];

  if (v3)
  {
    [v2 setBackgroundColor:0];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [v2 setBackgroundColor:v4];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 1000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__PBUIPosterWallpaperViewController_rotateToInterfaceOrientation_duration___block_invoke_3;
  v7[3] = &unk_2783632C0;
  v7[4] = v5;
  [v6 updatePoster:v7];
}

void __75__PBUIPosterWallpaperViewController_rotateToInterfaceOrientation_duration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!+[PBUIPosterWallpaperRemoteViewController supportsLandscapeWallpaperContents])
  {
    [v3 setLandscapeBlurEnabled:(*(*(a1 + 32) + 1088) - 3) < 2];
  }
}

- (id)requireWallpaperWithReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  BSDispatchQueueAssertMain();
  v6 = v5;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v6)
  {
    [PBUIPosterWallpaperViewController requireWallpaperWithReason:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBUIPosterWallpaperViewController requireWallpaperWithReason:a2];
  }

  if (!self->_wallpaperRequiredAssertion)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__PBUIPosterWallpaperViewController_requireWallpaperWithReason___block_invoke;
    v19[3] = &unk_2783633B0;
    v19[4] = self;
    v7 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"WallpaperRequired" stateDidChangeHandler:v19];
    wallpaperRequiredAssertion = self->_wallpaperRequiredAssertion;
    self->_wallpaperRequiredAssertion = v7;
  }

  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "Requiring wallpaper for reason: %@", buf, 0xCu);
  }

  v10 = [(BSCompoundAssertion *)self->_wallpaperRequiredAssertion acquireForReason:v6];
  v11 = objc_alloc(MEMORY[0x277CF0CE8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__PBUIPosterWallpaperViewController_requireWallpaperWithReason___block_invoke_81;
  v16[3] = &unk_2783633D8;
  v17 = v6;
  v18 = v10;
  v12 = v10;
  v13 = v6;
  v14 = [v11 initWithIdentifier:@"WallpaperRequired" forReason:v13 invalidationBlock:v16];

  return v14;
}

uint64_t __64__PBUIPosterWallpaperViewController_requireWallpaperWithReason___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 & 1) == 0)
  {
    v3 = PBUILogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Wallpaper is no longer required.", buf, 2u);
    }

    v2 = *(a1 + 40);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 1000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PBUIPosterWallpaperViewController_requireWallpaperWithReason___block_invoke_78;
  v7[3] = &unk_278363360;
  v8 = v2;
  v7[4] = v4;
  return [v5 updatePoster:v7];
}

void __64__PBUIPosterWallpaperViewController_requireWallpaperWithReason___block_invoke_78(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setActivelyRequired:*(a1 + 40)];
  if (MEMORY[0x223D62950]("[PBUIPosterWallpaperViewController requireWallpaperWithReason:]_block_invoke"))
  {
    v3 = [*(*(a1 + 32) + 1040) reasons];
    v4 = [v3 bs_array];
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];
    [v6 setActivelyRequiredReasons:v5];
  }
}

uint64_t __64__PBUIPosterWallpaperViewController_requireWallpaperWithReason___block_invoke_81(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PBUILogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "No longer requiring wallpaper for reason: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) invalidate];
}

- (void)setWallpaperStyle:(int64_t)a3 forPriority:(int64_t)a4 forVariant:(int64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = PBUILogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PBUIStringForWallpaperVariant(a5);
    v11 = PBUIWallpaperStyleDescription(a3);
    v12 = PBUIStringForWallpaperStylePriority(a4);
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "Setting %@ override style %@ for %@", &v13, 0x20u);
  }

  self->_activeStyles[a5][a4] = a3;
  [(PBUIPosterWallpaperViewController *)self _updateStyleForVariant:a5];
}

- (void)removeWallpaperStyleForPriority:(int64_t)a3 forVariant:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = PBUILogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PBUIStringForWallpaperVariant(a4);
    v9 = PBUIStringForWallpaperStylePriority(a3);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "Removing %@ override style for %@", &v10, 0x16u);
  }

  self->_activeStyles[a4][a3] = -1;
  [(PBUIPosterWallpaperViewController *)self _updateStyleForVariant:a4];
}

- (id)replicaProviderForVariant:(int64_t)a3
{
  v3 = &OBJC_IVAR___PBUIPosterWallpaperViewController__lockPosterReplicaProvider;
  if (a3 == 1)
  {
    v3 = &OBJC_IVAR___PBUIPosterWallpaperViewController__homePosterReplicaProvider;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_extendedRenderSessionKeepActiveReason invalidate];
  [(BSCompoundAssertion *)self->_wallpaperRequiredAssertion invalidate];
  [(BSInvalidatable *)self->_deviceMotionKeepActiveReason invalidate];
  [(BSInvalidatable *)self->_transitioningLockState invalidate];
  [(BSInvalidatable *)self->_keepForegroundRunning invalidate];
  [(PBUIPosterViewController *)self->_posterController invalidate];
  posterObserver = self->_posterObserver;

  [(PRSWallpaperObserver *)posterObserver invalidate];
}

- (void)_posterControllerDidChange
{
  [(PBUIDynamicProviderWrapper *)self->_homePosterReplicaProvider setRootObject:self->_posterController];
  [(PBUIDynamicProviderWrapper *)self->_lockPosterReplicaProvider setRootObject:self->_posterController];
  [(PBUIDynamicProviderWrapper *)self->_activeVariantReplicaProvider setRootObject:self->_posterController];
  lockFloatingLayerPosterReplicaProvider = self->_lockFloatingLayerPosterReplicaProvider;
  posterController = self->_posterController;

  [(PBUIDynamicProviderWrapper *)lockFloatingLayerPosterReplicaProvider setRootObject:posterController];
}

- (void)_posterConfigsDidChange:(id)a3 withTransition:(id)a4
{
  v5 = a3;
  v4 = v5;
  BSDispatchMain();
}

void __76__PBUIPosterWallpaperViewController__posterConfigsDidChange_withTransition___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) activeConfiguration];
  v3 = [v2 _path];
  v15 = [v3 serverIdentity];

  v4 = [*(a1 + 40) activeLock];
  v5 = [*(*(a1 + 32) + 1000) associatedConfiguration];
  v6 = [v5 _path];
  v7 = [v6 serverIdentity];

  v8 = [*(a1 + 40) activeHome];
  v9 = [v4 _path];
  v10 = [v9 serverIdentity];
  v11 = [v15 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    [*(a1 + 32) updateConfiguration:v4 withAnimationSettings:0];
  }

  v12 = [v8 _path];
  v13 = [v12 serverIdentity];
  v14 = [v7 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    [*(a1 + 32) updateAssociatedPosterConfiguration:v8 withAnimationSettings:0];
  }
}

- (void)_updateStyleForVariant:(int64_t)a3
{
  v5 = self->_activeStyles[a3];
  v6 = 4;
  while (1)
  {
    v7 = v5[v6];
    if (PBUIWallpaperStyleIsValid(v7))
    {
      break;
    }

    if (--v6 == -1)
    {
      v7 = 0;
      break;
    }
  }

  posterController = self->_posterController;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PBUIPosterWallpaperViewController__updateStyleForVariant___block_invoke;
  v9[3] = &__block_descriptor_48_e30_v16__0___PBUIPosterUpdating__8l;
  v9[4] = v7;
  v9[5] = a3;
  [(PBUIPosterViewController *)posterController updatePoster:v9];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PBUIPosterWallpaperViewController;
  [(PBUIPosterWallpaperViewController *)&v5 viewDidLoad];
  v3 = [(PBUIPosterWallpaperViewController *)self view];
  v4 = [(PBUIPosterViewController *)self->_posterController view];
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [(PBUIPosterWallpaperViewController *)self bs_addChildViewController:self->_posterController withSuperview:v3];
}

- (void)posterComponent:(id)a3 didUpdateLegibilitySettings:(id)a4
{
  v5 = a4;
  v6 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v6 posterComponent:self didUpdateLegibilitySettings:v5];
}

- (void)posterComponent:(id)a3 didUpdateHideDimmingLayer:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v6 posterComponent:self didUpdateHideDimmingLayer:v4];
}

- (void)posterComponent:(id)a3 didUpdatePreferredProminentColor:(id)a4
{
  v5 = a4;
  v6 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v6 posterComponent:self didUpdatePreferredProminentColor:v5];
}

- (id)posterComponentExternalDisplayConfiguration:(id)a3
{
  v4 = [(PBUIPosterWallpaperViewController *)self delegate];
  v5 = [v4 posterComponentExternalDisplayConfiguration:self];

  return v5;
}

- (void)posterComponent:(id)a3 didUpdateDeviceMotionEventsRequested:(BOOL)a4
{
  v4 = a4;
  v9 = *MEMORY[0x277D85DE8];
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "Poster didUpdateDeviceMotionEventsRequested:%{BOOL}u", v8, 8u);
  }

  v7 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v7 posterComponent:self didUpdateDeviceMotionEventsRequested:v4];
}

- (void)posterComponent:(id)a3 didUpdateDeviceMotionMode:(unint64_t)a4
{
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterWallpaperViewController posterComponent:a4 didUpdateDeviceMotionMode:v6];
  }

  v7 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v7 posterComponent:self didUpdateDeviceMotionMode:a4];
}

- (void)posterComponent:(id)a3 didUpdatePreferredSalientContentRectangle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v9 posterComponent:self didUpdatePreferredSalientContentRectangle:{x, y, width, height}];
}

- (void)posterComponent:(id)a3 didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v6 posterComponent:self didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:v4];
}

- (void)posterComponent:(id)a3 didUpdateSalientContentRectangleUpdatesRequested:(BOOL)a4
{
  v4 = a4;
  v6 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v6 posterComponent:self didUpdateSalientContentRectangleUpdatesRequested:v4];

  if ([(PBUIPosterViewController *)self->_posterController salientContentRectangleUpdatesRequested])
  {
    posterController = self->_posterController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __102__PBUIPosterWallpaperViewController_posterComponent_didUpdateSalientContentRectangleUpdatesRequested___block_invoke;
    v8[3] = &unk_2783632C0;
    v8[4] = self;
    [(PBUIPosterViewController *)posterController updatePoster:v8];
  }
}

- (void)posterComponent:(id)a3 didUpdatePreferredDeviceMotionUpdateInterval:(double)a4
{
  v6 = a3;
  v7 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v7 posterComponent:v6 didUpdatePreferredDeviceMotionUpdateInterval:a4];
}

- (void)posterComponent:(id)a3 didUpdateInExtendedRenderSession:(BOOL)a4
{
  v4 = a4;
  if (![a3 variant])
  {
    extendedRenderSessionKeepActiveReason = self->_extendedRenderSessionKeepActiveReason;
    if (v4)
    {
      if (extendedRenderSessionKeepActiveReason)
      {
        goto LABEL_7;
      }

      v7 = [(PBUIPosterWallpaperViewController *)self requireWallpaperWithReason:@"in extended render session"];
    }

    else
    {
      [(BSInvalidatable *)extendedRenderSessionKeepActiveReason invalidate];
      v7 = 0;
    }

    v8 = self->_extendedRenderSessionKeepActiveReason;
    self->_extendedRenderSessionKeepActiveReason = v7;
  }

LABEL_7:
  v9 = [(PBUIPosterWallpaperViewController *)self delegate];
  [v9 posterComponent:self didUpdateInExtendedRenderSession:v4];
}

- (id)succinctDescription
{
  v2 = [(PBUIPosterWallpaperViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIPosterWallpaperViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PBUIPosterWallpaperViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__PBUIPosterWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783622E0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __75__PBUIPosterWallpaperViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"posterController"];
  v3 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 1040) orderedReasons];
  v4 = [v5 array];
  [v3 appendArraySection:v4 withName:@"requiredReasons" skipIfEmpty:1];
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

- (void)setActiveVariant:(char *)a1 .cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid variant"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2_2();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"PBUIPosterWallpaperViewController.m";
    v15 = 1024;
    v16 = 145;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateConfiguration:(char *)a1 withAnimationSettings:.cold.1(char *a1)
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

- (void)updateConfiguration:(char *)a1 withAnimationSettings:.cold.2(char *a1)
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

- (void)posterComponent:(uint64_t)a1 didUpdateDeviceMotionMode:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "Poster didUpdateDeviceMotionMode:%ld", &v2, 0xCu);
}

@end