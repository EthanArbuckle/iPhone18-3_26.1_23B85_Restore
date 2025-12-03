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
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  _glyphImage = [(CCUIVPNModuleViewController *)self _glyphImage];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:_glyphImage highlightColor:systemBlueColor useLightStyle:1];
  [v5 setUseAutomaticSymbolColors:1];
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__glyphViewForExpandedConnectivityModuleTapped];
  [v5 addGestureRecognizer:v6];
  glyphViewForExpandedConnectivityModule = self->_glyphViewForExpandedConnectivityModule;
  self->_glyphViewForExpandedConnectivityModule = v5;
  v8 = v5;

  [(CCUIButtonModuleViewController *)self setGlyphImage:_glyphImage];
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
  v14 = [objc_alloc(MEMORY[0x277CFC9B0]) initWithGlyphImage:_glyphImage highlightColor:systemBlueColor useLightStyle:1];
  [v14 setUseIndependentAlpha:1];
  [v14 setDynamicLayoutEnabled:1];
  [v14 setUseAutomaticSymbolColors:1];
  [v14 addTarget:self action:sel__buttonViewForCollapsedConnectivityModuleTapped forControlEvents:64];
  buttonViewForCollapsedConnectivityModule = self->_buttonViewForCollapsedConnectivityModule;
  self->_buttonViewForCollapsedConnectivityModule = v14;
  v16 = v14;

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];

  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:systemBlueColor2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIVPNModuleViewController;
  [(CCUIVPNModuleViewController *)&v4 viewWillAppear:appear];
  [(CCUIVPNModuleViewController *)self startObservingStateChangesIfNecessary];
  [(CCUIVPNModuleViewController *)self _updateState];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CCUIVPNModuleViewController;
  [(CCUIVPNModuleViewController *)&v4 viewWillDisappear:disappear];
  [(CCUIVPNModuleViewController *)self stopObservingStateChangesIfNecessary];
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    connectivityManager = [(CCUIVPNModuleViewController *)self connectivityManager];
    [connectivityManager addVPNViewControllerObservingStateChanges:self];
    self->_observingStateChanges = 1;
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    connectivityManager = [(CCUIVPNModuleViewController *)self connectivityManager];
    [connectivityManager removeVPNViewControllerObservingStateChanges:self];
    self->_observingStateChanges = 0;
  }
}

- (BOOL)providesTemplateViewDelegateForExpandedConnectivityModule
{
  delegate = [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule delegate];
  v3 = delegate != 0;

  return v3;
}

- (id)_glyphImage
{
  contentMetrics = [(CCUIButtonModuleViewController *)self contentMetrics];
  symbolConfiguration = [contentMetrics symbolConfiguration];
  if ([(CCUIButtonModuleViewController *)self contentRenderingMode]== 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x277D755D0] configurationWithScale:v5];
  v7 = [symbolConfiguration configurationByApplyingConfiguration:v6];

  v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"network.connected.to.line.below.fill" withConfiguration:v7];
  imageFlippedForRightToLeftLayoutDirection = [v8 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (void)_updateGlyphImages
{
  _glyphImage = [(CCUIVPNModuleViewController *)self _glyphImage];
  [(CCUIButtonModuleViewController *)self setGlyphImage:_glyphImage];
  buttonViewForCollapsedConnectivityModule = [(CCUIVPNModuleViewController *)self buttonViewForCollapsedConnectivityModule];
  [buttonViewForCollapsedConnectivityModule setGlyphImage:_glyphImage];
  glyphViewForExpandedConnectivityModule = [(CCUIVPNModuleViewController *)self glyphViewForExpandedConnectivityModule];
  [glyphViewForExpandedConnectivityModule setGlyphImage:_glyphImage];
}

- (void)_toggleState
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_21E9F5000, a2, OS_LOG_TYPE_ERROR, "[VPN] Error togging VPN: %{public}@", &v2, 0xCu);
}

- (void)_updateState
{
  v24 = *MEMORY[0x277D85DE8];
  connectivityManager = [(CCUIVPNModuleViewController *)self connectivityManager];
  vpnConnectivityManager = [connectivityManager vpnConnectivityManager];
  visibilityStyle = [vpnConnectivityManager visibilityStyle];
  connectivityState = [vpnConnectivityManager connectivityState];
  v7 = connectivityState;
  if (connectivityState > 5)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_278382488[connectivityState];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_28301B138 table:@"ControlCenterUI+SystemModules"];
  }

  [(CCUIButtonModuleViewController *)self setValueText:v10];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v10];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setSubtitle:v10];
  [(CCUIVPNModuleViewController *)self _updateGlyphImages];
  [(CCUIControlTemplateView *)self->_templateViewForExpandedConnectivityModule setEnabled:visibilityStyle != 0];
  [(CCUIRoundButton *)self->_buttonViewForCollapsedConnectivityModule setEnabled:visibilityStyle != 0];
  [(CCUIRoundButton *)self->_glyphViewForExpandedConnectivityModule setEnabled:visibilityStyle != 0];
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
    v16 = [v14 numberWithBool:visibilityStyle == 0];
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