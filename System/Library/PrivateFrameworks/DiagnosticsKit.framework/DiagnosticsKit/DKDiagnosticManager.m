@interface DKDiagnosticManager
- (BOOL)_checkPrerequisitesForDiagnostic:(id)a3 parameters:(id)a4 error:(id *)a5;
- (BOOL)_freeSpaceAvailable:(id)a3;
- (BOOL)_isDeviceLocked;
- (DKAccessoryResponder)accessoryResponder;
- (DKAssetResponder)assetResponder;
- (DKBrightnessResponder)brightnessResponder;
- (DKDiagnosticManager)initWithBundleIdentifier:(id)a3 connectionRoute:(unint64_t)a4;
- (DKProgressResponder)progressResponder;
- (DKStatusBarResponder)statusBarResponder;
- (DKUserAlertResponder)userAlertResponder;
- (DKViewControllerDelegate)viewControllerDelegate;
- (DKVolumeHUDResponder)volumeHUDResponder;
- (id)adapterForIdentifier:(id)a3;
- (id)attributesForIdentifier:(id)a3;
- (void)_reloadUpdatedPlugins;
- (void)allowSessionAccessoryDisconnectForDuration:(id)a3;
- (void)beginDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)cancelAllDiagnostics;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)diagnosticsWithCompletion:(id)a3;
- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6;
- (void)displayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)a11;
- (void)getAsset:(id)a3 completion:(id)a4;
- (void)hideStatusBar;
- (void)request:(id)a3 dismissViewController:(id)a4 completion:(id)a5;
- (void)request:(id)a3 presentViewController:(id)a4 completion:(id)a5;
- (void)request:(id)a3 presentViewController:(id)a4 completion:(id)a5 responderChainUpdateHandler:(id)a6;
- (void)requestPluginReloadOnFinishWithCompletion:(id)a3;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3;
- (void)setStatusBarStyle:(int64_t)a3;
- (void)showStatusBar;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)a3 forTest:(id)a4;
- (void)uploadAssets:(id)a3 completion:(id)a4;
@end

@implementation DKDiagnosticManager

- (DKDiagnosticManager)initWithBundleIdentifier:(id)a3 connectionRoute:(unint64_t)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = DKDiagnosticManager;
  v8 = [(DKDiagnosticManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleIdentifier, a3);
    v9->_connectionRoute = a4;
    v9->_pluginReloadRequested = 0;
    v10 = MEMORY[0x277D85CD8];
    v11 = dispatch_queue_create("com.apple.DiagnosticsKit.diagnosticsManager", MEMORY[0x277D85CD8]);
    diagnosticsManagerQueue = v9->_diagnosticsManagerQueue;
    v9->_diagnosticsManagerQueue = v11;

    v13 = dispatch_queue_create("com.apple.DiagnosticsKit.diagnosticsList", v10);
    diagnosticListQueue = v9->_diagnosticListQueue;
    v9->_diagnosticListQueue = v13;

    if (!a4)
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

- (void)beginDiagnosticWithIdentifier:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DKDiagnosticManager *)self diagnosticsManagerQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__DKDiagnosticManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke;
  v15[3] = &unk_278F6C2D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)diagnosticsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticManager *)self diagnosticListQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DKDiagnosticManager_diagnosticsWithCompletion___block_invoke;
  v7[3] = &unk_278F6C108;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (id)attributesForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticManager *)self discovery];
  [v5 waitUntilComplete];

  v6 = [(DKDiagnosticManager *)self registry];
  v7 = [v6 diagnosticForIdentifier:v4];

  return v7;
}

- (id)adapterForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticManager *)self discovery];
  [v5 waitUntilComplete];

  v6 = [(DKDiagnosticManager *)self registry];
  v7 = [v6 adapterForIdentifier:v4];

  return v7;
}

- (void)cancelAllDiagnostics
{
  v2 = [(DKDiagnosticManager *)self registry];
  [v2 enumerateExtensionAdaptersWithBlock:&__block_literal_global_11];
}

- (void)updateProgress:(id)a3 forTest:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(DKDiagnosticManager *)self progressResponder];
  if (v7)
  {
    v8 = v7;
    v9 = [(DKDiagnosticManager *)self progressResponder];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(DKDiagnosticManager *)self progressResponder];
      [v11 updateProgress:v12 forTest:v6];
    }
  }
}

- (void)getAsset:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(DKDiagnosticManager *)self assetResponder];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DKDiagnosticManager *)self assetResponder];
    [v9 getAsset:v10 completion:v6];
  }
}

- (void)uploadAssets:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(DKDiagnosticManager *)self assetResponder];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(DKDiagnosticManager *)self assetResponder];
    [v9 uploadAssets:v10 completion:v6];
  }
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(DKDiagnosticManager *)self accessoryResponder];
  if (v4)
  {
    v5 = v4;
    v6 = [(DKDiagnosticManager *)self accessoryResponder];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DKDiagnosticManager *)self accessoryResponder];
      [v8 requestSessionAccessoryIdentifierWithCompletion:v9];
    }
  }
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  v3 = [(DKDiagnosticManager *)self accessoryResponder];
  if (v3)
  {
    v4 = v3;
    v5 = [(DKDiagnosticManager *)self accessoryResponder];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(DKDiagnosticManager *)self accessoryResponder];
      [v7 unpairSessionAccessoryOnTestCompletion];
    }
  }
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)a3
{
  v9 = a3;
  v4 = [(DKDiagnosticManager *)self accessoryResponder];
  if (v4)
  {
    v5 = v4;
    v6 = [(DKDiagnosticManager *)self accessoryResponder];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DKDiagnosticManager *)self accessoryResponder];
      [v8 allowSessionAccessoryDisconnectForDuration:v9];
    }
  }
}

- (void)clearAllowSessionAccessoryDisconnect
{
  v3 = [(DKDiagnosticManager *)self accessoryResponder];
  if (v3)
  {
    v4 = v3;
    v5 = [(DKDiagnosticManager *)self accessoryResponder];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(DKDiagnosticManager *)self accessoryResponder];
      [v7 clearAllowSessionAccessoryDisconnect];
    }
  }
}

- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DKDiagnosticManager *)self userAlertResponder];
  if (v13)
  {
    v14 = v13;
    v15 = [(DKDiagnosticManager *)self userAlertResponder];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(DKDiagnosticManager *)self userAlertResponder];
      [v17 displayAlertWithHeader:v18 message:v10 buttonStrings:v11 completion:v12];
    }
  }
}

- (void)displayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)a11
{
  v29 = a3;
  v28 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = [(DKDiagnosticManager *)self userAlertResponder];
  if (v22)
  {
    v23 = v22;
    v24 = [(DKDiagnosticManager *)self userAlertResponder];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = [(DKDiagnosticManager *)self userAlertResponder];
      [v26 displayInstructions:v29 style:a4 imageLocators:v28 title:v16 subtitle:v17 iconLocator:v18 options:v19 navigationBarActions:v20 completion:v21];
    }
  }
}

- (void)showStatusBar
{
  v3 = [(DKDiagnosticManager *)self statusBarResponder];

  if (v3)
  {
    v4 = [(DKDiagnosticManager *)self statusBarResponder];
    [v4 showStatusBar];
  }
}

- (void)hideStatusBar
{
  v3 = [(DKDiagnosticManager *)self statusBarResponder];

  if (v3)
  {
    v4 = [(DKDiagnosticManager *)self statusBarResponder];
    [v4 hideStatusBar];
  }
}

- (void)setStatusBarStyle:(int64_t)a3
{
  v5 = [(DKDiagnosticManager *)self statusBarResponder];

  if (v5)
  {
    v6 = [(DKDiagnosticManager *)self statusBarResponder];
    [v6 setStatusBarStyle:a3];
  }
}

- (void)request:(id)a3 presentViewController:(id)a4 completion:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(DKDiagnosticManager *)self viewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [v11 setModalPresentationStyle:0];
    v10 = [(DKDiagnosticManager *)self viewControllerDelegate];
    [v10 diagnosticManager:self presentViewController:v11 completion:v7];
  }
}

- (void)request:(id)a3 dismissViewController:(id)a4 completion:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(DKDiagnosticManager *)self viewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(DKDiagnosticManager *)self viewControllerDelegate];
    [v10 diagnosticManager:self dismissViewController:v11 completion:v7];
  }
}

- (void)request:(id)a3 presentViewController:(id)a4 completion:(id)a5 responderChainUpdateHandler:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DKDiagnosticManager *)self viewControllerDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    [v10 setModalPresentationStyle:0];
    v15 = [(DKDiagnosticManager *)self viewControllerDelegate];
    [v15 diagnosticManager:self presentViewController:v10 completion:v11 responderChainUpdateHandler:v12];
  }

  else
  {
    [(DKDiagnosticManager *)self request:v16 presentViewController:v10 completion:v11];
  }
}

- (void)requestPluginReloadOnFinishWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Plugin reload was requested by the running DK extension", v6, 2u);
  }

  [(DKDiagnosticManager *)self setPluginReloadRequested:1];
  v4[2](v4);
}

- (void)_reloadUpdatedPlugins
{
  v3 = [(DKDiagnosticManager *)self registry];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.diagnostics-service", @"com.apple.diagnostics-ui-service", @"com.apple.diagnostics-restricted-service", @"com.apple.diagnostics-restricted-ui-service", 0}];
  v5 = [(DKDiagnosticManager *)self bundleIdentifier];
  v6 = [DKExtensionDiscovery discoveryUsingExtensionRegistry:v3 services:v4 bundleIdentifier:v5];
  [(DKDiagnosticManager *)self setDiscovery:v6];

  v7 = [(DKDiagnosticManager *)self discovery];
  [v7 waitUntilComplete];

  [(DKDiagnosticManager *)self setPluginReloadRequested:0];
}

- (BOOL)_checkPrerequisitesForDiagnostic:(id)a3 parameters:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a4 specifications];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
LABEL_7:
    v11 = [v8 freeSpaceRequired];

    goto LABEL_8;
  }

  v10 = [v9 objectForKeyedSubscript:@"freeSpaceRequired"];
  if (!v10)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v11 = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = [(DKDiagnosticManager *)self _freeSpaceAvailable:v11];
  v13 = v12;
  if (a5 && !v12)
  {
    v14 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v15 = DKErrorLocalizedDescriptionForCode(-1005);
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a5 = [v14 errorWithDomain:@"DKErrorDomain" code:-1005 userInfo:v16];
  }

  if ([v8 requiresUnlock])
  {
    v17 = ![(DKDiagnosticManager *)self _isDeviceLocked];
    v13 &= v17;
    if (a5)
    {
      if ((v17 & 1) == 0)
      {
        v18 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA450];
        v19 = DKErrorLocalizedDescriptionForCode(-1007);
        v24 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        *a5 = [v18 errorWithDomain:@"DKErrorDomain" code:-1007 userInfo:v20];

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

- (BOOL)_freeSpaceAvailable:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
      v16 = v3;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "Free space required by diagnostic: %@, available space: %@", buf, 0x16u);
    }

    v10 = [v6 compare:v3] != -1;
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