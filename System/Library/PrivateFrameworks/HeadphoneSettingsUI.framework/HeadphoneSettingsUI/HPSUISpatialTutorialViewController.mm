@interface HPSUISpatialTutorialViewController
- (HPSUISpatialTutorialViewController)initWithDevice:(id)a3 content:(id)a4;
- (void)checkStatusAndPlay;
- (void)deviceDisconnectedHandler:(id)a3;
- (void)dismissWelcomeController;
- (void)handleAudioSessionInterruption:(id)a3;
- (void)handleMediaServerConnectionDied:(id)a3;
- (void)inEarStatusChangedHandler:(id)a3;
- (void)initCommon;
- (void)powerChangedHandler:(id)a3;
- (void)segmentControlValueChanged:(id)a3;
- (void)setupConstraints;
- (void)setupStackView;
- (void)setupWelcomeController;
- (void)updateInEarState;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HPSUISpatialTutorialViewController

- (HPSUISpatialTutorialViewController)initWithDevice:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HPSUISpatialTutorialViewController;
  v8 = [(HPSUISpatialTutorialViewController *)&v12 init];
  if (v8)
  {
    v9 = [BTSDeviceClassic deviceWithDevice:v6];
    currentDevice = v8->_currentDevice;
    v8->_currentDevice = v9;

    objc_storeStrong(&v8->_content, a4);
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

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = HPSUISpatialTutorialViewController;
  [(HPSUISpatialTutorialViewController *)&v16 viewDidAppear:1];
  v4 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  v5 = [v4 playCommand];
  [v5 setEnabled:1];

  v6 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  v7 = [v6 playCommand];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__HPSUISpatialTutorialViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_1E7970C20;
  v15[4] = self;
  v8 = [v7 addTargetWithHandler:v15];

  v9 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  v10 = [v9 pauseCommand];
  [v10 setEnabled:1];

  v11 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  v12 = [v11 pauseCommand];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__HPSUISpatialTutorialViewController_viewDidAppear___block_invoke_2;
  v14[3] = &unk_1E7970C20;
  v14[4] = self;
  v13 = [v12 addTargetWithHandler:v14];

  if (!self->_mediaSessionStarted)
  {
    [(RMMediaSession *)self->_mediaSession _start];
    self->_mediaSessionStarted = 1;
  }

  [(HPSUISpatialTutorialViewController *)self checkStatusAndPlay];
}

- (void)viewDidDisappear:(BOOL)a3
{
  [(HPSUISpatialTutorialViewController *)self stopPlayingContent];
  [(RMMediaSession *)self->_mediaSession _stop];
  self->_mediaSessionStarted = 0;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E698F438] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E698F450] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *MEMORY[0x1E69580D8];
  v10 = [MEMORY[0x1E6958460] sharedInstance];
  [v8 removeObserver:self name:v9 object:v10];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = *MEMORY[0x1E69AECB8];
  v13 = [MEMORY[0x1E6958460] sharedInstance];
  [v11 removeObserver:self name:v12 object:v13];

  v14 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  v15 = [v14 playCommand];
  [v15 removeTarget:0];

  v17 = [MEMORY[0x1E69708D8] sharedCommandCenter];
  v16 = [v17 pauseCommand];
  [v16 removeTarget:0];
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
  v4 = [MGGetStringAnswer() uppercaseString];
  v5 = [@"SPATIAL_AUDIO_DETAIL_" stringByAppendingString:v4];
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

  v26 = [(HPSUISpatialTutorialViewController *)self content];
  v27 = [v26 putAccesssoryInEar];

  v28 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v27 message:&stru_1F20FAB50 preferredStyle:1];
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
  v39 = [MEMORY[0x1E696AD88] defaultCenter];
  [v39 addObserver:self selector:sel_inEarStatusChangedHandler_ name:*MEMORY[0x1E698F438] object:0];

  v40 = [MEMORY[0x1E696AD88] defaultCenter];
  [v40 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x1E698F450] object:0];

  v41 = [MEMORY[0x1E696AD88] defaultCenter];
  [v41 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  v42 = [MEMORY[0x1E696AD88] defaultCenter];
  [v42 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  v43 = [MEMORY[0x1E696AD88] defaultCenter];
  v44 = *MEMORY[0x1E69580D8];
  v45 = [MEMORY[0x1E6958460] sharedInstance];
  [v43 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v44 object:v45];

  v46 = [MEMORY[0x1E696AD88] defaultCenter];
  v47 = *MEMORY[0x1E69AECB8];
  v48 = [MEMORY[0x1E6958460] sharedInstance];
  [v46 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v47 object:v48];
}

- (void)setupWelcomeController
{
  v3 = [(HPSUISpatialTutorialViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(OBWelcomeController *)self->_welcomeController view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(OBWelcomeController *)self->_welcomeController view];
  [v13 setAutoresizingMask:18];

  [(HPSUISpatialTutorialViewController *)self setupStackView];
  v19 = [MEMORY[0x1E69B7D00] boldButton];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SPATIAL_TUTORIAL_BUTTON_DONE" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  [v19 setTitle:v15 forState:0];

  [v19 addTarget:self action:sel_quitSpatialTutorial_ forControlEvents:64];
  v16 = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [v16 addButton:v19];

  [(HPSUISpatialTutorialViewController *)self addChildViewController:self->_welcomeController];
  v17 = [(HPSUISpatialTutorialViewController *)self view];
  v18 = [(OBWelcomeController *)self->_welcomeController view];
  [v17 addSubview:v18];
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
  v3 = [(OBWelcomeController *)self->_welcomeController contentView];
  [v3 addSubview:self->_stackView];
}

- (void)setupConstraints
{
  if ([(NSMutableArray *)self->_constraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
    [(NSMutableArray *)self->_constraints removeAllObjects];
  }

  constraints = self->_constraints;
  v4 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
  v5 = [(OBWelcomeController *)self->_welcomeController headerView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [(NSMutableArray *)constraints addObject:v7];

  v8 = self->_constraints;
  v9 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
  v10 = [(OBWelcomeController *)self->_welcomeController headerView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [(NSMutableArray *)v8 addObject:v12];

  v13 = self->_constraints;
  v14 = [(UIView *)self->_spacerView heightAnchor];
  v15 = [(UISegmentedControl *)self->_segmentedControl heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [(NSMutableArray *)v13 addObject:v16];

  v17 = [(OBWelcomeController *)self->_welcomeController headerView];
  [v17 bounds];
  v18 = 400.0;
  if (v19 <= 400.0)
  {
    v20 = [(OBWelcomeController *)self->_welcomeController headerView];
    [v20 bounds];
    v22 = v21;
    v18 = v22;
  }

  v23 = self->_constraints;
  v24 = [(VPSpatialTutorialContentView *)self->_spatialTutorialContentView widthAnchor];
  v25 = [v24 constraintEqualToConstant:v18];
  [(NSMutableArray *)v23 addObject:v25];

  v26 = self->_constraints;
  v27 = [(VPSpatialTutorialContentView *)self->_spatialTutorialContentView heightAnchor];
  v28 = [v27 constraintEqualToConstant:v18];
  [(NSMutableArray *)v26 addObject:v28];

  v29 = self->_constraints;
  v30 = [(UIStackView *)self->_stackView topAnchor];
  v31 = [(OBWelcomeController *)self->_welcomeController contentView];
  v32 = [v31 topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [(NSMutableArray *)v29 addObject:v33];

  v34 = self->_constraints;
  v35 = [(UIStackView *)self->_stackView bottomAnchor];
  v36 = [(OBWelcomeController *)self->_welcomeController contentView];
  v37 = [v36 bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  [(NSMutableArray *)v34 addObject:v38];

  v39 = self->_constraints;
  v40 = [(UIStackView *)self->_stackView leadingAnchor];
  v41 = [(OBWelcomeController *)self->_welcomeController contentView];
  v42 = [v41 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [(NSMutableArray *)v39 addObject:v43];

  v44 = self->_constraints;
  v45 = [(UIStackView *)self->_stackView trailingAnchor];
  v46 = [(OBWelcomeController *)self->_welcomeController contentView];
  v47 = [v46 trailingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
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
  v3 = [(HPSUISpatialTutorialViewController *)self currentDevice];
  v4 = [v3 classicDevice];
  [v4 inEarStatusPrimary:&v7 + 4 secondary:&v7];

  self->_budsInEar = v7 == 0;
  v5 = [(BTSDevice *)self->_currentDevice classicDevice];
  if ([v5 productId] == 8215)
  {
    self->_budsInEar = 1;
  }

  else
  {
    v6 = [(BTSDevice *)self->_currentDevice classicDevice];
    self->_budsInEar |= [v6 productId] == 8229;
  }
}

- (void)segmentControlValueChanged:(id)a3
{
  v4 = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  if (v4)
  {
    if (v4 != 1)
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

- (void)deviceDisconnectedHandler:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 address];
  v5 = [(HPSUISpatialTutorialViewController *)self currentDevice];
  v6 = [v5 identifier];

  if (v4 == v6)
  {
    [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)powerChangedHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698F468] sharedInstance];
  v6 = [v5 enabled];

  v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 name];
    v9 = v8;
    v10 = "off";
    if (v6)
    {
      v10 = "on";
    }

    v11 = 138412546;
    v12 = v8;
    v13 = 2080;
    v14 = v10;
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v11, 0x16u);
  }

  [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKey:*MEMORY[0x1E6958100]];
  v5 = [v4 unsignedIntegerValue];

  if (v5 == 1)
  {
    [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)handleMediaServerConnectionDied:(id)a3
{
  v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Audio session server connection died", v5, 2u);
  }

  [(HPSUISpatialTutorialViewController *)self dismissWelcomeController];
}

- (void)inEarStatusChangedHandler:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v5 address];
  v7 = [(HPSUISpatialTutorialViewController *)self currentDevice];
  v8 = [v7 identifier];

  if (v6 == v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"primaryInEarStatus"];
    v10 = [v4 objectForKeyedSubscript:@"secondaryInEarStatus"];
    v11 = [v9 BOOLValue];
    v12 = v11 | [v10 BOOLValue];
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