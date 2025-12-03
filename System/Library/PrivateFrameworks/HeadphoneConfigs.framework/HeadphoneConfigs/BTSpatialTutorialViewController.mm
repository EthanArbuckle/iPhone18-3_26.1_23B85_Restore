@interface BTSpatialTutorialViewController
- (BTSpatialTutorialViewController)initWithDevice:(id)device;
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
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BTSpatialTutorialViewController

- (BTSpatialTutorialViewController)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = BTSpatialTutorialViewController;
  v6 = [(BTSpatialTutorialViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentDevice, device);
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

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = BTSpatialTutorialViewController;
  [(BTSpatialTutorialViewController *)&v16 viewDidAppear:1];
  mEMORY[0x277CD6028] = [MEMORY[0x277CD6028] sharedCommandCenter];
  playCommand = [mEMORY[0x277CD6028] playCommand];
  [playCommand setEnabled:1];

  mEMORY[0x277CD6028]2 = [MEMORY[0x277CD6028] sharedCommandCenter];
  playCommand2 = [mEMORY[0x277CD6028]2 playCommand];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__BTSpatialTutorialViewController_viewDidAppear___block_invoke;
  v15[3] = &unk_2796AE368;
  v15[4] = self;
  v8 = [playCommand2 addTargetWithHandler:v15];

  mEMORY[0x277CD6028]3 = [MEMORY[0x277CD6028] sharedCommandCenter];
  pauseCommand = [mEMORY[0x277CD6028]3 pauseCommand];
  [pauseCommand setEnabled:1];

  mEMORY[0x277CD6028]4 = [MEMORY[0x277CD6028] sharedCommandCenter];
  pauseCommand2 = [mEMORY[0x277CD6028]4 pauseCommand];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__BTSpatialTutorialViewController_viewDidAppear___block_invoke_2;
  v14[3] = &unk_2796AE368;
  v14[4] = self;
  v13 = [pauseCommand2 addTargetWithHandler:v14];

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
  uppercaseString = [MGGetStringAnswer() uppercaseString];
  v5 = [@"SPATIAL_AUDIO_DETAIL_" stringByAppendingString:uppercaseString];
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

  classicDevice = [(BTSDevice *)self->_currentDevice classicDevice];
  productId = [classicDevice productId];

  v29 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"SPATIAL_TUTORIAL_OUT_OF_EAR_WARNING"];
  classicDevice2 = [(BTSDevice *)self->_currentDevice classicDevice];
  LODWORD(v17) = [classicDevice2 getAACPCapabilityBit:32];

  if (v17)
  {
    v31 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"SPATIAL_TUTORIAL_NOT_ON_HEAD_WARNING"];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_inEarStatusChangedHandler_ name:*MEMORY[0x277CF3150] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  v48 = *MEMORY[0x277CB8068];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [defaultCenter5 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v48 object:mEMORY[0x277CB83F8]];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  v51 = *MEMORY[0x277D26D40];
  mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
  [defaultCenter6 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v51 object:mEMORY[0x277CB83F8]2];
}

- (void)setupWelcomeController
{
  view = [(BTSpatialTutorialViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(OBWelcomeController *)self->_welcomeController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(OBWelcomeController *)self->_welcomeController view];
  [view3 setAutoresizingMask:18];

  [(BTSpatialTutorialViewController *)self setupStackView];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SPATIAL_TUTORIAL_BUTTON_DONE" value:&stru_286339F58 table:@"DeviceConfig"];
  [boldButton setTitle:v15 forState:0];

  [boldButton addTarget:self action:sel_quitSpatialTutorial_ forControlEvents:64];
  buttonTray = [(OBWelcomeController *)self->_welcomeController buttonTray];
  [buttonTray addButton:boldButton];

  [(BTSpatialTutorialViewController *)self addChildViewController:self->_welcomeController];
  view4 = [(BTSpatialTutorialViewController *)self view];
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
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
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
  currentDevice = [(BTSpatialTutorialViewController *)self currentDevice];
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
  currentDevice = [(BTSpatialTutorialViewController *)self currentDevice];
  identifier = [currentDevice identifier];

  if (address == identifier)
  {
    [(BTSpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)powerChangedHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v9 = name;
    v10 = "off";
    if (enabled)
    {
      v10 = "on";
    }

    v12 = 138412546;
    v13 = name;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSpatialTutorialViewController *)self dismissWelcomeController];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioSessionInterruption:(id)interruption
{
  userInfo = [interruption userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277CB8080]];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    [(BTSpatialTutorialViewController *)self dismissWelcomeController];
  }
}

- (void)handleMediaServerConnectionDied:(id)died
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Audio session server connection died", v5, 2u);
  }

  [(BTSpatialTutorialViewController *)self dismissWelcomeController];
}

- (void)inEarStatusChangedHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  object = [handler object];
  v5 = [object objectForKeyedSubscript:@"device"];
  address = [v5 address];
  currentDevice = [(BTSpatialTutorialViewController *)self currentDevice];
  identifier = [currentDevice identifier];

  if (address == identifier)
  {
    v9 = [object objectForKeyedSubscript:@"primaryInEarStatus"];
    v10 = [object objectForKeyedSubscript:@"secondaryInEarStatus"];
    bOOLValue = [v9 BOOLValue];
    v12 = bOOLValue | [v10 BOOLValue];
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