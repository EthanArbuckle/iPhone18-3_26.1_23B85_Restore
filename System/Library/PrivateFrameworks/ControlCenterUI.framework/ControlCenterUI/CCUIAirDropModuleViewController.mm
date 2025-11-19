@interface CCUIAirDropModuleViewController
- (BOOL)_isAirDropRestricted;
- (BOOL)_isEduModeEnabled;
- (CCUIAirDropModuleViewController)init;
- (CCUIConnectivityManager)connectivityManager;
- (id)_everyoneMenuItemTextKey;
- (id)_glyphImage;
- (id)contextMenuPreviewForControlTemplateView:(id)a3;
- (void)_handleButtonTap;
- (void)_updateAirDropMenuItems;
- (void)_updateGlyphImages;
- (void)_updateState;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChangesIfNecessary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CCUIAirDropModuleViewController

- (CCUIAirDropModuleViewController)init
{
  v7.receiver = self;
  v7.super_class = CCUIAirDropModuleViewController;
  v2 = [(CCUIAirDropModuleViewController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentMenuActions = v2->_contentMenuActions;
    v2->_contentMenuActions = v3;

    v5 = +[CCUIConnectivityManager sharedInstance];
    objc_storeWeak(&v2->_connectivityManager, v5);
    v2->_observingStateChanges = 0;
  }

  return v2;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CCUIAirDropModuleViewController;
  [(CCUIButtonModuleViewController *)&v19 viewDidLoad];
  v3 = [(CCUIAirDropModuleViewController *)self _glyphImage];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
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
  [v9 setShowsMenuAsPrimaryAction:1];
  templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
  self->_templateViewForExpandedConnectivityModule = v9;
  v11 = v9;

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTROL_CENTER_STATUS_AIRDROP_NAME" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

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

  v17 = [MEMORY[0x277D75348] systemBlueColor];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:v17];
  v18 = [(CCUIButtonModuleViewController *)self _templateView];
  [v18 setContextMenuDelegate:self];
  [v18 setShowsMenuAsPrimaryAction:1];
  [(CCUIAirDropModuleViewController *)self _updateAirDropMenuItems];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAirDropModuleViewController;
  [(CCUIAirDropModuleViewController *)&v4 viewWillAppear:a3];
  [(CCUIAirDropModuleViewController *)self startObservingStateChangesIfNecessary];
  [(CCUIAirDropModuleViewController *)self _updateState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIAirDropModuleViewController;
  [(CCUIAirDropModuleViewController *)&v4 viewWillDisappear:a3];
  [(CCUIAirDropModuleViewController *)self stopObservingStateChangesIfNecessary];
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    v3 = objc_alloc_init(NSClassFromString(&cfstr_Sfairdropdisco.isa));
    airDropDiscoveryController = self->_airDropDiscoveryController;
    self->_airDropDiscoveryController = v3;

    [(SFAirDropDiscoveryController *)self->_airDropDiscoveryController setDelegate:self];
    [(SFAirDropDiscoveryController *)self->_airDropDiscoveryController setAlertControllerDelegate:self];
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    [v5 registerObserver:self];

    self->_observingStateChanges = 1;
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    [(SFAirDropDiscoveryController *)self->_airDropDiscoveryController setDelegate:0];
    [(SFAirDropDiscoveryController *)self->_airDropDiscoveryController setAlertControllerDelegate:0];
    airDropDiscoveryController = self->_airDropDiscoveryController;
    self->_airDropDiscoveryController = 0;

    v4 = [MEMORY[0x277D262A0] sharedConnection];
    [v4 unregisterObserver:self];

    self->_observingStateChanges = 0;
  }
}

- (id)contextMenuPreviewForControlTemplateView:(id)a3
{
  if (self->_templateViewForExpandedConnectivityModule == a3)
  {
    v5 = 0;
  }

  else
  {
    v3 = [(CCUIAirDropModuleViewController *)self view];
    v4 = [v3 superview];

    v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v4];
  }

  return v5;
}

- (void)_updateAirDropMenuItems
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUIAirDropModuleViewController.m" lineNumber:224 description:@"This must be called on the main thread"];
}

- (id)_glyphImage
{
  v3 = [(CCUIButtonModuleViewController *)self contentMetrics];
  v4 = [v3 symbolConfiguration];
  if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x277D755D0] configurationWithScale:v5];
  v7 = [v4 configurationByApplyingConfiguration:v6];

  v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"airdrop" withConfiguration:v7];
  v9 = [v8 imageFlippedForRightToLeftLayoutDirection];

  return v9;
}

- (void)_updateGlyphImages
{
  v5 = [(CCUIAirDropModuleViewController *)self _glyphImage];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v5];
  v3 = [(CCUIAirDropModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [v3 setGlyphImage:v5];
  v4 = [(CCUIAirDropModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [v4 setGlyphImage:v5];
}

- (void)_handleButtonTap
{
  v3 = [(SFAirDropDiscoveryController *)self->_airDropDiscoveryController discoverableMode]== 0;
  airDropDiscoveryController = self->_airDropDiscoveryController;

  [(SFAirDropDiscoveryController *)airDropDiscoveryController setDiscoverableMode:2 * v3];
}

- (id)_everyoneMenuItemTextKey
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SFAirDropDiscoveryController *)self->_airDropDiscoveryController isTimeLimitedEveryoneMode]& 1) != 0)
  {
    return @"CONTROL_CENTER_AIRDROP_EVERYONE_TIME_LIMIT";
  }

  else
  {
    return @"CONTROL_CENTER_AIRDROP_EVERYONE_ONE_LINE";
  }
}

- (BOOL)_isAirDropRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAirDropAllowed];

  return v3 ^ 1;
}

- (BOOL)_isEduModeEnabled
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 isMultiUser];
  v4 = [v2 currentUser];
  v5 = [v4 userType];

  if (v5 != 1)
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateState
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIAirDropModuleViewController *)self _isAirDropRestricted];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setEnabled:!v3];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setEnabled:!v3];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:!v3];
  v4 = [(SFAirDropDiscoveryController *)self->_airDropDiscoveryController discoverableMode];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = @"CONTROL_CENTER_AIRDROP_RECEIVING_OFF_ONE_LINE";
  if (v4 == 2)
  {
    v7 = @"CONTROL_CENTER_AIRDROP_EVERYONE_ONE_LINE";
  }

  v8 = v4 - 1;
  if (v4 == 1)
  {
    v9 = @"CONTROL_CENTER_AIRDROP_CONTACTS_ONE_LINE";
  }

  else
  {
    v9 = v7;
  }

  v10 = [v5 localizedStringForKey:v9 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  [(CCUIButtonModuleViewController *)self setValueText:v10];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v10];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v10];
  [(CCUIAirDropModuleViewController *)self _updateGlyphImages];
  [(CCUIButtonModuleViewController *)self setSelected:v8 < 2];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setSelected:v8 < 2];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setSelected:v8 < 2];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setShowsMenuAffordance:!v3];
  [(CCUIAirDropModuleViewController *)self _updateAirDropMenuItems];
  v11 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = v11;
    v14 = [v12 numberWithBool:v8 < 2];
    v15 = 138543362;
    v16 = v14;
    _os_log_impl(&dword_21E9F5000, v13, OS_LOG_TYPE_DEFAULT, "[AirDrop Module] State updated to %{public}@", &v15, 0xCu);
  }
}

- (CCUIConnectivityManager)connectivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectivityManager);

  return WeakRetained;
}

@end