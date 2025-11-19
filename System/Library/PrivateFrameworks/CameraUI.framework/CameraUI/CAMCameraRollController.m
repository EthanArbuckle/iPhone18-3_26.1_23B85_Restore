@interface CAMCameraRollController
- (BOOL)_isPhotoLibraryLocked;
- (BOOL)_outputToExternalStorage;
- (BOOL)_shouldRequestUnlock;
- (BOOL)canPresentCameraRollViewController;
- (BOOL)dismissCameraRollViewControllerForced:(BOOL)a3 animated:(BOOL)a4;
- (BOOL)isCameraRollViewControllerPresented;
- (BOOL)oneUpPresentationHelperEnableFreezeLayoutOnOrientationChange:(id)a3;
- (BOOL)wantsInstalledPhotosAppActions;
- (CAMCameraRollController)init;
- (CAMCameraRollControllerImageWellDelegate)imageWellDelegate;
- (CAMCameraRollControllerPresentationDelegate)presentationDelegate;
- (CAMCameraRollControllerSessionDelegate)sessionDelegate;
- (PUOneUpViewController)oneUpViewController;
- (id)oneUpPresentationHelper:(id)a3 regionOfInterestForAssetReference:(id)a4 cropInsets:(UIEdgeInsets *)a5;
- (id)oneUpPresentationHelperViewController:(id)a3;
- (id)persistedThumbnailImage;
- (int64_t)oneUpPresentationHelperPreferredPresentationOrientation:(id)a3;
- (unint64_t)currentAssetIndexFromEnd;
- (void)_createPhotosDatasourceIfNeededWithAllowedUUIds:(id)a3 animated:(BOOL)a4;
- (void)_createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary:(id)a3;
- (void)_ensureCameraRollViewController;
- (void)_scheduleUpdateIfOneUpIsActive;
- (void)_setExternalStorageBrowsingSession:(id)a3;
- (void)_setObserveCameraPreviewWellChanges:(BOOL)a3;
- (void)_setPhotosDataSource:(id)a3;
- (void)_setPrefersPresentingStatusbarHidden:(BOOL)a3;
- (void)_setStagedDataSource:(id)a3;
- (void)_startNewSession;
- (void)_stopCaptureSessionIfNecessary;
- (void)_unlockDeviceIfNeededForActionType:(unint64_t)a3 completionHandler:(id)a4;
- (void)_updateAnimated:(BOOL)a3;
- (void)_updateExternalStorageThumbnail:(id)a3 withUUID:(id)a4;
- (void)_updateTransientDataSourceIfNeeded;
- (void)applicationWillEnterForeground:(id)a3;
- (void)beginAllowingStagedMediaLoading;
- (void)cameraPreviewWellImageDidChange:(id)a3;
- (void)clearIgnoredImageWellUUIDs;
- (void)dealloc;
- (void)didPersistAssetWithUUID:(id)a3 captureSession:(unsigned __int16)a4;
- (void)handlePresentingPanGestureRecognizer:(id)a3;
- (void)ignoreImageWellChangeNotificationForEV0UUID:(id)a3 withHDRUUID:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 didDismissOneUpViewController:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 didPresentOneUpViewController:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 shouldHideAssetReferences:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 willPresentOneUpViewController:(id)a4;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)ppt_awaitPreload:(id)a3;
- (void)preload;
- (void)presentCameraRollViewControllerAnimated:(BOOL)a3 interactive:(BOOL)a4 deferringStagedMediaLoading:(BOOL)a5;
- (void)presentingViewControllerViewDidAppear:(BOOL)a3;
- (void)presentingViewControllerViewDidDisappear:(BOOL)a3;
- (void)presentingViewControllerViewWillAppear:(BOOL)a3;
- (void)presentingViewControllerViewWillDisappear:(BOOL)a3;
- (void)prewarmPhotosAppInstallationState;
- (void)processPendingBursts;
- (void)processTransientAssetUpdate:(id)a3 preventingInsertion:(BOOL)a4 persistenceOptions:(int64_t)a5;
- (void)processTransientPairedVideoUpdate:(id)a3 filterType:(int64_t)a4;
- (void)resetNavigation;
- (void)setCurrentAssetIndexFromEnd:(unint64_t)a3;
- (void)setExternalStorage:(id)a3;
- (void)setPresentationDelegate:(id)a3;
- (void)willPersistAssetWithUUID:(id)a3 captureSession:(unsigned __int16)a4;
@end

@implementation CAMCameraRollController

- (CAMCameraRollController)init
{
  v20.receiver = self;
  v20.super_class = CAMCameraRollController;
  v2 = [(CAMCameraRollController *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sessionAssetUUIDs = v2->__sessionAssetUUIDs;
    v2->__sessionAssetUUIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    ignoredEV0UUIDs = v2->__ignoredEV0UUIDs;
    v2->__ignoredEV0UUIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    HDRUUIDToIgnoredEV0UUIDs = v2->__HDRUUIDToIgnoredEV0UUIDs;
    v2->__HDRUUIDToIgnoredEV0UUIDs = v7;

    v9 = objc_alloc_init(CAMTransientDataSource);
    transientDataSource = v2->__transientDataSource;
    v2->__transientDataSource = v9;

    v11 = objc_alloc_init(CAMTransientImageManager);
    transientImageManager = v2->__transientImageManager;
    v2->__transientImageManager = v11;

    v2->_sessionIdentifier = 1;
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create("com.apple.camera.photo-frameworks-preheat", v13);
    photosFrameworksPreheatQueue = v2->__photosFrameworksPreheatQueue;
    v2->__photosFrameworksPreheatQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    outgoingOneUpPresentationHelpers = v2->__outgoingOneUpPresentationHelpers;
    v2->__outgoingOneUpPresentationHelpers = v16;

    v2->_prefersPresentingStatusbarHidden = 1;
    v18 = +[CAMPriorityNotificationCenter defaultCenter];
    [v18 addObserver:v2 priority:0 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v18 addObserver:v2 priority:0 selector:sel_applicationResumed_ name:*MEMORY[0x1E69DDB80] object:0];
    [v18 addObserver:v2 priority:0 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v2;
}

- (BOOL)isCameraRollViewControllerPresented
{
  v2 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  v3 = [v2 isOneUpPresented];

  return v3;
}

- (id)persistedThumbnailImage
{
  if ([(CAMCameraRollController *)self _outputToExternalStorage])
  {
    v3 = [(CAMCameraRollController *)self _externalStorageBrowsingSessionLastThumbnailImage];
  }

  else if ([(CAMCameraRollController *)self _isPhotoLibraryLocked])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E69BF170] cameraPreviewWellImage];
  }

  return v3;
}

- (void)preload
{
  Current = CFAbsoluteTimeGetCurrent();
  objc_initWeak(&location, self);
  v4 = camSoftLinkQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CAMCameraRollController_preload__block_invoke;
  v6[3] = &unk_1E76FA6B0;
  v6[4] = self;
  objc_copyWeak(v7, &location);
  v7[1] = *&Current;
  dispatch_async(v4, v6);

  v5 = camSoftLinkQueue();
  dispatch_async(v5, &__block_literal_global_18);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __34__CAMCameraRollController_preload__block_invoke(id *a1)
{
  v2 = [a1[4] _photosFrameworksPreheatQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CAMCameraRollController_preload__block_invoke_2;
  block[3] = &unk_1E76F9890;
  objc_copyWeak(v4, a1 + 5);
  block[4] = a1[4];
  v4[1] = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(v4);
}

void __34__CAMCameraRollController_preload__block_invoke_2(uint64_t a1)
{
  CAMSignpostWithIDAndArgs(33, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __34__CAMCameraRollController_preload__block_invoke_3;
  v2[3] = &unk_1E76F9890;
  objc_copyWeak(v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  v3[1] = *(a1 + 48);
  __34__CAMCameraRollController_preload__block_invoke_3(v2);
  CAMSignpostWithIDAndArgs(34, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  objc_destroyWeak(v3);
}

- (void)_scheduleUpdateIfOneUpIsActive
{
  if (![(CAMCameraRollController *)self _updateIsScheduled])
  {
    v3 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
    v4 = [v3 isOneUpPresented];

    if (v4)
    {
      [(CAMCameraRollController *)self _setUpdateIsScheduled:1];
      objc_initWeak(&location, self);
      v5 = dispatch_time(0, 500000000);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__CAMCameraRollController__scheduleUpdateIfOneUpIsActive__block_invoke;
      v6[3] = &unk_1E76F8580;
      objc_copyWeak(&v7, &location);
      dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __34__CAMCameraRollController_preload__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained _preheatQueue_shouldSkipPhotosFrameworkPreheat] & 1) == 0)
  {
    v3 = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
    [v3 registerChangeObserver:WeakRetained];
    [v3 unregisterChangeObserver:WeakRetained];
    v4 = [MEMORY[0x1E69C4950] sharedInstance];
    v5 = [WeakRetained _cameraRollCollectionListFetchResult];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CAMCameraRollController_preload__block_invoke_4;
  block[3] = &unk_1E76F77B0;
  block[4] = *(a1 + 32);
  if (CAMCameraRollControllerDeferredMediaLoadingReason_block_invoke_onceTokenCPAnalytics != -1)
  {
    dispatch_once(&CAMCameraRollControllerDeferredMediaLoadingReason_block_invoke_onceTokenCPAnalytics, block);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__CAMCameraRollController_preload__block_invoke_5;
  v8[3] = &unk_1E76FA580;
  v8[4] = *(a1 + 32);
  *&v8[5] = v7;
  *&v8[6] = Current - v7;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __34__CAMCameraRollController_preload__block_invoke_4()
{
  v2 = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  v0 = MEMORY[0x1E6991F28];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  [v0 setupWithConfigurationFilename:@"CPAnalyticsConfig-Camera" inBundle:v1];

  [MEMORY[0x1E6991F28] setupSystemPropertyProvidersForLibrary:v2];
  [MEMORY[0x1E69DC668] pu_prepareCPAnalytics];
}

void __34__CAMCameraRollController_preload__block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  CAMSignpostWithIDAndArgs(68, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  [MEMORY[0x1E6991F28] startAppTracking];
  [MEMORY[0x1E6991F28] startViewTracking];
  [MEMORY[0x1E6991F28] activateEventQueue];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 launchedToTest];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _ensureCameraRollViewController];
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(a1 + 40);
    v6 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = Current - v5 - *(a1 + 48);
      v11 = 134218240;
      v12 = Current - v5;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "preflightCameraRollFrameworks complete! (took %.3f seconds total, %.3f seconds on main)", &v11, 0x16u);
    }

    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 updateShortcutItemsForApplication:v8];
    }

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"CAMRegisterAppShortcuts" object:0];
  }

  CAMSignpostWithIDAndArgs(69, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

- (void)_startNewSession
{
  v3 = [(CAMCameraRollController *)self _isPhotoLibraryLocked];
  v8 = [(CAMCameraRollController *)self _transientDataSource];
  [(CAMCameraRollController *)self _setSessionIdentifier:([(CAMCameraRollController *)self sessionIdentifier]+ 1)];
  [(CAMCameraRollController *)self _setAllowUpdating:0];
  if (v3)
  {
    [v8 removeAllAssets];
  }

  v4 = [(CAMCameraRollController *)self _sessionAssetUUIDs];
  [v4 removeAllObjects];

  v5 = [(CAMCameraRollController *)self _ignoredEV0UUIDs];
  [v5 removeAllObjects];

  v6 = [(CAMCameraRollController *)self _HDRUUIDToIgnoredEV0UUIDs];
  [v6 removeAllObjects];

  v7 = [(CAMCameraRollController *)self sessionDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 cameraRollControllerDidStartSession:self];
  }
}

- (CAMCameraRollControllerSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (void)beginAllowingStagedMediaLoading
{
  if ([(CAMCameraRollController *)self _isDeferringStagedMediaLoading])
  {
    v3 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
    v4 = [v3 browsingSession];
    v5 = [v4 viewModel];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__CAMCameraRollController_beginAllowingStagedMediaLoading__block_invoke;
    v7[3] = &unk_1E76F77B0;
    v8 = v5;
    v6 = v5;
    [v6 performChanges:v7];
    [(CAMCameraRollController *)self _setDeferringStagedMediaLoading:0];
  }
}

- (void)_ensureCameraRollViewController
{
  [(CAMCameraRollController *)self _setAllowUpdating:1];

  [(CAMCameraRollController *)self _update];
}

- (CAMCameraRollControllerImageWellDelegate)imageWellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageWellDelegate);

  return WeakRetained;
}

- (CAMCameraRollControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)_updateTransientDataSourceIfNeeded
{
  if (![(CAMCameraRollController *)self _transientAssetsAreValid])
  {
    [(CAMCameraRollController *)self _setTransientAssetsAreValid:1];
    v3 = [(CAMCameraRollController *)self _transientDataSource];
    v4 = [(CAMCameraRollController *)self _photoKitDataSourceManager];
    v5 = [v4 assetsDataSource];

    v6 = [v5 lastItemIndexPath];
    if (v6)
    {
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v18[3] = 0;
      v7 = [MEMORY[0x1E695DFA8] set];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__CAMCameraRollController__updateTransientDataSourceIfNeeded__block_invoke;
      v13[3] = &unk_1E76FA7E8;
      v14 = v5;
      v8 = v3;
      v15 = v8;
      v9 = v7;
      v16 = v9;
      v17 = v18;
      [v14 enumerateIndexPathsStartingAtIndexPath:v6 reverseDirection:1 usingBlock:v13];
      if ([v9 count])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __61__CAMCameraRollController__updateTransientDataSourceIfNeeded__block_invoke_2;
        v10[3] = &unk_1E76F7960;
        v11 = v9;
        v12 = v8;
        [v12 performChanges:v10];
      }

      _Block_object_dispose(v18, 8);
    }
  }
}

- (void)dealloc
{
  v3 = +[CAMPriorityNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(CAMCameraRollController *)self _setObserveCameraPreviewWellChanges:0];
  v4.receiver = self;
  v4.super_class = CAMCameraRollController;
  [(CAMCameraRollController *)&v4 dealloc];
}

- (void)prewarmPhotosAppInstallationState
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(21, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__CAMCameraRollController_prewarmPhotosAppInstallationState__block_invoke;
  v3[3] = &unk_1E76F8580;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __60__CAMCameraRollController_prewarmPhotosAppInstallationState__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [v2 applicationIsInstalled:*MEMORY[0x1E69BFF18]];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__CAMCameraRollController_prewarmPhotosAppInstallationState__block_invoke_2;
  v4[3] = &unk_1E76F88B0;
  v6 = v3;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
}

void __60__CAMCameraRollController_prewarmPhotosAppInstallationState__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setBool:*(a1 + 40) forKey:@"PHOTOS_APP_INSTALLED_DEFAULTS_KEY"];

  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPhotosAppInstallationState:v3];
}

- (BOOL)wantsInstalledPhotosAppActions
{
  v2 = [(CAMCameraRollController *)self photosAppInstallationState];
  if (v2 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 valueForKey:@"PHOTOS_APP_INSTALLED_DEFAULTS_KEY"];

  if (!v5)
  {
    return 1;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"PHOTOS_APP_INSTALLED_DEFAULTS_KEY"];

  return v7;
}

- (void)resetNavigation
{
  v2 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  if ([v2 state] == 2)
  {
    v3 = [v2 browsingSession];
    v4 = [v3 viewModel];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__CAMCameraRollController_resetNavigation__block_invoke;
    v6[3] = &unk_1E76F77B0;
    v7 = v4;
    v5 = v4;
    [v5 performChanges:v6];
  }
}

void __42__CAMCameraRollController_resetNavigation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsDataSource];
  v3 = [v2 startingAssetReference];

  [*(a1 + 32) setCurrentAssetReference:v3];
}

- (void)willPersistAssetWithUUID:(id)a3 captureSession:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v6)
  {
    v7 = [(CAMCameraRollController *)self _isPhotoLibraryLocked];
    v8 = [(CAMCameraRollController *)self sessionIdentifier];
    if (v7 && (v9 = v8, v8 != v4))
    {
      v10 = os_log_create("com.apple.camera", "CameraRoll");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(CAMCameraRollController *)v6 willPersistAssetWithUUID:v9 captureSession:v10];
      }
    }

    else
    {
      v10 = [(CAMCameraRollController *)self _sessionAssetUUIDs];
      [v10 addObject:v6];
    }
  }
}

- (void)didPersistAssetWithUUID:(id)a3 captureSession:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v6)
  {
    v7 = [(CAMCameraRollController *)self _isPhotoLibraryLocked];
    v8 = [(CAMCameraRollController *)self sessionIdentifier];
    if (!v7 || v8 == v4)
    {
      v10 = [(CAMCameraRollController *)self _sessionAssetUUIDs];
      [v10 addObject:v6];

      [(CAMCameraRollController *)self _scheduleUpdateIfOneUpIsActive];
      objc_initWeak(&location, self);
      v11 = dispatch_time(0, 45000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__CAMCameraRollController_didPersistAssetWithUUID_captureSession___block_invoke;
      block[3] = &unk_1E76F7DC0;
      objc_copyWeak(&v15, &location);
      v14 = v6;
      v12 = MEMORY[0x1E69E96A0];
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v9 = os_log_create("com.apple.camera", "CameraRoll");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CAMCameraRollController didPersistAssetWithUUID:v6 captureSession:self];
      }
    }
  }
}

void __66__CAMCameraRollController_didPersistAssetWithUUID_captureSession___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _transientDataSource];

  v4 = [v3 existingAssetForUUID:*(a1 + 32)];

  if (v4)
  {
    v5 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "CAMCameraRollController (didPersistAssetWithUUID): removing one asset from transient DS after timeout: %{public}@", &v7, 0xCu);
    }

    [v3 removeAssetWithUUID:*(a1 + 32)];
  }
}

void __57__CAMCameraRollController__scheduleUpdateIfOneUpIsActive__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setUpdateIsScheduled:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _update];
}

void __34__CAMCameraRollController_preload__block_invoke_222()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_225);
}

void __34__CAMCameraRollController_preload__block_invoke_2_223()
{
  CAMSignpostWithIDAndArgs(33, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  __34__CAMCameraRollController_preload__block_invoke_3_226();

  CAMSignpostWithIDAndArgs(34, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

void __34__CAMCameraRollController_preload__block_invoke_3_226()
{
  v0 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  [v0 _issueNonLaunchingCommand:@"commit"];
}

- (void)ppt_awaitPreload:(id)a3
{
  v4 = a3;
  v5 = camSoftLinkQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CAMCameraRollController_ppt_awaitPreload___block_invoke;
  v7[3] = &unk_1E76F7E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__CAMCameraRollController_ppt_awaitPreload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _photosFrameworksPreheatQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_2;
  v4[3] = &unk_1E76F7E40;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_2(uint64_t a1)
{
  CAMSignpostWithIDAndArgs(33, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_3;
  v3[3] = &unk_1E76F7E40;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_3(v3);
  CAMSignpostWithIDAndArgs(34, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
}

void __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_4;
  v2[3] = &unk_1E76F7E40;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __44__CAMCameraRollController_ppt_awaitPreload___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _ensureCameraRollViewController];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)cameraPreviewWellImageDidChange:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMCameraRollController *)self imageWellDelegate];
  if (v5)
  {
    v26 = [v4 image];
    v6 = [v4 assetUUID];
    v7 = [(CAMCameraRollController *)self _isPhotoLibraryLocked];
    v8 = [(CAMCameraRollController *)self _sessionAssetUUIDs];
    v9 = [(CAMCameraRollController *)self _ignoredEV0UUIDs];
    v10 = [(CAMCameraRollController *)self _HDRUUIDToIgnoredEV0UUIDs];
    if (v7)
    {
      v24 = [v8 containsObject:v6] ^ 1;
    }

    else
    {
      v24 = 0;
    }

    v11 = [v10 objectForKeyedSubscript:v6];
    if (v11)
    {
      v12 = v9;
      v13 = os_log_create("com.apple.camera", "ImageWell");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v11;
        _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: removing ignored EV0 UUID %{public}@ since we received HDR image from assetsd", buf, 0x16u);
      }

      [v10 removeObjectForKey:v6];
      v9 = v12;
      [v12 removeObject:v11];
    }

    v25 = v9;
    v14 = [v9 containsObject:v6];
    v15 = [(CAMCameraRollController *)self _outputToExternalStorage];
    v16 = os_log_create("com.apple.camera", "ImageWell");
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (!v17)
      {
LABEL_13:

        v19 = v26;
LABEL_25:

        goto LABEL_26;
      }

      *buf = 138543362;
      v28 = v6;
      v18 = "ImageWell %{public}@: rejecting update from assetsd since we're currently on external storage mode";
LABEL_12:
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      goto LABEL_13;
    }

    if (v24)
    {
      v19 = v26;
      if (v17)
      {
        *buf = 138543362;
        v28 = v6;
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: rejecting update from assetsd for secure session", buf, 0xCu);
      }

      v20 = v5;
      v21 = self;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      if (v14)
      {
        if (!v17)
        {
          goto LABEL_13;
        }

        *buf = 138543362;
        v28 = v6;
        v18 = "ImageWell %{public}@: ignoring from assetsd because in ignored list";
        goto LABEL_12;
      }

      v19 = v26;
      if (v17)
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v26;
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "ImageWell %{public}@: updating from assetsd with %{public}@", buf, 0x16u);
      }

      v20 = v5;
      v21 = self;
      v22 = v26;
      v23 = v6;
    }

    [v20 cameraRollController:v21 didChangeImageWellImage:v22 withUUID:v23 animated:1];
    goto LABEL_25;
  }

LABEL_26:
}

- (void)ignoreImageWellChangeNotificationForEV0UUID:(id)a3 withHDRUUID:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(CAMCameraRollController *)self _ignoredEV0UUIDs];
    [v9 addObject:v6];

    v10 = [(CAMCameraRollController *)self _HDRUUIDToIgnoredEV0UUIDs];
    [v10 setObject:v6 forKey:v8];
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "ImageWell");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ignoreImageWellChangeNotificationForEV0UUID called with missing EV0UUID=%{public}@ or HDRUUID=%{public}@", &v11, 0x16u);
    }
  }
}

- (void)clearIgnoredImageWellUUIDs
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(CAMCameraRollController *)self _HDRUUIDToIgnoredEV0UUIDs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = os_log_create("com.apple.camera", "ImageWell");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CAMCameraRollController *)self _HDRUUIDToIgnoredEV0UUIDs];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ImageWell: clearIgnoredImageWellUUIDs called while still ignoring HDR to EV0 UUIDs %{public}@", &v9, 0xCu);
    }
  }

  v7 = [(CAMCameraRollController *)self _ignoredEV0UUIDs];
  [v7 removeAllObjects];

  v8 = [(CAMCameraRollController *)self _HDRUUIDToIgnoredEV0UUIDs];
  [v8 removeAllObjects];
}

- (void)applicationWillEnterForeground:(id)a3
{
  +[CAMFrameworkUtilities setPasscodeLockedNeedsUpdate];
  +[CAMFrameworkUtilities setPhotosAppLockedNeedsUpdate];
  [(CAMCameraRollController *)self _startNewSession];

  [(CAMCameraRollController *)self prewarmPhotosAppInstallationState];
}

- (void)processTransientAssetUpdate:(id)a3 preventingInsertion:(BOOL)a4 persistenceOptions:(int64_t)a5
{
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v9 = [(CAMCameraRollController *)self _transientDataSource];
  if (a5 != 3)
  {
    v10 = [(CAMCameraRollController *)self _isPhotoLibraryLocked];
    v11 = [v8 sessionIdentifier];
    v12 = [(CAMCameraRollController *)self sessionIdentifier];
    if (!v10 || v11 == v12)
    {
      v14 = [v8 uuid];
      v15 = [v8 burstIdentifier];
      v16 = [v9 existingRepresentativeAssetForBurstIdentifier:v15];
      v17 = v16;
      if (v15 && v16)
      {
        [v9 updateAssetWithConvertible:v8];
      }

      else if (!v15 || v16 || a4)
      {
        v18 = [v9 existingAssetForUUID:v14];
        if (v18 || a4)
        {
          [v9 updateAssetWithConvertible:v8];
        }

        else
        {
          v19 = [v9 insertAssetWithConvertible:v8];
        }
      }

      else
      {
        [v9 enqueuePendingBurstAssetWithConvertible:v8];
      }
    }

    else
    {
      v13 = os_log_create("com.apple.camera", "CameraRoll");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CAMCameraRollController processTransientAssetUpdate:v8 preventingInsertion:self persistenceOptions:?];
      }
    }
  }
}

- (void)processPendingBursts
{
  v2 = [(CAMCameraRollController *)self _transientDataSource];
  [v2 processPendingBurstAssets];
}

- (void)processTransientPairedVideoUpdate:(id)a3 filterType:(int64_t)a4
{
  v8 = a3;
  v6 = [(CAMCameraRollController *)self _transientImageManager];
  v7 = [v6 insertPairedVideoWithConvertible:v8 filterType:a4];
}

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMCameraRollController *)self _photosDataSource];
  v9 = v8;
  if (v8 == v6)
  {
  }

  else
  {
    v10 = [(CAMCameraRollController *)self _stagedDataSource];

    if (v10 != v6)
    {
      goto LABEL_15;
    }
  }

  v11 = [v6 versionIdentifier];
  v12 = [(CAMCameraRollController *)self _stagedDataSource];

  if (v12)
  {
    [(CAMCameraRollController *)self _update];
  }

  v13 = [(CAMCameraRollController *)self _photosDataSource];
  v14 = v13;
  if (v13 != v6)
  {

LABEL_14:
    [(CAMCameraRollController *)self _invalidateTransientAssets];
    [(CAMCameraRollController *)self _updateTransientDataSourceIfNeeded];
    goto LABEL_15;
  }

  v15 = [v6 versionIdentifier];

  if (v15 != v11 || ![v7 hasIncrementalChanges])
  {
    goto LABEL_14;
  }

  v16 = [(CAMCameraRollController *)self _transientDataSource];
  v17 = [(CAMCameraRollController *)self _transientImageManager];
  if ([v16 isEmpty] && (objc_msgSend(v17, "isEmpty") & 1) != 0)
  {
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__CAMCameraRollController_photosDataSource_didChange___block_invoke;
    v19[3] = &unk_1E76F7938;
    v20 = v17;
    v21 = v16;
    v22 = self;
    v18 = v16;
    v16 = v17;
    [v18 performChanges:v19];
  }

LABEL_15:
}

void __54__CAMCameraRollController_photosDataSource_didChange___block_invoke(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__CAMCameraRollController_photosDataSource_didChange___block_invoke_2;
  aBlock[3] = &unk_1E76FA6D8;
  v97 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v71 = a1;
  v3 = [*(a1 + 32) existingPairedVideoUUIDs];
  v4 = [MEMORY[0x1E695DF70] array];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v92 objects:v105 count:16];
  v7 = 0x1E6978000uLL;
  if (v6)
  {
    v8 = v6;
    v9 = *v93;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v93 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x1E6978630] localIdentifierWithUUID:*(*(&v92 + 1) + 8 * i)];
        [v4 addObject:v11];
      }

      v8 = [v5 countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x1E6978830] px_standardFetchOptions];
  [v12 setIsExclusivePredicate:1];
  v59 = v4;
  v57 = v12;
  [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v4 options:v12];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v91 = 0u;
  v13 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v89;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v89 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v88 + 1) + 8 * j);
        v18 = [v17 uuid];
        v2[2](v2, v17, v18);
      }

      v14 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
    }

    while (v14);
  }

  v58 = v5;
  v60 = [*(v71 + 40) existingAssetUUIDs];
  v61 = v2;
  if ([v60 count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v20 = v60;
    v21 = [v20 countByEnumeratingWithState:&v84 objects:v103 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v85;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v85 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [MEMORY[0x1E6978630] localIdentifierWithUUID:*(*(&v84 + 1) + 8 * k)];
          [v19 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v84 objects:v103 count:16];
      }

      while (v22);
    }

    v26 = [MEMORY[0x1E6978830] px_standardFetchOptions];
    [v26 setIsExclusivePredicate:1];
    v62 = v19;
    v56 = v26;
    v27 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v19 options:v26];
    v28 = [*(v71 + 48) _photosDataSource];
    v29 = [v28 indexPathForLastAsset];
    v69 = v28;
    v30 = [v28 lastAssetCollection];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v66 = v27;
    v31 = [v66 countByEnumeratingWithState:&v80 objects:v102 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v81;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v81 != v33)
          {
            objc_enumerationMutation(v66);
          }

          v35 = *(*(&v80 + 1) + 8 * m);
          v36 = [v69 indexPathForAsset:v35 hintIndexPath:v29 hintCollection:v30];
          if (v36)
          {
            v37 = [v35 uuid];
            v38 = [v35 burstIdentifier];
            if (v38)
            {
              [*(v71 + 40) removeRepresentativeAssetForBurstIdentifier:v38];
            }

            else
            {
              v39 = os_log_create("com.apple.camera", "CameraRoll");
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v101 = v37;
                _os_log_impl(&dword_1A3640000, v39, OS_LOG_TYPE_DEFAULT, "CAMCameraRollController (photosDataSource:didChange:): de-dup one asset from transient DS: %{public}@", buf, 0xCu);
              }

              [*(v71 + 40) removeAssetWithUUID:v37];
              v2 = v61;
            }

            v2[2](v2, v35, v37);
          }
        }

        v32 = [v66 countByEnumeratingWithState:&v80 objects:v102 count:16];
      }

      while (v32);
    }

    v7 = 0x1E6978000uLL;
  }

  [*(v71 + 40) existingBurstIdentifiers];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v63 = v79 = 0u;
  v67 = [v63 countByEnumeratingWithState:&v76 objects:v99 count:16];
  if (v67)
  {
    v65 = *v77;
    do
    {
      v40 = 0;
      do
      {
        if (*v77 != v65)
        {
          objc_enumerationMutation(v63);
        }

        v70 = v40;
        v41 = *(*(&v76 + 1) + 8 * v40);
        v42 = [MEMORY[0x1E6978830] px_standardFetchOptions];
        [v42 setIsExclusivePredicate:1];
        v68 = v42;
        v43 = [*(v7 + 1584) fetchAssetsWithBurstIdentifier:v41 options:v42];
        v44 = [*(v71 + 48) _photosDataSource];
        v45 = [v44 indexPathForLastAsset];
        v46 = [v44 lastAssetCollection];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v47 = v43;
        v48 = [v47 countByEnumeratingWithState:&v72 objects:v98 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v73;
          do
          {
            for (n = 0; n != v49; ++n)
            {
              if (*v73 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v72 + 1) + 8 * n);
              v53 = [v44 indexPathForAsset:v52 hintIndexPath:v45 hintCollection:v46];
              if (v53)
              {
                v54 = [v52 burstIdentifier];
                if (v54)
                {
                  [*(v71 + 40) removeRepresentativeAssetForBurstIdentifier:v54];
                }

                else
                {
                  v55 = os_log_create("com.apple.camera", "CameraRoll");
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                  {
                    __54__CAMCameraRollController_photosDataSource_didChange___block_invoke_cold_1(buf, &buf[1], v55);
                  }
                }
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v72 objects:v98 count:16];
          }

          while (v49);
        }

        v40 = v70 + 1;
        v7 = 0x1E6978000;
      }

      while ((v70 + 1) != v67);
      v67 = [v63 countByEnumeratingWithState:&v76 objects:v99 count:16];
    }

    while (v67);
  }
}

void __54__CAMCameraRollController_photosDataSource_didChange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  v6 = [v5 isPhotoIris];
  v7 = [v5 isPhotoIrisPlaceholder];

  if (v6 && (v7 & 1) == 0)
  {
    [*(a1 + 32) removePairedVideoForUUID:v8];
  }
}

- (void)setPresentationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presentationDelegate, obj);
    self->_presentationDelegateFlags.respondsToRegionOfInterestForAsset = objc_opt_respondsToSelector() & 1;
    self->_presentationDelegateFlags.respondsToShouldHideSourceAsset = objc_opt_respondsToSelector() & 1;
    self->_presentationDelegateFlags.respondsToWillPresentCameraRoll = objc_opt_respondsToSelector() & 1;
    self->_presentationDelegateFlags.respondsToPrefersPresentingStatusbarHiddenDidChange = objc_opt_respondsToSelector() & 1;
    self->_presentationDelegateFlags.respondsToPreferredPresentationOrientation = objc_opt_respondsToSelector() & 1;
  }
}

- (BOOL)canPresentCameraRollViewController
{
  [(CAMCameraRollController *)self _ensureCameraRollViewController];
  v3 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  v4 = [v3 canPresentOneUpViewControllerAnimated:1];

  return v4;
}

- (void)presentCameraRollViewControllerAnimated:(BOOL)a3 interactive:(BOOL)a4 deferringStagedMediaLoading:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v9 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109376;
    v13[1] = v6;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Presenting the Camera Roll interactively=%d deferring media loading=%d", v13, 0xEu);
  }

  [(CAMCameraRollController *)self _stopCaptureSessionIfNecessary];
  [(CAMCameraRollController *)self _setDeferringStagedMediaLoading:v5];
  [(CAMCameraRollController *)self _ensureCameraRollViewController];
  v10 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  v11 = v10;
  if (v6)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  [v10 presentOneUpViewControllerAnimated:v7 interactiveMode:v12];
}

- (BOOL)dismissCameraRollViewControllerForced:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 dismissOneUpViewControllerForced:v5 animated:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)handlePresentingPanGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  [v5 handlePresentingPanGestureRecognizer:v4];
}

- (void)presentingViewControllerViewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Viewfinder will appear", v10, 2u);
  }

  v6 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  [v6 presentingViewControllerViewWillAppear:v3];

  [(CAMCameraRollController *)self prewarmPhotosAppInstallationState];
  v7 = [(CAMCameraRollController *)self _didStopCaptureSession];
  [(CAMCameraRollController *)self _setDidStopCaptureSession:0];
  if ([(CAMCameraRollController *)self _isOneUpVisible])
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E69DC668] sharedApplication];
      v7 = [v8 applicationState] != 2;
    }

    v9 = [(CAMCameraRollController *)self presentationDelegate];
    [v9 cameraRollController:self willShowPresentingViewControllerShouldStartCaptureSession:v7];
  }

  [(CAMCameraRollController *)self _setPrefersPresentingStatusbarHidden:1];
}

- (void)presentingViewControllerViewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Viewfinder did appear", v8, 2u);
  }

  v6 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  [v6 presentingViewControllerViewDidAppear:v3];

  if ([(CAMCameraRollController *)self _isOneUpFullyPresented])
  {
    v7 = [(CAMCameraRollController *)self presentationDelegate];
    [v7 cameraRollControllerDidDismissFullyPresentedCameraRoll:self];
  }

  [(CAMCameraRollController *)self _setOneUpFullyPresented:0];
  [(CAMCameraRollController *)self _setOneUpVisible:0];
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Viewfinder will disappear", v10, 2u);
  }

  v6 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  [v6 presentingViewControllerViewWillDisappear:v3];

  [(CAMCameraRollController *)self _setOneUpVisible:1];
  [(CAMCameraRollController *)self clearIgnoredImageWellUUIDs];
  [(CAMCameraRollController *)self _stopCaptureSessionIfNecessary];
  v7 = [(CAMCameraRollController *)self presentationDelegate];
  v8 = [v7 cameraRollControllerPresentingViewController:self];

  v9 = [v8 presentedViewController];
  -[CAMCameraRollController _setPrefersPresentingStatusbarHidden:](self, "_setPrefersPresentingStatusbarHidden:", [v9 prefersStatusBarHidden]);
}

- (void)presentingViewControllerViewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Viewfinder did disappear", v8, 2u);
  }

  v6 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  [v6 presentingViewControllerViewDidDisappear:v3];

  if (![(CAMCameraRollController *)self _isOneUpFullyPresented])
  {
    v7 = [(CAMCameraRollController *)self presentationDelegate];
    [v7 cameraRollControllerDidFullyPresentCameraRoll:self];
  }

  [(CAMCameraRollController *)self _setOneUpFullyPresented:1];
}

- (void)_stopCaptureSessionIfNecessary
{
  if (![(CAMCameraRollController *)self _didStopCaptureSession])
  {
    [(CAMCameraRollController *)self _setDidStopCaptureSession:1];
    v3 = [(CAMCameraRollController *)self presentationDelegate];
    [v3 cameraRollControllerRequestsCaptureSessionStopped:self];
  }
}

- (BOOL)_isPhotoLibraryLocked
{
  if (+[CAMFrameworkUtilities isPasscodeLocked])
  {
    return 1;
  }

  return +[CAMFrameworkUtilities isPhotosAppLocked];
}

- (BOOL)_shouldRequestUnlock
{
  v2 = self;
  v3 = [(CAMCameraRollController *)self presentationDelegate];
  LOBYTE(v2) = [v3 cameraRollControllerShouldRequestUnlock:v2];

  return v2;
}

- (void)_updateAnimated:(BOOL)a3
{
  v3 = a3;
  v73[2] = *MEMORY[0x1E69E9840];
  if (![(CAMCameraRollController *)self _allowUpdating])
  {
    return;
  }

  objc_initWeak(&location, self);
  v5 = [(CAMCameraRollController *)self _photosFrameworksPreheatQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CAMCameraRollController__updateAnimated___block_invoke;
  block[3] = &unk_1E76F8580;
  objc_copyWeak(&v71, &location);
  dispatch_async(v5, block);

  if (-[CAMCameraRollController _isPhotoLibraryLocked](self, "_isPhotoLibraryLocked") && (-[CAMCameraRollController _sessionAssetUUIDs](self, "_sessionAssetUUIDs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 copy], v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CAMCameraRollController *)self _photosDataSource];
    v10 = [v9 allowedUUIDs];
    if (v10)
    {
      v11 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
      v12 = [v11 isOneUpPresented];

      if ((v12 & 1) == 0)
      {
        [(CAMCameraRollController *)self _setStagedDataSource:0];
        [(CAMCameraRollController *)self _setPhotosDataSource:0];
        [(CAMCameraRollController *)self _invalidateTransientAssets];
      }
    }

    else
    {
    }

    v7 = 0;
    v8 = 1;
  }

  v54 = [(CAMCameraRollController *)self _transientDataSource];
  v53 = [(CAMCameraRollController *)self _transientImageManager];
  if (![(CAMCameraRollController *)self _outputToExternalStorage])
  {
    [(CAMCameraRollController *)self _createPhotosDatasourceIfNeededWithAllowedUUIds:v7 animated:v3];
  }

  [(PXPhotosDataSource *)self->__photosDataSource setAllowedUUIDs:v7];
  [(PXPhotosDataSource *)self->__photosDataSource startBackgroundFetchIfNeeded];
  v13 = [(CAMCameraRollController *)self _stagedDataSource];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (!v8)
  {

    goto LABEL_19;
  }

  photosDataSource = self->__photosDataSource;
  if (!photosDataSource)
  {
LABEL_17:

    goto LABEL_20;
  }

  v16 = [(PXPhotosDataSource *)photosDataSource isEmpty];

  if ((v16 & 1) == 0)
  {
LABEL_19:
    v17 = [(CAMCameraRollController *)self _setStagedDataSource:0];
  }

LABEL_20:
  if (MEMORY[0x1A58F97E0](v17) && _updateAnimated__onceToken != -1)
  {
    [CAMCameraRollController _updateAnimated:];
  }

  v18 = [(CAMCameraRollController *)self _stagedDataSource];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [(CAMCameraRollController *)self _photosDataSource];
  }

  v21 = v20;

  if (!self->__oneUpPresentationHelper)
  {
    objc_initWeak(&from, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__CAMCameraRollController__updateAnimated___block_invoke_3;
    aBlock[3] = &unk_1E76FA700;
    objc_copyWeak(&v68, &from);
    v50 = _Block_copy(aBlock);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __43__CAMCameraRollController__updateAnimated___block_invoke_4;
    v65[3] = &unk_1E76FA728;
    objc_copyWeak(&v66, &from);
    v52 = _Block_copy(v65);
    if ([(CAMCameraRollController *)self _outputToExternalStorage])
    {
      v22 = [(CAMCameraRollController *)self externalStorage];
      v23 = MEMORY[0x1E69C4910];
      v51 = v22;
      v24 = [v22 uniqueIdentifier];
      v25 = [v24 UUIDString];
      v26 = [v23 importBrowsingSessionWithDeviceUUID:v25];

      [(CAMCameraRollController *)self _setExternalStorageBrowsingSession:v26];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __43__CAMCameraRollController__updateAnimated___block_invoke_5;
      v63[3] = &unk_1E76FA750;
      v64 = v26;
      v27 = v26;
      v28 = _Block_copy(v63);
      v29 = v64;
    }

    else
    {
      v51 = [objc_alloc(MEMORY[0x1E69C4968]) initWithPhotosDataSource:v21];
      objc_storeStrong(&self->__photoKitDataSourceManager, v51);
      v30 = objc_alloc_init(MEMORY[0x1E69C4970]);
      v29 = objc_alloc_init(MEMORY[0x1E69C4960]);
      [v29 setDataSourceManager:v51];
      [v29 setEnableNavigateToPhotos:{-[CAMCameraRollController wantsInstalledPhotosAppActions](self, "wantsInstalledPhotosAppActions")}];
      [MEMORY[0x1E69C4900] setUnlockDeviceHandlerWithActionType:v52];
      [(CAMCameraRollController *)self _updateTransientDataSourceIfNeeded];
      v48 = [objc_alloc(MEMORY[0x1E69C4920]) initWithTransientDataSource:v54];
      v31 = objc_alloc(MEMORY[0x1E69C4928]);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __43__CAMCameraRollController__updateAnimated___block_invoke_6;
      v61[3] = &unk_1E76FA778;
      v27 = v30;
      v62 = v27;
      v49 = [v31 initWithTransientImageManager:v53 supplementaryLivePhotoImageSource:v61];
      v47 = objc_alloc_init(MEMORY[0x1E69C4918]);
      v32 = objc_alloc(MEMORY[0x1E69C4938]);
      v73[0] = v51;
      v73[1] = v48;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
      v34 = [v32 initWithDataSourceManagers:v33];

      v35 = objc_alloc_init(MEMORY[0x1E69C4930]);
      [v35 registerActionManager:v29 forAssetClass:0];
      [v35 registerActionManager:v29 forAssetClass:objc_opt_class()];
      [v35 registerActionManager:v47 forAssetClass:objc_opt_class()];
      v36 = objc_alloc_init(MEMORY[0x1E69C4940]);
      [v36 registerMediaProvider:v27 forAssetClass:objc_opt_class()];
      [v36 registerMediaProvider:v49 forAssetClass:objc_opt_class()];
      [v36 registerMediaProvider:v49 forAssetPassingTest:&__block_literal_global_277];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __43__CAMCameraRollController__updateAnimated___block_invoke_8;
      v57[3] = &unk_1E76FA7C0;
      v58 = v34;
      v59 = v35;
      v60 = v36;
      v37 = v36;
      v38 = v35;
      v39 = v34;
      v28 = _Block_copy(v57);
    }

    v40 = [objc_alloc(MEMORY[0x1E69C4948]) initWithBrowsingSessionCreationBlock:v28];
    oneUpPresentationHelper = self->__oneUpPresentationHelper;
    self->__oneUpPresentationHelper = v40;

    [(PUOneUpPresentationHelper *)self->__oneUpPresentationHelper setDelegate:self];
    [(PUOneUpPresentationHelper *)self->__oneUpPresentationHelper setAssetDisplayDelegate:self];
    [(PUOneUpPresentationHelper *)self->__oneUpPresentationHelper setCachesScrubberView:1];
    [(PUOneUpPresentationHelper *)self->__oneUpPresentationHelper setUnlockDeviceStatus:v50];
    [(PUOneUpPresentationHelper *)self->__oneUpPresentationHelper setUnlockDeviceHandlerWithActionType:v52];
    [MEMORY[0x1E69C49A0] setupStatusBarInternalSettingsGestureOnInternalDevices];

    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);
    objc_destroyWeak(&from);
  }

  v42 = [(CAMCameraRollController *)self _photoKitDataSourceManager];
  [v42 setPhotosDataSource:v21];

  [(CAMCameraRollController *)self _updateTransientDataSourceIfNeeded];
  if ([(CAMCameraRollController *)self _isDeferringStagedMediaLoading])
  {
    v43 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
    v44 = [v43 browsingSession];
    v45 = [v44 viewModel];

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __43__CAMCameraRollController__updateAnimated___block_invoke_9;
    v55[3] = &unk_1E76F77B0;
    v46 = v45;
    v56 = v46;
    [v46 performChanges:v55];
  }

  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
}

void __43__CAMCameraRollController__updateAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPreheatQueue_shouldSkipPhotosFrameworkPreheat:1];
}

uint64_t __43__CAMCameraRollController__updateAnimated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _shouldRequestUnlock];

  return v2 ^ 1u;
}

void __43__CAMCameraRollController__updateAnimated___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unlockDeviceIfNeededForActionType:a3 completionHandler:v5];
}

uint64_t __43__CAMCameraRollController__updateAnimated___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, double a6, double a7)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isPhotoIrisPlaceholder])
  {
    [*(a1 + 32) requestImageForAsset:v13 targetSize:a3 contentMode:v14 options:v15 resultHandler:{a6, a7}];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __43__CAMCameraRollController__updateAnimated___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return [a2 isPhotoIrisPlaceholder];
  }

  else
  {
    return 0;
  }
}

id __43__CAMCameraRollController__updateAnimated___block_invoke_8(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69C4910]) initWithDataSourceManager:a1[4] actionManager:a1[5] mediaProvider:a1[6]];

  return v1;
}

- (void)_unlockDeviceIfNeededForActionType:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if ([(CAMCameraRollController *)self _shouldRequestUnlock])
  {
    v6 = [(CAMCameraRollController *)self presentationDelegate];
    [v6 cameraRollController:self didRequestPasscodeUnlockForAction:a3 completionBlock:v7];
  }

  else
  {
    v7[2](v7, 1);
  }
}

- (void)_createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary:(id)a3
{
  v4 = a3;
  if (!self->__undoActionsInvalidator && !self->__preparingUndoActionsInvalidator)
  {
    v5 = os_log_create("com.apple.camera", "ImageWell");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ImageWell: Undo actions invalidator setup starting...", buf, 2u);
    }

    self->__preparingUndoActionsInvalidator = 1;
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__CAMCameraRollController__createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary___block_invoke;
    block[3] = &unk_1E76F7938;
    v10 = v4;
    v11 = self;
    v12 = v6;
    v8 = v6;
    dispatch_async(v7, block);
  }
}

void __95__CAMCameraRollController__createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C3B68] sharedObserver];
  v3 = [*(a1 + 32) librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000201 options:v3];
  v5 = [v4 firstObject];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__CAMCameraRollController__createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary___block_invoke_2;
  block[3] = &unk_1E76F7938;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __95__CAMCameraRollController__createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E69C33E8] privacyControllerForCollection:*(a1 + 32)];
  v4 = [*(a1 + 40) presentationDelegate];
  v5 = [v4 cameraRollControllerPresentingViewController:*(a1 + 40)];

  v6 = [v5 undoManager];
  v7 = [objc_alloc(MEMORY[0x1E69C3C38]) initWithUndoManager:v6 privacyController:v3];
  v8 = *(a1 + 40);
  v9 = *(v8 + 184);
  *(v8 + 184) = v7;

  [*(*(a1 + 40) + 184) beginObservingSystemEventsForAutomaticInvalidation];
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceDate:v2];
  v12 = v11;

  v13 = [MEMORY[0x1E695DF00] date];
  [v13 timeIntervalSinceDate:*(a1 + 48)];
  v15 = v14;

  v16 = os_log_create("com.apple.camera", "ImageWell");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218240;
    v18 = v15;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "ImageWell: Undo actions invalidator setup cost total: %.3fs, main thread setup: %.3fs", &v17, 0x16u);
  }

  *(*(a1 + 40) + 27) = 0;
}

- (void)_createPhotosDatasourceIfNeededWithAllowedUUIds:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CAMCameraRollController *)self _photosDataSource];

  if (!v7)
  {
    v8 = [(CAMCameraRollController *)self _cameraRollCollectionListFetchResult];
    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
    v21[0] = v9;
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
    v21[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

    if (v6)
    {
      v12 = 8;
    }

    else
    {
      v12 = 8;
      v13 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v8 options:8];
      v14 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v13];
      [v14 setFetchLimit:100];
      [v14 setSortDescriptors:v11];
      if (([v14 isEmpty] & 1) == 0)
      {
        [(CAMCameraRollController *)self _setStagedDataSource:v14];
        v12 = 1033;
      }
    }

    v15 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v8 options:v12];
    v16 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v15];
    [v16 setAllowedUUIDs:v6];
    [v16 setSortDescriptors:v11];
    [(CAMCameraRollController *)self _setPhotosDataSource:v16];
    [v16 isEmpty];
    [(CAMCameraRollController *)self _setObserveCameraPreviewWellChanges:1];
    v17 = [(CAMCameraRollController *)self imageWellDelegate];
    if (v17)
    {
      v18 = [(CAMCameraRollController *)self persistedThumbnailImage];
      v19 = os_log_create("com.apple.camera", "ImageWell");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "ImageWell: updating from persistedThumbnailImage after setting up photos data source", v20, 2u);
      }

      [v17 cameraRollController:self didChangeImageWellImage:v18 withUUID:0 animated:v4];
    }
  }
}

void __61__CAMCameraRollController__updateTransientDataSourceIfNeeded__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = [*(a1 + 32) assetAtIndexPath:a2];
  v5 = *(a1 + 40);
  v6 = [v13 uuid];
  v7 = [v5 existingAssetForUUID:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v13 burstIdentifier];
    v9 = v8;
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (!v10)
    {
      v7 = [*(a1 + 40) existingRepresentativeAssetForBurstIdentifier:v8];
    }
  }

  if (v7)
  {
    [*(a1 + 48) addObject:v7];
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  if (v12 >= 101)
  {
    *a3 = 1;
  }
}

void __61__CAMCameraRollController__updateTransientDataSourceIfNeeded__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = os_log_create("com.apple.camera", "CameraRoll");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 uuid];
          *buf = 138543362;
          v17 = v9;
          _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "CAMCameraRollController (_updateTransientDataSourceIfNeeded): de-dup one asset from transient DS: %{public}@", buf, 0xCu);
        }

        v10 = *(a1 + 40);
        v11 = [v7 uuid];
        [v10 removeAssetWithUUID:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)_setPrefersPresentingStatusbarHidden:(BOOL)a3
{
  if (self->_prefersPresentingStatusbarHidden != a3)
  {
    self->_prefersPresentingStatusbarHidden = a3;
    if (self->_presentationDelegateFlags.respondsToPrefersPresentingStatusbarHiddenDidChange)
    {
      v4 = [(CAMCameraRollController *)self presentationDelegate];
      [v4 cameraRollControllerPrefersPresentingStatusbarHiddenDidChange:self];
    }
  }
}

- (void)_setPhotosDataSource:(id)a3
{
  v5 = a3;
  photosDataSource = self->__photosDataSource;
  if (photosDataSource != v5)
  {
    v7 = v5;
    if (photosDataSource)
    {
      [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    }

    objc_storeStrong(&self->__photosDataSource, a3);
    photosDataSource = [(PXPhotosDataSource *)self->__photosDataSource registerChangeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](photosDataSource, v5);
}

- (void)_setStagedDataSource:(id)a3
{
  v5 = a3;
  stagedDataSource = self->__stagedDataSource;
  if (stagedDataSource != v5)
  {
    v7 = v5;
    if (stagedDataSource)
    {
      [(PXPhotosDataSource *)stagedDataSource unregisterChangeObserver:self];
    }

    objc_storeStrong(&self->__stagedDataSource, a3);
    stagedDataSource = [(PXPhotosDataSource *)self->__stagedDataSource registerChangeObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](stagedDataSource, v5);
}

- (void)_setObserveCameraPreviewWellChanges:(BOOL)a3
{
  if (self->__observeCameraPreviewWellChanges != a3)
  {
    v4 = a3;
    self->__observeCameraPreviewWellChanges = a3;
    v6 = [MEMORY[0x1E69BE2F0] defaultCenter];
    v7 = v6;
    if (v4)
    {
      [v6 addCameraPreviewWellImageChangeObserver:self];
    }

    else
    {
      [v6 removeCameraPreviewWellImageChangeObserver:self];
    }
  }
}

- (void)_setExternalStorageBrowsingSession:(id)a3
{
  v5 = a3;
  v6 = [(CAMCameraRollController *)self _externalStorageBrowsingSession];

  if (v6 != v5)
  {
    v7 = [(CAMCameraRollController *)self _externalStorageBrowsingSession];
    if (v7)
    {
      v8 = v7;
      v9 = [(CAMCameraRollController *)self _externalStorageBrowsingSessionThumbnailRequest];

      if (v9 >= 1)
      {
        v10 = [(CAMCameraRollController *)self _externalStorageBrowsingSession];
        v11 = [v10 imageWellThumbnailProvider];
        [v11 cancelThumbnailRequest:{-[CAMCameraRollController _externalStorageBrowsingSessionThumbnailRequest](self, "_externalStorageBrowsingSessionThumbnailRequest")}];

        [(CAMCameraRollController *)self set_externalStorageBrowsingSessionThumbnailRequest:0];
      }
    }

    objc_storeStrong(&self->__externalStorageBrowsingSession, a3);
    objc_initWeak(&location, self);
    v12 = [v5 imageWellThumbnailProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__CAMCameraRollController__setExternalStorageBrowsingSession___block_invoke;
    v13[3] = &unk_1E76FA810;
    objc_copyWeak(&v14, &location);
    [v12 requestImageAndUUIDForStartingAssetFillingTargetSize:v13 resultHandler:{360.0, 640.0}];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }
}

void __62__CAMCameraRollController__setExternalStorageBrowsingSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateExternalStorageThumbnail:v6 withUUID:v5];
}

- (void)_updateExternalStorageThumbnail:(id)a3 withUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CAMCameraRollController *)self _outputToExternalStorage]&& !+[CAMFrameworkUtilities isPasscodeLocked])
  {
    v8 = [(CAMCameraRollController *)self imageWellDelegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CAMCameraRollController__updateExternalStorageThumbnail_withUUID___block_invoke;
    v10[3] = &unk_1E76F8230;
    v10[4] = self;
    v11 = v6;
    v12 = v8;
    v13 = v7;
    v9 = v8;
    cam_perform_on_main_asap(v10);
  }
}

uint64_t __68__CAMCameraRollController__updateExternalStorageThumbnail_withUUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) set_externalStorageBrowsingSessionLastThumbnailImage:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v3 = os_log_create("com.apple.camera", "ImageWell");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "ImageWell: updating from persistedThumbnailImage after browsing session updated", &v7, 2u);
    }

    v4 = os_log_create("com.apple.camera", "ImageWell");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 56);
      if (*(a1 + 40))
      {
        v6 = &stru_1F1660A30;
      }

      else
      {
        v6 = @" with a empty image";
      }

      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "External storage: imageWellThumbnailProvider updating the image well thumbnail %{public}@, uuid=%{public}@", &v7, 0x16u);
    }

    return [*(a1 + 48) cameraRollController:*(a1 + 32) didChangeImageWellImage:*(a1 + 40) withUUID:*(a1 + 56) animated:0];
  }

  return result;
}

- (id)oneUpPresentationHelperViewController:(id)a3
{
  v4 = [(CAMCameraRollController *)self presentationDelegate];
  v5 = [v4 cameraRollControllerPresentingViewController:self];

  return v5;
}

- (void)oneUpPresentationHelper:(id)a3 willPresentOneUpViewController:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_oneUpViewController, v6);
  if (self->_presentationDelegateFlags.respondsToWillPresentCameraRoll)
  {
    v5 = [(CAMCameraRollController *)self presentationDelegate];
    [v5 cameraRollControllerWillPresentCameraRoll:self withOneUpController:v6];
  }
}

- (void)oneUpPresentationHelper:(id)a3 didPresentOneUpViewController:(id)a4
{
  v5 = [(CAMCameraRollController *)self _stagedDataSource:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CAMCameraRollController *)self _photosDataSource];
  }

  v9 = v7;

  v8 = [v9 photoLibrary];
  [(CAMCameraRollController *)self _createUndoActionsInvalidatorAsynchronouslyIfNeededWithPhotoLibrary:v8];
}

- (void)oneUpPresentationHelper:(id)a3 didDismissOneUpViewController:(id)a4
{
  v5 = a3;
  objc_storeWeak(&self->_oneUpViewController, 0);
  v6 = [(CAMCameraRollController *)self _outgoingOneUpPresentationHelpers];
  [v6 removeObject:v5];
}

- (BOOL)oneUpPresentationHelperEnableFreezeLayoutOnOrientationChange:(id)a3
{
  v4 = [(CAMCameraRollController *)self presentationDelegate];
  v5 = [v4 cameraRollControllerPresentingViewController:self];

  LOBYTE(v4) = [v5 supportedInterfaceOrientations] == 2;
  return v4;
}

- (id)oneUpPresentationHelper:(id)a3 regionOfInterestForAssetReference:(id)a4 cropInsets:(UIEdgeInsets *)a5
{
  if (self->_presentationDelegateFlags.respondsToRegionOfInterestForAsset)
  {
    v6 = [(CAMCameraRollController *)self presentationDelegate:a3];
    v7 = [v6 cameraRollControllerSourceAssetRegionOfInterest:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)oneUpPresentationHelper:(id)a3 shouldHideAssetReferences:(id)a4
{
  if (self->_presentationDelegateFlags.respondsToShouldHideSourceAsset)
  {
    v6 = [a4 count] != 0;
    v7 = [(CAMCameraRollController *)self presentationDelegate];
    [v7 cameraRollController:self shouldHideSourceAsset:v6];
  }
}

- (int64_t)oneUpPresentationHelperPreferredPresentationOrientation:(id)a3
{
  if (!self->_presentationDelegateFlags.respondsToPreferredPresentationOrientation)
  {
    return 1;
  }

  v4 = [(CAMCameraRollController *)self presentationDelegate];
  v5 = [v4 cameraRollControllerPreferredPresentationOrientation:self];

  return v5;
}

- (void)setExternalStorage:(id)a3
{
  if (self->_externalStorage != a3)
  {
    self->_externalStorage = a3;
    [(CAMCameraRollController *)self _setStagedDataSource:0];
    [(CAMCameraRollController *)self _setPhotosDataSource:0];
    [(CAMCameraRollController *)self _invalidateTransientAssets];
    v6 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
    if ([v6 state])
    {
      v5 = [(CAMCameraRollController *)self _outgoingOneUpPresentationHelpers];
      [v5 addObject:v6];
    }

    [(CAMCameraRollController *)self set_oneUpPresentationHelper:0];
    [(CAMCameraRollController *)self _setExternalStorageBrowsingSession:0];
    [(CAMCameraRollController *)self set_photoKitDataSourceManager:0];
    [(CAMCameraRollController *)self _setAllowUpdating:1];
    [(CAMCameraRollController *)self set_externalStorageBrowsingSessionLastThumbnailImage:0];
    [(CAMCameraRollController *)self _updateAnimated:1];
    [(CAMCameraRollController *)self _setObserveCameraPreviewWellChanges:[(CAMCameraRollController *)self _outputToExternalStorage]^ 1];
  }
}

- (BOOL)_outputToExternalStorage
{
  v2 = [(CAMCameraRollController *)self externalStorage];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)currentAssetIndexFromEnd
{
  v2 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  v3 = [v2 browsingSession];

  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];
  v6 = [v5 indexPath];

  v7 = [v4 assetsDataSource];
  v8 = [v7 lastItemIndexPath];

  v9 = 0;
  if (v8 && v6)
  {
    v10 = [v8 row];
    v9 = v10 - [v6 row];
  }

  return v9;
}

- (void)setCurrentAssetIndexFromEnd:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(CAMCameraRollController *)self _oneUpPresentationHelper];
  v5 = [v4 browsingSession];

  v6 = [v5 viewModel];
  v7 = [v6 assetsDataSource];
  v8 = [v7 lastItemIndexPath];

  v9 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v8 inSection:{"row") - a3, objc_msgSend(v8, "section")}];
  if ([v9 row] <= 0)
  {
    v11 = os_log_create("com.apple.camera", "CameraRoll");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = [v9 row];
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring setCurrentAssetIndexFromEnd row=%ld, indexFromEnd=%ld", buf, 0x16u);
    }
  }

  else
  {
    v10 = [v6 assetsDataSource];
    v11 = [v10 assetReferenceAtIndexPath:v9];

    if (v11)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__CAMCameraRollController_setCurrentAssetIndexFromEnd___block_invoke;
      v13[3] = &unk_1E76F7960;
      v14 = v6;
      v15 = v11;
      [v14 performChanges:v13];

      v12 = v14;
    }

    else
    {
      v12 = os_log_create("com.apple.camera", "CameraRoll");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CAMCameraRollController *)v9 setCurrentAssetIndexFromEnd:a3, v12];
      }
    }
  }
}

- (PUOneUpViewController)oneUpViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_oneUpViewController);

  return WeakRetained;
}

- (void)willPersistAssetWithUUID:(os_log_t)log captureSession:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Rejecting persist notification from asset %{public}@ because it does not belong in this session %d", &v3, 0x12u);
}

- (void)didPersistAssetWithUUID:(uint64_t)a1 captureSession:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [a2 sessionIdentifier];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1A3640000, v2, v3, "Rejecting persist notification from asset %{public}@ because it does not belong in this session %d", v4, v5, v6, v7, v8);
}

- (void)processTransientAssetUpdate:(uint64_t)a1 preventingInsertion:(void *)a2 persistenceOptions:.cold.1(uint64_t a1, void *a2)
{
  [a2 sessionIdentifier];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_1A3640000, v2, v3, "Rejecting update from asset %{public}@ because it does not belong in this session %d", v4, v5, v6, v7, v8);
}

void __54__CAMCameraRollController_photosDataSource_didChange___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Expected burst identifier for asset fetched with burst identifer", buf, 2u);
}

- (void)setCurrentAssetIndexFromEnd:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218240;
  v6 = [a1 row];
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Cannot find asset reference for row=%ld, indexFromEnd=%ld", &v5, 0x16u);
}

@end