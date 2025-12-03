@interface HPSUISpatialTutorialViewController
- (HPSUISpatialTutorialViewController)initWithDevice:(id)device content:(id)content;
- (void)checkStatusAndPlay;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)dismissWelcomeController;
- (void)handleAudioSessionInterruption:(id)interruption;
- (void)handleMediaServerConnectionDied:(id)died;
- (void)inEarStatusChangedHandler:(id)handler;
- (void)initCommon;
- (void)powerChangedHandler:(id)handler;
- (void)segmentControlValueChanged:(id)changed;
- (void)setupConstraints;
- (void)setupStackView;
- (void)setupWelcomeController;
- (void)updateInEarState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HPSUISpatialTutorialViewController

- (HPSUISpatialTutorialViewController)initWithDevice:(id)device content:(id)content
{
  deviceCopy = device;
  contentCopy = content;
  v12.receiver = self;
  v12.super_class = HPSUISpatialTutorialViewController;
  v8 = [(HPSUISpatialTutorialViewController *)&v12 init];
  if (v8)
  {
    v9 = [BTSDeviceClassic deviceWithDevice:deviceCopy];
    currentDevice = v8->_currentDevice;
    v8->_currentDevice = v9;

    objc_storeStrong(&v8->_content, content);
    [(HPSUISpatialTutorialViewController *)v8 initCommon];
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HPSUISpatialTutorialViewController;
  [(HPSUISpatialTutorialViewController *)&v3 loadView];
  [(HPSUISpatialTutorialViewController *)self setupWelcomeController];
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = HPSUISpatialTutorialViewController;
  [(HPSUISpatialTutorialViewController *)&v16 viewDidAppear:1];
  mEMORY[0x1E69708D8] = [MEMORY[0x1E69708D8] sharedCommandCenter];
  playCommand = [mEMORY[0x1E69708D8] playCommand];
  [playCommand setEnabled:1];

  mEMORY[0x1E69708D8]2 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  playCommand2 = [mEMORY[0x1E69708D8]2 playCommand];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__HPSUISpatialTutorialViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_1E7970C20;
  v15[4] = self;
  v8 = [playCommand2 addTargetWithHandler:v15];

  mEMORY[0x1E69708D8]3 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  pauseCommand = [mEMORY[0x1E69708D8]3 pauseCommand];
  [pauseCommand setEnabled:1];

  mEMORY[0x1E69708D8]4 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  pauseCommand2 = [mEMORY[0x1E69708D8]4 pauseCommand];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__HPSUISpatialTutorialViewController_viewDidAppear___block_invoke_2;
  v14[3] = &unk_1E7970C20;
  v14[4] = self;
  v13 = [pauseCommand2 addTargetWithHandler:v14];

  if (!self->_mediaSessionStarted)
  {
    [(RMMediaSession *)self->_mediaSession _start];
    self->_mediaSessionStarted = 1;
  }

  [(HPSUISpatialTutorialViewController *)self checkStatusAndPlay];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  [(HPSUISpatialTutorialViewController *)self stopPlayingContent];
  [(RMMediaSession *)self->_mediaSession _stop];
  self->_mediaSessionStarted = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E698F438] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E698F450] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *MEMORY[0x1E69580D8];
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  [defaultCenter5 removeObserver:self name:v9 object:mEMORY[0x1E6958460]];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = *MEMORY[0x1E69AECB8];
  mEMORY[0x1E6958460]2 = [MEMORY[0x1E6958460] sharedInstance];
  [defaultCenter6 removeObserver:self name:v12 object:mEMORY[0x1E6958460]2];

  mEMORY[0x1E69708D8] = [MEMORY[0x1E69708D8] sharedCommandCenter];
  playCommand = [mEMORY[0x1E69708D8] playCommand];
  [playCommand removeTarget:0];

  mEMORY[0x1E69708D8]2 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  pauseCommand = [mEMORY[0x1E69708D8]2 pauseCommand];
  [pauseCommand removeTarget:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HPSUISpatialTutorialViewController;
  [(HPSUISpatialTutorialViewController *)&v3 viewWillLayoutSubviews];
  [(HPSUISpatialTutorialViewController *)self setupConstraints];
}

- (void)initCommon
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  uppercaseString = [MGGetStringAnswer() uppercaseString];
  v5 = [@"SPATIAL_AUDIO_DETAIL_" stringByAppendingString:uppercaseString];
  v49 = [v3 localizedStringForKey:v5 value:&stru_1F20FAB50 table:@"DeviceConfig"];

  v6 = objc_alloc(MEMORY[0x1E69B7D70]);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SPATIAL_AUDIO" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  v9 = [v6 initWithTitle:v8 detailText:v49 icon:0 contentLayout:2];
  welcomeController = self->_welcomeController;
  self->_welcomeController = v9;

  v11 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  stackView = self->_stackView;
  self->_stackView = v11;

  v13 = objc_alloc(MEMORY[0x1E69DCF38]);
  v14 = MEMORY[0x1E695DEC8];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SPATIAL_TUTORIAL_STEREO_OPTION" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"SPATIAL_TUTORIAL_SPATIAL_OPTION" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  v19 = [v14 arrayWithObjects:{v16, v18, 0}];
  v20 = [v13 initWithItems:v19];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v20;

  v22 = objc_alloc_init(MEMORY[0x1E69DD250]);
  spacerView = self->_spacerView;
  self->_spacerView = v22;

  v24 = [objc_alloc(MEMORY[0x1E69E0540]) initWithMode:0];
  spatialTutorialContentView = self->_spatialTutorialContentView;
  self->_spatialTutorialContentView = v24;

  content = [(HPSUISpatialTutorialViewController *)self content];
  putAccesssoryInEar = [content putAccesssoryInEar];

  v28 = [MEMORY[0x1E69DC650] alertControllerWithTitle:putAccesssoryInEar message:&stru_1F20FAB50 preferredStyle:1];
  alert = self->_alert;
  self->_alert = v28;

  v30 = self->_alert;
  v31 = MEMORY[0x1E69DC648];
  v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"OK" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __48__HPSUISpatialTutorialViewController_initCommon__block_invoke;
  v50[3] = &unk_1E79704E0;
  v50[4] = self;
  v34 = [v31 actionWithTitle:v33 style:0 handler:v50];
  [(UIAlertController *)v30 addAction:v34];

  v35 = objc_opt_new();
  constraints = self->_constraints;
  self->_constraints = v35;

  v37 = objc_opt_new();
  mediaSession = self->_mediaSession;
  self->_mediaSession = v37;

  self->_mediaSessionStarted = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_inEarStatusChangedHandler_ name:*MEMORY[0x1E698F438] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x1E698F450] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  v44 = *MEMORY[0x1E69580D8];
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  [defaultCenter5 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v44 object:mEMORY[0x1E6958460]];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  v47 = *MEMORY[0x1E69AECB8];
  mEMORY[0x1E6958460]2 = [MEMORY[0x1E6958460] sharedInstance];
  [defaultCenter6 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v47 object:mEMORY[0x1E6958460]2];
}

- (void)setupWelcomeController
{
  view = [(HPSUISpatialTutorialViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(OBWelcomeController *)self->_welcomeController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(OBWelcomeController *)self->_welcomeController view];
  [view3 setAutoresizingMask:18];

  [(HPSUISpatialTutorialViewController *)self setupStackView];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SPATIAL_TUTORIAL_BUTTON_DONE" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  [boldButton setTitle:v15 forState:0];

  [boldButton addTarget:self action:sel_quitSpatialTutorial_ forControlEvents:64];
  buttonTray = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [buttonTray addButton:boldButton];

  [(HPSUISpatialTutorialViewController *)self addChildViewController:self->_welcomeController];
  view4 = [(HPSUISpatialTutorialViewController *)self view];
  view5 = [(OBWelcomeController *)self->_welcomeController view];
  [view4 addSubview:view5];
}

- (void)setupStackView
{
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setDistribution:3];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel_segmentControlValueChanged_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VPSpatialTutorialContentView *)self->_spatialTutorialContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_segmentedControl];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_spacerView];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_spatialTutorialContentView];
  contentView = [(OBWelcomeController *)self->_welcomeController contentView];
  [contentView addSubview:self->_stackView];
}

- (void)setupConstraints
{
  if ([(NSMutableArray *)self->_constraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
    [(NSMutableArray *)self->_constraints removeAllObjects];
  }

  constraints = self->_constraints;
  leadingAnchor = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
  headerView = [(OBWelcomeController *)self->_welcomeController headerView];
  leadingAnchor2 = [headerView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(NSMutableArray *)constraints addObject:v7];

  v8 = self->_constraints;
  trailingAnchor = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
  headerView2 = [(OBWelcomeController *)self->_welcomeController headerView];
  trailingAnchor2 = [headerView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(NSMutableArray *)v8 addObject:v12];

  v13 = self->_constraints;
  heightAnchor = [(UIView *)self->_spacerView heightAnchor];
  heightAnchor2 = [(UISegmentedControl *)self->_segmentedControl heightAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [(NSMutableArray *)v13 addObject:v16];

  headerView3 = [(OBWelcomeController *)self->_welcomeController headerView];
  [headerView3 bounds];
  v18 = 400.0;
  if (v19 <= 400.0)
  {
    headerView4 = [(OBWelcomeController *)self->_welcomeController headerView];
    [headerView4 bounds];
    v22 = v21;
    v18 = v22;
  }

  v23 = self->_constraints;
  widthAnchor = [(VPSpatialTutorialContentView *)self->_spatialTutorialContentView widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:v18];
  [(NSMutableArray *)v23 addObject:v25];

  v26 = self->_constraints;
  heightAnchor3 = [(VPSpatialTutorialContentView *)self->_spatialTutorialContentView heightAnchor];
  v28 = [heightAnchor3 constraintEqualToConstant:v18];
  [(NSMutableArray *)v26 addObject:v28];

  v29 = self->_constraints;
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  contentView = [(OBWelcomeController *)self->_welcomeController contentView];
  topAnchor2 = [contentView topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(NSMutableArray *)v29 addObject:v33];

  v34 = self->_constraints;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  contentView2 = [(OBWelcomeController *)self->_welcomeController contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(NSMutableArray *)v34 addObject:v38];

  v39 = self->_constraints;
  leadingAnchor3 = [(UIStackView *)self->_stackView leadingAnchor];
  contentView3 = [(OBWelcomeController *)self->_welcomeController contentView];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [(NSMutableArray *)v39 addObject:v43];

  v44 = self->_constraints;
  trailingAnchor3 = [(UIStackView *)self->_stackView trailingAnchor];
  contentView4 = [(OBWelcomeController *)self->_welcomeController contentView];
  trailingAnchor4 = [contentView4 trailingAnchor];
  v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [(NSMutableArray *)v44 addObject:v48];

  v49 = MEMORY[0x1E696ACD8];
  v50 = self->_constraints;

  [v49 activateConstraints:v50];
}

- (void)checkStatusAndPlay
{
  [(HPSUISpatialTutorialViewController *)self updateInEarState];
  if (self->_budsInEar)
  {
    if (self->_alertShowing)
    {
      alert = self->_alert;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __56__HPSUISpatialTutorialViewController_checkStatusAndPlay__block_invoke;
      v4[3] = &unk_1E7970208;
      v4[4] = self;
      [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:v4];
    }

    else
    {

      [(HPSUISpatialTutorialViewController *)self startPlayingContent];
    }
  }

  else if (!self->_alertShowing)
  {

    [(HPSUISpatialTutorialViewController *)self showAlert];
  }
}

- (void)dismissWelcomeController
{
  [(HPSUISpatialTutorialViewController *)self stopPlayingContent];
  if (self->_alertShowing)
  {
    alert = self->_alert;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__HPSUISpatialTutorialViewController_dismissWelcomeController__block_invoke;
    v4[3] = &unk_1E7970208;
    v4[4] = self;
    [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:v4];
  }

  else
  {

    [(HPSUISpatialTutorialViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_352];
  }
}

- (void)updateInEarState
{
  v7 = 0x300000003;
  currentDevice = [(HPSUISpatialTutorialViewController *)self currentDevice];
  classicDevice = [currentDevice classicDevice];
  [classicDevice inEarStatusPrimary:&v7 + 4 secondary:&v7];

  self->_budsInEar = v7 == 0;
  classicDevice2 = [(BTSDevice *)self->_currentDevice classicDevice];
  if ([classicDevice2 productId] == 8215)
  {
    self->_budsInEar = 1;
  }

  else
  {
    classicDevice3 = [(BTSDevice *)self->_currentDevice classicDevice];
    self->_budsInEar |= [classicDevice3 productId] == 8229;
  }
}

- (void)segmentControlValueChanged:(id)changed
{
  selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  if (selectedSegmentIndex)
  {
    if (selectedSegmentIndex != 1)
    {
      return;
    }

    [(RMMediaSession *)self->_mediaSession _resetTrackingForAllClients];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  spatialTutorialContentView = self->_spatialTutorialContentView;

  [(VPSpatialTutorialContentView *)spatialTutorialContentView setMode:v5];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  currentDevice = [(HPSUISpatialTutorialViewController *)self currentDevice];
  identifier = [currentDevice identifier];

  if (address == identifier)
  {
    [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)powerChangedHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  enabled = [mEMORY[0x1E698F468] enabled];

  v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v9 = name;
    v10 = "off";
    if (enabled)
    {
      v10 = "on";
    }

    v11 = 138412546;
    v12 = name;
    v13 = 2080;
    v14 = v10;
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v11, 0x16u);
  }

  [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
}

- (void)handleAudioSessionInterruption:(id)interruption
{
  userInfo = [interruption userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E6958100]];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)handleMediaServerConnectionDied:(id)died
{
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Audio session server connection died", v5, 2u);
  }

  [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
}

- (void)inEarStatusChangedHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  object = [handler object];
  v5 = [object objectForKeyedSubscript:@"device"];
  address = [v5 address];
  currentDevice = [(HPSUISpatialTutorialViewController *)self currentDevice];
  identifier = [currentDevice identifier];

  if (address == identifier)
  {
    v9 = [object objectForKeyedSubscript:@"primaryInEarStatus"];
    v10 = [object objectForKeyedSubscript:@"secondaryInEarStatus"];
    bOOLValue = [v9 BOOLValue];
    v12 = bOOLValue | [v10 BOOLValue];
    v13 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 1024;
      v21 = (v12 & 1) == 0;
      _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "PrimaryInEar: %@, secondaryInEar : %@. newBudsInEar: %d", buf, 0x1Cu);
    }

    if (v12 & 1 | !self->_alertShowing)
    {
      if (!self->_alertShowing && ((v12 ^ 1) & 1) == 0)
      {
        [(HPSUISpatialTutorialViewController *)self stopPlayingContent];
        [(HPSUISpatialTutorialViewController *)self showAlert];
      }
    }

    else
    {
      alert = self->_alert;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__HPSUISpatialTutorialViewController_inEarStatusChangedHandler___block_invoke;
      v15[3] = &unk_1E7970208;
      v15[4] = self;
      [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:v15];
    }
  }

  else
  {
    v9 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC1C3000, v9, OS_LOG_TYPE_DEFAULT, "Device does not match, cannot handle In Ear Status change", buf, 2u);
    }
  }
}

@end