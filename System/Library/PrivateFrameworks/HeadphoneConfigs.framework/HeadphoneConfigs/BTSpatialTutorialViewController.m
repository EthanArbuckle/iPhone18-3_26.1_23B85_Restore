@interface BTSpatialTutorialViewController
- (BTSpatialTutorialViewController)initWithDevice:(id)a3;
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
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BTSpatialTutorialViewController

- (BTSpatialTutorialViewController)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BTSpatialTutorialViewController;
  v6 = [(BTSpatialTutorialViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentDevice, a3);
    [(BTSpatialTutorialViewController *)v7 initCommon];
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BTSpatialTutorialViewController;
  [(BTSpatialTutorialViewController *)&v3 loadView];
  [(BTSpatialTutorialViewController *)self setupWelcomeController];
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = BTSpatialTutorialViewController;
  [(BTSpatialTutorialViewController *)&v16 viewDidAppear:1];
  v4 = [MEMORY[0x277CD6028] sharedCommandCenter];
  v5 = [v4 playCommand];
  [v5 setEnabled:1];

  v6 = [MEMORY[0x277CD6028] sharedCommandCenter];
  v7 = [v6 playCommand];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__BTSpatialTutorialViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_2796AE368;
  v15[4] = self;
  v8 = [v7 addTargetWithHandler:v15];

  v9 = [MEMORY[0x277CD6028] sharedCommandCenter];
  v10 = [v9 pauseCommand];
  [v10 setEnabled:1];

  v11 = [MEMORY[0x277CD6028] sharedCommandCenter];
  v12 = [v11 pauseCommand];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__BTSpatialTutorialViewController_viewDidAppear___block_invoke_2;
  v14[3] = &unk_2796AE368;
  v14[4] = self;
  v13 = [v12 addTargetWithHandler:v14];

  if (!self->_mediaSessionStarted)
  {
    [(RMMediaSession *)self->_mediaSession _start];
    self->_mediaSessionStarted = 1;
  }

  [(BTSpatialTutorialViewController *)self checkStatusAndPlay];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BTSpatialTutorialViewController;
  [(BTSpatialTutorialViewController *)&v3 viewWillLayoutSubviews];
  [(BTSpatialTutorialViewController *)self setupConstraints];
}

- (void)initCommon
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MGGetStringAnswer() uppercaseString];
  v5 = [@"SPATIAL_AUDIO_DETAIL_" stringByAppendingString:v4];
  v6 = [v3 localizedStringForKey:v5 value:&stru_286339F58 table:@"DeviceConfig"];

  v7 = objc_alloc(MEMORY[0x277D37698]);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SPATIAL_AUDIO" value:&stru_286339F58 table:@"DeviceConfig"];
  v10 = [v7 initWithTitle:v9 detailText:v6 icon:0 contentLayout:2];
  welcomeController = self->_welcomeController;
  self->_welcomeController = v10;

  v12 = objc_alloc_init(MEMORY[0x277D75A68]);
  stackView = self->_stackView;
  self->_stackView = v12;

  v14 = objc_alloc(MEMORY[0x277D75A08]);
  v15 = MEMORY[0x277CBEA60];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"SPATIAL_TUTORIAL_STEREO_OPTION" value:&stru_286339F58 table:@"DeviceConfig"];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SPATIAL_TUTORIAL_SPATIAL_OPTION" value:&stru_286339F58 table:@"DeviceConfig"];
  v20 = [v15 arrayWithObjects:{v17, v19, 0}];
  v21 = [v14 initWithItems:v20];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v21;

  v23 = objc_alloc_init(MEMORY[0x277D75D18]);
  spacerView = self->_spacerView;
  self->_spacerView = v23;

  v25 = [objc_alloc(MEMORY[0x277D79760]) initWithMode:0];
  spatialTutorialContentView = self->_spatialTutorialContentView;
  self->_spatialTutorialContentView = v25;

  v27 = [(BTSDevice *)self->_currentDevice classicDevice];
  v28 = [v27 productId];

  v29 = [HPSProductUtils getProductSpecificString:v28 descriptionKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING"];
  v30 = [(BTSDevice *)self->_currentDevice classicDevice];
  LODWORD(v17) = [v30 getAACPCapabilityBit:32];

  if (v17)
  {
    v31 = [HPSProductUtils getProductSpecificString:v28 descriptionKey:@"SPATIAL_TUTORIAL_NOT_ON_HEAD_WARNING"];

    v29 = v31;
  }

  v32 = [MEMORY[0x277D75110] alertControllerWithTitle:v29 message:&stru_286339F58 preferredStyle:1];
  alert = self->_alert;
  self->_alert = v32;

  v34 = self->_alert;
  v35 = MEMORY[0x277D750F8];
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"OK" value:&stru_286339F58 table:@"DeviceConfig"];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __45__BTSpatialTutorialViewController_initCommon__block_invoke;
  v53[3] = &unk_2796AD708;
  v53[4] = self;
  v38 = [v35 actionWithTitle:v37 style:0 handler:v53];
  [(UIAlertController *)v34 addAction:v38];

  v39 = objc_opt_new();
  constraints = self->_constraints;
  self->_constraints = v39;

  v41 = objc_opt_new();
  mediaSession = self->_mediaSession;
  self->_mediaSession = v41;

  self->_mediaSessionStarted = 0;
  v43 = [MEMORY[0x277CCAB98] defaultCenter];
  [v43 addObserver:self selector:sel_inEarStatusChangedHandler_ name:*MEMORY[0x277CF3150] object:0];

  v44 = [MEMORY[0x277CCAB98] defaultCenter];
  [v44 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  v45 = [MEMORY[0x277CCAB98] defaultCenter];
  [v45 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v46 = [MEMORY[0x277CCAB98] defaultCenter];
  [v46 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  v47 = [MEMORY[0x277CCAB98] defaultCenter];
  v48 = *MEMORY[0x277CB8068];
  v49 = [MEMORY[0x277CB83F8] sharedInstance];
  [v47 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v48 object:v49];

  v50 = [MEMORY[0x277CCAB98] defaultCenter];
  v51 = *MEMORY[0x277D26D40];
  v52 = [MEMORY[0x277CB83F8] sharedInstance];
  [v50 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v51 object:v52];
}

- (void)setupWelcomeController
{
  v3 = [(BTSpatialTutorialViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(OBWelcomeController *)self->_welcomeController view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(OBWelcomeController *)self->_welcomeController view];
  [v13 setAutoresizingMask:18];

  [(BTSpatialTutorialViewController *)self setupStackView];
  v19 = [MEMORY[0x277D37618] boldButton];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SPATIAL_TUTORIAL_BUTTON_DONE" value:&stru_286339F58 table:@"DeviceConfig"];
  [v19 setTitle:v15 forState:0];

  [v19 addTarget:self action:sel_quitSpatialTutorial_ forControlEvents:64];
  v16 = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [v16 addButton:v19];

  [(BTSpatialTutorialViewController *)self addChildViewController:self->_welcomeController];
  v17 = [(BTSpatialTutorialViewController *)self view];
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
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
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

  v49 = MEMORY[0x277CCAAD0];
  v50 = self->_constraints;

  [v49 activateConstraints:v50];
}

- (void)checkStatusAndPlay
{
  [(BTSpatialTutorialViewController *)self updateInEarState];
  if (self->_budsInEar)
  {
    if (self->_alertShowing)
    {
      alert = self->_alert;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __53__BTSpatialTutorialViewController_checkStatusAndPlay__block_invoke;
      v4[3] = &unk_2796AD618;
      v4[4] = self;
      [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:v4];
    }

    else
    {

      [(BTSpatialTutorialViewController *)self startPlayingContent];
    }
  }

  else if (!self->_alertShowing)
  {

    [(BTSpatialTutorialViewController *)self showAlert];
  }
}

- (void)dismissWelcomeController
{
  [(BTSpatialTutorialViewController *)self stopPlayingContent];
  if (self->_alertShowing)
  {
    alert = self->_alert;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__BTSpatialTutorialViewController_dismissWelcomeController__block_invoke;
    v4[3] = &unk_2796AD618;
    v4[4] = self;
    [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:v4];
  }

  else
  {

    [(BTSpatialTutorialViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_73];
  }
}

- (void)updateInEarState
{
  v7 = 0x300000003;
  v3 = [(BTSpatialTutorialViewController *)self currentDevice];
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
  v5 = [(BTSpatialTutorialViewController *)self currentDevice];
  v6 = [v5 identifier];

  if (v4 == v6)
  {
    [(BTSpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)powerChangedHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CF3248] sharedInstance];
  v6 = [v5 enabled];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 name];
    v9 = v8;
    v10 = "off";
    if (v6)
    {
      v10 = "on";
    }

    v12 = 138412546;
    v13 = v8;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSpatialTutorialViewController *)self dismissWelcomeController];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKey:*MEMORY[0x277CB8080]];
  v5 = [v4 unsignedIntegerValue];

  if (v5 == 1)
  {
    [(BTSpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)handleMediaServerConnectionDied:(id)a3
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Audio session server connection died", v5, 2u);
  }

  [(BTSpatialTutorialViewController *)self dismissWelcomeController];
}

- (void)inEarStatusChangedHandler:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [v4 objectForKeyedSubscript:@"device"];
  v6 = [v5 address];
  v7 = [(BTSpatialTutorialViewController *)self currentDevice];
  v8 = [v7 identifier];

  if (v6 == v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"primaryInEarStatus"];
    v10 = [v4 objectForKeyedSubscript:@"secondaryInEarStatus"];
    v11 = [v9 BOOLValue];
    v12 = v11 | [v10 BOOLValue];
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 1024;
      v22 = (v12 & 1) == 0;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "PrimaryInEar: %@, secondaryInEar : %@. newBudsInEar: %d", buf, 0x1Cu);
    }

    if (v12 & 1 | !self->_alertShowing)
    {
      if (!self->_alertShowing && ((v12 ^ 1) & 1) == 0)
      {
        [(BTSpatialTutorialViewController *)self stopPlayingContent];
        [(BTSpatialTutorialViewController *)self showAlert];
      }
    }

    else
    {
      alert = self->_alert;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__BTSpatialTutorialViewController_inEarStatusChangedHandler___block_invoke;
      v16[3] = &unk_2796AD618;
      v16[4] = self;
      [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:v16];
    }
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Device does not match, cannot handle In Ear Status change", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end