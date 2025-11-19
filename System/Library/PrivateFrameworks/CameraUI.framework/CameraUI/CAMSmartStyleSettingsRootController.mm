@interface CAMSmartStyleSettingsRootController
- (BOOL)_validateIsCurrentPicker:(id)a3;
- (NSArray)_assetIdentifiersToDisplay;
- (id)_cancelButtonItem;
- (id)_doneButtonItem;
- (id)_readSelectedAssetIdentifiers;
- (id)_readSystemStyleFromDefaultsWritesDefaultStyle:(int64_t)a3;
- (id)_stockAssetIdentifiers;
- (id)_styleForPresetType:(int64_t)a3;
- (id)previewViewController:(id)a3 requestsLoadResultForGridIndex:(int64_t)a4;
- (id)settingsView:(id)a3 requestsViewControllerForPresetType:(int64_t)a4 pageIndex:(unint64_t)a5 parentViewController:(id *)a6;
- (void)_applicationDidEnterBackground;
- (void)_confirmCurrentStyle;
- (void)_didFinishPickingFromPicker:(id)a3;
- (void)_dismissFromCancelAction:(BOOL)a3 withCompletion:(id)a4;
- (void)_dismissPicker;
- (void)_persistSystemStyle:(id)a3;
- (void)_pickerDidCancel;
- (void)_presentPicker;
- (void)_writeSelectedAssetIdentifiers:(id)a3;
- (void)addChildViewController:(id)a3 toView:(id)a4;
- (void)loadView;
- (void)previewViewControllerDidFinishRendering:(id)a3;
- (void)settingsView:(id)a3 didUpdateStyle:(id)a4 forPresetType:(int64_t)a5;
- (void)settingsView:(id)a3 requestsTitle:(id)a4 showDoneButton:(BOOL)a5;
- (void)smartStyleSettingsPickerDidConfirmSelection:(id)a3;
- (void)smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:(id)a3;
- (void)smartStyleSettingsResourceLoadingManager:(id)a3 didFinishLoadingForAssetIdentifier:(id)a4;
- (void)speedUpFadeInAnimations;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CAMSmartStyleSettingsRootController

- (void)loadView
{
  v43 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = CAMSmartStyleSettingsRootController;
  [(CAMSmartStyleSettingsRootController *)&v41 loadView];
  v3 = CEKSmartStyleSystemStylePresetTypes();
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 allObjects];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  cachedStyles = self->__cachedStyles;
  self->__cachedStyles = v6;

  v8 = [(CAMSmartStyleSettingsRootController *)self _readSelectedAssetIdentifiers];
  selectedAssetIdentifiers = self->__selectedAssetIdentifiers;
  self->__selectedAssetIdentifiers = v8;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [objc_alloc(MEMORY[0x1E6993890]) initWithPresetType:{objc_msgSend(v15, "integerValue")}];
        [(NSMutableDictionary *)self->__cachedStyles setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  v17 = [v10 firstObject];
  v18 = [v17 integerValue];

  v19 = [(CAMSmartStyleSettingsRootController *)self _readSystemStyleFromDefaultsWritesDefaultStyle:v18];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __47__CAMSmartStyleSettingsRootController_loadView__block_invoke;
  v35[3] = &unk_1E76FB128;
  v20 = v19;
  v36 = v20;
  v21 = [v10 indexOfObjectPassingTest:v35];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
    v23 = self->__cachedStyles;
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "presetType")}];
    [(NSMutableDictionary *)v23 setObject:v20 forKeyedSubscript:v24];
  }

  v25 = [v10 objectAtIndexedSubscript:v22];
  self->__currentStylePreset = [v25 integerValue];

  persistedSystemStyle = self->__persistedSystemStyle;
  self->__persistedSystemStyle = v20;
  v27 = v20;

  v28 = objc_alloc_init(CAMSmartStyleSettingsResourceLoadingManager);
  resourceLoadingManager = self->__resourceLoadingManager;
  self->__resourceLoadingManager = v28;

  [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager setDelegate:self];
  v30 = self->__resourceLoadingManager;
  v31 = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  [(CAMSmartStyleSettingsResourceLoadingManager *)v30 loadResourcesForAssetIdentifiers:v31 unloadAllOthers:1];

  v32 = [[CAMSmartStyleSettingsView alloc] initWithDelegate:self stylePresets:v10 selectedIndex:v22];
  settingsView = self->__settingsView;
  self->__settingsView = v32;

  [(CAMSmartStyleSettingsRootController *)self setView:self->__settingsView];
  v34 = [MEMORY[0x1E696AD88] defaultCenter];
  [v34 addObserver:self selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMSmartStyleSettingsRootController;
  [(CAMSmartStyleSettingsRootController *)&v8 viewDidAppear:a3];
  v4 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [v4 flashScrollIndicators];

  v5 = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  if ([v5 count])
  {
  }

  else
  {
    v6 = +[CAMCaptureCapabilities capabilities];
    v7 = [v6 hostProcess];

    if (v7)
    {
      [(CAMSmartStyleSettingsRootController *)self _presentPicker];
    }
  }
}

- (NSArray)_assetIdentifiersToDisplay
{
  v3 = [(CAMSmartStyleSettingsRootController *)self _selectedAssetIdentifiers];
  v4 = 4 - [v3 count];
  v5 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowStockAssets" defaultValue:1];
  if (v4 >= 1 && v5)
  {
    v6 = [(CAMSmartStyleSettingsRootController *)self _stockAssetIdentifiers];
    v7 = [v6 subarrayWithRange:{0, v4}];
    v8 = [v3 arrayByAddingObjectsFromArray:v7];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (id)_stockAssetIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if (CEKDeviceRegionPrefersSmartStyleUT6())
  {
    v3 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:@"StylesOnboarding_CN_1.HEIC" cropRect:455.0, 192.0, 945.0, 945.0];
    [v2 addObject:v3];

    v4 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:@"StylesOnboarding_CN_2.HEIC" cropRect:420.0, 200.0, 780.0, 780.0];
    [v2 addObject:v4];

    v5 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:@"StylesOnboarding_CN_3.HEIC" cropRect:250.0, 0.0, 1200.0, 1200.0];
    [v2 addObject:v5];

    v6 = @"StylesOnboarding_CN_4.HEIC";
    v7 = 100.0;
    v8 = 0.0;
    v9 = 1200.0;
    v10 = 1200.0;
  }

  else
  {
    v11 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:@"StylesOnboarding_CN_4.HEIC" cropRect:100.0, 0.0, 1100.0, 1100.0];
    [v2 addObject:v11];

    v12 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:@"StylesOnboarding_ROW_2.HEIC" cropRect:125.0, 50.0, 1100.0, 1100.0];
    [v2 addObject:v12];

    v13 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:@"StylesOnboarding_ROW_3.HEIC" cropRect:178.0, 70.0, 1130.0, 1130.0];
    [v2 addObject:v13];

    v6 = @"StylesOnboarding_ROW_4.HEIC";
    v7 = 238.0;
    v8 = 200.0;
    v9 = 1000.0;
    v10 = 1000.0;
  }

  v14 = [CAMSmartStyleSettingsResourceLoader assetIdentifierForFilename:v6 cropRect:v7, v8, v9, v10];
  [v2 addObject:v14];

  return v2;
}

- (void)_applicationDidEnterBackground
{
  v3 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Settings: stopping all animations for DidEnterBackground", v5, 2u);
  }

  v4 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [v4 stopAllAnimations];
}

- (id)_cancelButtonItem
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DC708]);
  v3 = MEMORY[0x1E69DC628];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __56__CAMSmartStyleSettingsRootController__cancelButtonItem__block_invoke;
  v10 = &unk_1E76FB150;
  objc_copyWeak(&v11, &location);
  v4 = [v3 actionWithHandler:&v7];
  v5 = [v2 initWithBarButtonSystemItem:1 primaryAction:{v4, v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __56__CAMSmartStyleSettingsRootController__cancelButtonItem__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "User tapped Cancel button", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissFromCancelAction:1];
}

- (id)_doneButtonItem
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DC708]);
  v3 = MEMORY[0x1E69DC628];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __54__CAMSmartStyleSettingsRootController__doneButtonItem__block_invoke;
  v10 = &unk_1E76FB150;
  objc_copyWeak(&v11, &location);
  v4 = [v3 actionWithHandler:&v7];
  v5 = [v2 initWithBarButtonSystemItem:0 primaryAction:{v4, v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __54__CAMSmartStyleSettingsRootController__doneButtonItem__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "User tapped Done button", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _confirmCurrentStyle];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _dismissFromCancelAction:0];
}

- (void)speedUpFadeInAnimations
{
  v2 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [v2 speedUpFadeInAnimations];
}

- (id)previewViewController:(id)a3 requestsLoadResultForGridIndex:(int64_t)a4
{
  v6 = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  if ([v6 count] <= a4)
  {
    v9 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a4];
    v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager resourceLoaderForAssetIdentifier:v7];
    v9 = [v8 resourceLoadResult];
  }

  return v9;
}

- (void)previewViewControllerDidFinishRendering:(id)a3
{
  v3 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [v3 updateImageViews];
}

- (void)settingsView:(id)a3 requestsTitle:(id)a4 showDoneButton:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [v8 setTitle:v7];

  v9 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [v9 setBackAction:0];

  v10 = [(CAMSmartStyleSettingsRootController *)self _cancelButtonItem];
  v11 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  if (v5)
  {
    v13 = [(CAMSmartStyleSettingsRootController *)self _doneButtonItem];
  }

  else
  {
    v13 = 0;
  }

  v12 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [v12 setRightBarButtonItem:v13];

  if (v5)
  {
  }
}

- (void)_dismissFromCancelAction:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 hostProcess];

  v9 = CAMSmartStylesOnboardingCameraAppDidTapCancel;
  if (!v4)
  {
    v9 = &CAMSmartStylesOnboardingCameraAppDidTapComplete;
  }

  v10 = CAMSmartStylesOnboardingSettingsDidTapCancel;
  if (!v4)
  {
    v10 = CAMSmartStylesOnboardingSettingsDidTapComplete;
  }

  if (v8)
  {
    v9 = v10;
  }

  v14 = *v9;
  [CAMPreferencesUtilities setBool:1 inCameraDomainForKey:?];
  v11 = [(CAMSmartStyleSettingsRootController *)self completionBlock];

  if (v11)
  {
    v12 = [(CAMSmartStyleSettingsRootController *)self completionBlock];
    v12[2]();
  }

  v13 = [(CAMSmartStyleSettingsRootController *)self navigationController];
  [v13 dismissViewControllerAnimated:1 completion:v6];
}

- (void)_presentPicker
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69790E0]);
  v4 = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  v5 = [v3 initWithPhotoLibrary:v4];

  [v5 setPreferredAssetRepresentationMode:1];
  [v5 setSelectionLimit:4];
  v6 = MEMORY[0x1E69790E8];
  v7 = [MEMORY[0x1E69790E8] _styleabilityFilter];
  v14[0] = v7;
  v8 = [MEMORY[0x1E69790E8] imagesFilter];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v10 = [v6 allFilterMatchingSubfilters:v9];
  [v5 setFilter:v10];

  v11 = [[CAMSmartStyleSettingsPickerViewController alloc] initWithPickerConfiguration:v5 selectedAssetIdentifiers:self->__selectedAssetIdentifiers];
  [(CAMSmartStyleSettingsPickerViewController *)v11 setDelegate:self];
  pickerViewController = self->__pickerViewController;
  self->__pickerViewController = v11;
  v13 = v11;

  [(CAMSmartStyleSettingsRootController *)self presentViewController:v13 animated:1 completion:0];
}

- (id)settingsView:(id)a3 requestsViewControllerForPresetType:(int64_t)a4 pageIndex:(unint64_t)a5 parentViewController:(id *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v10 = self;
    *a6 = self;
  }

  v11 = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  v12 = [v11 count] != 1;

  v13 = [[CAMSmartStylePreviewViewController alloc] initWithDelegate:self gridLayout:v12 pageIndex:a5];
  v14 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CEKDebugStringForSmartStylePresetType();
    v20 = 134218242;
    v21 = a5;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Settings: created new view controller for page=%lu/%{public}@", &v20, 0x16u);
  }

  v16 = [(CAMSmartStyleSettingsRootController *)self _cachedStyles];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v18 = [v16 objectForKeyedSubscript:v17];

  [(CAMSmartStylePreviewViewController *)v13 updateWithStyle:v18];

  return v13;
}

- (id)_styleForPresetType:(int64_t)a3
{
  cachedStyles = self->__cachedStyles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)cachedStyles objectForKeyedSubscript:v4];

  return v5;
}

- (void)settingsView:(id)a3 didUpdateStyle:(id)a4 forPresetType:(int64_t)a5
{
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->__cachedStyles allKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CAMSmartStyleSettingsRootController_settingsView_didUpdateStyle_forPresetType___block_invoke;
  v10[3] = &unk_1E76FB178;
  v11 = v7;
  v12 = a5;
  v10[4] = self;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __81__CAMSmartStyleSettingsRootController_settingsView_didUpdateStyle_forPresetType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 integerValue] == a1[6])
  {
    [*(a1[4] + 1032) setObject:a1[5] forKeyedSubscript:v3];
  }
}

- (void)_confirmCurrentStyle
{
  cachedStyles = self->__cachedStyles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleSettingsRootController _currentStylePreset](self, "_currentStylePreset")}];
  v5 = [(NSMutableDictionary *)cachedStyles objectForKeyedSubscript:v4];

  [(CAMSmartStyleSettingsRootController *)self _persistSystemStyle:v5];
}

- (void)addChildViewController:(id)a3 toView:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(CAMSmartStyleSettingsRootController *)self addChildViewController:v8];
  v7 = [v8 view];
  [v6 addSubview:v7];

  [v8 didMoveToParentViewController:self];
}

- (void)_persistSystemStyle:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->__persistedSystemStyle, a3);
  v6 = [CAMCaptureConversions AVCaptureSmartStyleForCEKSmartStyle:v5];
  [CAMSmartStyleUtilities writeAVCaptureSystemStyle:v6];
  v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: set SystemStyle: %{public}@", &v8, 0xCu);
  }
}

- (id)_readSystemStyleFromDefaultsWritesDefaultStyle:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [CAMSmartStyleUtilities readAVCaptureSystemStyleBypassXPC:0 allowNil:1];
  v5 = objc_alloc(MEMORY[0x1E6993890]);
  v6 = v5;
  if (v4)
  {
    v7 = [v4 cast];
    v8 = [CAMCaptureConversions CEKSmartStylePresetTypeForAVSmartStyleCastType:v7];
    [v4 intensity];
    v10 = v9;
    [v4 toneBias];
    v12 = v11;
    [v4 colorBias];
    v14 = [v6 initWithPresetType:v8 castIntensity:v10 toneBias:v12 colorBias:v13];

    v15 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v18 = 138543362;
    v19 = v14;
    v16 = "Settings: read SystemStyle: %{public}@";
  }

  else
  {
    v14 = [v5 initWithPresetType:a3];
    v15 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v18 = 138543362;
    v19 = v14;
    v16 = "Settings: no SystemStyle set yet, using default: %{public}@";
  }

  _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, v16, &v18, 0xCu);
LABEL_7:

  return v14;
}

- (BOOL)_validateIsCurrentPicker:(id)a3
{
  v4 = a3;
  v5 = [(CAMSmartStyleSettingsRootController *)self _pickerViewController];

  if (v5 != v4)
  {
    v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CAMSmartStyleSettingsRootController *)v4 _validateIsCurrentPicker:v6];
    }
  }

  return v5 == v4;
}

- (void)smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CAMSmartStyleSettingsRootController *)self _validateIsCurrentPicker:v4])
  {
    v5 = [v4 selectedAssetIdentifiers];
    v6 = [v4 initialSelectedAssetIdentifiers];
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:v5];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: didUpdateSelectedAssetIdentifiers %{public}@", &v12, 0xCu);
    }

    if (![(NSArray *)self->__selectedAssetIdentifiers isEqualToArray:v5])
    {
      objc_storeStrong(&self->__selectedAssetIdentifiers, v5);
      v9 = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
      v10 = [v9 arrayByAddingObjectsFromArray:v6];
      [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager loadResourcesForAssetIdentifiers:v10 unloadAllOthers:1];
      v11 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
      [v11 updateImageViews];
    }
  }
}

- (void)smartStyleSettingsPickerDidConfirmSelection:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CAMSmartStyleSettingsRootController *)self _validateIsCurrentPicker:v4])
  {
    v5 = [v4 selectedAssetIdentifiers];
    if ([(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager isWaitingOnLoadingForAssetIdentifiers:v5])
    {
      v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:v5];
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Settings: didFinishPicking %{public}@ (waiting on loading)", &v8, 0xCu);
      }

      [v4 setWaitingOnLoading:1];
    }

    else
    {
      [(CAMSmartStyleSettingsRootController *)self _didFinishPickingFromPicker:v4];
    }
  }
}

- (void)_didFinishPickingFromPicker:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 selectedAssetIdentifiers];
  v5 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:v4];
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Settings: didFinishPicking %{public}@", &v11, 0xCu);
  }

  if (![(NSArray *)self->__selectedAssetIdentifiers isEqualToArray:v4])
  {
    objc_storeStrong(&self->__selectedAssetIdentifiers, v4);
    v7 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
    [v7 updateImageViews];
  }

  resourceLoadingManager = self->__resourceLoadingManager;
  v9 = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  [(CAMSmartStyleSettingsResourceLoadingManager *)resourceLoadingManager loadResourcesForAssetIdentifiers:v9 unloadAllOthers:1];

  [(CAMSmartStyleSettingsRootController *)self _writeSelectedAssetIdentifiers:v4];
  v10 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [v10 zoomOutToGridAnimated:0];

  [(CAMSmartStyleSettingsRootController *)self _dismissPicker];
}

- (void)_pickerDidCancel
{
  v3 = [(CAMSmartStyleSettingsRootController *)self _pickerViewController];
  v4 = [v3 isWaitingOnLoading];
  v5 = os_log_create("com.apple.camera", "SmartStyleSettings");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v12 = 0;
    v7 = "Settings: did cancel picker while waiting for loading";
    v8 = &v12;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v7 = "Settings: did cancel";
    v8 = &v11;
  }

  _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_7:

  v9 = [v3 initialSelectedAssetIdentifiers];
  if (![(NSArray *)self->__selectedAssetIdentifiers isEqualToArray:v9])
  {
    objc_storeStrong(&self->__selectedAssetIdentifiers, v9);
    v10 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
    [v10 updateImageViews];
  }

  [(CAMSmartStyleSettingsRootController *)self _dismissPicker];
}

- (void)_dismissPicker
{
  [(CAMSmartStyleSettingsPickerViewController *)self->__pickerViewController setDelegate:0];
  pickerViewController = self->__pickerViewController;
  self->__pickerViewController = 0;

  [(CAMSmartStyleSettingsRootController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)smartStyleSettingsResourceLoadingManager:(id)a3 didFinishLoadingForAssetIdentifier:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(CAMSmartStyleSettingsRootController *)self _pickerViewController:a3];
  if ([v5 isWaitingOnLoading])
  {
    v6 = [v5 selectedAssetIdentifiers];
    if (![(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager isWaitingOnLoadingForAssetIdentifiers:v6])
    {
      v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:v6];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: did finish waiting for loading %{public}@", &v10, 0xCu);
      }

      [(CAMSmartStyleSettingsRootController *)self _didFinishPickingFromPicker:v5];
    }
  }

  v9 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [v9 updateImageViews];
}

- (id)_readSelectedAssetIdentifiers
{
  v29 = *MEMORY[0x1E69E9840];
  if (+[CAMFrameworkUtilities isPasscodeLocked])
  {
    v2 = 0;
  }

  else
  {
    v2 = CFPreferencesCopyAppValue(@"CAMUserPreferencesSmartStylesSettingsSelectedAssetIdentifiers", @"com.apple.camera");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 1;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__CAMSmartStyleSettingsRootController__readSelectedAssetIdentifiers__block_invoke;
    v25[3] = &unk_1E76FB1A0;
    v25[4] = buf;
    [v2 enumerateObjectsUsingBlock:v25];
    if (*(*&buf[8] + 24))
    {
      _Block_object_dispose(buf, 8);
      if (v2)
      {
        goto LABEL_11;
      }
    }

    else
    {

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
  }

  v2 = MEMORY[0x1E695E0F0];
LABEL_11:
  if ([v2 count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6978830]);
    v4 = [MEMORY[0x1E69BE540] predicateForStyleableAssets];
    [v3 setInternalPredicate:v4];

    Current = CFAbsoluteTimeGetCurrent();
    v6 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v2 options:v3];
    v7 = CFAbsoluteTimeGetCurrent();
    v8 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v7 - Current;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Settings: Fetching assets for validation took %.3f seconds", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) localIdentifier];
          [v9 addObject:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    v15 = [v2 count];
    if (v15 != [v9 count])
    {
      v16 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v9 count];
        v18 = [v2 count];
        *buf = 134218240;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Settings: Could only find %ld assets out of %ld", buf, 0x16u);
      }

      v19 = v9;
      v2 = v19;
    }
  }

  return v2;
}

void __68__CAMSmartStyleSettingsRootController__readSelectedAssetIdentifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_writeSelectedAssetIdentifiers:(id)a3
{
  CFPreferencesSetAppValue(@"CAMUserPreferencesSmartStylesSettingsSelectedAssetIdentifiers", a3, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (void)_validateIsCurrentPicker:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 _pickerViewController];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Settings: got picker callback from %{public}@ instead of expected %{public}@", &v6, 0x16u);
}

@end