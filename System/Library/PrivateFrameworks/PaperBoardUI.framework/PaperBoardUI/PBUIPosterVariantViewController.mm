@interface PBUIPosterVariantViewController
+ (id)_determinePreferredProminentColorFromDerivedProminentColor:(id)a3 posterPreferredProminentColor:(id)a4 timeColor:(id)a5 fallbackColor:(id)a6 outChosenColor:(id *)a7;
+ (id)defaultCacheManager;
+ (id)snapshotFormat;
- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle;
- (BOOL)isSnapshotInCorrectOrientation;
- (CGRect)preferredSalientContentRectangle;
- (PBUIPosterComponentDelegate)delegate;
- (PBUIPosterVariantViewController)counterpart;
- (PBUIPosterVariantViewController)initWithScene:(id)a3 counterpart:(id)a4;
- (PLKLegibilityEnvironmentContext)legibilityEnvironmentContext;
- (PRSPosterConfiguration)lockScreenConfiguration;
- (PUIColorStatistics)contentColorStatistics;
- (UIColor)averageColor;
- (UIColor)derivedProminentColor;
- (UIColor)preferredProminentColor;
- (UIColor)timeColor;
- (UIImage)snapshot;
- (_UILegibilitySettings)legibilitySettings;
- (double)averageContrast;
- (double)averageSaturation;
- (double)contrastInRect:(CGRect)a3;
- (double)lumaInRect:(CGRect)a3;
- (double)preferredDeviceMotionUpdateInterval;
- (double)saturationInRect:(CGRect)a3;
- (id)_applicableScene;
- (id)_externalDisplayConfiguration;
- (id)_fetchDerivedProminentColor;
- (id)_fetchPosterPreferredProminentColor;
- (id)_fetchTimeColor;
- (id)_homeVariantScene;
- (id)_lockVariantScene;
- (id)_posterPreferredProminentColor:(BOOL)a3;
- (id)_preferredProminentColor:(BOOL)a3 source:(id *)a4;
- (id)averageColorInRect:(CGRect)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)evaluateSnapshotPreconditions;
- (id)makePortalSourceWithLegibilitySettings:(id)a3;
- (id)snapshotSourceProvider;
- (id)succinctDescription;
- (void)_checkIfPresentationIsUpdatedAndSnapshot;
- (void)_fetchPosterPreferredProminentColor;
- (void)_handleUpdateProminentPosterDerivedColor:(id)a3 posterPreferredProminentColor:(id)a4 timeColor:(id)a5 fallbackColor:(id)a6;
- (void)_invalidateSnapshots:(id)a3;
- (void)_monitorScene:(id)a3;
- (void)_prepareFauxExternalScene;
- (void)_prepareFauxExternalSceneFromScene:(id)a3 completion:(id)a4 attemptNumber:(unint64_t)a5;
- (void)_scheduleSnapshotIfNeeded:(id)a3;
- (void)_setupCachesIfNeeded;
- (void)_snapshotNow:(id)a3;
- (void)_snapshotScene:(id)a3 completion:(id)a4;
- (void)_updateEffectiveMotionEffectsModeForSupportedMode:(unint64_t)a3 disabled:(BOOL)a4;
- (void)_updateInterfaceStyle;
- (void)_updatePosterColorStatistics:(id)a3 desiredLegibilitySettings:(id)a4;
- (void)_updatePosterPreferredProminentColor;
- (void)applyFauxExternalSceneSettings:(id)a3;
- (void)colorStatisticsDidChange:(id)a3;
- (void)dealloc;
- (void)fetchWallpaperProminentColor:(id)a3;
- (void)invalidate;
- (void)invalidateSnapshotPreconditions:(id)a3;
- (void)legibilitySettingsDidChange;
- (void)noteWillRotateToInterfaceOrientation:(int64_t)a3;
- (void)performSnapshotOnQueue:(id)a3 scene:(id)a4 completion:(id)a5;
- (void)postprocessNewSnapshot:(id)a3 orSnapshotBundle:(id)a4 colorStatistics:(id)a5 metadata:(id)a6 completion:(id)a7;
- (void)scene:(id)a3 didApplyUpdateWithContext:(id)a4;
- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneContentStateDidChange:(id)a3;
- (void)setActiveStyle:(int64_t)a3;
- (void)setBlurEnabled:(BOOL)a3;
- (void)setCounterpart:(id)a3;
- (void)setNeedsNewSnapshot:(id)a3;
- (void)setPreferredProminentColor:(id)a3 chosenColorSource:(id)a4 notifyObservers:(BOOL)a5;
- (void)snapshotIfNeeded:(BOOL)a3 reason:(id)a4;
- (void)snapshotSource:(id)a3 failedToReadColorStatisticsAtURL:(id)a4 error:(id)a5;
- (void)snapshotSource:(id)a3 failedToReadSnapshotAtURL:(id)a4 error:(id)a5;
- (void)snapshotSourceReceivedNewSnapshot:(id)a3;
- (void)viewDidLoad;
@end

@implementation PBUIPosterVariantViewController

- (_UILegibilitySettings)legibilitySettings
{
  v3 = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];

  if (v3)
  {
    v4 = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];
    [v4 convertToUILegibility];
  }

  else
  {
    v4 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
    [v4 legibilitySettings];
  }
  v5 = ;

  return v5;
}

- (PUIColorStatistics)contentColorStatistics
{
  posterColorStatistics = self->_posterColorStatistics;
  if (posterColorStatistics)
  {
    v3 = posterColorStatistics;
  }

  else
  {
    v3 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource contentColorStatistics];
  }

  return v3;
}

- (id)evaluateSnapshotPreconditions
{
  BSDispatchQueueAssertMain();
  v3 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v4 = [PBUISnapshotPreconditionResult alloc];
  v5 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
  v6 = [(PBUISnapshotPreconditionResult *)v4 initWithExternalDisplayConfiguration:v5 variant:[(PBUIPosterVariantViewController *)self variant]];

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is nil"];
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    v8 = [v3 settings];

    if (!v8)
    {
      [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is in a transitory state (no scene settings)"];
    }
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot]&& self->_lastExtantUpdate)
  {
    [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is not ready for snapshotting (mid-update)."];
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    v14 = 0;
    v9 = [v3 pui_sceneIsReadyToSnapshot:&v14];
    v10 = v14;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is not ready: %@", v10];
    }
  }

  else
  {
    v11 = 0;
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot]&& [(BSAtomicFlag *)self->_isRotating getFlag])
  {
    [(PBUISnapshotPreconditionResult *)v6 appendPreconditionResultFailureWithFormat:@"Poster scene is currently rotating"];
  }

  if ([(PBUISnapshotPreconditionResult *)v6 canSnapshot])
  {
    v12 = [v3 settings];
    [(PBUIPosterVariantViewController *)self validateSnapshottingPreconditionsForSettings:v12 result:v6];
  }

  return v6;
}

- (id)_applicableScene
{
  scene = self->_scene;
  if (scene)
  {
    v3 = scene;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_counterpart);
    v3 = [WeakRetained scene];
  }

  return v3;
}

- (id)_externalDisplayConfiguration
{
  v3 = [(PBUIPosterVariantViewController *)self delegate];
  v4 = [v3 posterComponentExternalDisplayConfiguration:self];

  return v4;
}

- (PBUIPosterComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)snapshotSourceProvider
{
  [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider setSnapshotProvider:self->_snapshotSource];
  v3 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource cacheIdentifier];
  v4 = [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider cacheIdentifier];
  v5 = [v4 isEqualToString:v3];

  if ((v5 & 1) == 0)
  {
    [(PBUICachedSnapshotEffectProvider *)&self->_snapshotProvider->super.isa setCacheIdentifier:v3];
  }

  if (![(PBUIURLBackedSnapshotSource *)self->_snapshotSource isValid])
  {
    [(PBUIPosterVariantViewController *)self snapshotIfNeeded:1 reason:@"need snapshot"];
  }

  snapshotProvider = self->_snapshotProvider;
  v7 = snapshotProvider;

  return snapshotProvider;
}

- (BOOL)isSnapshotInCorrectOrientation
{
  v3 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v4 = [v3 settings];
  v5 = [v4 pui_deviceOrientation];
  v6 = [v4 interfaceOrientation];
  v10 = 0;
  v11 = 0;
  [(PBUIURLBackedSnapshotSource *)self->_snapshotSource currentSnapshotInterfaceOrientation:&v10 outDeviceOrientation:&v11];
  v8 = v5 == v11 || v6 == v10;

  return v8;
}

- (CGRect)preferredSalientContentRectangle
{
  v2 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v3 = [v2 clientSettings];
  [v3 pui_preferredSalientContentRectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle
{
  v3 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v4 = [v3 clientSettings];
  v5 = [v4 pui_adaptiveTimeMode];

  if (v5 == 2)
  {
    LOBYTE(v8) = 1;
  }

  else if (v5 == 4)
  {
    v6 = [(PBUIPosterVariantViewController *)self _applicableScene];
    v7 = [v6 clientSettings];
    v8 = [v7 pui_isAdaptiveTimeHeightUserConfigured] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (UIColor)averageColor
{
  v3 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  v4 = [v3 averageColor];

  if (!v4)
  {
    v5 = [(FBScene *)self->_scene clientSettings];
    v6 = [v5 pr_averageColor];
    v4 = [v6 UIColor];
  }

  return v4;
}

- (PRSPosterConfiguration)lockScreenConfiguration
{
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    v3 = [(PBUIPosterVariantViewController *)self counterpart];
    v4 = [v3 lockScreenConfiguration];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(PBUIPosterVariantViewController *)self scene];
  v3 = [v5 pui_posterPath];

  if (v3)
  {
    v4 = [objc_alloc(getPRSPosterConfigurationClass()) initWithPath:v3];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (PBUIPosterVariantViewController)initWithScene:(id)a3 counterpart:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (v10)
  {
    NSClassFromString(&cfstr_Fbscene.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBUIPosterVariantViewController initWithScene:a2 counterpart:self];
    }
  }

  v29.receiver = self;
  v29.super_class = PBUIPosterVariantViewController;
  v11 = [(PBUIPosterVariantViewController *)&v29 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v11->_isBlurEnabled = 0;
    v13 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    snapshotNeeded = v12->_snapshotNeeded;
    v12->_snapshotNeeded = v13;

    v15 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    snapshotScheduled = v12->_snapshotScheduled;
    v12->_snapshotScheduled = v15;

    v17 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    isRotating = v12->_isRotating;
    v12->_isRotating = v17;

    v19 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    isSnapshotting = v12->_isSnapshotting;
    v12->_isSnapshotting = v19;

    objc_storeStrong(&v12->_scene, a3);
    scene = v12->_scene;
    if (scene)
    {
      v22 = [(FBScene *)scene uiPresentationManager];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v22 createPresenterWithIdentifier:v24 priority:-100];
      presenter = v12->_presenter;
      v12->_presenter = v25;

      [(UIScenePresenter *)v12->_presenter modifyPresentationContext:&__block_literal_global_20];
      [(UIScenePresenter *)v12->_presenter activate];
      [(PBUIPosterVariantViewController *)v12 _monitorScene:v12->_scene];
      [(PBUIPosterVariantViewController *)v12 _updateInterfaceStyle];
    }

    if (v9)
    {
      [(PBUIPosterVariantViewController *)v12 setCounterpart:v9];
    }

    else
    {
      [(PBUIPosterVariantViewController *)v12 _setupCachesIfNeeded];
    }

    v27 = [MEMORY[0x277CCA9A0] notificationCenterForType:@"POSTERBOARD"];
    [v27 addObserver:v12 selector:sel__invalidateSnapshots_ name:@"POSTERBOARD_CLEAR_ALL_CACHED_SNAPSHOTS" object:0];
  }

  return v12;
}

void __61__PBUIPosterVariantViewController_initWithScene_counterpart___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)noteWillRotateToInterfaceOrientation:(int64_t)a3
{
  if ([(BSAtomicFlag *)self->_isRotating setFlag:1])
  {
    [(PUIManagedCacheIdentifying *)self->_cache removeAllImagesWithCompletion:0];
    snapshotSource = self->_snapshotSource;

    [(PBUIURLBackedSnapshotSource *)snapshotSource invalidateCurrentSnapshot];
  }
}

- (void)_invalidateSnapshots:(id)a3
{
  legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
  self->_legibilityEnvironmentContext = 0;

  [(PUIManagedCacheIdentifying *)self->_cache removeAllImagesWithCompletion:0];
  [(PBUIURLBackedSnapshotSource *)self->_snapshotSource invalidateCurrentSnapshot];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(PBUIPosterVariantPathProvider *)self->_pathProvider snapshotURL];
  [v5 removeItemAtURL:v6 error:0];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(PBUIPosterVariantPathProvider *)self->_pathProvider snapshotMetadataURL];
  [v7 removeItemAtURL:v8 error:0];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [(PBUIPosterVariantPathProvider *)self->_pathProvider snapshotColorStatisticsURL];
  [v9 removeItemAtURL:v10 error:0];

  [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];

  [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"snapshots were invalidate"];
}

- (void)dealloc
{
  [(PBUIFixedReplicaSourceProvider *)self->_portalProvider invalidate];
  [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider invalidate];
  [(FBScene *)self->_fauxExternalScene invalidate];
  snapshotProvider = self->_snapshotProvider;
  self->_snapshotProvider = 0;

  fauxExternalScene = self->_fauxExternalScene;
  self->_fauxExternalScene = 0;

  cache = self->_cache;
  self->_cache = 0;

  v6.receiver = self;
  v6.super_class = PBUIPosterVariantViewController;
  [(PBUIPosterVariantViewController *)&v6 dealloc];
}

- (void)_setupCachesIfNeeded
{
  v3 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v43 = [v3 pui_posterPath];

  v4 = v43;
  if (v43)
  {
    v5 = [v43 isServerPosterPath];
    v6 = [(PBUIPosterVariantViewController *)self variant];
    if (v5)
    {
      v7 = [v43 instanceURL];
      v8 = [v43 serverIdentity];
      v42 = [v8 stablePersistenceIdentifier];
    }

    else
    {
      v9 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v9 UUIDString];
      v11 = [@"Non-serverposterpath-" stringByAppendingString:v10];

      v8 = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURL];
      v42 = v11;
      v7 = [v8 URLByAppendingPathComponent:v11 isDirectory:1];
    }

    v41 = v7;
    v12 = [[PBUIPosterVariantPathProvider alloc] initWithInstanceURL:v7 variant:v6];
    v13 = [(PBUIPosterVariantPathProvider *)v12 isEqualToPosterVariantPathProvider:self->_pathProvider];
    if (!v13)
    {
      objc_storeStrong(&self->_pathProvider, v12);
    }

    snapshotSource = self->_snapshotSource;
    if (!snapshotSource)
    {
      v15 = [PBUIURLBackedSnapshotSource alloc];
      pathProvider = self->_pathProvider;
      v17 = [objc_opt_class() snapshotFormat];
      v18 = [(PBUIURLBackedSnapshotSource *)v15 initWithPathProvider:pathProvider format:v17];
      v19 = self->_snapshotSource;
      self->_snapshotSource = v18;

      [(PBUIURLBackedSnapshotSource *)self->_snapshotSource setDelegate:self];
      snapshotSource = self->_snapshotSource;
    }

    v20 = [(PBUIURLBackedSnapshotSource *)snapshotSource cacheIdentifier];
    [(PBUIURLBackedSnapshotSource *)self->_snapshotSource updateFromPathProvider:self->_pathProvider];
    v21 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource cacheIdentifier];
    v22 = BSEqualStrings();
    v23 = v21;
    if (!self->_cache || v22)
    {
      v24 = [objc_opt_class() defaultCacheManager];
      v25 = [v24 checkoutImageCache:v23];
      cache = self->_cache;
      self->_cache = v25;
    }

    snapshotProvider = self->_snapshotProvider;
    if (!snapshotProvider)
    {
      v28 = [[PBUICachedSnapshotEffectProvider alloc] initForSnapshotProvider:self->_snapshotSource cacheIdentifier:v23];
      v29 = self->_snapshotProvider;
      self->_snapshotProvider = v28;

      snapshotProvider = self->_snapshotProvider;
    }

    [(PBUICachedSnapshotEffectProvider *)snapshotProvider setSnapshotProvider:self->_snapshotSource];
    [(PBUICachedSnapshotEffectProvider *)&self->_snapshotProvider->super.isa setCacheIdentifier:v23];
    portalProvider = self->_portalProvider;
    if (!portalProvider)
    {
      v31 = objc_alloc_init(PBUIFixedReplicaSourceProvider);
      v32 = self->_portalProvider;
      self->_portalProvider = v31;

      portalProvider = self->_portalProvider;
    }

    [(PBUIFixedReplicaSourceProvider *)portalProvider setSnapshotSource:self->_snapshotSource];
    v33 = self->_portalProvider;
    v34 = [(PBUIPosterVariantViewController *)self legibilitySettings];
    v35 = [(PBUIPosterVariantViewController *)self makePortalSourceWithLegibilitySettings:v34];
    [(PBUIFixedReplicaSourceProvider *)v33 setPortalSource:v35];

    if ((v22 | !v13) == 1)
    {
      legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
      self->_legibilityEnvironmentContext = 0;

      v37 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource contentColorStatistics];
      v38 = [(PBUIPosterVariantViewController *)self _applicableScene];
      v39 = [v38 clientSettings];
      v40 = [v39 pr_desiredLegibilitySettings];
      [(PBUIPosterVariantViewController *)self _updatePosterColorStatistics:v37 desiredLegibilitySettings:v40];
    }

    v4 = v43;
  }
}

- (void)setCounterpart:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_counterpart);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_counterpart);
    objc_storeWeak(&self->_counterpart, v4);
    if (!self->_scene)
    {
      if (v6)
      {
        v7 = PBUILogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [PBUIPosterVariantViewController setCounterpart:];
        }

        v8 = [v6 scene];
        v9 = [v8 layerManager];
        [v9 removeObserver:self];

        v10 = [v6 scene];
        [v10 removeObserver:self];
      }

      v11 = [v4 scene];

      if (v11)
      {
        v12 = [v4 scene];
        [(PBUIPosterVariantViewController *)self _monitorScene:v12];
      }

      else
      {
        v12 = PBUILogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
          v14 = PBUIStringForWallpaperVariant([v4 variant]);
          v15 = 138412546;
          v16 = v13;
          v17 = 2112;
          v18 = v14;
          _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEFAULT, "Neither %@ nor counterpart: %@ has a scene.", &v15, 0x16u);
        }
      }
    }

    [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];
    [(PBUIPosterVariantViewController *)self _updateInterfaceStyle];
  }
}

- (double)averageContrast
{
  v2 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [v2 averageContrast];
  v4 = v3;

  return v4;
}

- (double)averageSaturation
{
  v2 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  [v2 averageSaturation];
  v4 = v3;

  return v4;
}

- (double)contrastInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
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
  v7 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
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
  v7 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
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
  v7 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  v8 = [v7 averageColorInRect:{x, y, width, height}];

  return v8;
}

- (double)preferredDeviceMotionUpdateInterval
{
  v2 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v3 = [v2 clientSettings];
  [v3 pr_preferredDeviceMotionUpdateInterval];
  v5 = v4;

  return v5;
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    v14 = 138543362;
    v15 = v4;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated.", &v14, 0xCu);
  }

  objc_storeWeak(&self->_delegate, 0);
  [(UIScenePresenter *)self->_presenter invalidate];
  presenter = self->_presenter;
  self->_presenter = 0;

  v6 = [(FBScene *)self->_scene layerManager];
  [v6 removeObserver:self];

  [(FBScene *)self->_scene removeObserver:self];
  scene = self->_scene;
  self->_scene = 0;

  WeakRetained = objc_loadWeakRetained(&self->_counterpart);
  v9 = [WeakRetained scene];
  v10 = [v9 layerManager];
  [v10 removeObserver:self];

  v11 = objc_loadWeakRetained(&self->_counterpart);
  v12 = [v11 scene];
  [v12 removeObserver:self];

  objc_storeWeak(&self->_counterpart, 0);
  [(PBUIFixedReplicaSourceProvider *)self->_portalProvider invalidate];
  [(PBUICachedSnapshotEffectProvider *)self->_snapshotProvider invalidate];
  snapshotProvider = self->_snapshotProvider;
  self->_snapshotProvider = 0;
}

- (void)fetchWallpaperProminentColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PBUIPosterVariantViewController *)self variant];
    if (v5 == 1)
    {
      v11 = v4;
      BSDispatchMain();
    }

    else
    {
      v6 = v5;
      v7 = [(PBUIPosterVariantViewController *)self counterpart];

      v8 = PBUILogSnapshot();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          [PBUIPosterVariantViewController fetchWallpaperProminentColor:v6];
        }

        v10 = [(PBUIPosterVariantViewController *)self counterpart];
        [v10 fetchWallpaperProminentColor:v4];
      }

      else
      {
        if (v9)
        {
          [PBUIPosterVariantViewController fetchWallpaperProminentColor:v6];
        }

        v10 = [MEMORY[0x277D75348] magentaColor];
        (*(v4 + 2))(v4, v10);
      }
    }
  }
}

void __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = PBUILogSnapshot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PBUIStringForWallpaperVariant(*(a1 + 48));
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&dword_21E67D000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking preferred prominent color...", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v22 = 0;
  v5 = [v4 _preferredProminentColor:0 source:&v22];
  v6 = v22;
  if (v5)
  {
    v7 = PBUILogSnapshot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PBUIStringForWallpaperVariant(*(a1 + 48));
      *buf = 138543874;
      v24 = v8;
      v25 = 2114;
      v26 = v5;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found preferred prominent color: %{public}@/%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 32) + 1168);
    if (!v9)
    {
      v10 = objc_opt_new();
      v11 = *(a1 + 32);
      v12 = *(v11 + 1168);
      *(v11 + 1168) = v10;

      v9 = *(*(a1 + 32) + 1168);
    }

    v13 = [*(a1 + 40) copy];
    [v9 addObject:v13];

    v14 = [*(*(a1 + 32) + 1048) snapshot];
    v15 = [v14 pui_canDetermineProminentColor];
    v16 = PBUILogSnapshot();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = PBUIStringForWallpaperVariant(*(a1 + 48));
        *buf = 138543362;
        v24 = v18;
        _os_log_impl(&dword_21E67D000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] using last snapshot taken to determine prominent color...", buf, 0xCu);
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44;
      v21[3] = &unk_278363C58;
      v19 = *(a1 + 48);
      v21[4] = *(a1 + 32);
      v21[5] = v19;
      [v14 pui_determineProminentColorWithCompletion:v21];
    }

    else
    {
      if (v17)
      {
        v20 = PBUIStringForWallpaperVariant(*(a1 + 48));
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_21E67D000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] scheduling prominent color snapshot for *NOW*...", buf, 0xCu);
      }

      [*(a1 + 32) _snapshotNow:@"prominent color fetch"];
    }
  }
}

void __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PBUILogSnapshot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44_cold_1();
    }
  }

  v8 = PBUILogSnapshot();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      v10 = PBUIStringForWallpaperVariant(*(a1 + 40));
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] using last snapshot determined a color: %{public}@", &v12, 0x16u);
    }

    [*(a1 + 32) _handleUpdateProminentPosterDerivedColor:v5 posterPreferredProminentColor:0 timeColor:0 fallbackColor:0];
  }

  else
  {
    if (v9)
    {
      v11 = PBUIStringForWallpaperVariant(*(a1 + 40));
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] last snapshot prominent color determination failed; scheduling prominent color snapshot for *NOW*...", &v12, 0xCu);
    }

    [*(a1 + 32) _snapshotNow:@"prominent color fetch after failing to use last snapshot taken"];
  }
}

- (void)setBlurEnabled:(BOOL)a3
{
  if (a3)
  {
    self->_isBlurEnabled = 1;
    if (!self->_blurView)
    {
      v4 = [MEMORY[0x277D75210] effectWithStyle:19];
      v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
      blurView = self->_blurView;
      self->_blurView = v5;

      [(UIVisualEffectView *)self->_blurView setAutoresizingMask:18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke;
      v14[3] = &unk_278361E18;
      v14[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v14];
      [(UIView *)self->_contentContainer addSubview:self->_blurView];
      [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
    }
  }

  else
  {
    self->_isBlurEnabled = 0;
    if (self->_blurView)
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        objc_initWeak(&location, self);
        v7 = MEMORY[0x277D75D18];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_2;
        v11[3] = &unk_278363040;
        objc_copyWeak(&v12, &location);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_3;
        v9[3] = &unk_278362FA8;
        objc_copyWeak(&v10, &location);
        [v7 animateWithDuration:v11 animations:v9 completion:0.0];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      else
      {
        [(UIVisualEffectView *)self->_blurView removeFromSuperview];
        v8 = self->_blurView;
        self->_blurView = 0;
      }
    }
  }
}

uint64_t __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1072);
  [*(v2 + 992) bounds];
  [v3 setFrame:?];
  v4 = *(*(a1 + 32) + 1072);

  return [v4 setAlpha:0.0];
}

void __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[134] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __50__PBUIPosterVariantViewController_setBlurEnabled___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 1145) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained[134] removeFromSuperview];
    v2 = v3[134];
    v3[134] = 0;

    WeakRetained = v3;
  }
}

- (void)setActiveStyle:(int64_t)a3
{
  if (self->_activeStyle != a3)
  {
    self->_activeStyle = a3;
    IsHidden = PBUIWallpaperStyleIsHidden(a3);
    if (a3 == 2)
    {
      v8 = [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      v8 = 0;
    }

    [(UIView *)self->_contentContainer setHidden:IsHidden];
    [(PBUISnapshotReplicaView *)self->_snapshotView setHidden:IsHidden];
    v7 = [(PBUIPosterVariantViewController *)self view];
    [v7 setBackgroundColor:v8];
  }
}

+ (id)defaultCacheManager
{
  PUIMappedImageCacheManagerClass = getPUIMappedImageCacheManagerClass();

  return [PUIMappedImageCacheManagerClass defaultCacheManager];
}

- (void)_monitorScene:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [PBUIPosterVariantViewController _monitorScene:a2];
  }

  scene = self->_scene;
  if (scene != v10 && scene != 0)
  {
    [PBUIPosterVariantViewController _monitorScene:a2];
  }

  [(FBScene *)v10 addObserver:self];
  v7 = [(FBScene *)v10 layerManager];
  [v7 addObserver:self];

  if ([(FBScene *)v10 isActive])
  {
    [(PBUIPosterVariantViewController *)self sceneDidActivate:v10];
    v8 = [(FBScene *)v10 clientHandle];

    if (v8)
    {
      v9 = [(FBScene *)v10 clientHandle];
      [(PBUIPosterVariantViewController *)self scene:v10 clientDidConnect:v9];
    }
  }
}

- (id)makePortalSourceWithLegibilitySettings:(id)a3
{
  pathProvider = self->_pathProvider;
  v5 = a3;
  v6 = [(PBUIPosterVariantPathProvider *)pathProvider instanceURL];
  v7 = [v6 path];
  v8 = v7;
  v9 = @"UnknownURL";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [PBUISimpleReplicaPortalSource alloc];
  v12 = [(PBUIPosterVariantViewController *)self view];
  v13 = [(PBUISimpleReplicaPortalSource *)v11 initWithTargetView:v12 cacheIdentifier:v10 legibilitySettings:v5 effectsAreBakedIn:0];

  return v13;
}

+ (id)snapshotFormat
{
  PUIImageOnDiskFormatClass = getPUIImageOnDiskFormatClass();

  return [PUIImageOnDiskFormatClass defaultATX];
}

- (void)_checkIfPresentationIsUpdatedAndSnapshot
{
  BSDispatchQueueAssertMain();
  if ([(PBUIPosterVariantViewController *)self updatePresentation:0])
  {

    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"presentation was updated"];
  }
}

- (void)_updateInterfaceStyle
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PBUIPosterVariantViewController *)self _applicableScene];
  v4 = [v3 settings];
  v5 = [v4 pui_userInterfaceStyle];

  if (v5 != self->_mostRecentSnapshotInterfaceStyle)
  {
    v6 = [(PBUIPosterVariantViewController *)self _applicableScene];
    v7 = [v6 settings];
    self->_mostRecentSnapshotInterfaceStyle = [v7 pui_userInterfaceStyle];

    v8 = PBUILogSnapshot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      mostRecentSnapshotInterfaceStyle = self->_mostRecentSnapshotInterfaceStyle;
      v10 = 134217984;
      v11 = mostRecentSnapshotInterfaceStyle;
      _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "Updating most recent snapshot interface style: %lu", &v10, 0xCu);
    }
  }
}

- (void)_updateEffectiveMotionEffectsModeForSupportedMode:(unint64_t)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(FBScene *)self->_scene settings];
  v8 = [v7 pr_effectiveMotionEffectsMode];

  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (v8 != v9)
  {
    scene = self->_scene;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __94__PBUIPosterVariantViewController__updateEffectiveMotionEffectsModeForSupportedMode_disabled___block_invoke;
    v11[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v11[4] = v9;
    [(FBScene *)scene updateSettings:v11];
  }
}

- (void)setNeedsNewSnapshot:(id)a3
{
  snapshotNeeded = self->_snapshotNeeded;
  v5 = a3;
  [(BSAtomicFlag *)snapshotNeeded setFlag:1];
  [(PBUIPosterVariantViewController *)self _scheduleSnapshotIfNeeded:v5];
}

- (void)invalidateSnapshotPreconditions:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(BSAtomicFlag *)self->_snapshotNeeded getFlag])
  {
    v5 = PBUILogSnapshot();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      *buf = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidateSnapshotPreconditions for reason: %{public}@", buf, 0x16u);
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"snapshot preconditions invalidated for reason '%@' so scheduling a new snapshot", v4];;
    [(PBUIPosterVariantViewController *)self _scheduleSnapshotIfNeeded:v7];
  }
}

- (void)_scheduleSnapshotIfNeeded:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(BSAtomicFlag *)self->_isSnapshotting getFlag])
  {
    v5 = PBUILogSnapshot();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PBUIPosterVariantViewController _scheduleSnapshotIfNeeded:];
    }

LABEL_6:

    goto LABEL_10;
  }

  if (([(BSAtomicFlag *)self->_snapshotScheduled getFlag]& 1) != 0)
  {
    v5 = PBUILogSnapshot();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v11 = [(BSAtomicFlag *)self->_isSnapshotting getFlag];
      v12 = @"scheduled";
      *buf = 138543874;
      v16 = v10;
      if (v11)
      {
        v12 = @"in progress";
      }

      v17 = 2112;
      v18 = v12;
      v19 = 2114;
      v20 = v4;
      _os_log_debug_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Snapshot already %@, not scheduling for reason: %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  [(BSAtomicFlag *)self->_snapshotScheduled setFlag:1];
  v6 = dispatch_time(0, 250000000);
  v7 = PBUILogSnapshot();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.25];
    *buf = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Snapshot scheduled for %{public}@ for reason: %{public}@", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__PBUIPosterVariantViewController__scheduleSnapshotIfNeeded___block_invoke;
  v13[3] = &unk_2783622E0;
  v13[4] = self;
  v14 = v4;
  dispatch_after(v6, MEMORY[0x277D85CD0], v13);

LABEL_10:
}

uint64_t __61__PBUIPosterVariantViewController__scheduleSnapshotIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) snapshotIfNeeded:0 reason:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1128);

  return [v2 setFlag:0];
}

- (void)_snapshotNow:(id)a3
{
  v4 = a3;
  v5 = [(BSAtomicFlag *)self->_isSnapshotting getFlag];
  v6 = PBUILogSnapshot();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [PBUIPosterVariantViewController _snapshotNow:?];
    }
  }

  else
  {
    if (v7)
    {
      [PBUIPosterVariantViewController _snapshotNow:];
    }

    v8 = v4;
    BSDispatchMain();
  }
}

uint64_t __48__PBUIPosterVariantViewController__snapshotNow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [@"(snapshot now) " stringByAppendingString:*(a1 + 40)];
  [v2 snapshotIfNeeded:1 reason:v3];

  v4 = *(*(a1 + 32) + 1128);

  return [v4 setFlag:0];
}

- (void)snapshotIfNeeded:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v30 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if ([(BSAtomicFlag *)self->_isSnapshotting getFlag])
  {
    v6 = PBUILogSnapshot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PBUIPosterVariantViewController snapshotIfNeeded:? reason:?];
    }

LABEL_23:

    return;
  }

  if (([(BSAtomicFlag *)self->_snapshotNeeded getFlag]& 1) != 0 || v4)
  {
    v7 = [(PBUIPosterVariantViewController *)self variant];
    v6 = [(PBUIPosterVariantViewController *)self evaluateSnapshotPreconditions];
    if (([v6 canSnapshot]& 1) != 0 || v4)
    {
      [(BSAtomicFlag *)self->_isSnapshotting setFlag:1];
      Current = CFAbsoluteTimeGetCurrent();
      v18 = PBUILogSnapshot();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PBUIPosterVariantViewController snapshotIfNeeded:v7 reason:?];
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke;
      v24[3] = &unk_278363CF0;
      v24[4] = self;
      *&v24[5] = Current;
      v19 = MEMORY[0x223D62EE0](v24);
      (v19)[2](v19, v6);
    }

    else
    {
      v8 = PBUILogSnapshot();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PBUIPosterVariantViewController snapshotIfNeeded:v7 reason:?];
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v6 reasonsToNotSnapshot];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            v15 = PBUILogSnapshot();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
              *buf = 138543618;
              v26 = v16;
              v27 = 2114;
              v28 = v14;
              _os_log_error_impl(&dword_21E67D000, v15, OS_LOG_TYPE_ERROR, "[%{public}@]\t--> snapshot failure reason '%{public}@'", buf, 0x16u);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v11);
      }
    }

    goto LABEL_23;
  }
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = [a2 isSnapshottingForExternalDisplayHostedWallpaper];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _prepareFauxExternalScene];
    v5 = *(*(a1 + 32) + 1080);
    v21 = 0;
    v6 = [v5 pui_sceneIsReadyToSnapshot:&v21];
    v7 = v21;
    if (v6)
    {
      v8 = *(*(a1 + 32) + 1080);
      objc_initWeak(location, *(a1 + 32));
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2;
      v19[3] = &unk_278362FA8;
      objc_copyWeak(&v20, location);
      v9 = MEMORY[0x223D62EE0](v19);
      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = PBUILogSnapshot();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PBUIStringForWallpaperVariant([*(a1 + 32) variant]);
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v11;
        _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Faux external scene is not ready for snapshot. Scheduling a new snapshot.", location, 0xCu);
      }

      [*(*(a1 + 32) + 1128) setFlag:0];
      v12 = *(a1 + 32);
      v13 = MEMORY[0x277CCACA8];
      v14 = PBUIStringForWallpaperVariant([v12 variant]);
      v15 = [v13 stringWithFormat:@"scheduling new snapshot because faux %@ external scene is not ready", v14];
      [v12 _scheduleSnapshotIfNeeded:v15];

      v9 = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = [v4 _applicableScene];
    objc_initWeak(location, *(a1 + 32));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_87;
    v17[3] = &unk_278363CC8;
    objc_copyWeak(v18, location);
    v18[1] = *(a1 + 40);
    v9 = MEMORY[0x223D62EE0](v17);
    objc_destroyWeak(v18);
    objc_destroyWeak(location);
  }

  v16 = *(a1 + 32);
  if (v8)
  {
    [v16 _snapshotScene:v8 completion:v9];
    [*(a1 + 32) _updateInterfaceStyle];
  }

  else
  {
    [v16[140] setFlag:0];
  }
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v1);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[135] invalidate];
    v2 = v3[135];
    v3[135] = 0;

    [v3[140] setFlag:0];
    WeakRetained = v3;
  }
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_87(uint64_t a1, char a2)
{
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *(a1 + 40);
  v5 = a2;
  BSDispatchMain();
  objc_destroyWeak(v4);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    CFAbsoluteTimeGetCurrent();
    [WeakRetained[140] setFlag:0];
    v3 = *(a1 + 48);
    v4 = PBUILogSnapshot();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v3 == 1)
    {
      if (v5)
      {
        __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_2(WeakRetained);
      }

      [WeakRetained updatePresentation:1];
    }

    else
    {
      if (v5)
      {
        __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_1(WeakRetained);
      }
    }
  }
}

- (void)_prepareFauxExternalScene
{
  if (!self->_fauxExternalScene)
  {
    v3 = PBUILogSnapshot();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_DEFAULT, "Preparing a new scene for external display tailored snapshot", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = [(PBUIPosterVariantViewController *)self _applicableScene];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__PBUIPosterVariantViewController__prepareFauxExternalScene__block_invoke;
    v5[3] = &unk_278363D18;
    objc_copyWeak(&v6, buf);
    [(PBUIPosterVariantViewController *)self _prepareFauxExternalSceneFromScene:v4 completion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __60__PBUIPosterVariantViewController__prepareFauxExternalScene__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      objc_storeStrong(WeakRetained + 135, a2);
    }

    else
    {
      v7 = PBUILogSnapshot();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __60__PBUIPosterVariantViewController__prepareFauxExternalScene__block_invoke_cold_1();
      }
    }
  }
}

- (void)_prepareFauxExternalSceneFromScene:(id)a3 completion:(id)a4 attemptNumber:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 settings];
  v11 = [v10 pui_posterContents];
  if (v11)
  {
    v12 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];
    v13 = [v12 identifier];

    if (v13)
    {
      v14 = [getPFPosterExtensionInstanceClass() extensionInstanceForPath:v11 instanceIdentifier:v13];
      if (v14)
      {
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke;
        v18[3] = &unk_278363DE0;
        objc_copyWeak(v24, &location);
        v23 = v9;
        v19 = v11;
        v20 = v14;
        v21 = v10;
        v24[1] = a5;
        v22 = v8;
        [v20 bootupExtensionInstance:v18];

        objc_destroyWeak(v24);
        objc_destroyWeak(&location);
      }

      else
      {
        v17 = PBUILogSnapshot();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PBUIPosterVariantViewController _prepareFauxExternalSceneFromScene:completion:attemptNumber:];
        }

        (*(v9 + 2))(v9, 0);
      }
    }

    else
    {
      v16 = PBUILogSnapshot();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PBUIPosterVariantViewController _prepareFauxExternalSceneFromScene:completion:attemptNumber:];
      }

      (*(v9 + 2))(v9, 0);
    }
  }

  else
  {
    v15 = PBUILogSnapshot();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PBUIPosterVariantViewController _prepareFauxExternalSceneFromScene:completion:attemptNumber:];
    }

    (*(v9 + 2))(v9, 0);
  }
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
LABEL_10:
    (*(*(a1 + 64) + 16))();
    goto LABEL_11;
  }

  if (!v4)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_2;
    v19 = &unk_278363D90;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = WeakRetained;
    v24 = *(a1 + 64);
    BSDispatchMain();

    v10 = v20;
    goto LABEL_6;
  }

  v6 = *(a1 + 80);
  if (v6 > 2)
  {
    v11 = PBUILogSnapshot();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_cold_1(v4);
    }

    goto LABEL_10;
  }

  v7 = dispatch_time(0, (v6 * 0.1));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_5;
  block[3] = &unk_278363DB8;
  block[4] = WeakRetained;
  v13 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v14 = v8;
  v15 = v9;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);

  v10 = v13;
LABEL_6:

LABEL_11:
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D0AAC8];
  v3 = getPUISceneRoleRendering();
  v4 = [v2 pr_createPosterSceneWithRole:v3 path:*(a1 + 32) instance:*(a1 + 40)];

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_3;
  v10 = &unk_278363D68;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  [v4 configureParameters:&v7];
  [v4 activate:{0, v7, v8, v9, v10}];
  (*(*(a1 + 64) + 16))();
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_4;
  v6[3] = &unk_278363D40;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 updateSettingsWithBlock:v6];
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 pui_applyToMutableSceneSettings:v3];
  [*(a1 + 40) applyFauxExternalSceneSettings:v4];
}

- (void)applyFauxExternalSceneSettings:(id)a3
{
  v5 = a3;
  v4 = [(PBUIPosterVariantViewController *)self _externalDisplayConfiguration];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 pr_setAdjustedLuminance:2];
  }
}

- (void)_snapshotScene:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PBUILogSnapshot();
  v9 = os_signpost_id_generate(v8);

  v10 = PBUILogSnapshot();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_21E67D000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SnapshotUpdating", &unk_21E7190AA, buf, 2u);
  }

  objc_initWeak(buf, self);
  v12 = PBUIColorSamplingQueue();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke;
  v14[3] = &unk_278363E58;
  objc_copyWeak(v16, buf);
  v13 = v7;
  v15 = v13;
  v16[1] = v9;
  [(PBUIPosterVariantViewController *)self performSnapshotOnQueue:v12 scene:v6 completion:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    if (v15)
    {
      if ([WeakRetained variant] == 1)
      {
        v21 = MEMORY[0x277CCAAC8];
        v40 = v18;
        v22 = objc_opt_self();
        [v17 objectForKeyedSubscript:@"kDerivedProminentPosterColorMetadataKey"];
        v23 = v41 = v13;
        v24 = [v21 unarchivedObjectOfClass:v22 fromData:v23 error:0];
        v39 = [v24 UIColor];

        v25 = MEMORY[0x277CCAAC8];
        v26 = objc_opt_self();
        v27 = [v17 objectForKeyedSubscript:@"kPosterPreferredProminentPosterColorMetadataKey"];
        v28 = [v25 unarchivedObjectOfClass:v26 fromData:v27 error:0];
        v29 = [v28 UIColor];

        v30 = [v16 averageColor];
        v31 = [v30 pui_invertColor];
        v32 = [v31 colorWithAlphaComponent:1.0];

        v13 = v41;
        [v20 _handleUpdateProminentPosterDerivedColor:v39 posterPreferredProminentColor:v29 timeColor:0 fallbackColor:v32];

        v18 = v40;
      }

      v33 = PBUIColorSamplingQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_4;
      block[3] = &unk_278363E30;
      block[4] = v20;
      v43 = v15;
      v44 = v13;
      v45 = v16;
      v46 = v17;
      v47 = v18;
      v34 = *(a1 + 32);
      v35 = *(a1 + 48);
      v49 = v34;
      v50 = v35;
      v48 = v14;
      dispatch_async(v33, block);

      v36 = v43;
      goto LABEL_10;
    }

    [v14 invalidate];
    v38 = *(a1 + 32);
    if (v38)
    {
      v51 = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_3;
      v54 = &unk_278362668;
      v55 = v38;
      BSDispatchMain();
      v36 = v55;
      goto LABEL_10;
    }
  }

  else
  {
    [v14 invalidate];
    v37 = *(a1 + 32);
    if (v37)
    {
      v56 = MEMORY[0x277D85DD0];
      v57 = 3221225472;
      v58 = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_2;
      v59 = &unk_278362668;
      v60 = v37;
      BSDispatchMain();
      v36 = v60;
LABEL_10:
    }
  }
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5;
  v11[3] = &unk_278363E08;
  v7 = v2;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 72);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v16 = v9;
  v17 = v10;
  v15 = *(a1 + 80);
  [v3 postprocessNewSnapshot:v7 orSnapshotBundle:v4 colorStatistics:v5 metadata:v6 completion:v11];
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 32) == 0;
  }

  v7 = !v6;
  v8 = PBUILogSnapshot();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PBUIStringForWallpaperVariant([*(a1 + 40) variant]);
      v16 = 138543618;
      v17 = v10;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Snapshotted poster; didUpdate? %{BOOL}u", &v16, 0x12u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5_cold_1(a1, v9);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    (*(v11 + 16))(v11, v7);
  }

  v12 = PBUILogSnapshot();
  v13 = v12;
  v14 = *(a1 + 72);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = MEMORY[0x223D622C0](v7);
    v16 = 138543362;
    v17 = v15;
    _os_signpost_emit_with_name_impl(&dword_21E67D000, v13, OS_SIGNPOST_INTERVAL_END, v14, "SnapshotUpdating", "wasSnapshotUpdated=%{public, name=wasSnapshotUpdated}@", &v16, 0xCu);
  }

  [*(a1 + 56) invalidate];
}

- (void)postprocessNewSnapshot:(id)a3 orSnapshotBundle:(id)a4 colorStatistics:(id)a5 metadata:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    v17 = [getPLKColorBoxesClass() colorBoxesForImage:v12];
    v14 = [objc_alloc(getPUIColorStatisticsClass()) initWithColorBoxes:v17];
  }

  if (![v15 count])
  {

    v15 = &unk_282FD5A40;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __111__PBUIPosterVariantViewController_postprocessNewSnapshot_orSnapshotBundle_colorStatistics_metadata_completion___block_invoke;
  v30[3] = &unk_278363E80;
  v30[4] = self;
  v31 = v14;
  v32 = v16;
  v18 = v16;
  v19 = v14;
  v20 = MEMORY[0x223D62EE0](v30);
  snapshotSource = self->_snapshotSource;
  v22 = [getPUIPosterLevelSetClass() compositeLevelSet];
  v23 = [v13 snapshotURLForLevelSet:v22];
  v29 = 0;
  [(PBUIURLBackedSnapshotSource *)snapshotSource updateWithImage:v12 orImageAtURL:v23 contentColorStatistics:v19 metadata:v15 error:&v29];
  v24 = v29;

  v27 = v24;
  v28 = v20;
  v25 = v24;
  v26 = v20;
  BSDispatchMain();
}

uint64_t __111__PBUIPosterVariantViewController_postprocessNewSnapshot_orSnapshotBundle_colorStatistics_metadata_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v12 = a3;
  BSDispatchQueueAssertMain();
  [*(a1[4] + 1112) setFlag:0];
  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = [v5 _applicableScene];
    v8 = [v7 clientSettings];
    v9 = [v8 pr_desiredLegibilitySettings];
    [v5 _updatePosterColorStatistics:v6 desiredLegibilitySettings:v9];
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v12);
  }

  return MEMORY[0x2821F9730]();
}

- (id)_lockVariantScene
{
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    WeakRetained = objc_loadWeakRetained(&self->_counterpart);
    v4 = [WeakRetained scene];
  }

  else
  {
    v4 = self->_scene;
  }

  return v4;
}

- (id)_homeVariantScene
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    v3 = self->_scene;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_counterpart);
    v3 = [WeakRetained scene];
  }

  return v3;
}

- (void)performSnapshotOnQueue:(id)a3 scene:(id)a4 completion:(id)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 clientHandle];
  v11 = MEMORY[0x277CF0B98];
  v12 = [v10 processHandle];
  v13 = v12;
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v14 = [v11 tokenFromAuditToken:v27];

  if ([v14 isInvalid])
  {
    v15 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA470];
    v31[0] = @"auth token for sb snapshot is invalid";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.PaperBoardUI" code:-1 userInfo:v16];
    (*(v9 + 2))(v9, 0, 0, 0, 0, 0, v17);
  }

  else
  {
    v26 = 0;
    v17 = [getPUIPosterSnapshotDestinationClass() destinationWithTemporaryDirectoryWithAuditToken:v14 error:&v26];
    v18 = v26;
    v16 = v18;
    if (v17)
    {
      v22 = v14;
      v23 = v7;
      v24 = v8;
      v17 = v17;
      v25 = v9;
      BSDispatchMain();
    }

    else if (v18)
    {
      (*(v9 + 2))(v9, 0, 0, 0, 0, 0, v18);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA470];
      v29 = @"output destination for sb snapshot could not be created";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.PaperBoardUI" code:-1 userInfo:v20];
      (*(v9 + 2))(v9, 0, 0, 0, 0, 0, v21);
    }
  }
}

void __75__PBUIPosterVariantViewController_performSnapshotOnQueue_scene_completion___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [getPUIPosterLevelSetClass() compositeLevelSet];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];

  v4 = [getPUIPosterSnapshotAnalysisDescriptorClass() defaultAnalysisDescriptor];
  v5 = [v4 copyWithShouldDetermineColorStatistics:1];

  v6 = [objc_alloc(getPUIPosterSnapshotOutputDescriptorClass()) initWithLevelSets:v3 snapshotDefinitionIdentifier:@"RuntimeSnapshot"];
  v7 = [*(a1 + 32) valueForEntitlement:@"com.apple.posterkit.RolesForInprocessSnapshotOnly"];
  v8 = getPFPosterRoleLockScreen();
  if ([v7 isEqual:v8])
  {
  }

  else
  {
    v9 = objc_opt_class();
    v10 = v7;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = getPFPosterRoleLockScreen();
    v14 = [v12 containsObject:v13];

    if (!v14)
    {
      v15 = [getPUIPosterSnapshotHostConfigurationDescriptorClass() snapshotOutOfProcessHostConfigurationDescriptor];
      goto LABEL_11;
    }
  }

  v15 = [getPUIPosterSnapshotHostConfigurationDescriptorClass() snapshotInProcessHostConfigurationDescriptorWithWorkQueue:*(a1 + 40)];
LABEL_11:
  v16 = v15;
  v17 = [v15 copyWithWaitUntilReady:0];

  v18 = [objc_alloc(getPUIPosterSnapshotDescriptorClass()) initWithOutputDescriptor:v6 sceneDescriptor:0 attachments:0 analysis:v5 host:v17];
  v19 = [getPFTSchedulerClass() schedulerWithDispatchQueue:*(a1 + 40)];
  v20 = [*(a1 + 48) pui_executeSnapshotForDescriptor:v18 outputDestination:*(a1 + 56)];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__PBUIPosterVariantViewController_performSnapshotOnQueue_scene_completion___block_invoke_2;
  v21[3] = &unk_278363EA8;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  [v20 addCompletionBlock:v21 scheduler:v19];
}

void __75__PBUIPosterVariantViewController_performSnapshotOnQueue_scene_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) invalidate];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [v14 snapshotLevelSets];
    v7 = [v6 firstObject];
    v8 = [v14 snapshotForLevelSet:v7];

    v9 = [v14 colorStatistics];
    v12 = a1 + 32;
    v10 = *(a1 + 32);
    v11 = *(v12 + 8);
    v13 = [v14 infoDictionary];
    (*(v11 + 16))(v11, v14, v10, v8, v9, v13, 0);
  }
}

- (UIImage)snapshot
{
  if ([(PBUIPosterVariantViewController *)self isSnapshotInCorrectOrientation])
  {
    v3 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource snapshot];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PLKLegibilityEnvironmentContext)legibilityEnvironmentContext
{
  legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
  if (legibilityEnvironmentContext)
  {
    v3 = legibilityEnvironmentContext;
  }

  else
  {
    v5 = [(PBUIPosterVariantViewController *)self legibilitySettings];
    v6 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
    if ([(PBUIPosterVariantViewController *)self variant]== 1)
    {
      getPLKLegibilityEnvironmentVariantHomeScreen();
    }

    else
    {
      getPLKLegibilityEnvironmentVariantLockScreen();
    }
    v7 = ;
    v8 = [v6 colorBoxes];

    v9 = objc_alloc(getPLKLegibilityEnvironmentVariantContextClass());
    v10 = soft_PLKLegibilityStyleForUILegibilityStyle([v5 style]);
    if (v8)
    {
      v11 = [v6 colorBoxes];
      v12 = [v9 initWithVariant:v7 style:v10 colorBoxes:v11 legibilitySettings:v5];
    }

    else
    {
      v11 = [(PBUIPosterVariantViewController *)self averageColor];
      v12 = [v9 initWithVariant:v7 style:v10 averageColor:v11 contrast:v5 saturation:-1.0 legibilitySettings:-1.0];
    }

    v13 = self->_legibilityEnvironmentContext;
    self->_legibilityEnvironmentContext = v12;

    v3 = self->_legibilityEnvironmentContext;
  }

  return v3;
}

- (void)viewDidLoad
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PBUIPosterVariantViewController;
  [(PBUIPosterVariantViewController *)&v18 viewDidLoad];
  v3 = [(PBUIPosterVariantViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  contentContainer = self->_contentContainer;
  self->_contentContainer = v5;

  [(UIView *)self->_contentContainer setAutoresizingMask:18];
  [v3 addSubview:self->_contentContainer];
  v7 = [PBUISnapshotReplicaView alloc];
  [v3 bounds];
  v8 = [(PBUISnapshotReplicaView *)v7 initWithFrame:?];
  snapshotView = self->_snapshotView;
  self->_snapshotView = v8;

  v10 = self->_snapshotView;
  v11 = [(PBUIPosterVariantViewController *)self snapshotSourceProvider];
  [(PBUISnapshotReplicaView *)v10 setProvider:v11];

  [v3 addSubview:self->_snapshotView];
  [v3 sendSubviewToBack:self->_snapshotView];
  [(PBUIPosterVariantViewController *)self _checkIfPresentationIsUpdatedAndSnapshot];
  objc_initWeak(&location, self);
  v12 = objc_opt_self();
  v19[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__PBUIPosterVariantViewController_viewDidLoad__block_invoke;
  v15[3] = &unk_278363ED0;
  objc_copyWeak(&v16, &location);
  v14 = [(PBUIPosterVariantViewController *)self registerForTraitChanges:v13 withHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __46__PBUIPosterVariantViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v10 traitCollection];
    v8 = [v7 userInterfaceStyle];
    v9 = [v5 userInterfaceStyle];

    if (v8 != v9)
    {
      [WeakRetained _updateInterfaceStyle];
      [WeakRetained setNeedsNewSnapshot:@"interface style changed"];
    }
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  if ([a3 contentState] == 2)
  {

    [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:@"scene content state did change to ready"];
  }
}

- (void)scene:(id)a3 didApplyUpdateWithContext:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->_lastExtantUpdate = [v7 transactionID];
  v8 = PBUILogRuntime();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    lastExtantUpdate = self->_lastExtantUpdate;
    v29 = 138543618;
    v30 = v9;
    v31 = 2048;
    v32 = lastExtantUpdate;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster last extant update changed %lu", &v29, 0x16u);
  }

  v11 = [v7 settingsDiff];
  v12 = [v7 transitionContext];
  if ([v11 pui_posterContentDidChange] & 1) != 0 || -[PBUIPosterVariantViewController variant](self, "variant") == 1 && (objc_msgSend(v12, "pb_homeAppearanceChanged"))
  {
    v13 = PBUILogRuntime();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v15 = self->_lastExtantUpdate;
      v29 = 138543618;
      v30 = v14;
      v31 = 2048;
      v32 = v15;
      _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster Extant %lu did change content", &v29, 0x16u);
    }

    v16 = 1;
    goto LABEL_7;
  }

  v22 = [v7 settings];
  v23 = [v22 pui_userInterfaceStyle];

  if (v23 != self->_mostRecentSnapshotInterfaceStyle)
  {
    v24 = [(PBUIPosterVariantViewController *)self _applicableScene];
    v25 = [v24 settings];
    v13 = [v25 pui_provider];

    v26 = [v13 isEqualToString:@"com.apple.WallpaperKit.CollectionsPoster"];
    v16 = v26;
    if (v26)
    {
      v27 = PBUILogRuntime();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        v29 = 138543362;
        v30 = v28;
        _os_log_impl(&dword_21E67D000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] catching undetected system appearance change for collections poster", &v29, 0xCu);
      }
    }

LABEL_7:

    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:
  v17 = [v6 clientSettings];
  v18 = [v17 pui_significantEventOptions];

  v19 = [v11 pui_significantEventsCounterDidChange];
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v16 & 1) != 0 || (v20)
  {
    [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];
    if ([(PBUIPosterVariantViewController *)self variant]== 1)
    {
      [(PBUIURLBackedSnapshotSource *)self->_snapshotSource clearDerivedProminentColor];
      derivedProminentColor = self->_derivedProminentColor;
      self->_derivedProminentColor = 0;
    }

    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"scene settings were updated"];
    goto LABEL_20;
  }

  if ([v11 pr_posterPropertiesDidChange] & 1) != 0 || (objc_msgSend(v11, "pr_unlockProgressDidChange") & 1) != 0 || (objc_msgSend(v12, "pb_homeAppearanceChanged"))
  {
LABEL_20:
    [(PBUIPosterVariantViewController *)self updatePresentation:0];
  }
}

- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = PBUILogRuntime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
    lastExtantUpdate = self->_lastExtantUpdate;
    v13 = 138543874;
    v14 = v8;
    v15 = 2048;
    v16 = lastExtantUpdate;
    v17 = 2048;
    v18 = [v6 transactionID];
    _os_log_impl(&dword_21E67D000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster Extant update COULD change %lu (%lu)", &v13, 0x20u);
  }

  v10 = self->_lastExtantUpdate;
  if (v10 == [v6 transactionID])
  {
    v11 = PBUILogRuntime();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Poster Extant update DID change", &v13, 0xCu);
    }

    self->_lastExtantUpdate = 0;
    [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:@"Poster Extant update DID change"];
  }
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([v11 pr_updateSnapshot])
  {
    [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"transition context requested new snapshot"];
  }

  else if ([v10 pui_extendedRenderSessionDidChange])
  {
    v12 = [v9 clientSettings];
    v13 = [v12 pui_inExtendedRenderSession];

    if ((v13 & 1) == 0)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
      v16 = MEMORY[0x223D622C0]([v10 pui_extendedRenderSessionDidChange]);
      v17 = [v9 clientSettings];
      v18 = MEMORY[0x223D622C0]([v17 pui_inExtendedRenderSession]);
      v19 = [v14 stringWithFormat:@"didUpdateClientSettings with diff for variant %@ extendedRenderSessionDidChange %@ inExtendedRenderSession %@", v15, v16, v18];;
      [(PBUIPosterVariantViewController *)self invalidateSnapshotPreconditions:v19];
    }
  }

  v20 = [v11 animationFence];
  v21 = [v11 animationSettings];

  if (v20 && v21)
  {
    v22 = [(PBUIPosterVariantViewController *)self viewIfLoaded];
    v23 = [v22 window];
    v24 = [v23 windowScene];

    [v24 _synchronizeDrawingWithFence:v20];
  }

  v25 = MEMORY[0x277CF0D38];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109__PBUIPosterVariantViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v28[3] = &unk_278362598;
  v29 = v10;
  v30 = self;
  v31 = v9;
  v26 = v9;
  v27 = v10;
  [v25 animateWithSettings:v21 actions:v28];
}

void __109__PBUIPosterVariantViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke(id *a1)
{
  if ([a1[4] pr_hideDimmingLayerDidChange])
  {
    v2 = [a1[5] delegate];
    v3 = a1[5];
    v4 = [a1[6] clientSettings];
    [v2 posterComponent:v3 didUpdateHideDimmingLayer:{objc_msgSend(v4, "pr_hideDimmingLayer")}];
  }

  if ([a1[4] pr_desiredLegibilitySettingsDidChange])
  {
    v5 = a1[5];
    v6 = [a1[6] clientSettings];
    v7 = [v6 pr_desiredLegibilitySettings];
    [v5 _updatePosterColorStatistics:0 desiredLegibilitySettings:v7];
  }

  if ([a1[4] pr_prominentColorDidChange])
  {
    [a1[5] _updatePosterPreferredProminentColor];
  }

  v8 = [a1[6] clientSettings];
  v9 = [v8 pr_areMotionEffectsDisabled];

  if ((v9 & 1) == 0 && [a1[4] pr_supportedMotionEffectsModeDidChange])
  {
    v10 = a1[5];
    v11 = [a1[6] clientSettings];
    [v10 _updateEffectiveMotionEffectsModeForSupportedMode:objc_msgSend(v11 disabled:{"pr_supportedMotionEffectsMode"), 0}];
  }

  if ([a1[4] pui_preferredSalientContentRectangleDidChange])
  {
    v12 = [a1[5] delegate];
    v13 = a1[5];
    v14 = [a1[6] clientSettings];
    [v14 pui_preferredSalientContentRectangle];
    [v12 posterComponent:v13 didUpdatePreferredSalientContentRectangle:?];
  }

  if ([a1[4] pui_adaptiveTimeModeDidChange])
  {
    v15 = [a1[6] clientSettings];
    if ([v15 pui_adaptiveTimeMode] == 2)
    {
      v16 = 1;
    }

    else
    {
      v17 = [a1[6] clientSettings];
      if ([v17 pui_adaptiveTimeMode] == 4)
      {
        v18 = [a1[6] clientSettings];
        v16 = [v18 pui_isAdaptiveTimeHeightUserConfigured] ^ 1;
      }

      else
      {
        v16 = 0;
      }
    }

    v19 = [a1[5] delegate];
    [v19 posterComponent:a1[5] didUpdateAdaptiveTimeHonorsPreferredSalientContentRectangle:v16];
  }

  if ([a1[4] pui_salientContentRectangleUpdatesRequestedDidChange])
  {
    v20 = [a1[5] delegate];
    v21 = a1[5];
    v22 = [a1[6] clientSettings];
    [v20 posterComponent:v21 didUpdateSalientContentRectangleUpdatesRequested:{objc_msgSend(v22, "pui_salientContentRectangleUpdatesRequested")}];
  }

  if ([a1[4] pr_deviceMotionEventsRequestedDidChange])
  {
    v23 = [a1[5] delegate];
    v24 = a1[5];
    v25 = [a1[6] clientSettings];
    [v23 posterComponent:v24 didUpdateDeviceMotionEventsRequested:{objc_msgSend(v25, "pr_deviceMotionEventsRequested")}];
  }

  if ([a1[4] pr_deviceMotionModeDidChange])
  {
    v26 = [a1[6] clientSettings];
    v27 = [v26 pr_deviceMotionMode];

    v28 = PBUIDeviceMotionModeForPRPosterDeviceMotionMode(v27);
    v29 = [a1[5] delegate];
    [v29 posterComponent:a1[5] didUpdateDeviceMotionMode:v28];
  }

  if ([a1[4] pr_preferredDeviceMotionUpdateIntervalDidChange])
  {
    v32 = [a1[5] delegate];
    v30 = a1[5];
    v31 = [a1[6] clientSettings];
    [v31 pr_preferredDeviceMotionUpdateInterval];
    [v32 posterComponent:v30 didUpdatePreferredDeviceMotionUpdateInterval:?];
  }
}

- (UIColor)derivedProminentColor
{
  derivedProminentColor = self->_derivedProminentColor;
  if (derivedProminentColor)
  {
    goto LABEL_2;
  }

  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    v6 = [(PBUIPosterVariantViewController *)self _fetchDerivedProminentColor];
    v7 = self->_derivedProminentColor;
    self->_derivedProminentColor = v6;

    derivedProminentColor = self->_derivedProminentColor;
    if (derivedProminentColor)
    {
LABEL_2:
      v3 = derivedProminentColor;
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [(PBUIPosterVariantViewController *)self counterpart];

    if (v8)
    {
      v9 = [(PBUIPosterVariantViewController *)self counterpart];
      v3 = [v9 derivedProminentColor];

      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_3:

  return v3;
}

- (id)_posterPreferredProminentColor:(BOOL)a3
{
  v3 = a3;
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    if (!v3)
    {
      v8 = [(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor];
      goto LABEL_9;
    }

    posterPreferredProminentColor = self->_posterPreferredProminentColor;
    if (posterPreferredProminentColor || ([(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_posterPreferredProminentColor, self->_posterPreferredProminentColor = v6, v7, (posterPreferredProminentColor = self->_posterPreferredProminentColor) != 0))
    {
      v8 = posterPreferredProminentColor;
LABEL_9:
      v11 = v8;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = [(PBUIPosterVariantViewController *)self counterpart];

    if (v9)
    {
      v10 = [(PBUIPosterVariantViewController *)self counterpart];
      v11 = [v10 _posterPreferredProminentColor:v3];

      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (UIColor)timeColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1 && ([(PBUIPosterVariantViewController *)self counterpart], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(PBUIPosterVariantViewController *)self counterpart];
    v5 = [v4 timeColor];
  }

  else
  {
    timeColor = self->_timeColor;
    if (!timeColor)
    {
      v7 = [(PBUIPosterVariantViewController *)self _fetchTimeColor];
      v8 = self->_timeColor;
      self->_timeColor = v7;

      timeColor = self->_timeColor;
    }

    v5 = timeColor;
  }

  return v5;
}

- (UIColor)preferredProminentColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    v3 = [(PBUIPosterVariantViewController *)self _preferredProminentColor:1 source:0];
  }

  else
  {
    v4 = [(PBUIPosterVariantViewController *)self counterpart];
    v3 = [v4 preferredProminentColor];
  }

  return v3;
}

- (id)_preferredProminentColor:(BOOL)a3 source:(id *)a4
{
  v5 = a3;
  v25 = *MEMORY[0x277D85DE8];
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    if (v5)
    {
      preferredProminentColor = self->_preferredProminentColor;
      if (preferredProminentColor)
      {
        v8 = preferredProminentColor;
        goto LABEL_14;
      }
    }

    v9 = [(PBUIPosterVariantViewController *)self derivedProminentColor];
    v10 = [(PBUIPosterVariantViewController *)self _posterPreferredProminentColor:v5];
    v11 = [(PBUIPosterVariantViewController *)self timeColor];
    v12 = [(PBUIPosterVariantViewController *)self fallbackColor];
    v18 = 0;
    v8 = [objc_opt_class() _determinePreferredProminentColorFromDerivedProminentColor:v9 posterPreferredProminentColor:v10 timeColor:v11 fallbackColor:v12 outChosenColor:&v18];
    v13 = v18;
    if (v8)
    {
      [(PBUIPosterVariantViewController *)self setPreferredProminentColor:v8 chosenColorSource:v13 notifyObservers:1];
      v14 = PBUILogSnapshot();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        *buf = 138543874;
        v20 = v15;
        v21 = 2114;
        v22 = v8;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded preferred prominent color %{public}@/%{public}@", buf, 0x20u);
      }
    }

    if (a4)
    {
      v16 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v9 = [(PBUIPosterVariantViewController *)self counterpart];
    v8 = [v9 _preferredProminentColor:v5 source:a4];
  }

LABEL_14:

  return v8;
}

- (void)setPreferredProminentColor:(id)a3 chosenColorSource:(id)a4 notifyObservers:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (([(UIColor *)self->_preferredProminentColor isEqual:v9]& 1) == 0)
  {
    objc_storeStrong(&self->_preferredProminentColor, a3);
    v11 = [v10 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"UNKNOWN";
    }

    objc_storeStrong(&self->_preferredProminentColorSource, v13);

    [(PBUIPosterVariantViewController *)self updateHomeVariantStyleState];
    if (v5)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v15, &location);
      v14 = v9;
      BSDispatchMain();

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __96__PBUIPosterVariantViewController_setPreferredProminentColor_chosenColorSource_notifyObservers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 150);
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = objc_loadWeakRetained(v6 + 150);
      [v5 posterComponent:v6 didUpdatePreferredProminentColor:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

- (void)snapshotSource:(id)a3 failedToReadSnapshotAtURL:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = PBUILogSnapshot();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterVariantViewController snapshotSource:failedToReadSnapshotAtURL:error:];
  }

  [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"failed to read snapshot; requesting new one"];
}

- (void)snapshotSource:(id)a3 failedToReadColorStatisticsAtURL:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = PBUILogSnapshot();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterVariantViewController snapshotSource:failedToReadColorStatisticsAtURL:error:];
  }

  [(PBUIPosterVariantViewController *)self setNeedsNewSnapshot:@"failed to read color statistics; requesting new snapshot for new color statistics"];
}

- (void)snapshotSourceReceivedNewSnapshot:(id)a3
{
  v4 = PBUILogSnapshot();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [PBUIPosterVariantViewController snapshotSourceReceivedNewSnapshot:?];
  }

  [(PBUIPosterVariantViewController *)self _setupCachesIfNeeded];
}

- (void)colorStatisticsDidChange:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];
    [(PBUIPosterVariantViewController *)self legibilitySettingsDidChange];
    if (v5)
    {
      v6 = PBUILogSnapshot();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        *buf = 138543362;
        v26 = v7;
        _os_log_impl(&dword_21E67D000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Legibility settings did change", buf, 0xCu);
      }

      v8 = PBUILogSnapshot();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v5;
        _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Legibility settings will use desired legibility:", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [v5 convertToUILegibility];
      [WeakRetained posterComponent:self didUpdateLegibilitySettings:v10];
    }

    else
    {
      v11 = [v4 averageColor];
      WeakRetained = [v11 BSColor];

      v12 = PBUILogSnapshot();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        *buf = 138543362;
        v26 = v13;
        _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Legibility settings did change", buf, 0xCu);
      }

      v14 = PBUILogSnapshot();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PBUIStringForWallpaperVariant([(PBUIPosterVariantViewController *)self variant]);
        [WeakRetained red];
        v17 = (v16 * 255.0);
        [WeakRetained green];
        v19 = (v18 * 255.0);
        [WeakRetained blue];
        v21 = (v20 * 255.0);
        [WeakRetained alpha];
        *buf = 138544386;
        v26 = v15;
        v27 = 1024;
        v28 = v17;
        v29 = 1024;
        v30 = v19;
        v31 = 1024;
        v32 = v21;
        v33 = 2048;
        v34 = v22;
        _os_log_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated average color to: #%02X%02X%02X (%.1f)", buf, 0x28u);
      }

      v10 = objc_loadWeakRetained(&self->_delegate);
      v23 = [v4 legibilitySettings];
      [v10 posterComponent:self didUpdateLegibilitySettings:v23];
    }
  }

  else
  {
    v24 = v4;
    BSDispatchMain();
  }
}

- (void)legibilitySettingsDidChange
{
  legibilityEnvironmentContext = self->_legibilityEnvironmentContext;
  self->_legibilityEnvironmentContext = 0;

  portalProvider = self->_portalProvider;
  v6 = [(PBUIPosterVariantViewController *)self legibilitySettings];
  v5 = [(PBUIPosterVariantViewController *)self makePortalSourceWithLegibilitySettings:v6];
  [(PBUIFixedReplicaSourceProvider *)portalProvider setPortalSource:v5];
}

- (id)_fetchPosterPreferredProminentColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    v3 = [(PBUIPosterVariantViewController *)self _applicableScene];
    v4 = [v3 clientSettings];
    v5 = [v4 pr_preferredProminentColor];
    v6 = [v5 UIColor];

    if (!v6)
    {
      v7 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource posterPreferredProminentColor];
      v6 = PBUISafeUIColorFromColor(v7);

      if (!v6)
      {
        v8 = [(PBUIPosterVariantViewController *)self lockScreenConfiguration];
        v15 = 0;
        v9 = [v8 pr_loadHomeScreenConfigurationWithError:&v15];
        v10 = v15;

        v11 = [v9 customizationConfiguration];
        v12 = [v11 suggestedTintColor];
        v6 = PBUISafeUIColorFromColor(v12);

        if (v10)
        {
          v13 = PBUILogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [PBUIPosterVariantViewController _fetchPosterPreferredProminentColor];
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fetchDerivedProminentColor
{
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    v3 = [(PBUIURLBackedSnapshotSource *)self->_snapshotSource derivedProminentPosterColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_fetchTimeColor
{
  if ([(PBUIPosterVariantViewController *)self variant])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PBUIPosterVariantViewController *)self _applicableScene];
    v5 = [v4 settings];
    v6 = [v5 pr_posterConfiguredProperties];
    v7 = [v6 titleStyleConfiguration];
    v8 = [v7 effectiveTitleColor];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = [v8 color];
      }

      v10 = v9;
      v3 = [v9 colorWithAlphaComponent:1.0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_handleUpdateProminentPosterDerivedColor:(id)a3 posterPreferredProminentColor:(id)a4 timeColor:(id)a5 fallbackColor:(id)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PBUIPosterVariantViewController *)self variant]== 1)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v14 = self->_preferredProminentColor;
      if (v12 || v10 || v11 || v13)
      {
        v18 = PBUILogSnapshot();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = PBUIStringForWallpaperVariant(1);
          *buf = 138544386;
          v73 = v19;
          v74 = 2114;
          v75 = v10;
          v76 = 2114;
          v77 = v11;
          v78 = 2114;
          v79 = v12;
          v80 = 2114;
          v81 = v13;
          _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] running _handleUpdateProminentPosterDerivedColor; derivedProminentColor %{public}@ posterPreferredProminentColor %{public}@ timeColor %{public}@ fallbackColor: %{public}@", buf, 0x34u);
        }

        if (v10)
        {
          if (!v11)
          {
            goto LABEL_73;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v15 = PBUILogSnapshot();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = PBUIStringForWallpaperVariant(1);
            *buf = 138543618;
            v73 = v17;
            v74 = 2114;
            v75 = v14;
            _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping _handleUpdateProminentPosterDerivedColor; no colors specified and currentPreferredProminentColor is populated %{public}@", buf, 0x16u);
          }

          v12 = 0;
          v11 = 0;
          v10 = 0;
          goto LABEL_67;
        }

        if (v16)
        {
          v51 = PBUIStringForWallpaperVariant(1);
          *buf = 138543362;
          v73 = v51;
          _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] running _handleUpdateProminentPosterDerivedColor; no currentPreferredProminentColor is populated", buf, 0xCu);
        }
      }

      v10 = [(PBUIPosterVariantViewController *)self _fetchDerivedProminentColor];
      if (!v11)
      {
LABEL_73:
        v11 = [(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor];
        if (v12)
        {
          goto LABEL_17;
        }

        goto LABEL_74;
      }

LABEL_16:
      if (v12)
      {
        goto LABEL_17;
      }

LABEL_74:
      v12 = [(PBUIPosterVariantViewController *)self timeColor];
LABEL_17:
      v15 = [(PBUIPosterVariantViewController *)self timeColor];
      v59 = [(PBUIPosterVariantViewController *)self posterPreferredProminentColor];
      v20 = [(PBUIPosterVariantViewController *)self derivedProminentColor];
      [(PBUIPosterVariantViewController *)self fallbackColor];
      v58 = v57 = v20;
      if (v20)
      {
        if ([v20 isEqual:v10])
        {
          goto LABEL_19;
        }
      }

      else if (!v10)
      {
LABEL_19:
        if (v15)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }

      [(PBUIPosterVariantViewController *)self setDerivedProminentColor:v10];
      v21 = PBUILogSnapshot();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PBUIStringForWallpaperVariant(1);
        *buf = 138543618;
        v73 = v22;
        v74 = 2114;
        v75 = v10;
        _os_log_impl(&dword_21E67D000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating DERIVED PROMINENT COLOR: %{public}@", buf, 0x16u);
      }

      if (v15)
      {
LABEL_20:
        if (([v15 isEqual:v12]& 1) != 0)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }

LABEL_26:
      if (!v12)
      {
        goto LABEL_30;
      }

LABEL_27:
      [(PBUIPosterVariantViewController *)self setTimeColor:v12];
      v23 = PBUILogSnapshot();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = PBUIStringForWallpaperVariant(1);
        *buf = 138543618;
        v73 = v24;
        v74 = 2114;
        v75 = v12;
        _os_log_impl(&dword_21E67D000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating TIME COLOR: %{public}@", buf, 0x16u);
      }

LABEL_30:
      if (v59)
      {
        if ([v59 isEqual:v11])
        {
          goto LABEL_42;
        }
      }

      else if (!v11)
      {
        goto LABEL_42;
      }

      v53 = v15;
      v55 = v14;
      [(PBUIPosterVariantViewController *)self setPosterPreferredProminentColor:v11];
      [(PBUIURLBackedSnapshotSource *)self->_snapshotSource updatePosterPreferredProminentColor:v11 error:0];
      PRSPosterUpdateClass = getPRSPosterUpdateClass();
      v26 = [(UIColor *)v11 BSColor];
      v27 = [PRSPosterUpdateClass posterUpdateHomeScreenSuggestedTintColor:v26];

      PRSPosterUpdaterClass = getPRSPosterUpdaterClass();
      v29 = [(PBUIPosterVariantViewController *)self _lockVariantScene];
      v30 = [v29 pui_posterPath];
      v31 = [PRSPosterUpdaterClass updaterForPath:v30];

      v65 = 0;
      LODWORD(PRSPosterUpdaterClass) = [v31 applyUpdateLocally:v27 error:&v65];
      v32 = v65;
      v33 = v32;
      if (!PRSPosterUpdaterClass || v32)
      {
        v34 = PBUILogSnapshot();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [PBUIPosterVariantViewController _handleUpdateProminentPosterDerivedColor:posterPreferredProminentColor:timeColor:fallbackColor:];
        }
      }

      v35 = PBUILogSnapshot();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PBUIStringForWallpaperVariant(1);
        *buf = 138543618;
        v73 = v36;
        v74 = 2114;
        v75 = v11;
        _os_log_impl(&dword_21E67D000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating POSTER PREFERRED PROMINENT COLOR color: %{public}@", buf, 0x16u);
      }

      v15 = v53;
      v14 = v55;
LABEL_42:
      if (v58)
      {
        if ([v58 isEqual:v13])
        {
          goto LABEL_49;
        }
      }

      else if (!v13)
      {
        goto LABEL_49;
      }

      [(PBUIPosterVariantViewController *)self setFallbackColor:v13];
      v37 = PBUILogSnapshot();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        PBUIStringForWallpaperVariant(1);
        v39 = v38 = v15;
        *buf = 138543618;
        v73 = v39;
        v74 = 2114;
        v75 = v11;
        _os_log_impl(&dword_21E67D000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating POSTER FALLBACK COLOR: %{public}@", buf, 0x16u);

        v15 = v38;
      }

LABEL_49:
      v64 = 0;
      v40 = [objc_opt_class() _determinePreferredProminentColorFromDerivedProminentColor:v10 posterPreferredProminentColor:v11 timeColor:v12 fallbackColor:v13 outChosenColor:&v64];
      v41 = v64;
      if (v14)
      {
        if (([(UIColor *)v14 isEqual:v40]& 1) != 0)
        {
          goto LABEL_66;
        }
      }

      else if (!v40)
      {
LABEL_66:

LABEL_67:
        goto LABEL_68;
      }

      v52 = v41;
      [(PBUIPosterVariantViewController *)self setPreferredProminentColor:v40 chosenColorSource:v41 notifyObservers:v40 != 0];
      v42 = PBUILogSnapshot();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = PBUIStringForWallpaperVariant(1);
        *buf = 138543874;
        v73 = v43;
        v74 = 2114;
        v75 = v40;
        v76 = 2114;
        v77 = v52;
        _os_log_impl(&dword_21E67D000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] preferred prominent color WAS UPDATED: %{public}@/%{public}@", buf, 0x20u);
      }

      v44 = [(NSMutableArray *)self->_fetchBlocks copy];
      v45 = v44;
      if (v40 && [v44 count])
      {
        v54 = v15;
        v56 = v14;
        [(NSMutableArray *)self->_fetchBlocks removeAllObjects];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v46 = v45;
        v47 = [v46 countByEnumeratingWithState:&v60 objects:v71 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v61;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v61 != v49)
              {
                objc_enumerationMutation(v46);
              }

              (*(*(*(&v60 + 1) + 8 * i) + 16))();
            }

            v48 = [v46 countByEnumeratingWithState:&v60 objects:v71 count:16];
          }

          while (v48);
        }

        v15 = v54;
        v14 = v56;
      }

      v41 = v52;
      goto LABEL_66;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__PBUIPosterVariantViewController__handleUpdateProminentPosterDerivedColor_posterPreferredProminentColor_timeColor_fallbackColor___block_invoke;
    block[3] = &unk_278363EF8;
    block[4] = self;
    v10 = v10;
    v67 = v10;
    v11 = v11;
    v68 = v11;
    v12 = v12;
    v69 = v12;
    v70 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_68:
}

- (void)_updatePosterColorStatistics:(id)a3 desiredLegibilitySettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 || (-[PBUIPosterVariantViewController desiredLegibilitySettings](self, "desiredLegibilitySettings"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, -[PBUIPosterVariantViewController desiredLegibilitySettings](self, "desiredLegibilitySettings"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqual:v7], v10, v9, (v11 & 1) != 0))
  {
    v12 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(PBUIPosterVariantViewController *)self setDesiredLegibilitySettings:v7];
    v12 = 1;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (self->_posterColorStatistics && (BSEqualObjects() & 1) != 0)
  {
LABEL_9:
    v13 = 1;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v14 = [v6 copy];
  posterColorStatistics = self->_posterColorStatistics;
  self->_posterColorStatistics = v14;

  v16 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
  v13 = v16 != self->_posterColorStatistics;

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(PBUIPosterVariantViewController *)self legibilitySettingsDidChange];
  v17 = [(PBUIPosterVariantViewController *)self desiredLegibilitySettings];

  if (v17)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v20, &location);
    v19 = v7;
    BSDispatchMain();

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

LABEL_14:
  if (!v13)
  {
    v18 = [(PBUIPosterVariantViewController *)self contentColorStatistics];
    [(PBUIPosterVariantViewController *)self colorStatisticsDidChange:v18];
  }

LABEL_16:
}

void __90__PBUIPosterVariantViewController__updatePosterColorStatistics_desiredLegibilitySettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 150);
    v4 = [*(a1 + 32) convertToUILegibility];
    [v3 posterComponent:v5 didUpdateLegibilitySettings:v4];

    WeakRetained = v5;
  }
}

- (void)_updatePosterPreferredProminentColor
{
  v3 = [(PBUIPosterVariantViewController *)self _fetchPosterPreferredProminentColor];
  [(PBUIPosterVariantViewController *)self _handleUpdateProminentPosterDerivedColor:0 posterPreferredProminentColor:v3 timeColor:0 fallbackColor:0];
}

+ (id)_determinePreferredProminentColorFromDerivedProminentColor:(id)a3 posterPreferredProminentColor:(id)a4 timeColor:(id)a5 fallbackColor:(id)a6 outChosenColor:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v12;
  v16 = v15;
  if (v15 && a7)
  {
    v17 = @"posterPreferredProminentColor";
    v18 = v15;
  }

  else if (!v11 || v15)
  {
    if (v15 || !v13)
    {
      v18 = v15;
      if (v15)
      {
        goto LABEL_19;
      }

      if (v14)
      {
        v19 = v14;
      }

      else
      {
        v19 = [MEMORY[0x277D75348] purpleColor];
      }

      v18 = v19;
      if (!a7)
      {
        goto LABEL_19;
      }

      v17 = @"fallbackColor";
    }

    else
    {
      v18 = v13;
      if (!a7)
      {
        goto LABEL_19;
      }

      v17 = @"timeColor";
    }
  }

  else
  {
    v18 = v11;
    if (!a7)
    {
      goto LABEL_19;
    }

    v17 = @"derivedPreferredProminentColor";
  }

  *a7 = v17;
LABEL_19:

  return v18;
}

- (id)succinctDescription
{
  v2 = [(PBUIPosterVariantViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIPosterVariantViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PBUIPosterVariantViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__PBUIPosterVariantViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783622E0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __73__PBUIPosterVariantViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"scene"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1008) withName:@"presenter" skipIfNil:1];
  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) contentColorStatistics];
  v5 = [v4 appendObject:v6 withName:@"colorStats" skipIfNil:1];
}

- (PBUIPosterVariantViewController)counterpart
{
  WeakRetained = objc_loadWeakRetained(&self->_counterpart);

  return WeakRetained;
}

- (void)initWithScene:(const char *)a1 counterpart:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSceneClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBUIPosterVariantViewController.m";
    v16 = 1024;
    v17 = 111;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setCounterpart:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_21E67D000, v1, OS_LOG_TYPE_FAULT, "oldCounterpart exists w/o scene attached. (old counterpart %@; new counterpart %@)", v2, 0x16u);
}

- (void)fetchWallpaperProminentColor:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fetchWallpaperProminentColor:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __64__PBUIPosterVariantViewController_fetchWallpaperProminentColor___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = PBUIStringForWallpaperVariant(*(v0 + 40));
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_monitorScene:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"only one scene should be monitored"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"PBUIPosterVariantViewController.m";
    v9 = 1024;
    v10 = 520;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_monitorScene:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't monitor a scene that doesn't exist"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"PBUIPosterVariantViewController.m";
    v9 = 1024;
    v10 = 519;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_scheduleSnapshotIfNeeded:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = PBUIStringForWallpaperVariant([v0 variant]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_snapshotNow:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = PBUIStringForWallpaperVariant([v0 variant]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_snapshotNow:(void *)a1 .cold.2(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)snapshotIfNeeded:(uint64_t)a1 reason:.cold.1(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)snapshotIfNeeded:(uint64_t)a1 reason:.cold.2(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)snapshotIfNeeded:(void *)a1 reason:.cold.3(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_1(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __59__PBUIPosterVariantViewController_snapshotIfNeeded_reason___block_invoke_2_88_cold_2(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __95__PBUIPosterVariantViewController__prepareFauxExternalSceneFromScene_completion_attemptNumber___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __61__PBUIPosterVariantViewController__snapshotScene_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = PBUIStringForWallpaperVariant([*(a1 + 40) variant]);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [v5 descriptionWithMultilinePrefix:0];
  }

  else
  {
    v6 = @"None";
  }

  v7 = 138543618;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Snapshot capture failed. Error=%@", &v7, 0x16u);
  if (v5)
  {
  }
}

- (void)snapshotSource:failedToReadSnapshotAtURL:error:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v2 = PBUIStringForWallpaperVariant([v1 variant]);
  v3 = [v0 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)snapshotSource:failedToReadColorStatisticsAtURL:error:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v2 = PBUIStringForWallpaperVariant([v1 variant]);
  v3 = [v0 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)snapshotSourceReceivedNewSnapshot:(void *)a1 .cold.1(void *a1)
{
  v1 = PBUIStringForWallpaperVariant([a1 variant]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_fetchPosterPreferredProminentColor
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_21E67D000, v0, OS_LOG_TYPE_ERROR, "Unable to load  home screen configuration: %{public}@", v1, 0xCu);
}

- (void)_handleUpdateProminentPosterDerivedColor:posterPreferredProminentColor:timeColor:fallbackColor:.cold.1()
{
  v0 = PBUIStringForWallpaperVariant(1);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end