@interface CCUIVPNModuleViewController
- (BOOL)providesTemplateViewDelegateForExpandedConnectivityModule;
- (CCUIConnectivityManager)connectivityManager;
- (CCUIVPNModuleViewController)init;
- (id)_glyphImage;
- (void)_toggleState;
- (void)_updateGlyphImages;
- (void)_updateState;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChangesIfNecessary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CCUIVPNModuleViewController

- (CCUIVPNModuleViewController)init
{
  v5.receiver = self;
  v5.super_class = CCUIVPNModuleViewController;
  v2 = [(CCUIVPNModuleViewController *)&v5 init];
  if (v2)
  {
    v3 = +[CCUIConnectivityManager sharedInstance];
    objc_storeWeak(&v2->_connectivityManager, v3);
    v2->_observingStateChanges = 0;
  }

  return v2;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CCUIVPNModuleViewController;
  [(CCUIButtonModuleViewController *)&v18 viewDidLoad];
  v3 = [(CCUIVPNModuleViewController *)self _glyphImage];
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
  templateViewForExpandedConnectivityModule = self->_templateViewForExpandedConnectivityModule;
  self->_templateViewForExpandedConnectivityModule = v9;
  v11 = v9;

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTROL_CENTER_STATUS_VPN_NAME" value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];

  [(CCUIButtonModuleViewController *)self setTitle:v13];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setTitle:v13];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setDelegate:self];
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
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIVPNModuleViewController;
  [(CCUIVPNModuleViewController *)&v4 viewWillAppear:a3];
  [(CCUIVPNModuleViewController *)self startObservingStateChangesIfNecessary];
  [(CCUIVPNModuleViewController *)self _updateState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIVPNModuleViewController;
  [(CCUIVPNModuleViewController *)&v4 viewWillDisappear:a3];
  [(CCUIVPNModuleViewController *)self stopObservingStateChangesIfNecessary];
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    v3 = [(CCUIVPNModuleViewController *)self connectivityManager];
    [v3 addVPNViewControllerObservingStateChanges:self];
    self->_observingStateChanges = 1;
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    v3 = [(CCUIVPNModuleViewController *)self connectivityManager];
    [v3 removeVPNViewControllerObservingStateChanges:self];
    self->_observingStateChanges = 0;
  }
}

- (BOOL)providesTemplateViewDelegateForExpandedConnectivityModule
{
  v2 = [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule delegate];
  v3 = v2 != 0;

  return v3;
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

  v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"network.connected.to.line.below.fill" withConfiguration:v7];
  v9 = [v8 imageFlippedForRightToLeftLayoutDirection];

  return v9;
}

- (void)_updateGlyphImages
{
  v5 = [(CCUIVPNModuleViewController *)self _glyphImage];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v5];
  v3 = [(CCUIVPNModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [v3 setGlyphImage:v5];
  v4 = [(CCUIVPNModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [v4 setGlyphImage:v5];
}

- (void)_toggleState
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E9F5000, a2, OS_LOG_TYPE_ERROR, "[VPN] Error togging VPN: %{public}@", &v2, 0xCu);
}

- (void)_updateState
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIVPNModuleViewController *)self connectivityManager];
  v4 = [v3 vpnConnectivityManager];
  v5 = [v4 visibilityStyle];
  v6 = [v4 connectivityState];
  v7 = v6;
  if (v6 > 5)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_278382488[v6];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  }

  [(CCUIButtonModuleViewController *)self setValueText:v10];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v10];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v10];
  [(CCUIVPNModuleViewController *)self _updateGlyphImages];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setEnabled:v5 != 0];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:v5 != 0];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setEnabled:v5 != 0];
  v12 = v7 == 2 || v7 == 5;
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSelected:0];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setSelected:v12];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setSelected:v12];
  [(CCUIButtonModuleViewController *)self setSelected:v12];
  v13 = *MEMORY[0x277CFC8F8];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithBool:v5 == 0];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    v18 = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "[VPN] Updated VPN control (subtitle: %{public}@, inoperative: %{public}@, enabled: %{public}@)", &v18, 0x20u);
  }
}

- (CCUIConnectivityManager)connectivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectivityManager);

  return WeakRetained;
}

@end