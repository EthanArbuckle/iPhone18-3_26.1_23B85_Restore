@interface CAMSmartStyleSettingsRootController
- (BOOL)_validateIsCurrentPicker:(id)picker;
- (NSArray)_assetIdentifiersToDisplay;
- (id)_cancelButtonItem;
- (id)_doneButtonItem;
- (id)_readSelectedAssetIdentifiers;
- (id)_readSystemStyleFromDefaultsWritesDefaultStyle:(int64_t)style;
- (id)_stockAssetIdentifiers;
- (id)_styleForPresetType:(int64_t)type;
- (id)previewViewController:(id)controller requestsLoadResultForGridIndex:(int64_t)index;
- (id)settingsView:(id)view requestsViewControllerForPresetType:(int64_t)type pageIndex:(unint64_t)index parentViewController:(id *)controller;
- (void)_applicationDidEnterBackground;
- (void)_confirmCurrentStyle;
- (void)_didFinishPickingFromPicker:(id)picker;
- (void)_dismissFromCancelAction:(BOOL)action withCompletion:(id)completion;
- (void)_dismissPicker;
- (void)_persistSystemStyle:(id)style;
- (void)_pickerDidCancel;
- (void)_presentPicker;
- (void)_writeSelectedAssetIdentifiers:(id)identifiers;
- (void)addChildViewController:(id)controller toView:(id)view;
- (void)loadView;
- (void)previewViewControllerDidFinishRendering:(id)rendering;
- (void)settingsView:(id)view didUpdateStyle:(id)style forPresetType:(int64_t)type;
- (void)settingsView:(id)view requestsTitle:(id)title showDoneButton:(BOOL)button;
- (void)smartStyleSettingsPickerDidConfirmSelection:(id)selection;
- (void)smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:(id)identifiers;
- (void)smartStyleSettingsResourceLoadingManager:(id)manager didFinishLoadingForAssetIdentifier:(id)identifier;
- (void)speedUpFadeInAnimations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CAMSmartStyleSettingsRootController

- (void)loadView
{
  v43 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = CAMSmartStyleSettingsRootController;
  [(CAMSmartStyleSettingsRootController *)&v41 loadView];
  v3 = CEKSmartStyleSystemStylePresetTypes();
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  cachedStyles = self->__cachedStyles;
  self->__cachedStyles = dictionary;

  _readSelectedAssetIdentifiers = [(CAMSmartStyleSettingsRootController *)self _readSelectedAssetIdentifiers];
  selectedAssetIdentifiers = self->__selectedAssetIdentifiers;
  self->__selectedAssetIdentifiers = _readSelectedAssetIdentifiers;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = allObjects;
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

  firstObject = [v10 firstObject];
  integerValue = [firstObject integerValue];

  v19 = [(CAMSmartStyleSettingsRootController *)self _readSystemStyleFromDefaultsWritesDefaultStyle:integerValue];
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
  _assetIdentifiersToDisplay = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  [(CAMSmartStyleSettingsResourceLoadingManager *)v30 loadResourcesForAssetIdentifiers:_assetIdentifiersToDisplay unloadAllOthers:1];

  v32 = [[CAMSmartStyleSettingsView alloc] initWithDelegate:self stylePresets:v10 selectedIndex:v22];
  settingsView = self->__settingsView;
  self->__settingsView = v32;

  [(CAMSmartStyleSettingsRootController *)self setView:self->__settingsView];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CAMSmartStyleSettingsRootController;
  [(CAMSmartStyleSettingsRootController *)&v8 viewDidAppear:appear];
  _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [_settingsView flashScrollIndicators];

  _assetIdentifiersToDisplay = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  if ([_assetIdentifiersToDisplay count])
  {
  }

  else
  {
    v6 = +[CAMCaptureCapabilities capabilities];
    hostProcess = [v6 hostProcess];

    if (hostProcess)
    {
      [(CAMSmartStyleSettingsRootController *)self _presentPicker];
    }
  }
}

- (NSArray)_assetIdentifiersToDisplay
{
  _selectedAssetIdentifiers = [(CAMSmartStyleSettingsRootController *)self _selectedAssetIdentifiers];
  v4 = 4 - [_selectedAssetIdentifiers count];
  v5 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentAllowStockAssets" defaultValue:1];
  if (v4 >= 1 && v5)
  {
    _stockAssetIdentifiers = [(CAMSmartStyleSettingsRootController *)self _stockAssetIdentifiers];
    v7 = [_stockAssetIdentifiers subarrayWithRange:{0, v4}];
    v8 = [_selectedAssetIdentifiers arrayByAddingObjectsFromArray:v7];
  }

  else
  {
    v8 = _selectedAssetIdentifiers;
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

  _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [_settingsView stopAllAnimations];
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
  _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [_settingsView speedUpFadeInAnimations];
}

- (id)previewViewController:(id)controller requestsLoadResultForGridIndex:(int64_t)index
{
  _assetIdentifiersToDisplay = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  if ([_assetIdentifiersToDisplay count] <= index)
  {
    resourceLoadResult = 0;
  }

  else
  {
    v7 = [_assetIdentifiersToDisplay objectAtIndexedSubscript:index];
    v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager resourceLoaderForAssetIdentifier:v7];
    resourceLoadResult = [v8 resourceLoadResult];
  }

  return resourceLoadResult;
}

- (void)previewViewControllerDidFinishRendering:(id)rendering
{
  _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [_settingsView updateImageViews];
}

- (void)settingsView:(id)view requestsTitle:(id)title showDoneButton:(BOOL)button
{
  buttonCopy = button;
  titleCopy = title;
  navigationItem = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [navigationItem setTitle:titleCopy];

  navigationItem2 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [navigationItem2 setBackAction:0];

  _cancelButtonItem = [(CAMSmartStyleSettingsRootController *)self _cancelButtonItem];
  navigationItem3 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:_cancelButtonItem];

  if (buttonCopy)
  {
    _doneButtonItem = [(CAMSmartStyleSettingsRootController *)self _doneButtonItem];
  }

  else
  {
    _doneButtonItem = 0;
  }

  navigationItem4 = [(CAMSmartStyleSettingsRootController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:_doneButtonItem];

  if (buttonCopy)
  {
  }
}

- (void)_dismissFromCancelAction:(BOOL)action withCompletion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v7 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v7 hostProcess];

  v9 = CAMSmartStylesOnboardingCameraAppDidTapCancel;
  if (!actionCopy)
  {
    v9 = &CAMSmartStylesOnboardingCameraAppDidTapComplete;
  }

  v10 = CAMSmartStylesOnboardingSettingsDidTapCancel;
  if (!actionCopy)
  {
    v10 = CAMSmartStylesOnboardingSettingsDidTapComplete;
  }

  if (hostProcess)
  {
    v9 = v10;
  }

  v14 = *v9;
  [CAMPreferencesUtilities setBool:1 inCameraDomainForKey:?];
  completionBlock = [(CAMSmartStyleSettingsRootController *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(CAMSmartStyleSettingsRootController *)self completionBlock];
    completionBlock2[2]();
  }

  navigationController = [(CAMSmartStyleSettingsRootController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:completionCopy];
}

- (void)_presentPicker
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69790E0]);
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  v5 = [v3 initWithPhotoLibrary:mEMORY[0x1E69789A8]];

  [v5 setPreferredAssetRepresentationMode:1];
  [v5 setSelectionLimit:4];
  v6 = MEMORY[0x1E69790E8];
  _styleabilityFilter = [MEMORY[0x1E69790E8] _styleabilityFilter];
  v14[0] = _styleabilityFilter;
  imagesFilter = [MEMORY[0x1E69790E8] imagesFilter];
  v14[1] = imagesFilter;
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

- (id)settingsView:(id)view requestsViewControllerForPresetType:(int64_t)type pageIndex:(unint64_t)index parentViewController:(id *)controller
{
  v24 = *MEMORY[0x1E69E9840];
  if (controller)
  {
    selfCopy = self;
    *controller = self;
  }

  _assetIdentifiersToDisplay = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  v12 = [_assetIdentifiersToDisplay count] != 1;

  v13 = [[CAMSmartStylePreviewViewController alloc] initWithDelegate:self gridLayout:v12 pageIndex:index];
  v14 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CEKDebugStringForSmartStylePresetType();
    v20 = 134218242;
    indexCopy = index;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Settings: created new view controller for page=%lu/%{public}@", &v20, 0x16u);
  }

  _cachedStyles = [(CAMSmartStyleSettingsRootController *)self _cachedStyles];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v18 = [_cachedStyles objectForKeyedSubscript:v17];

  [(CAMSmartStylePreviewViewController *)v13 updateWithStyle:v18];

  return v13;
}

- (id)_styleForPresetType:(int64_t)type
{
  cachedStyles = self->__cachedStyles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)cachedStyles objectForKeyedSubscript:v4];

  return v5;
}

- (void)settingsView:(id)view didUpdateStyle:(id)style forPresetType:(int64_t)type
{
  styleCopy = style;
  allKeys = [(NSMutableDictionary *)self->__cachedStyles allKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CAMSmartStyleSettingsRootController_settingsView_didUpdateStyle_forPresetType___block_invoke;
  v10[3] = &unk_1E76FB178;
  v11 = styleCopy;
  typeCopy = type;
  v10[4] = self;
  v9 = styleCopy;
  [allKeys enumerateObjectsUsingBlock:v10];
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

- (void)addChildViewController:(id)controller toView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  [(CAMSmartStyleSettingsRootController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  [viewCopy addSubview:view];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)_persistSystemStyle:(id)style
{
  v10 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  objc_storeStrong(&self->__persistedSystemStyle, style);
  v6 = [CAMCaptureConversions AVCaptureSmartStyleForCEKSmartStyle:styleCopy];
  [CAMSmartStyleUtilities writeAVCaptureSystemStyle:v6];
  v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = styleCopy;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: set SystemStyle: %{public}@", &v8, 0xCu);
  }
}

- (id)_readSystemStyleFromDefaultsWritesDefaultStyle:(int64_t)style
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [CAMSmartStyleUtilities readAVCaptureSystemStyleBypassXPC:0 allowNil:1];
  v5 = objc_alloc(MEMORY[0x1E6993890]);
  v6 = v5;
  if (v4)
  {
    cast = [v4 cast];
    v8 = [CAMCaptureConversions CEKSmartStylePresetTypeForAVSmartStyleCastType:cast];
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
    v14 = [v5 initWithPresetType:style];
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

- (BOOL)_validateIsCurrentPicker:(id)picker
{
  pickerCopy = picker;
  _pickerViewController = [(CAMSmartStyleSettingsRootController *)self _pickerViewController];

  if (_pickerViewController != pickerCopy)
  {
    v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CAMSmartStyleSettingsRootController *)pickerCopy _validateIsCurrentPicker:v6];
    }
  }

  return _pickerViewController == pickerCopy;
}

- (void)smartStyleSettingsPickerDidUpdateSelectedAssetIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([(CAMSmartStyleSettingsRootController *)self _validateIsCurrentPicker:identifiersCopy])
  {
    selectedAssetIdentifiers = [identifiersCopy selectedAssetIdentifiers];
    initialSelectedAssetIdentifiers = [identifiersCopy initialSelectedAssetIdentifiers];
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:selectedAssetIdentifiers];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: didUpdateSelectedAssetIdentifiers %{public}@", &v12, 0xCu);
    }

    if (![(NSArray *)self->__selectedAssetIdentifiers isEqualToArray:selectedAssetIdentifiers])
    {
      objc_storeStrong(&self->__selectedAssetIdentifiers, selectedAssetIdentifiers);
      _assetIdentifiersToDisplay = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
      v10 = [_assetIdentifiersToDisplay arrayByAddingObjectsFromArray:initialSelectedAssetIdentifiers];
      [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager loadResourcesForAssetIdentifiers:v10 unloadAllOthers:1];
      _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
      [_settingsView updateImageViews];
    }
  }
}

- (void)smartStyleSettingsPickerDidConfirmSelection:(id)selection
{
  v10 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  if ([(CAMSmartStyleSettingsRootController *)self _validateIsCurrentPicker:selectionCopy])
  {
    selectedAssetIdentifiers = [selectionCopy selectedAssetIdentifiers];
    if ([(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager isWaitingOnLoadingForAssetIdentifiers:selectedAssetIdentifiers])
    {
      v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:selectedAssetIdentifiers];
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Settings: didFinishPicking %{public}@ (waiting on loading)", &v8, 0xCu);
      }

      [selectionCopy setWaitingOnLoading:1];
    }

    else
    {
      [(CAMSmartStyleSettingsRootController *)self _didFinishPickingFromPicker:selectionCopy];
    }
  }
}

- (void)_didFinishPickingFromPicker:(id)picker
{
  v13 = *MEMORY[0x1E69E9840];
  selectedAssetIdentifiers = [picker selectedAssetIdentifiers];
  v5 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:selectedAssetIdentifiers];
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Settings: didFinishPicking %{public}@", &v11, 0xCu);
  }

  if (![(NSArray *)self->__selectedAssetIdentifiers isEqualToArray:selectedAssetIdentifiers])
  {
    objc_storeStrong(&self->__selectedAssetIdentifiers, selectedAssetIdentifiers);
    _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
    [_settingsView updateImageViews];
  }

  resourceLoadingManager = self->__resourceLoadingManager;
  _assetIdentifiersToDisplay = [(CAMSmartStyleSettingsRootController *)self _assetIdentifiersToDisplay];
  [(CAMSmartStyleSettingsResourceLoadingManager *)resourceLoadingManager loadResourcesForAssetIdentifiers:_assetIdentifiersToDisplay unloadAllOthers:1];

  [(CAMSmartStyleSettingsRootController *)self _writeSelectedAssetIdentifiers:selectedAssetIdentifiers];
  _settingsView2 = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [_settingsView2 zoomOutToGridAnimated:0];

  [(CAMSmartStyleSettingsRootController *)self _dismissPicker];
}

- (void)_pickerDidCancel
{
  _pickerViewController = [(CAMSmartStyleSettingsRootController *)self _pickerViewController];
  isWaitingOnLoading = [_pickerViewController isWaitingOnLoading];
  v5 = os_log_create("com.apple.camera", "SmartStyleSettings");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isWaitingOnLoading)
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

  initialSelectedAssetIdentifiers = [_pickerViewController initialSelectedAssetIdentifiers];
  if (![(NSArray *)self->__selectedAssetIdentifiers isEqualToArray:initialSelectedAssetIdentifiers])
  {
    objc_storeStrong(&self->__selectedAssetIdentifiers, initialSelectedAssetIdentifiers);
    _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
    [_settingsView updateImageViews];
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

- (void)smartStyleSettingsResourceLoadingManager:(id)manager didFinishLoadingForAssetIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(CAMSmartStyleSettingsRootController *)self _pickerViewController:manager];
  if ([v5 isWaitingOnLoading])
  {
    selectedAssetIdentifiers = [v5 selectedAssetIdentifiers];
    if (![(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager isWaitingOnLoadingForAssetIdentifiers:selectedAssetIdentifiers])
    {
      v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CAMSmartStyleSettingsResourceLoadingManager *)self->__resourceLoadingManager logIdentifierForAssetIdentifiers:selectedAssetIdentifiers];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Settings: did finish waiting for loading %{public}@", &v10, 0xCu);
      }

      [(CAMSmartStyleSettingsRootController *)self _didFinishPickingFromPicker:v5];
    }
  }

  _settingsView = [(CAMSmartStyleSettingsRootController *)self _settingsView];
  [_settingsView updateImageViews];
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
    predicateForStyleableAssets = [MEMORY[0x1E69BE540] predicateForStyleableAssets];
    [v3 setInternalPredicate:predicateForStyleableAssets];

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

          localIdentifier = [*(*(&v21 + 1) + 8 * i) localIdentifier];
          [v9 addObject:localIdentifier];
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

- (void)_writeSelectedAssetIdentifiers:(id)identifiers
{
  CFPreferencesSetAppValue(@"CAMUserPreferencesSmartStylesSettingsSelectedAssetIdentifiers", identifiers, @"com.apple.camera");

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