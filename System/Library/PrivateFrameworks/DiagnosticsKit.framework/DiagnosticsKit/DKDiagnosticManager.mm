@interface DKDiagnosticManager
- (BOOL)_checkPrerequisitesForDiagnostic:(id)diagnostic parameters:(id)parameters error:(id *)error;
- (BOOL)_freeSpaceAvailable:(id)available;
- (BOOL)_isDeviceLocked;
- (DKAccessoryResponder)accessoryResponder;
- (DKAssetResponder)assetResponder;
- (DKBrightnessResponder)brightnessResponder;
- (DKDiagnosticManager)initWithBundleIdentifier:(id)identifier connectionRoute:(unint64_t)route;
- (DKProgressResponder)progressResponder;
- (DKStatusBarResponder)statusBarResponder;
- (DKUserAlertResponder)userAlertResponder;
- (DKViewControllerDelegate)viewControllerDelegate;
- (DKVolumeHUDResponder)volumeHUDResponder;
- (id)adapterForIdentifier:(id)identifier;
- (id)attributesForIdentifier:(id)identifier;
- (void)_reloadUpdatedPlugins;
- (void)allowSessionAccessoryDisconnectForDuration:(id)duration;
- (void)beginDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
- (void)cancelAllDiagnostics;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)diagnosticsWithCompletion:(id)completion;
- (void)displayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion;
- (void)displayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1;
- (void)getAsset:(id)asset completion:(id)completion;
- (void)hideStatusBar;
- (void)request:(id)request dismissViewController:(id)controller completion:(id)completion;
- (void)request:(id)request presentViewController:(id)controller completion:(id)completion;
- (void)request:(id)request presentViewController:(id)controller completion:(id)completion responderChainUpdateHandler:(id)handler;
- (void)requestPluginReloadOnFinishWithCompletion:(id)completion;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion;
- (void)setStatusBarStyle:(int64_t)style;
- (void)showStatusBar;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)progress forTest:(id)test;
- (void)uploadAssets:(id)assets completion:(id)completion;
@end

@implementation DKDiagnosticManager

- (DKDiagnosticManager)initWithBundleIdentifier:(id)identifier connectionRoute:(unint64_t)route
{
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = DKDiagnosticManager;
  v8 = [(DKDiagnosticManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, identifier);
    v9->_connectionRoute = route;
    v9->_pluginReloadRequested = 0;
    v10 = MEMORY[0x277D85CD8];
    v11 = dispatch_queue_create("com.apple.DiagnosticsKit.diagnosticsManager", MEMORY[0x277D85CD8]);
    diagnosticsManagerQueue = v9->_diagnosticsManagerQueue;
    v9->_diagnosticsManagerQueue = v11;

    v13 = dispatch_queue_create("com.apple.DiagnosticsKit.diagnosticsList", v10);
    diagnosticListQueue = v9->_diagnosticListQueue;
    v9->_diagnosticListQueue = v13;

    if (!route)
    {
      v15 = objc_opt_new();
      registry = v9->_registry;
      v9->_registry = v15;

      v17 = v9->_registry;
      v18 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.diagnostics-service", @"com.apple.diagnostics-ui-service", @"com.apple.diagnostics-restricted-service", @"com.apple.diagnostics-restricted-ui-service", 0}];
      v19 = [DKExtensionDiscovery discoveryUsingExtensionRegistry:v17 services:v18 bundleIdentifier:v9->_bundleIdentifier];
      discovery = v9->_discovery;
      v9->_discovery = v19;
    }
  }

  return v9;
}

- (void)beginDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  completionCopy = completion;
  diagnosticsManagerQueue = [(DKDiagnosticManager *)self diagnosticsManagerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke;
  v15[3] = &unk_278F6C2D8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = parametersCopy;
  v18 = completionCopy;
  v12 = parametersCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  dispatch_async(diagnosticsManagerQueue, v15);
}

void __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) adapterForIdentifier:*(a1 + 40)];
  v4 = MEMORY[0x24C1E6340](*(a1 + 56));
  objc_initWeak(&location, *(a1 + 32));
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_2;
  v31[3] = &unk_278F6C420;
  v32 = *(a1 + 56);
  objc_copyWeak(&v33, &location);
  v5 = MEMORY[0x24C1E6340](v31);

  if (!v3)
  {
    v23 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v24 = DKErrorLocalizedDescriptionForCode(-1000);
    v40[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v9 = [v23 errorWithDomain:@"DKErrorDomain" code:-1000 userInfo:v25];

    if (v9)
    {
      goto LABEL_15;
    }
  }

  v6 = *(a1 + 32);
  v7 = [v3 extensionAttributes];
  v8 = *(a1 + 48);
  v30 = 0;
  [v6 _checkPrerequisitesForDiagnostic:v7 parameters:v8 error:&v30];
  v9 = v30;

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) longValue];
    *buf = 134217984;
    v38 = v11;
    _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "Found diagnostic for ID: %ld", buf, 0xCu);
  }

  v12 = [v3 extensionAttributes];
  v13 = [DKExtensionRequest requestWithExtensionAttributes:v12];

  [v13 setHostServicesDelegate:*(a1 + 32)];
  if (!v13)
  {
    v26 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v27 = DKErrorLocalizedDescriptionForCode(-1001);
    v36 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v9 = [v26 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v28];

    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_15:
    (*(*(a1 + 56) + 16))();
    goto LABEL_16;
  }

  v14 = [*(a1 + 32) allowList];
  if (v14)
  {
    v15 = [*(a1 + 32) allowList];
    v16 = [v15 containsIdentifier:*(a1 + 40)];

    if ((v16 & 1) == 0)
    {
      v17 = [*(a1 + 32) attributesForIdentifier:*(a1 + 40)];
      v18 = DiagnosticsKitLogHandleForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = *(a1 + 40);
        v20 = [v17 name];
        __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_cold_1(v19, v20, buf, v18);
      }

      v21 = [*(a1 + 32) allowList];
      v22 = [v21 contactMessage];
      [v13 setNotAllowListedWithContactMessage:v22];
    }
  }

  [v3 beginRequest:v13 payload:*(a1 + 48) completion:v5];

  v9 = 0;
LABEL_16:
  objc_destroyWeak(&v33);

  objc_destroyWeak(&location);
  v29 = *MEMORY[0x277D85DE8];
}

void __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pluginReloadRequested];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _reloadUpdatedPlugins];
  }
}

- (void)diagnosticsWithCompletion:(id)completion
{
  completionCopy = completion;
  diagnosticListQueue = [(DKDiagnosticManager *)self diagnosticListQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DKDiagnosticManager_diagnosticsWithCompletion___block_invoke;
  v7[3] = &unk_278F6C108;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(diagnosticListQueue, v7);
}

void __49__DKDiagnosticManager_diagnosticsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) discovery];
  [v2 waitUntilComplete];

  v3 = *(a1 + 40);
  v5 = [*(a1 + 32) registry];
  v4 = [v5 diagnostics];
  (*(v3 + 16))(v3, v4);
}

- (id)attributesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  discovery = [(DKDiagnosticManager *)self discovery];
  [discovery waitUntilComplete];

  registry = [(DKDiagnosticManager *)self registry];
  v7 = [registry diagnosticForIdentifier:identifierCopy];

  return v7;
}

- (id)adapterForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  discovery = [(DKDiagnosticManager *)self discovery];
  [discovery waitUntilComplete];

  registry = [(DKDiagnosticManager *)self registry];
  v7 = [registry adapterForIdentifier:identifierCopy];

  return v7;
}

- (void)cancelAllDiagnostics
{
  registry = [(DKDiagnosticManager *)self registry];
  [registry enumerateExtensionAdaptersWithBlock:&__block_literal_global_11];
}

- (void)updateProgress:(id)progress forTest:(id)test
{
  progressCopy = progress;
  testCopy = test;
  progressResponder = [(DKDiagnosticManager *)self progressResponder];
  if (progressResponder)
  {
    v8 = progressResponder;
    progressResponder2 = [(DKDiagnosticManager *)self progressResponder];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      progressResponder3 = [(DKDiagnosticManager *)self progressResponder];
      [progressResponder3 updateProgress:progressCopy forTest:testCopy];
    }
  }
}

- (void)getAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  assetResponder = [(DKDiagnosticManager *)self assetResponder];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    assetResponder2 = [(DKDiagnosticManager *)self assetResponder];
    [assetResponder2 getAsset:assetCopy completion:completionCopy];
  }
}

- (void)uploadAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  assetResponder = [(DKDiagnosticManager *)self assetResponder];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    assetResponder2 = [(DKDiagnosticManager *)self assetResponder];
    [assetResponder2 uploadAssets:assetsCopy completion:completionCopy];
  }
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  accessoryResponder = [(DKDiagnosticManager *)self accessoryResponder];
  if (accessoryResponder)
  {
    v5 = accessoryResponder;
    accessoryResponder2 = [(DKDiagnosticManager *)self accessoryResponder];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      accessoryResponder3 = [(DKDiagnosticManager *)self accessoryResponder];
      [accessoryResponder3 requestSessionAccessoryIdentifierWithCompletion:completionCopy];
    }
  }
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  accessoryResponder = [(DKDiagnosticManager *)self accessoryResponder];
  if (accessoryResponder)
  {
    v4 = accessoryResponder;
    accessoryResponder2 = [(DKDiagnosticManager *)self accessoryResponder];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      accessoryResponder3 = [(DKDiagnosticManager *)self accessoryResponder];
      [accessoryResponder3 unpairSessionAccessoryOnTestCompletion];
    }
  }
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)duration
{
  durationCopy = duration;
  accessoryResponder = [(DKDiagnosticManager *)self accessoryResponder];
  if (accessoryResponder)
  {
    v5 = accessoryResponder;
    accessoryResponder2 = [(DKDiagnosticManager *)self accessoryResponder];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      accessoryResponder3 = [(DKDiagnosticManager *)self accessoryResponder];
      [accessoryResponder3 allowSessionAccessoryDisconnectForDuration:durationCopy];
    }
  }
}

- (void)clearAllowSessionAccessoryDisconnect
{
  accessoryResponder = [(DKDiagnosticManager *)self accessoryResponder];
  if (accessoryResponder)
  {
    v4 = accessoryResponder;
    accessoryResponder2 = [(DKDiagnosticManager *)self accessoryResponder];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      accessoryResponder3 = [(DKDiagnosticManager *)self accessoryResponder];
      [accessoryResponder3 clearAllowSessionAccessoryDisconnect];
    }
  }
}

- (void)displayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion
{
  headerCopy = header;
  messageCopy = message;
  stringsCopy = strings;
  completionCopy = completion;
  userAlertResponder = [(DKDiagnosticManager *)self userAlertResponder];
  if (userAlertResponder)
  {
    v14 = userAlertResponder;
    userAlertResponder2 = [(DKDiagnosticManager *)self userAlertResponder];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      userAlertResponder3 = [(DKDiagnosticManager *)self userAlertResponder];
      [userAlertResponder3 displayAlertWithHeader:headerCopy message:messageCopy buttonStrings:stringsCopy completion:completionCopy];
    }
  }
}

- (void)displayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1
{
  instructionsCopy = instructions;
  locatorsCopy = locators;
  titleCopy = title;
  subtitleCopy = subtitle;
  locatorCopy = locator;
  optionsCopy = options;
  actionsCopy = actions;
  completionCopy = completion;
  userAlertResponder = [(DKDiagnosticManager *)self userAlertResponder];
  if (userAlertResponder)
  {
    v23 = userAlertResponder;
    userAlertResponder2 = [(DKDiagnosticManager *)self userAlertResponder];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      userAlertResponder3 = [(DKDiagnosticManager *)self userAlertResponder];
      [userAlertResponder3 displayInstructions:instructionsCopy style:style imageLocators:locatorsCopy title:titleCopy subtitle:subtitleCopy iconLocator:locatorCopy options:optionsCopy navigationBarActions:actionsCopy completion:completionCopy];
    }
  }
}

- (void)showStatusBar
{
  statusBarResponder = [(DKDiagnosticManager *)self statusBarResponder];

  if (statusBarResponder)
  {
    statusBarResponder2 = [(DKDiagnosticManager *)self statusBarResponder];
    [statusBarResponder2 showStatusBar];
  }
}

- (void)hideStatusBar
{
  statusBarResponder = [(DKDiagnosticManager *)self statusBarResponder];

  if (statusBarResponder)
  {
    statusBarResponder2 = [(DKDiagnosticManager *)self statusBarResponder];
    [statusBarResponder2 hideStatusBar];
  }
}

- (void)setStatusBarStyle:(int64_t)style
{
  statusBarResponder = [(DKDiagnosticManager *)self statusBarResponder];

  if (statusBarResponder)
  {
    statusBarResponder2 = [(DKDiagnosticManager *)self statusBarResponder];
    [statusBarResponder2 setStatusBarStyle:style];
  }
}

- (void)request:(id)request presentViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  viewControllerDelegate = [(DKDiagnosticManager *)self viewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [controllerCopy setModalPresentationStyle:0];
    viewControllerDelegate2 = [(DKDiagnosticManager *)self viewControllerDelegate];
    [viewControllerDelegate2 diagnosticManager:self presentViewController:controllerCopy completion:completionCopy];
  }
}

- (void)request:(id)request dismissViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  viewControllerDelegate = [(DKDiagnosticManager *)self viewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    viewControllerDelegate2 = [(DKDiagnosticManager *)self viewControllerDelegate];
    [viewControllerDelegate2 diagnosticManager:self dismissViewController:controllerCopy completion:completionCopy];
  }
}

- (void)request:(id)request presentViewController:(id)controller completion:(id)completion responderChainUpdateHandler:(id)handler
{
  requestCopy = request;
  controllerCopy = controller;
  completionCopy = completion;
  handlerCopy = handler;
  viewControllerDelegate = [(DKDiagnosticManager *)self viewControllerDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    [controllerCopy setModalPresentationStyle:0];
    viewControllerDelegate2 = [(DKDiagnosticManager *)self viewControllerDelegate];
    [viewControllerDelegate2 diagnosticManager:self presentViewController:controllerCopy completion:completionCopy responderChainUpdateHandler:handlerCopy];
  }

  else
  {
    [(DKDiagnosticManager *)self request:requestCopy presentViewController:controllerCopy completion:completionCopy];
  }
}

- (void)requestPluginReloadOnFinishWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Plugin reload was requested by the running DK extension", v6, 2u);
  }

  [(DKDiagnosticManager *)self setPluginReloadRequested:1];
  completionCopy[2](completionCopy);
}

- (void)_reloadUpdatedPlugins
{
  registry = [(DKDiagnosticManager *)self registry];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.diagnostics-service", @"com.apple.diagnostics-ui-service", @"com.apple.diagnostics-restricted-service", @"com.apple.diagnostics-restricted-ui-service", 0}];
  bundleIdentifier = [(DKDiagnosticManager *)self bundleIdentifier];
  v6 = [DKExtensionDiscovery discoveryUsingExtensionRegistry:registry services:v4 bundleIdentifier:bundleIdentifier];
  [(DKDiagnosticManager *)self setDiscovery:v6];

  discovery = [(DKDiagnosticManager *)self discovery];
  [discovery waitUntilComplete];

  [(DKDiagnosticManager *)self setPluginReloadRequested:0];
}

- (BOOL)_checkPrerequisitesForDiagnostic:(id)diagnostic parameters:(id)parameters error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  diagnosticCopy = diagnostic;
  specifications = [parameters specifications];
  if (!specifications || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
LABEL_7:
    freeSpaceRequired = [diagnosticCopy freeSpaceRequired];

    goto LABEL_8;
  }

  v10 = [specifications objectForKeyedSubscript:@"freeSpaceRequired"];
  if (!v10)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  freeSpaceRequired = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = [(DKDiagnosticManager *)self _freeSpaceAvailable:freeSpaceRequired];
  v13 = v12;
  if (error && !v12)
  {
    v14 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v15 = DKErrorLocalizedDescriptionForCode(-1005);
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *error = [v14 errorWithDomain:@"DKErrorDomain" code:-1005 userInfo:v16];
  }

  if ([diagnosticCopy requiresUnlock])
  {
    v17 = ![(DKDiagnosticManager *)self _isDeviceLocked];
    v13 &= v17;
    if (error)
    {
      if ((v17 & 1) == 0)
      {
        v18 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA450];
        v19 = DKErrorLocalizedDescriptionForCode(-1007);
        v24 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        *error = [v18 errorWithDomain:@"DKErrorDomain" code:-1007 userInfo:v20];

        v13 = 0;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_isDeviceLocked
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MGGetBoolAnswer();
  v3 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "Device lock status: %d", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)_freeSpaceAvailable:(id)available
{
  v19 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var"];
  v14 = 0;
  v5 = *MEMORY[0x277CBEA00];
  v13 = 0;
  [v4 getResourceValue:&v14 forKey:v5 error:&v13];
  v6 = v14;
  v7 = v13;
  v8 = DiagnosticsKitLogHandleForCategory(1);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = availableCopy;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "Free space required by diagnostic: %@, available space: %@", buf, 0x16u);
    }

    v10 = [v6 compare:availableCopy] != -1;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DKDiagnosticManager *)v7 _freeSpaceAvailable:v9];
    }

    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (DKProgressResponder)progressResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_progressResponder);

  return WeakRetained;
}

- (DKAssetResponder)assetResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_assetResponder);

  return WeakRetained;
}

- (DKAccessoryResponder)accessoryResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryResponder);

  return WeakRetained;
}

- (DKUserAlertResponder)userAlertResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_userAlertResponder);

  return WeakRetained;
}

- (DKBrightnessResponder)brightnessResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_brightnessResponder);

  return WeakRetained;
}

- (DKVolumeHUDResponder)volumeHUDResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeHUDResponder);

  return WeakRetained;
}

- (DKStatusBarResponder)statusBarResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarResponder);

  return WeakRetained;
}

- (DKViewControllerDelegate)viewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerDelegate);

  return WeakRetained;
}

void __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_248B9D000, log, OS_LOG_TYPE_FAULT, "This DiagnosticsKit extension (%@ - %@) is not allow listed with the DK host application", buf, 0x16u);
}

- (void)_freeSpaceAvailable:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Unable to check available disk space prior to running diagnostic with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end