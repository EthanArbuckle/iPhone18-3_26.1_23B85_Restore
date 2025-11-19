@interface CCUICellularDataModuleViewController
- (BOOL)_isCellularDataButtonDemoMode;
- (BOOL)_isCellularDataRestricted;
- (BOOL)_multipleSubscriptionsAvailable;
- (BOOL)_toggleState;
- (CCUICellularDataModuleViewController)initWithContentModuleContext:(id)a3;
- (CCUIConnectivityManager)connectivityManager;
- (CCUIContentModuleContext)contentModuleContext;
- (NSString)menuDisplayName;
- (UIMenu)contextMenu;
- (id)_actionFromSubscriptionContext:(id)a3;
- (id)_currentCellularPlanName;
- (id)_debugDescriptionForState:(BOOL)a3;
- (id)_formatPhoneNumber:(id)a3;
- (id)_glyphImageForSignalStrength:(id)a3;
- (id)_subtitleTextWithState:(BOOL)a3;
- (id)contextMenuPreviewForControlTemplateView:(id)a3;
- (void)_updateContentMenuActions;
- (void)_updateGlyphImagesWithSignalStrength:(id)a3;
- (void)_updateSignalStrength;
- (void)_updateState;
- (void)activeSubscriptionsDidChange;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)contextMenuShouldPresentForControlTemplateView:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)operatorNameChanged:(id)a3 name:(id)a4;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)startObservingStateChanges;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChanges;
- (void)stopObservingStateChangesIfNecessary;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CCUICellularDataModuleViewController

- (CCUICellularDataModuleViewController)initWithContentModuleContext:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CCUICellularDataModuleViewController;
  v5 = [(CCUICellularDataModuleViewController *)&v14 init];
  if (v5)
  {
    v6 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v16 = v5;
      _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] (%{public}p) Initialization", buf, 0xCu);
    }

    objc_storeWeak(&v5->_contentModuleContext, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentMenuActions = v5->_contentMenuActions;
    v5->_contentMenuActions = v7;

    v9 = +[CCUIConnectivityManager sharedInstance];
    objc_storeWeak(&v5->_connectivityManager, v9);
    v10 = objc_alloc(MEMORY[0x277CC37B0]);
    v11 = [v10 initWithQueue:MEMORY[0x277D85CD0]];
    coreTelephonyClient = v5->_coreTelephonyClient;
    v5->_coreTelephonyClient = v11;

    [(CoreTelephonyClient *)v5->_coreTelephonyClient setDelegate:v5];
  }

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] (%{public}p) Dealloc", buf, 0xCu);
  }

  [(CCUICellularDataModuleViewController *)self stopObservingStateChangesIfNecessary];
  v4.receiver = self;
  v4.super_class = CCUICellularDataModuleViewController;
  [(CCUICellularDataModuleViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CCUICellularDataModuleViewController;
  [(CCUIButtonModuleViewController *)&v31 viewDidLoad];
  coreTelephonyClient = self->_coreTelephonyClient;
  v30 = 0;
  v28 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataServiceDescriptorSync:&v30];
  v4 = v30;
  v5 = self->_coreTelephonyClient;
  v29 = v4;
  v27 = [(CoreTelephonyClient *)v5 getPublicSignalStrength:v28 error:&v29];
  v26 = v29;

  v6 = [v27 displayBars];
  v7 = v6;
  v8 = &unk_28302E418;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(CCUICellularDataModuleViewController *)self _glyphImageForSignalStrength:v9];

  v11 = [MEMORY[0x277D75348] systemGreenColor];
  v12 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v10 highlightColor:v11 useLightStyle:1];
  [v12 setUseAutomaticSymbolColors:1];
  v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__glyphViewForExpandedConnectivityModuleTapped];
  [v12 addGestureRecognizer:v13];
  glyphViewForExpandedConnectivityModule = self->_glyphViewForExpandedConnectivityModule;
  self->_glyphViewForExpandedConnectivityModule = v12;
  v15 = v12;

  v16 = objc_alloc_init(MEMORY[0x277CFC978]);
  [v16 setDelegate:self];
  [v16 setContextMenuDelegate:self];
  [v16 setCustomGlyphView:v15];
  [v16 setShowsMenuAsPrimaryAction:0];
  templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
  self->_templateViewForExpandedConnectivityModule = v16;
  v18 = v16;

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"CONTROL_CENTER_STATUS_CELLULAR_DATA_NAME" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  [(CCUIButtonModuleViewController *)self setTitle:v20];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setTitle:v20];
  v21 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v10 highlightColor:v11 useLightStyle:1];
  [v21 setUseIndependentAlpha:1];
  [v21 setDynamicLayoutEnabled:1];
  [v21 setUseAutomaticSymbolColors:1];
  [v21 addTarget:self action:sel__buttonViewForCollapsedConnectivityModuleTapped forControlEvents:64];
  buttonViewForCollapsedConnectivityModule = self->_buttonViewForCollapsedConnectivityModule;
  self->_buttonViewForCollapsedConnectivityModule = v21;
  v23 = v21;

  v24 = [MEMORY[0x277D75348] systemGreenColor];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:v24];
  v25 = [(CCUIButtonModuleViewController *)self _templateView];
  [v25 setContextMenuDelegate:self];
  [v25 setShowsMenuAsPrimaryAction:0];
  [(CCUICellularDataModuleViewController *)self startObservingStateChangesIfNecessary];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUICellularDataModuleViewController;
  [(CCUICellularDataModuleViewController *)&v4 viewIsAppearing:a3];
  [(CCUICellularDataModuleViewController *)self _updateState];
  [(CCUICellularDataModuleViewController *)self _updateContentMenuActions];
  [(CCUICellularDataModuleViewController *)self _updateSignalStrength];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUICellularDataModuleViewController;
  [(CCUICellularDataModuleViewController *)&v4 viewWillDisappear:a3];
  [(CCUICellularDataModuleViewController *)self stopObservingStateChangesIfNecessary];
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    [(CCUICellularDataModuleViewController *)self startObservingStateChanges];
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    [(CCUICellularDataModuleViewController *)self stopObservingStateChanges];
  }
}

- (void)startObservingStateChanges
{
  self->_observingStateChanges = 1;
  v4 = [(CCUICellularDataModuleViewController *)self connectivityManager];
  [v4 addCellularDataViewControllerObservingStateChanges:self];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 registerObserver:self];
}

- (void)stopObservingStateChanges
{
  self->_observingStateChanges = 0;
  v4 = [(CCUICellularDataModuleViewController *)self connectivityManager];
  [v4 removeCellularDataViewControllerObservingStateChanges:self];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CCUICellularDataModuleViewController *)self _toggleState];
  v8.receiver = self;
  v8.super_class = CCUICellularDataModuleViewController;
  [(CCUIButtonModuleViewController *)&v8 buttonTapped:v7 forEvent:v6];
}

- (NSString)menuDisplayName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONTROL_CENTER_STATUS_CELLULAR_DATA_NAME" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  return v3;
}

- (UIMenu)contextMenu
{
  v3 = [MEMORY[0x277D75710] menuWithChildren:self->_contentMenuActions];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTROL_CENTER_STATUS_CELLULAR_SETTINGS" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__CCUICellularDataModuleViewController_contextMenu__block_invoke;
  v12 = &unk_278381D78;
  objc_copyWeak(&v13, &location);
  v7 = [v6 actionWithTitle:v5 image:0 identifier:0 handler:&v9];
  [v3 _setPinnedFooterElement:{v7, v9, v10, v11, v12}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v3;
}

void __51__CCUICellularDataModuleViewController_contextMenu__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained contentModuleContext];
  [v3 openURL:v4 completionHandler:0];
}

- (void)contextMenuShouldPresentForControlTemplateView:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [(CCUICellularDataModuleViewController *)self contentModuleContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__CCUICellularDataModuleViewController_contextMenuShouldPresentForControlTemplateView_withCompletion___block_invoke;
  v8[3] = &unk_278381DA0;
  v9 = v5;
  v7 = v5;
  [v6 requestAuthenticationWithCompletionHandler:v8];
}

- (id)contextMenuPreviewForControlTemplateView:(id)a3
{
  if (self->_templateViewForExpandedConnectivityModule == a3)
  {
    v5 = 0;
  }

  else
  {
    v3 = [(CCUICellularDataModuleViewController *)self view];
    v4 = [v3 superview];

    v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v4];
  }

  return v5;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Profile connection settings changed", v6, 2u);
  }

  [(CCUICellularDataModuleViewController *)self _updateState];
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CCUICellularDataModuleViewController_signalStrengthChanged_info___block_invoke;
  v7[3] = &unk_278381DC8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __67__CCUICellularDataModuleViewController_signalStrengthChanged_info___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 displayBars];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Signal strength changed to %{public}@ bars", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) displayBars];
  [v6 _updateGlyphImagesWithSignalStrength:v7];

  return [*(a1 + 40) _updateState];
}

- (void)activeSubscriptionsDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CCUICellularDataModuleViewController_activeSubscriptionsDidChange__block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__CCUICellularDataModuleViewController_activeSubscriptionsDidChange__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E9F5000, v2, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Active subscriptions changed", v4, 2u);
  }

  [*(a1 + 32) _updateState];
  return [*(a1 + 32) _updateContentMenuActions];
}

- (void)operatorNameChanged:(id)a3 name:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CCUICellularDataModuleViewController_operatorNameChanged_name___block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __65__CCUICellularDataModuleViewController_operatorNameChanged_name___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E9F5000, v2, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Operator name changed, updating state", v4, 2u);
  }

  return [*(a1 + 32) _updateState];
}

- (BOOL)_toggleState
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(CCUICellularDataModuleViewController *)self _isCellularDataButtonDemoMode])
  {
    [(CCUICellularDataModuleViewController *)self _setEnabled:[(CCUICellularDataModuleViewController *)self _isEnabled]^ 1];
  }

  else
  {
    v3 = _CTServerConnectionCreateWithIdentifier();
    _CTServerConnectionGetCellularDataIsEnabled();
    v4 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(CCUICellularDataModuleViewController *)self _debugDescriptionForState:0];
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Toggle Cellular Data state from %{public}@", buf, 0xCu);
    }

    _CTServerConnectionSetCellularDataIsEnabled();
    if (v3)
    {
      CFRelease(v3);
    }
  }

  [(CCUICellularDataModuleViewController *)self _updateState];
  return 1;
}

- (void)_updateState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _CTServerConnectionCreateWithIdentifier();
  if (v3)
  {
    v4 = v3;
    _CTServerConnectionGetCellularDataSettings();
    CFRelease(v4);
  }

  if (![(CCUICellularDataModuleViewController *)self _isCellularDataButtonDemoMode])
  {
    [(CCUICellularDataModuleViewController *)self _setEnabled:0];
  }

  v5 = [(CCUICellularDataModuleViewController *)self _subtitleTextWithState:0];
  [(CCUIButtonModuleViewController *)self setValueText:v5];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v5];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v5];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setEnabled:0];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:0];
  [(CCUIButtonModuleViewController *)self isExpanded];
  [(CCUIButtonModuleViewController *)self setSelected:0];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setSelected:0];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setSelected:0];
  v6 = [(CCUICellularDataModuleViewController *)self _multipleSubscriptionsAvailable];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setShowsMenuAsPrimaryAction:v6];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setShowsMenuAffordance:v6];
  v7 = [(CCUIButtonModuleViewController *)self _templateView];
  [v7 setShowsMenuAsPrimaryAction:v6];
  v8 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(CCUICellularDataModuleViewController *)self _debugDescriptionForState:0];
    *buf = 138544387;
    v12 = v10;
    v13 = 1024;
    v14 = 0;
    v15 = 1024;
    v16 = 0;
    v17 = 1024;
    v18 = 0;
    v19 = 2113;
    v20 = v5;
    _os_log_impl(&dword_21E9F5000, v9, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Cellular Data state updated to %{public}@ [ capable: %d enabled: %d airplaneMode: %d subtitle: %{private}@ ]", buf, 0x28u);
  }
}

- (void)_updateSignalStrength
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v11 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataServiceDescriptorSync:&v11];
  v5 = v11;
  v6 = self->_coreTelephonyClient;
  v10 = v5;
  v7 = [(CoreTelephonyClient *)v6 getPublicSignalStrength:v4 error:&v10];
  v8 = v10;

  v9 = [v7 displayBars];
  [(CCUICellularDataModuleViewController *)self _updateGlyphImagesWithSignalStrength:v9];
}

- (void)_updateGlyphImagesWithSignalStrength:(id)a3
{
  v6 = [(CCUICellularDataModuleViewController *)self _glyphImageForSignalStrength:a3];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v6];
  v4 = [(CCUICellularDataModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [v4 setGlyphImage:v6];
  v5 = [(CCUICellularDataModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [v5 setGlyphImage:v6];
}

- (id)_glyphImageForSignalStrength:(id)a3
{
  [a3 doubleValue];
  v5 = v4 * 0.25;
  v6 = [(CCUIButtonModuleViewController *)self contentMetrics];
  v7 = [v6 symbolConfiguration];
  if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277D755D0] configurationWithScale:v8];
  v10 = [v7 configurationByApplyingConfiguration:v9];

  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"cellularbars" variableValue:v10 withConfiguration:v5];
  v12 = [v11 imageFlippedForRightToLeftLayoutDirection];

  return v12;
}

- (id)_currentCellularPlanName
{
  v34 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v32 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v32];
  v5 = v32;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = v5;
LABEL_7:
    v8 = 0;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v4 subscriptionsInUse];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    v7 = v10;
    if (v10)
    {
      v11 = *v29;
LABEL_10:
      v12 = 0;
      while (1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = [v13 userDataPreferred];
        v15 = [v14 BOOLValue];

        if (v15)
        {
          break;
        }

        if (v7 == ++v12)
        {
          v7 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v7)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v16 = v13;

      if (!v16)
      {
        v7 = 0;
        goto LABEL_7;
      }

      v17 = self->_coreTelephonyClient;
      v27 = 0;
      v18 = [(CoreTelephonyClient *)v17 getSubscriptionUserFacingName:v16 error:&v27];
      v7 = v27;
      if (v7)
      {
        v19 = *MEMORY[0x277CFC8F8];
        if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
        {
          [(CCUICellularDataModuleViewController *)v7 _currentCellularPlanName:v19];
        }

        v8 = 0;
      }

      else
      {
        v8 = v18;
      }
    }

    else
    {
LABEL_16:
      v8 = 0;
      v16 = v9;
    }
  }

  return v8;
}

- (id)_subtitleTextWithState:(BOOL)a3
{
  if (!a3)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"CONTROL_CENTER_STATUS_CELLULAR_DATA_OFF" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
    goto LABEL_5;
  }

  v3 = [(CCUICellularDataModuleViewController *)self _currentCellularPlanName];
  if ([v3 length])
  {
    v4 = v3;
    v3 = v4;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v7 localizedStringForKey:@"CONTROL_CENTER_STATUS_CELLULAR_DATA_ON" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

LABEL_6:

  return v5;
}

- (BOOL)_isCellularDataRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25D10]] == 2;

  return v3;
}

- (BOOL)_isCellularDataButtonDemoMode
{
  v2 = CCSIsInternalInstall();
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"ControlCenterCellularDataButtonDemoMode"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)_multipleSubscriptionsAvailable
{
  v26 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v24 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v24];
  v5 = v24;
  if (v5)
  {
    v6 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
    {
      [(CCUICellularDataModuleViewController *)v5 _multipleSubscriptionsAvailable:v6];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [v4 subscriptionsInUse];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v15 += [*(*(&v20 + 1) + 8 * i) isSimHidden] ^ 1;
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
    v14 = v15 > 1;
  }

  v18 = [(CCUICellularDataModuleViewController *)self _isEnabled];
  return v18 & v14;
}

- (void)_updateContentMenuActions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = self->_contentMenuActions;
  [(NSMutableArray *)v3 removeAllObjects];
  if ([(CCUICellularDataModuleViewController *)self _multipleSubscriptionsAvailable])
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v27 = 0;
    v5 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v27];
    v6 = v27;
    if (v6)
    {
      v7 = *MEMORY[0x277CFC8F8];
      if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
      {
        [(CCUICellularDataModuleViewController *)v6 _updateContentMenuActions:v7];
      }
    }

    else
    {
      if (v5)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [v5 subscriptionsInUse];
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [(CCUICellularDataModuleViewController *)self _actionFromSubscriptionContext:*(*(&v23 + 1) + 8 * i)];
              if (v19)
              {
                [(NSMutableArray *)v3 addObject:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v16);
        }
      }

      v20 = [(CCUIButtonModuleViewController *)self _templateView];
      v21 = [v20 isPresentingContextMenu];
      templateViewForExpandedConnectivityModule = v20;
      if ((v21 & 1) == 0)
      {
        templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
      }

      [(CCUIControlTemplateView *)templateViewForExpandedConnectivityModule updateVisibleMenuIfNeeded];
    }
  }
}

- (id)_formatPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] && (v5 = CFPhoneNumberCreate()) != 0)
  {
    v6 = v5;
    String = CFPhoneNumberCreateString();
    CFRelease(v6);
  }

  else
  {
    String = 0;
  }

  return String;
}

- (id)_actionFromSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(CoreTelephonyClient *)self->_coreTelephonyClient getSubscriptionUserFacingName:v4 error:0];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D750C8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__CCUICellularDataModuleViewController__actionFromSubscriptionContext___block_invoke;
    v14[3] = &unk_278381E40;
    objc_copyWeak(&v16, &location);
    v7 = v4;
    v15 = v7;
    v8 = [v6 actionWithTitle:v5 image:0 identifier:0 handler:v14];
    v9 = [v7 phoneNumber];
    v10 = [(CCUICellularDataModuleViewController *)self _formatPhoneNumber:v9];
    if (v10)
    {
      [v8 setSubtitle:v10];
    }

    v11 = [v7 userDataPreferred];
    v12 = [v11 BOOLValue];

    [v8 setState:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __71__CCUICellularDataModuleViewController__actionFromSubscriptionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[136];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__CCUICellularDataModuleViewController__actionFromSubscriptionContext___block_invoke_2;
  v5[3] = &unk_278381E18;
  v6 = v4;
  [v3 setActiveUserDataSelection:v6 completion:v5];
  [WeakRetained _updateContentMenuActions];
}

void __71__CCUICellularDataModuleViewController__actionFromSubscriptionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CFC8F8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
    {
      __71__CCUICellularDataModuleViewController__actionFromSubscriptionContext___block_invoke_2_cold_1(a1, v3, v4);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Cellular Data Module] Setting Active user data selection to %@", &v6, 0xCu);
  }
}

- (id)_debugDescriptionForState:(BOOL)a3
{
  if (a3)
  {
    return @"on";
  }

  else
  {
    return @"off";
  }
}

- (CCUIConnectivityManager)connectivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectivityManager);

  return WeakRetained;
}

- (CCUIContentModuleContext)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

void __71__CCUICellularDataModuleViewController__actionFromSubscriptionContext___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21E9F5000, log, OS_LOG_TYPE_ERROR, "[Cellular Data Module] Error setting active data selection to %@. Error: %@", &v4, 0x16u);
}

@end