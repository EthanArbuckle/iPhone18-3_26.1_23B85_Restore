@interface CCUIBluetoothModuleViewController
- (BOOL)_shouldHideBluetoothPeripheral:(id)peripheral;
- (CCUIBluetoothModuleViewController)initWithContentModuleContext:(id)context;
- (CCUIContentModuleContext)contentModuleContext;
- (UIMenu)contextMenu;
- (id)_actionFromBluetoothDevice:(id)device;
- (id)_actionFromBluetoothPeripheral:(id)peripheral;
- (id)_debugDescriptionForState:(int)state;
- (id)_glyphImageForState:(int)state;
- (id)_subtitleForConnected:(BOOL)connected;
- (id)_subtitleForDeviceWithIdentifier:(id)identifier connected:(BOOL)connected;
- (id)_subtitleTextWithState:(int)state;
- (id)contextMenuPreviewForControlTemplateView:(id)view;
- (int)_stateWithOverridesApplied:(int)applied;
- (void)_bluetoothAvailabilityChanged:(id)changed;
- (void)_bluetoothConnectionStatusDidChange:(id)change;
- (void)_bluetoothDeviceConnectionStatusDidChange:(id)change;
- (void)_bluetoothDeviceRemoved:(id)removed;
- (void)_bluetoothStateDidChange:(id)change;
- (void)_startScanning;
- (void)_stopScanning;
- (void)_toggleState;
- (void)_updateBluetoothMenuItems;
- (void)_updateConnectedDeviceNames;
- (void)_updateGlyphImagesWithState:(int)state;
- (void)_updateState;
- (void)_updateWithState:(int)state;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)contextMenuShouldPresentForControlTemplateView:(id)view withCompletion:(id)completion;
- (void)didBeginContextMenuPresentationForControlTemplateView:(id)view;
- (void)didEndContextMenuPresentationForControlTemplateView:(id)view;
- (void)startObservingStateChanges;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChanges;
- (void)stopObservingStateChangesIfNecessary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CCUIBluetoothModuleViewController

- (CCUIBluetoothModuleViewController)initWithContentModuleContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = CCUIBluetoothModuleViewController;
  v5 = [(CCUIBluetoothModuleViewController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentModuleContext, contextCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentMenuActions = v6->_contentMenuActions;
    v6->_contentMenuActions = v7;

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    bluetoothManager = v6->_bluetoothManager;
    v6->_bluetoothManager = mEMORY[0x277CF3248];

    connectedDeviceNames = v6->_connectedDeviceNames;
    v6->_connectedDeviceNames = MEMORY[0x277CBEBF8];

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    busyIdentifiers = v6->_busyIdentifiers;
    v6->_busyIdentifiers = v12;
  }

  return v6;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CCUIBluetoothModuleViewController;
  [(CCUIButtonModuleViewController *)&v19 viewDidLoad];
  v3 = [(CCUIBluetoothModuleViewController *)self _glyphImageForState:3];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v3 highlightColor:systemBlueColor useLightStyle:1];
  [v5 setUseAutomaticSymbolColors:1];
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__glyphViewForExpandedConnectivityModuleTapped];
  [v5 addGestureRecognizer:v6];
  glyphViewForExpandedConnectivityModule = self->_glyphViewForExpandedConnectivityModule;
  self->_glyphViewForExpandedConnectivityModule = v5;
  v8 = v5;

  v9 = objc_alloc_init(MEMORY[0x277CFC978]);
  [v9 setCustomGlyphView:v8];
  [v9 setShowsMenuAsPrimaryAction:1];
  templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
  self->_templateViewForExpandedConnectivityModule = v9;
  v11 = v9;

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTROL_CENTER_STATUS_BLUETOOTH_NAME" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  [(CCUIButtonModuleViewController *)self setTitle:v13];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setTitle:v13];
  v14 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v3 highlightColor:systemBlueColor useLightStyle:1];
  [v14 setUseIndependentAlpha:1];
  [v14 setDynamicLayoutEnabled:1];
  [v14 setUseAutomaticSymbolColors:1];
  [v14 addTarget:self action:sel__buttonViewForCollapsedConnectivityModuleTapped forControlEvents:64];
  buttonViewForCollapsedConnectivityModule = self->_buttonViewForCollapsedConnectivityModule;
  self->_buttonViewForCollapsedConnectivityModule = v14;
  v16 = v14;

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:systemBlueColor2];
  _templateView = [(CCUIButtonModuleViewController *)self _templateView];
  [_templateView setContextMenuDelegate:self];
  [_templateView setShowsMenuAsPrimaryAction:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIBluetoothModuleViewController;
  [(CCUIBluetoothModuleViewController *)&v4 viewWillAppear:appear];
  [(CCUIBluetoothModuleViewController *)self startObservingStateChangesIfNecessary];
  [(CCUIBluetoothModuleViewController *)self _updateState];
  [(CCUIBluetoothModuleViewController *)self _updateConnectedDeviceNames];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CCUIBluetoothModuleViewController;
  [(CCUIBluetoothModuleViewController *)&v4 viewWillDisappear:disappear];
  [(CCUIBluetoothModuleViewController *)self stopObservingStateChangesIfNecessary];
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  identifier = [stateCopy identifier];
  uUIDString = [identifier UUIDString];

  if ([stateCopy state] == 1 || objc_msgSend(stateCopy, "state") == 3)
  {
    if (([(NSMutableSet *)self->_busyIdentifiers containsObject:uUIDString]& 1) != 0)
    {
      goto LABEL_8;
    }

    [(NSMutableSet *)self->_busyIdentifiers addObject:uUIDString];
  }

  else
  {
    if (![(NSMutableSet *)self->_busyIdentifiers containsObject:uUIDString])
    {
      goto LABEL_8;
    }

    [(NSMutableSet *)self->_busyIdentifiers removeObject:uUIDString];
  }

  [(CCUIBluetoothModuleViewController *)self _updateBluetoothMenuItems];
LABEL_8:
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    [(CCUIBluetoothModuleViewController *)self startObservingStateChanges];
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    [(CCUIBluetoothModuleViewController *)self stopObservingStateChanges];
  }
}

- (void)startObservingStateChanges
{
  self->_observingStateChanges = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__bluetoothStateDidChange_ name:*MEMORY[0x277CF3238] object:self->_bluetoothManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__bluetoothConnectionStatusDidChange_ name:*MEMORY[0x277CF3170] object:self->_bluetoothManager];
}

- (void)stopObservingStateChanges
{
  self->_observingStateChanges = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CF3238] object:self->_bluetoothManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CF3170] object:self->_bluetoothManager];
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  eventCopy = event;
  tappedCopy = tapped;
  [(CCUIBluetoothModuleViewController *)self _toggleState];
  v8.receiver = self;
  v8.super_class = CCUIBluetoothModuleViewController;
  [(CCUIButtonModuleViewController *)&v8 buttonTapped:tappedCopy forEvent:eventCopy];
}

- (UIMenu)contextMenu
{
  v3 = [MEMORY[0x277D75710] menuWithChildren:self->_contentMenuActions];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTROL_CENTER_STATUS_BLUETOOTH_SETTINGS" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __48__CCUIBluetoothModuleViewController_contextMenu__block_invoke;
  v12 = &unk_278381D78;
  objc_copyWeak(&v13, &location);
  v7 = [v6 actionWithTitle:v5 image:0 identifier:0 handler:&v9];
  [v3 _setPinnedFooterElement:{v7, v9, v10, v11, v12}];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v3;
}

void __48__CCUIBluetoothModuleViewController_contextMenu__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Bluetooth"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained contentModuleContext];
  [v3 openURL:v4 completionHandler:0];
}

- (void)contextMenuShouldPresentForControlTemplateView:(id)view withCompletion:(id)completion
{
  completionCopy = completion;
  contentModuleContext = [(CCUIBluetoothModuleViewController *)self contentModuleContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__CCUIBluetoothModuleViewController_contextMenuShouldPresentForControlTemplateView_withCompletion___block_invoke;
  v8[3] = &unk_278381DA0;
  v9 = completionCopy;
  v7 = completionCopy;
  [contentModuleContext requestAuthenticationWithCompletionHandler:v8];
}

- (id)contextMenuPreviewForControlTemplateView:(id)view
{
  if (self->_templateViewForExpandedConnectivityModule == view)
  {
    v5 = 0;
  }

  else
  {
    view = [(CCUIBluetoothModuleViewController *)self view];
    superview = [view superview];

    v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:superview];
  }

  return v5;
}

- (void)didBeginContextMenuPresentationForControlTemplateView:(id)view
{
  [(CCUIBluetoothModuleViewController *)self _startScanning];
  if (![(CCUIBluetoothModuleViewController *)self _enabledForState:[(CCUIBluetoothModuleViewController *)self _stateWithOverridesApplied:[(CCUIBluetoothModuleViewController *)self _currentState]]])
  {
    [(CCUIBluetoothModuleViewController *)self _toggleState];
  }

  [(CCUIBluetoothModuleViewController *)self _updateState];
}

- (void)didEndContextMenuPresentationForControlTemplateView:(id)view
{
  [(CCUIBluetoothModuleViewController *)self _stopScanning];

  [(CCUIBluetoothModuleViewController *)self _updateState];
}

- (void)_startScanning
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Start scanning", buf, 2u);
  }

  v4 = objc_alloc(MEMORY[0x277CBDFF8]);
  v16 = *MEMORY[0x277CBDD98];
  v17[0] = MEMORY[0x277CBEC28];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v6 = [v4 initWithDelegate:self queue:0 options:v5];
  centralManager = self->_centralManager;
  self->_centralManager = v6;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__bluetoothDeviceConnectionStatusDidChange_ name:*MEMORY[0x277CF3190] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__bluetoothDeviceConnectionStatusDidChange_ name:*MEMORY[0x277CF3188] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__bluetoothDeviceConnectionStatusDidChange_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__bluetoothDeviceConnectionStatusDidChange_ name:*MEMORY[0x277CF3198] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__bluetoothAvailabilityChanged_ name:*MEMORY[0x277CF3168] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel__bluetoothDeviceRemoved_ name:*MEMORY[0x277CF31B0] object:0];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__CCUIBluetoothModuleViewController__startScanning__block_invoke;
  v14[3] = &unk_278381DF0;
  v14[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v14];
}

- (void)_stopScanning
{
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Stop scanning", v11, 2u);
  }

  [(CBCentralManager *)self->_centralManager setDelegate:0];
  centralManager = self->_centralManager;
  self->_centralManager = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CF3190] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CF3188] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277CF3198] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 removeObserver:self name:*MEMORY[0x277CF3168] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 removeObserver:self name:*MEMORY[0x277CF31B0] object:0];
}

- (void)_toggleState
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIBluetoothModuleViewController *)self _stateWithOverridesApplied:[(CCUIBluetoothModuleViewController *)self _currentState]];
  v4 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(CCUIBluetoothModuleViewController *)self _debugDescriptionForState:v3];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Toggle Bluetooth state from %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  bluetoothManager = self->_bluetoothManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CCUIBluetoothModuleViewController__toggleState__block_invoke;
  v8[3] = &unk_278382AB0;
  v8[4] = self;
  v10 = v3;
  objc_copyWeak(&v9, buf);
  [(BluetoothManager *)bluetoothManager bluetoothStateActionWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __49__CCUIBluetoothModuleViewController__toggleState__block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) _stateWithOverridesApplied:a2];
  v5 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = v5;
    v9 = [v6 _debugDescriptionForState:v7];
    v10 = [*(a1 + 32) _debugDescriptionForState:v4];
    v20 = 138543618;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_21E9F5000, v8, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Toggled Bluetooth state from %{public}@ to %{public}@", &v20, 0x16u);
  }

  v11 = *(a1 + 48);
  if ((v11 - 1) <= 1 && (v4 - 3) < 2)
  {
    v13 = @"CONTROL_CENTER_STATUS_MESSAGE_BLUETOOTH_CONNECTIONS_ENABLED";
    goto LABEL_12;
  }

  if ((v11 == 4 || v11 == 3) && v4 == 2)
  {
    v13 = @"CONTROL_CENTER_STATUS_MESSAGE_BLUETOOTH_CONNECTIONS_DISABLED";
LABEL_12:
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:v13 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v17 = [WeakRetained contentModuleContext];

      v18 = [MEMORY[0x277CFC9C8] statusUpdateWithMessage:v15 type:0];
      [v17 enqueueStatusUpdate:v18];
    }
  }

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 _updateWithState:a2];
}

- (void)_bluetoothStateDidChange:(id)change
{
  v4 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Bluetooth state changed", v5, 2u);
  }

  [(CCUIBluetoothModuleViewController *)self _updateState];
}

- (void)_bluetoothConnectionStatusDidChange:(id)change
{
  v4 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Bluetooth connection status changed", v5, 2u);
  }

  [(CCUIBluetoothModuleViewController *)self _updateState];
  [(CCUIBluetoothModuleViewController *)self _updateConnectedDeviceNames];
}

- (void)_updateGlyphImagesWithState:(int)state
{
  v6 = [(CCUIBluetoothModuleViewController *)self _glyphImageForState:*&state];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v6];
  buttonViewForCollapsedConnectivityModule = [(CCUIBluetoothModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [buttonViewForCollapsedConnectivityModule setGlyphImage:v6];
  glyphViewForExpandedConnectivityModule = [(CCUIBluetoothModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [glyphViewForExpandedConnectivityModule setGlyphImage:v6];
}

- (void)_updateState
{
  _currentState = [(CCUIBluetoothModuleViewController *)self _currentState];

  [(CCUIBluetoothModuleViewController *)self _updateWithState:_currentState];
}

- (void)_updateWithState:(int)state
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(CCUIBluetoothModuleViewController *)self _stateWithOverridesApplied:*&state];
  v5 = [(CCUIBluetoothModuleViewController *)self _subtitleTextWithState:v4];
  [(CCUIButtonModuleViewController *)self setValueText:v5];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v5];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v5];
  v6 = [(CCUIBluetoothModuleViewController *)self _inoperativeForState:v4];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setEnabled:!v6];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:!v6];
  v7 = [(CCUIBluetoothModuleViewController *)self _enabledForState:v4];
  [(CCUIButtonModuleViewController *)self setSelected:v7 & ![(CCUIButtonModuleViewController *)self isExpanded]];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setSelected:v7];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setSelected:v7];
  [(CCUIBluetoothModuleViewController *)self _updateGlyphImagesWithState:v4];
  v8 = [(CCUIBluetoothModuleViewController *)self _useAlternateSelectedBackgroundForState:v4];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setUseAlternateBackground:v8];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setUseAlternateBackground:v8];
  [(CCUIBluetoothModuleViewController *)self _updateBluetoothMenuItems];
  v9 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(CCUIBluetoothModuleViewController *)self _debugDescriptionForState:v4];
    v12 = 138544131;
    v13 = v11;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2113;
    v19 = v5;
    _os_log_impl(&dword_21E9F5000, v10, OS_LOG_TYPE_DEFAULT, "[Bluetooth Module] Bluetooth state updated to %{public}@ [ inoperative: %d enabled: %d subtitle: %{private}@ ]", &v12, 0x22u);
  }
}

- (int)_stateWithOverridesApplied:(int)applied
{
  if (CCSIsInternalInstall())
  {
    v4 = +[CCUIControlCenterDefaults standardDefaults];
    shouldExcludeControlCenterFromStatusBarOverrides = [v4 shouldExcludeControlCenterFromStatusBarOverrides];

    if ((shouldExcludeControlCenterFromStatusBarOverrides & 1) == 0)
    {
      getStatusBarOverrideData = [MEMORY[0x277D75A98] getStatusBarOverrideData];
      if (getStatusBarOverrideData[16] == 1)
      {
        if (getStatusBarOverrideData[80])
        {
          if (getStatusBarOverrideData[2593])
          {
            return 3;
          }

          else
          {
            return 2;
          }
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return applied;
}

- (id)_subtitleTextWithState:(int)state
{
  if (state == 2)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CONTROL_CENTER_STATUS_BLUETOOTH_DISCONNECTED";
    goto LABEL_11;
  }

  if (state == 4)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CONTROL_CENTER_STATUS_BLUETOOTH_BUSY";
    goto LABEL_11;
  }

  if (state != 3)
  {
    if (state > 1)
    {
      firstObject = 0;
      goto LABEL_13;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"CONTROL_CENTER_STATUS_BLUETOOTH_OFF";
LABEL_11:
    firstObject = [v6 localizedStringForKey:v8 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
LABEL_12:

    goto LABEL_13;
  }

  v4 = [(NSArray *)self->_connectedDeviceNames count];
  firstObject = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      firstObject = [(NSArray *)self->_connectedDeviceNames firstObject];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"CONTROL_CENTER_STATUS_BLUETOOTH_DEVICES" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
      firstObject = [v10 localizedStringWithFormat:v12, firstObject];
    }
  }

  if (![firstObject length])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v7 localizedStringForKey:@"CONTROL_CENTER_STATUS_BLUETOOTH_ON" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

    firstObject = v13;
    goto LABEL_12;
  }

LABEL_13:

  return firstObject;
}

- (void)_updateConnectedDeviceNames
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CCUIBluetoothModuleViewController__updateConnectedDeviceNames__block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __64__CCUIBluetoothModuleViewController__updateConnectedDeviceNames__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1040) connectedDeviceNamesThatMayBeDenylisted];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__CCUIBluetoothModuleViewController__updateConnectedDeviceNames__block_invoke_2;
  v4[3] = &unk_278381DC8;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __64__CCUIBluetoothModuleViewController__updateConnectedDeviceNames__block_invoke_2(uint64_t a1)
{
  result = BSEqualObjects();
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1048);
    *(v4 + 1048) = v3;

    v6 = *(a1 + 32);

    return [v6 _updateState];
  }

  return result;
}

- (id)_glyphImageForState:(int)state
{
  if (state > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278382B40[state];
  }

  contentMetrics = [(CCUIButtonModuleViewController *)self contentMetrics];
  symbolConfiguration = [contentMetrics symbolConfiguration];
  if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x277D755D0] configurationWithScale:v7];
  v9 = [symbolConfiguration configurationByApplyingConfiguration:v8];

  v10 = [MEMORY[0x277D755B8] _systemImageNamed:v4 withConfiguration:v9];

  return v10;
}

- (id)_debugDescriptionForState:(int)state
{
  if ((state - 1) > 3)
  {
    return @"unavailable";
  }

  else
  {
    return off_278382B68[state - 1];
  }
}

- (void)_updateBluetoothMenuItems
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CCUIBluetoothModuleViewController.m" lineNumber:512 description:@"This must be called on the main thread"];
}

uint64_t __62__CCUIBluetoothModuleViewController__updateBluetoothMenuItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)_actionFromBluetoothDevice:(id)device
{
  deviceCopy = device;
  address = [deviceCopy address];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  name = [deviceCopy name];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __64__CCUIBluetoothModuleViewController__actionFromBluetoothDevice___block_invoke;
  v16 = &unk_278382AF8;
  objc_copyWeak(&v19, &location);
  v8 = deviceCopy;
  v17 = v8;
  v9 = address;
  v18 = v9;
  v10 = [v6 actionWithTitle:name image:0 identifier:v9 handler:&v13];

  v11 = -[CCUIBluetoothModuleViewController _subtitleForDeviceWithIdentifier:connected:](self, "_subtitleForDeviceWithIdentifier:connected:", v9, [v8 connected]);
  [v10 setSubtitle:v11];
  [v10 setAttributes:{objc_msgSend(v10, "attributes") | 8}];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v10;
}

void __64__CCUIBluetoothModuleViewController__actionFromBluetoothDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) connected];
    [v5[133] addObject:*(a1 + 40)];
    [v5 _updateBluetoothMenuItems];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 disconnect];
    }

    else
    {
      [v4 connect];
    }

    WeakRetained = v5;
  }
}

- (id)_actionFromBluetoothPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];

  objc_initWeak(&location, self->_centralManager);
  if ([peripheralCopy hasTag:@"DA_ASK_RETAIN_DEVICE"])
  {
    [peripheralCopy customProperty:@"ASK_DISPLAY_NAME"];
  }

  else
  {
    [peripheralCopy name];
  }
  v7 = ;
  v8 = MEMORY[0x277D750C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__CCUIBluetoothModuleViewController__actionFromBluetoothPeripheral___block_invoke;
  v13[3] = &unk_278382B20;
  v9 = peripheralCopy;
  v14 = v9;
  objc_copyWeak(&v15, &location);
  v10 = [v8 actionWithTitle:v7 image:0 identifier:uUIDString handler:v13];
  v11 = -[CCUIBluetoothModuleViewController _subtitleForDeviceWithIdentifier:connected:](self, "_subtitleForDeviceWithIdentifier:connected:", uUIDString, [v9 isConnectedToSystem]);
  [v10 setSubtitle:v11];
  [v10 setAttributes:{objc_msgSend(v10, "attributes") | 8}];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __68__CCUIBluetoothModuleViewController__actionFromBluetoothPeripheral___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isConnectedToSystem];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = WeakRetained;
  if (v2)
  {
    [WeakRetained cancelPeripheralConnection:v4];
  }

  else
  {
    [WeakRetained connectPeripheral:v4 options:0];
  }
}

- (BOOL)_shouldHideBluetoothPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if ([peripheralCopy connectedTransport] == 2)
  {
    sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
    if ([sharedPairingAgent isPeerCloudPaired:peripheralCopy])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [peripheralCopy visibleInSettings] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_subtitleForConnected:(BOOL)connected
{
  connectedCopy = connected;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (connectedCopy)
  {
    v6 = @"CONTROL_CENTER_STATUS_BLUETOOTH_CONNECTED";
  }

  else
  {
    v6 = @"CONTROL_CENTER_STATUS_BLUETOOTH_DISCONNECTED";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  return v7;
}

- (id)_subtitleForDeviceWithIdentifier:(id)identifier connected:(BOOL)connected
{
  connectedCopy = connected;
  if ([(NSMutableSet *)self->_busyIdentifiers containsObject:identifier])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (connectedCopy)
    {
      v8 = @"CONTROL_CENTER_STATUS_BLUETOOTH_DISCONNECTING";
    }

    else
    {
      v8 = @"CONTROL_CENTER_STATUS_BLUETOOTH_CONNECTING";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  }

  else
  {
    v9 = [(CCUIBluetoothModuleViewController *)self _subtitleForConnected:connectedCopy];
  }

  return v9;
}

- (void)_bluetoothDeviceConnectionStatusDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  object = [changeCopy object];

  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    name = [object name];
    v11 = 138543362;
    v12 = name;
    _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth connection status changed: %{public}@", &v11, 0xCu);
  }

  busyIdentifiers = self->_busyIdentifiers;
  address = [object address];
  [(NSMutableSet *)busyIdentifiers removeObject:address];

  [(CCUIBluetoothModuleViewController *)self _updateBluetoothMenuItems];
}

- (void)_bluetoothAvailabilityChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  object = [changedCopy object];

  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8[0] = 67109120;
    v8[1] = [object BOOLValue];
    _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth device availability changed: %{BOOL}d", v8, 8u);
  }

  [(CCUIBluetoothModuleViewController *)self _updateBluetoothMenuItems];
}

- (void)_bluetoothDeviceRemoved:(id)removed
{
  v11 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  object = [removedCopy object];

  v6 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    name = [object name];
    v9 = 138543362;
    v10 = name;
    _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth device removed: %{public}@", &v9, 0xCu);
  }

  [(CCUIBluetoothModuleViewController *)self _updateBluetoothMenuItems];
}

- (CCUIContentModuleContext)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

@end