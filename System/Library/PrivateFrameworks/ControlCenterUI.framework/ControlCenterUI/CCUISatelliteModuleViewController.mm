@interface CCUISatelliteModuleViewController
- (BOOL)_hasContextMenuItems;
- (BOOL)performPrimaryActionForControlTemplateView:(id)a3;
- (CCUISatelliteModuleViewController)init;
- (id)_connectedMenuItems;
- (id)_debugDescriptionForState:(BOOL)a3;
- (id)_glyphImageForState:(unint64_t)a3;
- (id)_glyphStateForState:(unint64_t)a3;
- (id)_menuItemsForCurrentState;
- (id)_notConnectedMenuItems;
- (id)_offMenuItems;
- (id)_subtitleTextForState:(unint64_t)a3;
- (void)_buttonTapped;
- (void)_openSOSBuddyApp;
- (void)_updateGlyphImageWithState:(unint64_t)a3;
- (void)_updateSatelliteMenuItems;
- (void)_updateState:(unint64_t)a3;
- (void)buttonTapped:(id)a3;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChangesIfNecessary;
- (void)updateState;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CCUISatelliteModuleViewController

- (CCUISatelliteModuleViewController)init
{
  v15.receiver = self;
  v15.super_class = CCUISatelliteModuleViewController;
  v2 = [(CCUISatelliteModuleViewController *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentMenuActions = v2->_contentMenuActions;
    v2->_contentMenuActions = v3;

    v5 = [CCUISatelliteMonitor alloc];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    v7 = [(CCUISatelliteMonitor *)v5 initWithQueue:SerialWithQoS];
    satelliteMonitor = v2->_satelliteMonitor;
    v2->_satelliteMonitor = v7;

    [(CCUISatelliteMonitor *)v2->_satelliteMonitor start];
    v9 = [MEMORY[0x277CF0C18] serial];
    v10 = [v9 autoreleaseFrequency:1];
    v11 = [v10 serviceClass:25];
    v12 = BSDispatchQueueCreate();
    queue = v2->_queue;
    v2->_queue = v12;

    v2->_observingStateChanges = 0;
  }

  return v2;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CCUISatelliteModuleViewController;
  [(CCUIButtonModuleViewController *)&v19 viewDidLoad];
  v3 = [(CCUISatelliteModuleViewController *)self _glyphImageForState:1];
  v4 = [MEMORY[0x277D75348] systemGreenColor];
  v5 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v3 highlightColor:v4 useLightStyle:1];
  [v5 setUseAutomaticSymbolColors:1];
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__glyphViewForExpandedConnectivityModuleTapped];
  [v5 addGestureRecognizer:v6];
  glyphViewForExpandedConnectivityModule = self->_glyphViewForExpandedConnectivityModule;
  self->_glyphViewForExpandedConnectivityModule = v5;
  v8 = v5;

  [(CCUIButtonModuleViewController *)self setGlyphImage:v3];
  v9 = objc_alloc_init(MEMORY[0x277CFC978]);
  [v9 setCustomGlyphView:v8];
  [v9 setDelegate:self];
  templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
  self->_templateViewForExpandedConnectivityModule = v9;
  v11 = v9;

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTROL_CENTER_STATUS_SATELLITE_NAME" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  [(CCUIButtonModuleViewController *)self setTitle:v13];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setTitle:v13];
  v14 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:v3 highlightColor:v4 useLightStyle:1];
  [v14 setUseIndependentAlpha:1];
  [v14 setDynamicLayoutEnabled:1];
  [v14 setUseAutomaticSymbolColors:1];
  [v14 addTarget:self action:sel__buttonViewForCollapsedConnectivityModuleTapped forControlEvents:64];
  buttonViewForCollapsedConnectivityModule = self->_buttonViewForCollapsedConnectivityModule;
  self->_buttonViewForCollapsedConnectivityModule = v14;
  v16 = v14;

  v17 = [MEMORY[0x277D75348] systemGreenColor];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:v17];
  v18 = [(CCUIButtonModuleViewController *)self _templateView];
  [v18 setContextMenuDelegate:self];
  [v18 setShowsMenuAsPrimaryAction:1];
  [(CCUISatelliteModuleViewController *)self _updateSatelliteMenuItems];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUISatelliteModuleViewController;
  [(CCUISatelliteModuleViewController *)&v4 viewWillAppear:a3];
  [(CCUISatelliteModuleViewController *)self startObservingStateChangesIfNecessary];
  [(CCUISatelliteModuleViewController *)self _updateState:[(CCUISatelliteMonitor *)self->_satelliteMonitor state]];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUISatelliteModuleViewController;
  [(CCUISatelliteModuleViewController *)&v4 viewWillDisappear:a3];
  [(CCUISatelliteModuleViewController *)self stopObservingStateChangesIfNecessary];
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    [(CCUISatelliteModuleViewController *)self startObservingStateChanges];
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    [(CCUISatelliteModuleViewController *)self stopObservingStateChanges];
  }
}

- (BOOL)performPrimaryActionForControlTemplateView:(id)a3
{
  v4 = [(CCUISatelliteModuleViewController *)self _hasContextMenuItems];
  if (!v4)
  {
    [(CCUISatelliteModuleViewController *)self _openSOSBuddyApp];
  }

  return v4;
}

- (void)updateState
{
  v3 = [(CCUISatelliteMonitor *)self->_satelliteMonitor state];

  [(CCUISatelliteModuleViewController *)self _updateState:v3];
}

- (BOOL)_hasContextMenuItems
{
  v2 = [(CCUISatelliteModuleViewController *)self contextMenuItems];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_openSOSBuddyApp
{
  v3 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21E9F5000, v3, OS_LOG_TYPE_DEFAULT, "[Satellite] Dispatching to launch SOSBuddy app...", v4, 2u);
  }

  dispatch_async(self->_queue, &__block_literal_global_2);
}

void __53__CCUISatelliteModuleViewController__openSOSBuddyApp__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21E9F5000, v0, OS_LOG_TYPE_DEFAULT, "[Satellite] Actually launching SOSBuddy app...", v5, 2u);
  }

  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-sosbuddy://open"];
  v2 = *MEMORY[0x277D0AC70];
  v6[0] = *MEMORY[0x277D0AC58];
  v6[1] = v2;
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = MEMORY[0x277CBEC38];
  v6[2] = *MEMORY[0x277D0AC28];
  v7[2] = *MEMORY[0x277CFC8B0];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openSensitiveURL:v1 withOptions:v3];
}

- (void)_updateSatelliteMenuItems
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUISatelliteModuleViewController.m" lineNumber:231 description:@"This must be called on the main thread"];
}

- (id)_offMenuItems
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(CCUISatelliteMonitor *)self->_satelliteMonitor isMessagingServiceAvailable])
  {
    v3 = MEMORY[0x277D750C8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CONTROL_CENTER_SATELLITE_MENU_USE_MESSAGES_VIA_SATELLITE" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__CCUISatelliteModuleViewController__offMenuItems__block_invoke;
    v9[3] = &unk_278382380;
    v9[4] = self;
    v6 = [v3 actionWithTitle:v5 image:0 identifier:@"use messages" handler:v9];

    v10[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_notConnectedMenuItems
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D750C8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTROL_CENTER_SATELLITE_MENU_CONNECT" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__CCUISatelliteModuleViewController__notConnectedMenuItems__block_invoke;
  v17[3] = &unk_278382380;
  v17[4] = self;
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"connect" handler:v17];

  v7 = MEMORY[0x277D750C8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTROL_CENTER_SATELLITE_MENU_SHOW_OPTIONS" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__CCUISatelliteModuleViewController__notConnectedMenuItems__block_invoke_2;
  v16[3] = &unk_278382380;
  v16[4] = self;
  v10 = [v7 actionWithTitle:v9 image:0 identifier:@"show options" handler:v16];

  if ([(CCUISatelliteMonitor *)self->_satelliteMonitor isMessagingServiceAvailable])
  {
    v19[0] = v6;
    v19[1] = v10;
    v11 = MEMORY[0x277CBEA60];
    v12 = v19;
    v13 = 2;
  }

  else
  {
    v18 = v6;
    v11 = MEMORY[0x277CBEA60];
    v12 = &v18;
    v13 = 1;
  }

  v14 = [v11 arrayWithObjects:v12 count:v13];

  return v14;
}

- (id)_connectedMenuItems
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D750C8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTROL_CENTER_SATELLITE_MENU_DISCONNECT" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__CCUISatelliteModuleViewController__connectedMenuItems__block_invoke;
  v17[3] = &unk_278382380;
  v17[4] = self;
  v6 = [v3 actionWithTitle:v5 image:0 identifier:@"disconnect" handler:v17];

  v7 = MEMORY[0x277D750C8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTROL_CENTER_SATELLITE_MENU_SHOW_OPTIONS" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__CCUISatelliteModuleViewController__connectedMenuItems__block_invoke_2;
  v16[3] = &unk_278382380;
  v16[4] = self;
  v10 = [v7 actionWithTitle:v9 image:0 identifier:@"show options" handler:v16];

  if ([(CCUISatelliteMonitor *)self->_satelliteMonitor isMessagingServiceAvailable])
  {
    v19[0] = v6;
    v19[1] = v10;
    v11 = MEMORY[0x277CBEA60];
    v12 = v19;
    v13 = 2;
  }

  else
  {
    v18 = v6;
    v11 = MEMORY[0x277CBEA60];
    v12 = &v18;
    v13 = 1;
  }

  v14 = [v11 arrayWithObjects:v12 count:v13];

  return v14;
}

- (id)_menuItemsForCurrentState
{
  v3 = [(CCUISatelliteMonitor *)self->_satelliteMonitor state];
  switch(v3)
  {
    case 5uLL:
      v4 = [(CCUISatelliteModuleViewController *)self _connectedMenuItems];
      break;
    case 3uLL:
      v4 = [(CCUISatelliteModuleViewController *)self _notConnectedMenuItems];
      break;
    case 2uLL:
      v4 = [(CCUISatelliteModuleViewController *)self _offMenuItems];
      break;
    default:
      v4 = MEMORY[0x277CBEBF8];
      break;
  }

  return v4;
}

- (void)_updateState:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setHidden:0];
    v5 = [(CCUISatelliteModuleViewController *)self _inoperativeForState:a3];
    v6 = [(CCUISatelliteModuleViewController *)self _enabledForState:a3];
    v19 = [(CCUISatelliteModuleViewController *)self _userInteractionEnabledForState:a3];
    v7 = [(CCUISatelliteModuleViewController *)self _glyphStateForState:a3];
    v8 = [(CCUISatelliteModuleViewController *)self _subtitleTextForState:a3];
    v9 = [(CCUISatelliteModuleViewController *)self _useAlternateBackgroundForState:a3];
    [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setHighlighted:0];
    [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setEnabled:1];
    [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:v6];
    v18 = v5;
    v5 ^= 1u;
    [(CCUIButtonModuleViewController *)self setSelected:v6 & v5];
    [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setSelected:v6 & v5];
    [(CCUIButtonModuleViewController *)self setGlyphState:v7];
    [(CCUIButtonModuleViewController *)self setValueText:v8];
    [(CCUIButtonModuleViewController *)self setSelectedValueText:v8];
    [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v8];
    v10 = [(CCUISatelliteModuleViewController *)self _glyphImageForState:a3];
    [(CCUIButtonModuleViewController *)self setGlyphImage:v10];
    [(CCUISatelliteModuleViewController *)self _updateGlyphImageWithState:a3];
    [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setUseAlternateBackground:v9];
    [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setUseAlternateBackground:v9];
    [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setUserInteractionEnabled:v19];
    [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setUserInteractionEnabled:v19];
    v11 = [(CCUISatelliteModuleViewController *)self _hasContextMenuItems];
    v12 = a3 != 1 && v11;
    [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setShowsMenuAsPrimaryAction:v12];
    [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setShowsMenuAffordance:v12];
    [(CCUISatelliteModuleViewController *)self _updateSatelliteMenuItems];
    v13 = [(CCUISatelliteModuleViewController *)self view];
    [v13 setNeedsLayout];

    v14 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(CCUISatelliteModuleViewController *)self _debugDescriptionForState:1];
      *buf = 138544387;
      v21 = v16;
      v22 = 1024;
      v23 = v18 & 1;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = v6;
      v28 = 2113;
      v29 = v8;
      _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "[Satellite] Satellite state updated to %{public}@ [ inoperative: %d enabled: %d useAlternateBackground: %d subtitle: %{private}@ ]", buf, 0x28u);
    }
  }

  else
  {
    v17 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E9F5000, v17, OS_LOG_TYPE_DEFAULT, "[Satellite] Hiding view", buf, 2u);
    }

    [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setHidden:1];
  }
}

- (void)_updateGlyphImageWithState:(unint64_t)a3
{
  v6 = [(CCUISatelliteModuleViewController *)self _glyphImageForState:a3];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v6];
  v4 = [(CCUISatelliteModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [v4 setGlyphImage:v6];
  v5 = [(CCUISatelliteModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [v5 setGlyphImage:v6];
}

- (id)_subtitleTextForState:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_2783823A0[a3 - 1];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  }

  return v5;
}

- (id)_glyphStateForState:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"hidden";
  }

  else
  {
    return off_2783823D0[a3 - 1];
  }
}

- (id)_glyphImageForState:(unint64_t)a3
{
  if (a3 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278382400[a3];
  }

  v4 = [(CCUIButtonModuleViewController *)self contentMetrics];
  v5 = [v4 symbolConfiguration];
  v6 = [MEMORY[0x277D755B8] _systemImageNamed:v3 withConfiguration:v5];
  v7 = [v6 imageFlippedForRightToLeftLayoutDirection];

  return v7;
}

- (void)_buttonTapped
{
  if ([(CCUISatelliteMonitor *)self->_satelliteMonitor state]== 2)
  {

    [(CCUISatelliteModuleViewController *)self _openSOSBuddyApp];
  }
}

- (void)buttonTapped:(id)a3
{
  v4 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "[Satellite] button tapped", v5, 2u);
  }

  [(CCUISatelliteModuleViewController *)self _buttonTapped];
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

@end