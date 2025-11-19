@interface PBUIPosterHomeViewController
+ (int64_t)presentationModeForHomeConfiguration:(id)a3;
- (BOOL)canShowSnapshot;
- (BOOL)isHomeScreenWallpaperDimmed;
- (BOOL)isSettledPosition;
- (BOOL)showsSnapshotWhenIdleForMode:(int64_t)a3;
- (BOOL)updateGradientViewWithGradient:(id)a3;
- (BOOL)updateHomeVariantStyleState;
- (BOOL)updatePresentation:(BOOL)a3;
- (PBUIHomeVariantStyleState)currentHomeVariantStyleState;
- (PBUIPosterHomeViewController)init;
- (double)averageContrast;
- (double)unlockProgress;
- (double)weightingForEffectView;
- (id)_descriptorIdentity;
- (id)_fetchPosterPreferredProminentColor;
- (id)_fetchStyleState;
- (id)acquireDuckHomeScreenWallpaperDimAssertionWithReason:(id)a3;
- (id)averageColor;
- (id)contentColorStatistics;
- (id)homeScreenConfiguration;
- (unint64_t)_updatedDimStyle;
- (void)_accessibilityReduceTransparencyChanged:(id)a3;
- (void)_didFinishRotating;
- (void)_duckHomeScreenWallpaperDimAssertionDidInvalidate:(id)a3;
- (void)_updateDimHomeScreenWallpaperViewAnimated;
- (void)_updateDimHomeScreenWallpaperViewForUnlockProgress:(double)a3 animated:(BOOL)a4;
- (void)_updateEnableHomeScreenWallpaperDimming;
- (void)_updateRotationForOrientation:(int64_t)a3;
- (void)applyFauxExternalSceneSettings:(id)a3;
- (void)configureEffectViewForMode;
- (void)configureForZOrder;
- (void)dealloc;
- (void)effectTrackingReplicaViewHasValidSnapshot:(id)a3;
- (void)homeScreenConfiguration;
- (void)loadView;
- (void)noteHomeVariantStyleStateMayHaveUpdated;
- (void)noteWillRotateToInterfaceOrientation:(int64_t)a3;
- (void)performSnapshotOnQueue:(id)a3 scene:(id)a4 completion:(id)a5;
- (void)setActiveStyle:(int64_t)a3;
- (void)setCounterpart:(id)a3;
- (void)setFixedAverageColor:(id)a3;
- (void)updateViewControllerVisibilityForUnlockProgress:(double)a3;
- (void)validateSnapshottingPreconditionsForSettings:(id)a3 result:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PBUIPosterHomeViewController

- (id)contentColorStatistics
{
  fixedColorStatistics = self->_fixedColorStatistics;
  if (fixedColorStatistics)
  {
    v3 = fixedColorStatistics;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PBUIPosterHomeViewController;
    v3 = [(PBUIPosterVariantViewController *)&v5 contentColorStatistics];
  }

  return v3;
}

- (void)configureForZOrder
{
  v3 = [(PBUIPosterHomeViewController *)self view];
  [v3 bringSubviewToFront:self->_dimView];

  v4 = [(BSUIOrientationTransformWrapperView *)self->_dynamicWrapperView superview];

  if (v4)
  {
    if ([(PBUIPosterHomeViewController *)self canShowSnapshot]&& ![(PBUIPosterHomeViewController *)self reflectsLock])
    {
      p_contentContainer = &self->super._contentContainer;
      contentContainer = self->super._contentContainer;
      p_snapshotView = &self->super._snapshotView;
      snapshotView = self->super._snapshotView;
      dynamicWrapperView = self->_dynamicWrapperView;
    }

    else
    {
      p_contentContainer = &self->super._contentContainer;
      snapshotView = self->_dynamicWrapperView;
      contentContainer = self->super._contentContainer;
      p_snapshotView = &self->super._snapshotView;
      dynamicWrapperView = self->super._snapshotView;
    }

    [(UIView *)contentContainer insertSubview:snapshotView aboveSubview:dynamicWrapperView];
    v10 = *p_contentContainer;
    effectView = self->_effectView;
    v12 = *p_snapshotView;

    [(UIView *)v10 insertSubview:effectView aboveSubview:v12];
  }
}

- (BOOL)canShowSnapshot
{
  if ([(PBUIPosterVariantViewController *)self needsSnapshot]|| [(PBUIPosterVariantViewController *)self isSnapshotting]|| ![(PBUIPosterVariantViewController *)self isSnapshotInCorrectOrientation]|| self->_isUpdatingOrientation > 0 || ![(PBUIPosterHomeViewController *)self showsSnapshotWhenIdleForMode:self->_currentMode])
  {
    return 0;
  }

  return [(PBUIPosterHomeViewController *)self isSettledPosition];
}

- (id)_descriptorIdentity
{
  scene = self->super._scene;
  v4 = scene;
  if (!scene)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._counterpart);
    v4 = [WeakRetained scene];
  }

  v5 = [v4 pui_posterPath];
  v6 = [v5 descriptorIdentifier];

  if (!scene)
  {
  }

  return v6;
}

- (id)homeScreenConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->super._counterpart);
  v3 = [WeakRetained lockScreenConfiguration];
  v8 = 0;
  v4 = [v3 pr_loadHomeScreenConfigurationWithError:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = PBUILogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PBUIPosterHomeViewController *)v5 homeScreenConfiguration];
    }
  }

  return v4;
}

- (BOOL)updateHomeVariantStyleState
{
  v3 = self->_currentHomeVariantStyleState;
  v4 = [(PBUIPosterHomeViewController *)self _fetchStyleState];
  v5 = [(PBUIHomeVariantStyleState *)v3 isEqualToState:v4];
  if (!v5)
  {
    objc_storeStrong(&self->_currentHomeVariantStyleState, v4);
  }

  return !v5;
}

- (id)_fetchStyleState
{
  v3 = [(PBUIPosterHomeViewController *)self homeScreenConfiguration];
  v4 = PBUIHomeVariantStyleStateFromPRPosterHomeScreenConfiguration(v3);
  v5 = [v4 suggestedTintColor];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [(PBUIPosterVariantViewController *)self _posterPreferredProminentColor:1];
    v7 = [v4 styleStateByUpdatingSuggestedTintColor:v6];

    v4 = v7;
  }

  return v4;
}

- (double)weightingForEffectView
{
  v3 = [(PBUIPosterHomeViewController *)self isBlurred];
  result = 1.0;
  if (v3)
  {
    [(PBUIPosterHomeViewController *)self unlockProgress];
    v6 = (v5 + -0.2) / 0.8;
    if (v6 <= 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v6 + 0.0;
    }

    return fmin(v7, 1.0);
  }

  return result;
}

- (id)averageColor
{
  if (self->_fixedColorStatistics)
  {
    v2 = [(PUIColorStatistics *)self->_fixedColorStatistics averageColor];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PBUIPosterHomeViewController;
    v2 = [(PBUIPosterVariantViewController *)&v4 averageColor];
  }

  return v2;
}

- (PBUIHomeVariantStyleState)currentHomeVariantStyleState
{
  currentHomeVariantStyleState = self->_currentHomeVariantStyleState;
  if (!currentHomeVariantStyleState)
  {
    v4 = [(PBUIPosterHomeViewController *)self _fetchStyleState];
    v5 = self->_currentHomeVariantStyleState;
    self->_currentHomeVariantStyleState = v4;

    currentHomeVariantStyleState = self->_currentHomeVariantStyleState;
  }

  v6 = currentHomeVariantStyleState;

  return v6;
}

- (PBUIPosterHomeViewController)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PBUIPosterHomeViewController;
  v2 = [(PBUIPosterHomeViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_self();
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v5 = [(PBUIPosterHomeViewController *)v2 registerForTraitChanges:v4 withAction:sel__updateDimHomeScreenWallpaperViewAnimated];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__accessibilityReduceTransparencyChanged_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_duckHomeScreenWallpaperDimAssertions;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  duckHomeScreenWallpaperDimAssertions = self->_duckHomeScreenWallpaperDimAssertions;
  self->_duckHomeScreenWallpaperDimAssertions = 0;

  v9.receiver = self;
  v9.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterVariantViewController *)&v9 dealloc];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterHomeViewController *)&v7 loadView];
  v3 = objc_alloc_init(MEMORY[0x277CF0D78]);
  dynamicWrapperView = self->_dynamicWrapperView;
  self->_dynamicWrapperView = v3;

  v5 = objc_opt_new();
  dimView = self->_dimView;
  self->_dimView = v5;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterVariantViewController *)&v19 viewDidLoad];
  dynamicWrapperView = self->_dynamicWrapperView;
  [(UIView *)self->super._contentContainer bounds];
  [(BSUIOrientationTransformWrapperView *)dynamicWrapperView setFrame:?];
  initialOrientation = 1;
  [(BSUIOrientationTransformWrapperView *)self->_dynamicWrapperView setCounterTransformView:1];
  self->_initialOrientation = 1;
  v5 = self->_dynamicWrapperView;
  if (soft_PF_IS_PAD_DEVICE())
  {
    if (soft_PUIDynamicRotationIsActive())
    {
      initialOrientation = self->_initialOrientation;
    }

    else
    {
      initialOrientation = 1;
    }
  }

  [(BSUIOrientationTransformWrapperView *)v5 setContainerOrientation:initialOrientation];
  [(UIView *)self->super._contentContainer addSubview:self->_dynamicWrapperView];
  [(PBUIPosterHomeViewController *)self _updateRotationForOrientation:self->_initialOrientation];
  if (_PRNeedsWallpaperCaptureView_onceToken != -1)
  {
    [PBUIPosterHomeViewController viewDidLoad];
  }

  if (_PRNeedsWallpaperCaptureView_needsWallpaperCaptureView == 1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getMTMaterialViewClass_softClass_0;
    v24 = getMTMaterialViewClass_softClass_0;
    if (!getMTMaterialViewClass_softClass_0)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getMTMaterialViewClass_block_invoke_0;
      v20[3] = &unk_278361F18;
      v20[4] = &v21;
      __getMTMaterialViewClass_block_invoke_0(v20);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v8 = [v6 materialViewWithRecipe:19 options:4];
    wallpaperCaptureView = self->_wallpaperCaptureView;
    self->_wallpaperCaptureView = v8;

    [(MTMaterialView *)self->_wallpaperCaptureView setGroupName:@"WallpaperCaptureGroup"];
    v10 = [(MTMaterialView *)self->_wallpaperCaptureView layer];
    v11 = objc_opt_class();
    v12 = v10;
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

    [v14 setGroupNamespace:*MEMORY[0x277CDA098]];
    [v12 setName:@"WallpaperCaptureLayer"];
    [(MTMaterialView *)self->_wallpaperCaptureView setAutoresizingMask:18];
    v15 = [(PBUIPosterHomeViewController *)self view];
    [v15 addSubview:self->_wallpaperCaptureView];

    v16 = [(PBUIPosterHomeViewController *)self view];
    [v16 bringSubviewToFront:self->_wallpaperCaptureView];
  }

  [(PBUIPosterHomeViewController *)self configureForZOrder];
  [(PBUIPosterHomeViewController *)self unlockProgress];
  [(PBUIPosterHomeViewController *)self _updateDimHomeScreenWallpaperViewForUnlockProgress:0 animated:?];
  v17 = [(PBUIPosterHomeViewController *)self view];
  [v17 addSubview:self->_dimView];

  v18 = [(PBUIPosterHomeViewController *)self view];
  [v18 bringSubviewToFront:self->_dimView];

  [(PBUIPosterHomeViewController *)self _updateEnableHomeScreenWallpaperDimming];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterHomeViewController *)&v8 viewDidLayoutSubviews];
  dynamicWrapperView = self->_dynamicWrapperView;
  [(UIView *)self->super._contentContainer bounds];
  [(BSUIOrientationTransformWrapperView *)dynamicWrapperView setFrame:?];
  wallpaperCaptureView = self->_wallpaperCaptureView;
  if (wallpaperCaptureView)
  {
    v5 = [(PBUIPosterHomeViewController *)self view];
    [v5 bounds];
    [(MTMaterialView *)wallpaperCaptureView setFrame:?];
  }

  dimView = self->_dimView;
  v7 = [(PBUIPosterHomeViewController *)self view];
  [v7 bounds];
  [(_PBUIDimmingView *)dimView setFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterHomeViewController *)&v4 viewWillAppear:a3];
  [(PBUIPosterHomeViewController *)self unlockProgress];
  [(PBUIPosterHomeViewController *)self _updateDimHomeScreenWallpaperViewForUnlockProgress:0 animated:?];
}

- (double)averageContrast
{
  if (self->_fixedColorStatistics)
  {
    fixedColorStatistics = self->_fixedColorStatistics;

    [(PUIColorStatistics *)fixedColorStatistics averageContrast];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PBUIPosterHomeViewController;
    [(PBUIPosterVariantViewController *)&v6 averageContrast];
  }

  return result;
}

- (void)noteWillRotateToInterfaceOrientation:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterVariantViewController *)&v7 noteWillRotateToInterfaceOrientation:?];
  self->_mostRecentOrientation = a3;
  if ([(PBUIPosterHomeViewController *)self bs_isAppearingOrAppeared])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__PBUIPosterHomeViewController_noteWillRotateToInterfaceOrientation___block_invoke;
    v6[3] = &unk_278362880;
    v6[4] = self;
    v6[5] = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__PBUIPosterHomeViewController_noteWillRotateToInterfaceOrientation___block_invoke_2;
    v5[3] = &unk_2783620F8;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.4];
    ++self->_isUpdatingOrientation;
    [(PBUIEffectTrackingReplicaView *)self->_effectView setShowsSnapshot:[(PBUIPosterHomeViewController *)self canShowSnapshot]];
  }
}

- (void)_didFinishRotating
{
  isUpdatingOrientation = self->_isUpdatingOrientation;
  self->_isUpdatingOrientation = isUpdatingOrientation - 1;
  if (isUpdatingOrientation <= 1)
  {
    self->_isUpdatingOrientation = 0;
    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"rotation complete"];

    [(PBUIPosterHomeViewController *)self updatePresentation:0];
  }
}

- (void)_updateRotationForOrientation:(int64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"rotating to %lu", a3];
  [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:v5];

  dynamicWrapperView = self->_dynamicWrapperView;
  if (self->_gradientView)
  {
    if (soft_PF_IS_PAD_DEVICE())
    {
      if (soft_PUIDynamicRotationIsActive())
      {
        v7 = a3;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }

    [(BSUIOrientationTransformWrapperView *)dynamicWrapperView setContentOrientation:v7];
  }

  else
  {
    [(BSUIOrientationTransformWrapperView *)self->_dynamicWrapperView setContentOrientation:1];
    if ([(PBUIPosterHomeViewController *)self bs_isAppearingOrAppeared])
    {
      scene = self->super._scene;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __62__PBUIPosterHomeViewController__updateRotationForOrientation___block_invoke;
      v9[3] = &unk_278362C38;
      v9[4] = self;
      [(FBScene *)scene pb_update:v9];
    }
  }
}

void __62__PBUIPosterHomeViewController__updateRotationForOrientation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (soft_PF_IS_PAD_DEVICE() && (soft_PUIDynamicRotationIsActive() & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(*(a1 + 32) + 1312);
  }

  [v6 setInterfaceOrientation:v7];
  [v6 pui_setDeviceOrientation:*(*(a1 + 32) + 1312)];

  v8 = [*(a1 + 32) view];
  v9 = [v8 window];
  v13 = [v9 windowScene];

  [v13 _synchronizeDrawing];
  v10 = [v13 _synchronizedDrawingFence];
  [v5 setAnimationFence:v10];

  v11 = MEMORY[0x277CF0B70];
  [MEMORY[0x277D75D18] inheritedAnimationDuration];
  v12 = [v11 settingsWithDuration:?];
  [v5 setAnimationSettings:v12];
}

- (void)performSnapshotOnQueue:(id)a3 scene:(id)a4 completion:(id)a5
{
  v48[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_currentMode)
  {
    objc_initWeak(&location, self);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke;
    v44[3] = &unk_278363588;
    v11 = v9;
    v45 = v11;
    v12 = MEMORY[0x223D62EE0](v44);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_2;
    v41[3] = &unk_278363600;
    objc_copyWeak(&v43, &location);
    v13 = v8;
    v42 = v13;
    v14 = MEMORY[0x223D62EE0](v41);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_5;
    v35[3] = &unk_2783636A0;
    v15 = v11;
    v36 = v15;
    v37 = self;
    v39 = v10;
    v16 = v13;
    v38 = v16;
    v17 = v12;
    v40 = v17;
    v18 = MEMORY[0x223D62EE0](v35);
    v19 = v18;
    currentMode = self->_currentMode;
    if (currentMode == 2)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_5_172;
      v28[3] = &unk_2783636F0;
      v31 = v18;
      v29 = v16;
      v30 = self;
      v27.receiver = self;
      v27.super_class = PBUIPosterHomeViewController;
      [(PBUIPosterVariantViewController *)&v27 performSnapshotOnQueue:v29 scene:v15 completion:v28];

      v21 = &v31;
    }

    else if (currentMode == 1)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_4_168;
      v33[3] = &unk_2783636C8;
      v34 = v18;
      v32.receiver = self;
      v32.super_class = PBUIPosterHomeViewController;
      [(PBUIPosterVariantViewController *)&v32 performSnapshotOnQueue:v16 scene:v15 completion:v33];
      v21 = &v34;
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_6_181;
      v25[3] = &unk_2783636C8;
      v26 = v18;
      (v14)[2](v14, v25);
      v21 = &v26;
    }

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA470];
    v48[0] = @"presentation mode is undefined; skipping snapshot";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v24 = [v22 errorWithDomain:@"com.apple.PaperBoardUI" code:-1 userInfo:v23];
    (*(v10 + 2))(v10, 0, 0, 0, 0, 0, v24);
  }
}

id __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = MEMORY[0x277CCAAB0];
  v11 = [v5 BSColor];

  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

  if (v12)
  {
    [v9 setObject:v12 forKeyedSubscript:@"kDerivedProminentPosterColorMetadataKey"];
  }

  v13 = MEMORY[0x277CCAAB0];
  v14 = [*(a1 + 32) clientSettings];
  v15 = [v14 pr_preferredProminentColor];
  v16 = [v13 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];

  if (v16)
  {
    [v9 setObject:v16 forKeyedSubscript:@"kPosterPreferredProminentPosterColorMetadataKey"];
  }

  return v9;
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = v3;
  v4 = *(a1 + 32);
  BSDispatchMain();

  objc_destroyWeak(&v6);
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_3(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained view];
    v5 = [v3 view];
    [v5 bounds];
    v6 = [v4 newSnapshotWithRect:?];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_4;
    v13[3] = &unk_2783635B0;
    v15 = v6;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13[4] = v3;
    v14 = v8;
    dispatch_async(v7, v13);
    v9 = v14;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v17[0] = @"calling object was deallocated before we could access";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v11 errorWithDomain:@"com.apple.PaperBoardUI" code:-2 userInfo:v9];
    (*(v10 + 16))(v10, 0, 0, 0, 0, 0, v12);
  }
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] imageWithCGImage:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
  CGImageRelease(*(a1 + 48));
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_6;
  v32[3] = &unk_278363678;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v33 = v22;
  v34 = v23;
  v35 = v21;
  v36 = v17;
  v24 = *(a1 + 56);
  v37 = v15;
  v38 = v16;
  v39 = v19;
  v40 = v20;
  v43 = v24;
  v41 = v18;
  v42 = *(a1 + 48);
  v44 = *(a1 + 64);
  v25 = v18;
  v26 = v20;
  v27 = v19;
  v28 = v16;
  v29 = v15;
  v30 = v17;
  v31 = v21;
  dispatch_async(MEMORY[0x277D85CD0], v32);
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_6(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clientSettings];
  v3 = [v2 pr_preferredProminentColor];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) derivedProminentColor];
    v4 = v5 == 0;
  }

  v6 = PBUILogSnapshot();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PBUIStringForWallpaperVariant([*(a1 + 40) variant]);
    *buf = 138543618;
    v22 = v7;
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] needsPosterDerivedProminentColorDetermination: %{BOOL}u", buf, 0x12u);
  }

  if (!*(a1 + 48) && *(a1 + 56) && v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_163;
    v11[3] = &unk_278363650;
    v8 = *(a1 + 96);
    v12 = *(a1 + 104);
    v19 = *(a1 + 112);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v15 = v9;
    v16 = v10;
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v20 = *(a1 + 120);
    [v8 pui_determineProminentColorWithCompletion:v11];
  }

  else
  {
    (*(*(a1 + 112) + 16))();
  }
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_163(uint64_t a1, void *a2)
{
  v3 = a2;
  BSDispatchQueueAssertMain();
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_2_164;
  block[3] = &unk_278363628;
  v17 = v3;
  v5 = *(a1 + 88);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 64);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v18 = v9;
  v19 = v8;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  *&v13 = v5;
  *(&v13 + 1) = v12;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v20 = v14;
  v21 = v13;
  v15 = v3;
  dispatch_async(v4, block);
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_2_164(void *a1)
{
  if (a1[4])
  {
    v2 = (*(a1[12] + 16))();
    v3 = *(a1[8] + 1288);
    if (!v3)
    {
      v3 = a1[9];
    }

    (*(a1[11] + 16))(a1[11], 0, a1[6], a1[7], v3, v2, 0);
  }

  else
  {
    v4 = a1[11];
    v5 = *(a1[8] + 1288);
    if (!v5)
    {
      v5 = a1[9];
    }

    (*(v4 + 16))(v4, a1[5], a1[6], a1[7], v5, a1[10], 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_3_165;
  block[3] = &unk_278361E18;
  block[4] = a1[8];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__PBUIPosterHomeViewController_performSnapshotOnQueue_scene_completion___block_invoke_5_172(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = a4;
  if (!v13 || a7)
  {
    v22 = *(a1 + 48);
    v23 = *(v22 + 16);
    v19 = a6;
    v15 = a3;
    v23(v22, a2, v15, v13, v13, a5, v19, a7);
  }

  else
  {
    v14 = a6;
    v36 = a3;
    BSDispatchQueueAssert();
    v15 = objc_alloc_init(PBUIMaterialCompositor);
    [(PBUIMaterialCompositor *)v15 setDownsampleFactor:1.0];
    v16 = [PBUIWallpaperEffectConfiguration alloc];
    v17 = [MEMORY[0x277D75348] blackColor];
    v18 = [*(a1 + 40) traitCollection];
    v19 = -[PBUIWallpaperEffectConfiguration initWithStyle:contentColor:userInterfaceStyle:](v16, 0x1EuLL, v17, [v18 userInterfaceStyle]);

    v20 = [v14 mutableCopy];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = objc_opt_new();
    }

    v24 = v21;

    v25 = [v24 objectForKey:@"AppliedEffects"];
    v26 = [v25 mutableCopy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = objc_opt_new();
    }

    v29 = v28;

    [v29 addObject:@"HomeLegibilityBlur"];
    v30 = [v29 copy];
    [v24 setObject:v30 forKeyedSubscript:@"AppliedEffects"];

    v37 = 0;
    v31 = v13;
    v32 = [(PBUIMaterialCompositor *)v15 applyEffect:v19 toImage:v31 error:&v37];
    v33 = *(a1 + 48);
    v34 = v37;
    v35 = [v24 copy];
    (*(v33 + 16))(v33, 0, v36, v32, v31, 0, v35, v34);
  }
}

+ (int64_t)presentationModeForHomeConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedAppearanceType];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = [v3 solidColorAppearance];
        v6 = [v5 effectiveColor];

        if (v6)
        {
          v7 = 3;
          goto LABEL_16;
        }
      }

LABEL_12:
      v7 = 1;
      goto LABEL_16;
    }

    v8 = [v3 lockPosterAppearance];
LABEL_10:
    v9 = v8;
    v10 = [v8 isLegibilityBlurEnabled];

    if (v10)
    {
      v7 = 2;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_12;
    }

    v8 = [v3 homePosterAppearance];
    goto LABEL_10;
  }

  v11 = [v3 gradientAppearance];

  if (v11)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (id)_fetchPosterPreferredProminentColor
{
  v3 = [(PBUIPosterHomeViewController *)self homeScreenConfiguration];
  if (([PBUIPosterHomeViewController presentationModeForHomeConfiguration:v3]- 3) > 1)
  {
    v8.receiver = self;
    v8.super_class = PBUIPosterHomeViewController;
    v6 = [(PBUIPosterVariantViewController *)&v8 _fetchPosterPreferredProminentColor];
  }

  else
  {
    v4 = [v3 solidColorAppearance];
    v5 = [v4 effectiveColor];
    v6 = [v5 color];
  }

  return v6;
}

- (BOOL)updatePresentation:(BOOL)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = [(PBUIPosterHomeViewController *)self homeScreenConfiguration];
  v7 = [(PBUIEffectTrackingReplicaView *)self->_effectView showsSnapshot];
  if (v7 != [(PBUIPosterHomeViewController *)self canShowSnapshot])
  {
    v8 = PBUILogSnapshot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PBUIStringForWallpaperVariant([(PBUIPosterHomeViewController *)self variant]);
      *buf = 138543362;
      v41 = v9;
      _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] forcing update; we can now show a snapshot", buf, 0xCu);
    }

    a3 = 1;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __51__PBUIPosterHomeViewController_updatePresentation___block_invoke;
  v38[3] = &unk_278361E18;
  v38[4] = self;
  v10 = MEMORY[0x223D62EE0](v38);
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_homeConfiguration, v6);
    v14 = PBUILogSnapshot();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PBUIStringForWallpaperVariant([(PBUIPosterHomeViewController *)self variant]);
      *buf = 138543362;
      v41 = v15;
      _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] forcing update; home configuration was updated", buf, 0xCu);
    }

    v12 = [PBUIPosterHomeViewController presentationModeForHomeConfiguration:v6];
LABEL_12:
    self->_currentMode = v12;
    v16 = self->super._contentContainer;
    if ((v12 - 1) <= 1)
    {
      [(PBUIPosterHomeViewController *)self setFixedAverageColor:0];
      [(PBUIGradientView *)self->_gradientView removeFromSuperview];
      gradientView = self->_gradientView;
      self->_gradientView = 0;

      [(PBUIPosterHomeViewController *)self setFixedAverageColor:0];
      presenter = self->super._presenter;
      if (self->super._scene)
      {
        if (!presenter)
        {
          [(PBUIPosterHomeViewController *)a2 updatePresentation:?];
        }

        [(UIScenePresenter *)presenter activate];
        v19 = [(UIScenePresenter *)self->super._presenter presentationView];
        sceneView = self->super._sceneView;
        self->super._sceneView = v19;

        v21 = self->super._sceneView;
        [(UIView *)v16 bounds];
        [(UIScenePresentation *)v21 setFrame:?];
        [(UIScenePresentation *)self->super._sceneView setAutoresizingMask:18];
        [(BSUIOrientationTransformWrapperView *)self->_dynamicWrapperView addContentView:self->super._sceneView];
      }

      else
      {
        [(UIScenePresenter *)presenter deactivate];
        [(UIScenePresentation *)self->super._sceneView removeFromSuperview];
        v30 = self->super._sceneView;
        self->super._sceneView = 0;
      }

      if ([(PBUIPosterHomeViewController *)self showsSnapshotWhenIdleForMode:v12]|| !self->super._scene)
      {
        if (self->_effectView)
        {
          [(UIView *)v16 bringSubviewToFront:?];
        }

        else
        {
          v34 = [PBUIEffectTrackingReplicaView alloc];
          [(UIView *)v16 bounds];
          v35 = [(PBUIEffectTrackingReplicaView *)v34 initWithFrame:?];
          effectView = self->_effectView;
          self->_effectView = v35;

          [(PBUIEffectTrackingReplicaView *)self->_effectView setReason:@"HomeVC blurs"];
          [(PBUIEffectTrackingReplicaView *)self->_effectView setRequiresSnapshotTreatment:0];
          [(PBUIEffectTrackingReplicaView *)self->_effectView setAutoresizingMask:18];
          [(PBUIEffectTrackingReplicaView *)self->_effectView setDelegate:self];
          [(UIView *)v16 addSubview:self->_effectView];
        }

        [(PBUIPosterHomeViewController *)self configureEffectViewForMode];
      }

      else
      {
        [(PBUIEffectTrackingReplicaView *)self->_effectView invalidate];
        [(PBUIEffectTrackingReplicaView *)self->_effectView removeFromSuperview];
        v31 = self->_effectView;
        self->_effectView = 0;
      }

      v10[2](v10);
      LOBYTE(v13) = 1;
LABEL_33:

      goto LABEL_34;
    }

    [(UIScenePresenter *)self->super._presenter deactivate];
    [(UIScenePresentation *)self->super._sceneView removeFromSuperview];
    v22 = self->super._sceneView;
    self->super._sceneView = 0;

    [(PBUIEffectTrackingReplicaView *)self->_effectView invalidate];
    [(PBUIEffectTrackingReplicaView *)self->_effectView removeFromSuperview];
    v23 = self->_effectView;
    self->_effectView = 0;

    v24 = objc_alloc_init(PBUIWallpaperGradient);
    if (v12 == 3)
    {
      v32 = [v6 solidColorAppearance];
      v26 = [v32 effectiveColor];

      v27 = [v26 color];
      v39[0] = v27;
      v39[1] = v27;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      [(PBUIWallpaperGradient *)v24 setColors:v33];

      [(PBUIPosterHomeViewController *)self setFixedAverageColor:v27];
    }

    else
    {
      if (v12 != 4)
      {
LABEL_27:
        v13 = [(PBUIPosterHomeViewController *)self updateGradientViewWithGradient:v24];
        if (v13)
        {
          v10[2](v10);
        }

        goto LABEL_33;
      }

      v25 = [v6 gradientAppearance];
      v26 = [v25 effectiveColor];

      v27 = [v26 color];
      v28 = [v6 gradientAppearance];
      v29 = [v28 gradientColors];

      [(PBUIWallpaperGradient *)v24 setColors:v29];
      [(PBUIPosterHomeViewController *)self setFixedAverageColor:v27];
    }

    goto LABEL_27;
  }

  v11 = [PBUIPosterHomeViewController presentationModeForHomeConfiguration:v6];
  v12 = v11;
  if (a3 || self->_currentMode != v11)
  {
    goto LABEL_12;
  }

  v10[2](v10);
  LOBYTE(v13) = 0;
LABEL_34:

  return v13;
}

uint64_t __51__PBUIPosterHomeViewController_updatePresentation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  [*(a1 + 32) updateHomeVariantStyleState];
  if ((_os_feature_enabled_impl() & 1) != 0 && _UISolariumEnabled())
  {
    v2 = *(*v1 + 159);
    [*v1 weightingForEffectView];
    [v2 setEffectWeight:?];
  }

  v3 = [*(*v1 + 159) showsSnapshot];
  v4 = [*v1 canShowSnapshot];
  [*(*v1 + 159) setShowsSnapshot:v4];
  v5 = PBUILogRuntime();
  v6 = v5;
  if (v3 == v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__PBUIPosterHomeViewController_updatePresentation___block_invoke_cold_1(v1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PBUIStringForWallpaperVariant([*v1 variant]);
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] isShowingSnapshot: %{BOOL}u (updated)", &v9, 0x12u);
  }

  return [*v1 configureForZOrder];
}

- (void)setFixedAverageColor:(id)a3
{
  v4 = a3;
  fixedColorStatistics = self->_fixedColorStatistics;
  v11 = v4;
  if (v4)
  {
    if (fixedColorStatistics)
    {
      [(PUIColorStatistics *)fixedColorStatistics resetWithColor:v4];
    }

    else
    {
      v7 = objc_alloc(getPUIColorStatisticsClass());
      v8 = [getPLKColorBoxesClass() colorBoxesForAverageColor:v11];
      v9 = [v7 initWithColorBoxes:v8];
      v10 = self->_fixedColorStatistics;
      self->_fixedColorStatistics = v9;
    }
  }

  else
  {
    self->_fixedColorStatistics = 0;

    if (fixedColorStatistics)
    {
      v6 = [(PBUIPosterHomeViewController *)self contentColorStatistics];
      [(PBUIPosterVariantViewController *)self colorStatisticsDidChange:v6];
    }
  }
}

- (BOOL)updateGradientViewWithGradient:(id)a3
{
  v4 = a3;
  gradientView = self->_gradientView;
  if (!gradientView)
  {
    v6 = [PBUIGradientView alloc];
    [(UIView *)self->super._contentContainer bounds];
    v7 = [(PBUIGradientView *)v6 initWithFrame:?];
    v8 = self->_gradientView;
    self->_gradientView = v7;

    [(PBUIGradientView *)self->_gradientView setAutoresizingMask:18];
    [(BSUIOrientationTransformWrapperView *)self->_dynamicWrapperView addContentView:self->_gradientView];
    v9 = [(PBUIPosterVariantViewController *)self counterpart];
    v10 = [v9 scene];
    v11 = [v10 settings];
    -[PBUIPosterHomeViewController _updateRotationForOrientation:](self, "_updateRotationForOrientation:", [v11 pui_deviceOrientation]);

    gradientView = self->_gradientView;
  }

  v12 = [(PBUIGradientView *)gradientView gradient];
  v13 = BSEqualObjects();

  [(PBUIGradientView *)self->_gradientView setGradient:v4];
  return v13 ^ 1;
}

- (void)validateSnapshottingPreconditionsForSettings:(id)a3 result:(id)a4
{
  v24 = a3;
  v6 = a4;
  currentMode = self->_currentMode;
  if ((currentMode - 3) <= 1)
  {
    v8 = [(PBUIPosterHomeViewController *)self viewIfLoaded];
    if (!v8)
    {
      [v6 appendPreconditionResultFailureWithFormat:@"poster scene view has not been created"];
    }

    if ([v8 isHidden])
    {
      [v6 appendPreconditionResultFailureWithFormat:@"poster scene view is hidden"];
    }

    gradientView = self->_gradientView;
    if (!gradientView)
    {
      [v6 appendPreconditionResultFailureWithFormat:@"poster scene view's gradient view has not been created"];
      gradientView = self->_gradientView;
    }

    if ([(PBUIGradientView *)gradientView isHidden])
    {
      [v6 appendPreconditionResultFailureWithFormat:@"poster scene view's gradient view is hidden"];
    }

    v10 = [(PBUIGradientView *)self->_gradientView superview];

    if (!v10)
    {
      [v6 appendPreconditionResultFailureWithFormat:@"poster scene view's gradient view has not been added to a superview"];
    }
  }

  v11 = [MEMORY[0x277CF0CA8] sharedInstance];
  v12 = [v11 deviceClass];

  if (v12 != 2 && [v24 pr_adjustedLuminance] != 2 && (objc_msgSend(v6, "isSnapshottingForExternalDisplayHostedWallpaper") & 1) == 0)
  {
    v13 = [v24 pr_adjustedLuminance];
    v14 = MEMORY[0x223D622C0](0);
    [v6 appendPreconditionResultFailureWithFormat:@"screen is off; Backlight mode: %lu; isPad: %@", v13, v14];
  }

  v15 = [(PBUIPosterHomeViewController *)self reflectsLock];
  v16 = [v6 externalDisplayConfiguration];
  if (v16)
  {
    v17 = [v6 externalDisplayConfiguration];
    v18 = [v17 mirrorsEmbeddedDisplay];
  }

  else
  {
    v18 = 1;
  }

  if (v15)
  {
    if ((currentMode - 5) < 0xFFFFFFFFFFFFFFFELL)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [(PBUIPosterHomeViewController *)self isSettledPosition];
    if (v19 == 1 && !v20)
    {
      [v6 appendPreconditionResultFailure:@"poster is not in settled position"];
    }
  }

  else
  {
    [(PBUIPosterHomeViewController *)self isSettledPosition];
  }

  v21 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
  v22 = [v6 externalDisplayConfiguration];
  v23 = BSEqualObjects();

  if (v23 && self->_isUpdatingOrientation)
  {
    [v6 appendPreconditionResultFailure:@"poster is updating orientation"];
  }
}

- (void)applyFauxExternalSceneSettings:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterVariantViewController *)&v8 applyFauxExternalSceneSettings:v4];
  v5 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];

  if (v5)
  {
    v6 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
    v7 = [v6 mirrorsEmbeddedDisplay];

    if ((v7 & 1) == 0)
    {
      [v4 pr_setUnlockProgress:1.0];
    }
  }
}

- (void)setCounterpart:(id)a3
{
  v4.receiver = self;
  v4.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterVariantViewController *)&v4 setCounterpart:a3];
  [(PBUIPosterHomeViewController *)self updatePresentation:0];
  [(PBUIPosterHomeViewController *)self configureForZOrder];
}

- (void)updateViewControllerVisibilityForUnlockProgress:(double)a3
{
  if (!_os_feature_enabled_impl() || (_UISolariumEnabled() & 1) == 0)
  {

    [(PBUIPosterHomeViewController *)self _updateDimHomeScreenWallpaperViewForUnlockProgress:0 animated:a3];
  }
}

- (id)acquireDuckHomeScreenWallpaperDimAssertionWithReason:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_duckHomeScreenWallpaperDimAssertions)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    duckHomeScreenWallpaperDimAssertions = self->_duckHomeScreenWallpaperDimAssertions;
    self->_duckHomeScreenWallpaperDimAssertions = v5;
  }

  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __85__PBUIPosterHomeViewController_acquireDuckHomeScreenWallpaperDimAssertionWithReason___block_invoke;
  v13 = &unk_278362E18;
  objc_copyWeak(&v14, &location);
  v8 = [v7 initWithIdentifier:@"duck_home_screen_wallpaper_dimming" forReason:v4 invalidationBlock:&v10];
  [(NSHashTable *)self->_duckHomeScreenWallpaperDimAssertions addObject:v8, v10, v11, v12, v13];
  [(PBUIPosterHomeViewController *)self _updateEnableHomeScreenWallpaperDimming];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __85__PBUIPosterHomeViewController_acquireDuckHomeScreenWallpaperDimAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __85__PBUIPosterHomeViewController_acquireDuckHomeScreenWallpaperDimAssertionWithReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _duckHomeScreenWallpaperDimAssertionDidInvalidate:*(a1 + 32)];
}

- (BOOL)isHomeScreenWallpaperDimmed
{
  v2 = [(PBUIPosterVariantViewController *)self lockScreenConfiguration];
  v3 = [v2 pr_loadHomeScreenConfigurationWithError:0];
  v4 = [v3 customizationConfiguration];
  v5 = [v4 isDimmed];

  return v5;
}

- (void)_updateEnableHomeScreenWallpaperDimming
{
  isHomeScreenWallpaperCurrentlyDimmed = self->_isHomeScreenWallpaperCurrentlyDimmed;
  v4 = [(PBUIPosterHomeViewController *)self _shouldHomeScreenWallpaperBeDimmed];
  homeScreenDimStyle = self->_homeScreenDimStyle;
  v6 = [(PBUIPosterHomeViewController *)self _updatedDimStyle];
  if (isHomeScreenWallpaperCurrentlyDimmed == v4)
  {
    if (homeScreenDimStyle == v6)
    {
      return;
    }

    self->_homeScreenDimStyle = v6;
  }

  else
  {
    self->_isHomeScreenWallpaperCurrentlyDimmed = v4;
  }

  [(PBUIPosterHomeViewController *)self unlockProgress];
  v8 = v7;
  v9 = [(PBUIPosterHomeViewController *)self isSettledPosition];

  [(PBUIPosterHomeViewController *)self _updateDimHomeScreenWallpaperViewForUnlockProgress:v9 animated:v8];
}

- (unint64_t)_updatedDimStyle
{
  v2 = [(PBUIPosterVariantViewController *)self lockScreenConfiguration];
  v3 = [v2 pr_loadHomeScreenConfigurationWithError:0];
  v4 = [v3 customizationConfiguration];
  v5 = [v4 dimStyle];

  return v5;
}

- (void)_duckHomeScreenWallpaperDimAssertionDidInvalidate:(id)a3
{
  [(NSHashTable *)self->_duckHomeScreenWallpaperDimAssertions removeObject:a3];
  if (![(NSHashTable *)self->_duckHomeScreenWallpaperDimAssertions count])
  {
    duckHomeScreenWallpaperDimAssertions = self->_duckHomeScreenWallpaperDimAssertions;
    self->_duckHomeScreenWallpaperDimAssertions = 0;
  }

  [(PBUIPosterHomeViewController *)self _updateEnableHomeScreenWallpaperDimming];
}

- (void)_updateDimHomeScreenWallpaperViewAnimated
{
  [(PBUIPosterHomeViewController *)self unlockProgress];

  [(PBUIPosterHomeViewController *)self _updateDimHomeScreenWallpaperViewForUnlockProgress:1 animated:?];
}

- (void)_updateDimHomeScreenWallpaperViewForUnlockProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  homeScreenDimStyle = self->_homeScreenDimStyle;
  v8 = [(PBUIPosterHomeViewController *)self traitCollection];
  v9 = [v8 userInterfaceStyle];

  if (self->_isHomeScreenWallpaperCurrentlyDimmed)
  {
    if (homeScreenDimStyle == 2)
    {
      v10 = v9 == 1;
    }

    else
    {
      v10 = homeScreenDimStyle;
    }

    v11 = soft_PUIFeatureEnabled(11);
    v12 = 0.4;
    if (v11)
    {
      v12 = 0.5;
    }

    v13 = v12 * a3 + 0.0;
  }

  else
  {
    v13 = 0.0;
    v10 = 3;
  }

  [(_PBUIDimmingView *)self->_dimView setUseDimStyle:v10];
  dimView = self->_dimView;

  [(_PBUIDimmingView *)dimView setDim:v4 animated:v13];
}

- (void)noteHomeVariantStyleStateMayHaveUpdated
{
  BSDispatchQueueAssertMain();
  [(PBUIPosterHomeViewController *)self _updateEnableHomeScreenWallpaperDimming];

  [(PBUIPosterHomeViewController *)self updateHomeVariantStyleState];
}

- (void)effectTrackingReplicaViewHasValidSnapshot:(id)a3
{
  effectView = self->_effectView;
  v4 = [(PBUIPosterHomeViewController *)self canShowSnapshot];

  [(PBUIEffectTrackingReplicaView *)effectView setShowsSnapshot:v4];
}

- (BOOL)showsSnapshotWhenIdleForMode:(int64_t)a3
{
  if (a3 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._counterpart);
    v6 = [WeakRetained scene];
    v7 = [v6 settings];
    v8 = [v7 pui_provider];

    if ([v8 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
    {

      return 1;
    }

    v9 = [v8 isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"];
    v10 = [(PBUIPosterHomeViewController *)self _descriptorIdentity];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = _PRCollectionsPosterDescriptorNeedsSnapshotReplacement(v10);

      return v13;
    }
  }

  else if (a3 == 2)
  {
    return !UIAccessibilityIsReduceTransparencyEnabled();
  }

  return 0;
}

- (void)configureEffectViewForMode
{
  v3 = [(PBUIPosterHomeViewController *)self reflectsLock];
  effectView = self->_effectView;
  v5 = [(PBUIPosterVariantViewController *)self snapshotSourceProvider];
  [(PBUIEffectTrackingReplicaView *)effectView setSnapshotProvider:v5];

  v6 = self->_effectView;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._counterpart);
    v8 = [WeakRetained portalSourceProvider];
    [(PBUIEffectTrackingReplicaView *)v6 setPortalProvider:v8];
  }

  else
  {
    [(PBUIEffectTrackingReplicaView *)self->_effectView setPortalProvider:0];
  }

  if ([(PBUIPosterHomeViewController *)self isBlurred])
  {
    v9 = 30;
  }

  else
  {
    v9 = 0;
  }

  [(PBUIEffectTrackingReplicaView *)self->_effectView requestStyle:v9];

  [(PBUIPosterHomeViewController *)self configureForZOrder];
}

- (void)setActiveStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PBUIPosterHomeViewController;
  [(PBUIPosterVariantViewController *)&v4 setActiveStyle:a3];
  [(PBUIPosterHomeViewController *)self configureForZOrder];
}

- (BOOL)isSettledPosition
{
  if (self->_isUpdatingOrientation)
  {
    return 0;
  }

  if (![(PBUIPosterHomeViewController *)self reflectsLock])
  {
    return 1;
  }

  [(PBUIPosterHomeViewController *)self unlockProgress];

  return BSFloatIsOne();
}

- (double)unlockProgress
{
  if (_os_feature_enabled_impl() && (_UISolariumEnabled() & 1) != 0 || ![(PBUIPosterHomeViewController *)self reflectsLock])
  {
    return 1.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._counterpart);
  v4 = [WeakRetained scene];
  v5 = [v4 settings];
  [v5 pr_unlockProgress];
  v7 = v6;

  return v7;
}

- (void)_accessibilityReduceTransparencyChanged:(id)a3
{
  if (self->_currentMode == 2)
  {
    [(PBUIPosterHomeViewController *)self updatePresentation:1];
  }
}

- (void)homeScreenConfiguration
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "Unable to load home screen configuration: %{public}@", &v2, 0xCu);
}

- (void)updatePresentation:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"presenter is nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
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
    v15 = @"PBUIPosterHomeViewController.m";
    v16 = 1024;
    v17 = 636;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __51__PBUIPosterHomeViewController_updatePresentation___block_invoke_cold_1(id *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = PBUIStringForWallpaperVariant([*a1 variant]);
  v6 = 138543618;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_debug_impl(&dword_21E67D000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] isShowingSnapshot: %{BOOL}u (same)", &v6, 0x12u);
}

@end