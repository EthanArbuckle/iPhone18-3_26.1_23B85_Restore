@interface BTSFitTestController
- (BOOL)isCallActive;
- (BOOL)isDebugModeEnabled;
- (BOOL)isiPad;
- (BTSFitTestController)initWithDevice:(id)a3;
- (float)getConfidenceThreshold;
- (float)getSealThreshold;
- (id)getImageFileName:(unsigned int)a3 forSide:(BOOL)a4;
- (void)callCompletionHandler;
- (void)cleanupAudio;
- (void)copyToClipboard;
- (void)dealloc;
- (void)deviceDisconnectedHandler:(id)a3;
- (void)dismissFitTest;
- (void)fitTestStopped;
- (void)handleAudioSessionInterruption:(id)a3;
- (void)handleCallIsActiveDidChangeNotification:(id)a3;
- (void)handleMediaServerConnectionDied:(id)a3;
- (void)inEarStatusChanged:(id)a3;
- (void)loadView;
- (void)powerChangedHandler:(id)a3;
- (void)removeDoneButton;
- (void)resetVolume;
- (void)sealValueChanged:(id)a3;
- (void)setCancelAction;
- (void)setCompletionHandler:(id)a3;
- (void)setupConstraints;
- (void)setupFitTestContentView;
- (void)startFitTest;
- (void)updateFitTestActiveState;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BTSFitTestController

- (BTSFitTestController)initWithDevice:(id)a3
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    v109 = v5;
    v112.receiver = self;
    v112.super_class = BTSFitTestController;
    self = [(BTSFitTestController *)&v112 init];
    objc_storeStrong(&self->currentDevice, a3);
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    fitTestContentView = self->_fitTestContentView;
    self->_fitTestContentView = v6;

    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackViewImages = self->_stackViewImages;
    self->_stackViewImages = v8;

    v10 = objc_alloc_init(MEMORY[0x277D26E58]);
    avSystemController = self->_avSystemController;
    self->_avSystemController = v10;

    self->_testActive = 0;
    self->_initialVolume = 0.0;
    self->_volumeModified = 0;
    v12 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v13 = [v12 getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

    if ((v13 & 1) == 0)
    {
      v14 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [BTSFitTestController initWithDevice:];
      }
    }

    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      *buf = 134217984;
      *v115 = initialVolume;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Fit Test: Volume before fit test : %0.9f", buf, 0xCu);
    }

    v17 = objc_alloc(MEMORY[0x277D75D18]);
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
    v22 = [v17 initWithFrame:{*MEMORY[0x277CBF3A0], v19, v20, v21}];
    leftBudLabel = self->_leftBudLabel;
    self->_leftBudLabel = v22;

    v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v18, v19, v20, v21}];
    rightBudLabel = self->_rightBudLabel;
    self->_rightBudLabel = v24;

    v26 = objc_alloc(MEMORY[0x277D755E8]);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"left.circle.fill"];
    v28 = [MEMORY[0x277D75348] systemGrayColor];
    v29 = [v27 imageWithTintColor:v28 renderingMode:1];
    v30 = [v26 initWithImage:v29];
    leftBudLabelImageView = self->_leftBudLabelImageView;
    self->_leftBudLabelImageView = v30;

    v32 = objc_alloc(MEMORY[0x277D755E8]);
    v33 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
    v34 = [MEMORY[0x277D75348] systemGrayColor];
    v35 = [v33 imageWithTintColor:v34 renderingMode:1];
    v36 = [v32 initWithImage:v35];
    rightBudLabelImageView = self->_rightBudLabelImageView;
    self->_rightBudLabelImageView = v36;

    [(UIView *)self->_leftBudLabel setSize:18.0, 18.0];
    [(UIView *)self->_leftBudLabel _setContinuousCornerRadius:9.0];
    v38 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_leftBudLabel setBackgroundColor:v38];

    [(UIView *)self->_rightBudLabel setSize:18.0, 18.0];
    [(UIView *)self->_rightBudLabel _setContinuousCornerRadius:9.0];
    v39 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_rightBudLabel setBackgroundColor:v39];

    [(UIView *)self->_leftBudLabel addSubview:self->_leftBudLabelImageView];
    [(UIView *)self->_rightBudLabel addSubview:self->_rightBudLabelImageView];
    v40 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v18, v19, v20, v21}];
    leftBudResultLabel = self->_leftBudResultLabel;
    self->_leftBudResultLabel = v40;

    v42 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v18, v19, v20, v21}];
    rightBudResultLabel = self->_rightBudResultLabel;
    self->_rightBudResultLabel = v42;

    v44 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v18, v19, v20, v21}];
    resultDetailLabel = self->_resultDetailLabel;
    self->_resultDetailLabel = v44;

    [(UILabel *)self->_leftBudResultLabel setText:&stru_286339F58];
    v46 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_leftBudResultLabel setTextColor:v46];

    [(UILabel *)self->_leftBudResultLabel setTextAlignment:1];
    [(UILabel *)self->_leftBudResultLabel setNumberOfLines:0];
    [(UILabel *)self->_leftBudResultLabel setLineBreakMode:0];
    v47 = *MEMORY[0x277D76918];
    v48 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_leftBudResultLabel setFont:v48];

    [(UILabel *)self->_leftBudResultLabel setAlpha:1.0];
    [(UILabel *)self->_rightBudResultLabel setText:&stru_286339F58];
    v49 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_rightBudResultLabel setTextColor:v49];

    [(UILabel *)self->_rightBudResultLabel setTextAlignment:1];
    [(UILabel *)self->_rightBudResultLabel setNumberOfLines:0];
    [(UILabel *)self->_rightBudResultLabel setLineBreakMode:0];
    v50 = [MEMORY[0x277D74300] preferredFontForTextStyle:v47];
    [(UILabel *)self->_rightBudResultLabel setFont:v50];

    [(UILabel *)self->_rightBudResultLabel setAlpha:1.0];
    [(UILabel *)self->_resultDetailLabel setText:&stru_286339F58];
    v51 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_resultDetailLabel setTextColor:v51];

    [(UILabel *)self->_resultDetailLabel setTextAlignment:1];
    [(UILabel *)self->_resultDetailLabel setNumberOfLines:0];
    [(UILabel *)self->_resultDetailLabel setLineBreakMode:0];
    v52 = [MEMORY[0x277D74300] preferredFontForTextStyle:v47];
    [(UILabel *)self->_resultDetailLabel setFont:v52];

    [(UILabel *)self->_resultDetailLabel setAlpha:1.0];
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    if (self->_darkMode)
    {
      v54 = "dark";
    }

    else
    {
      v54 = "light";
    }

    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"FitTest-Left-%s", v54];
    if (self->_darkMode)
    {
      v56 = "dark";
    }

    else
    {
      v56 = "light";
    }

    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"FitTest-Right-%s", v56];
    if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
    {
      *buf = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:buf];
      v58 = [(BTSFitTestController *)self getImageFileName:*buf forSide:0];

      v59 = [(BTSFitTestController *)self getImageFileName:*buf forSide:1];

      v57 = v59;
      v55 = v58;
    }

    if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
    {
      *buf = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:buf];
      v60 = MEMORY[0x277CCACA8];
      v61 = [(BTSFitTestController *)self getImageFileName:*buf forSide:0];
      v62 = [v60 stringWithFormat:@"B494b-%@", v61];

      v63 = MEMORY[0x277CCACA8];
      v64 = [(BTSFitTestController *)self getImageFileName:*buf forSide:1];
      v65 = [v63 stringWithFormat:@"B494b-%@", v64];

      v57 = v65;
      v55 = v62;
    }

    if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
    {
      *buf = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:buf];
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"B498-Left-FitTest-CL%d", *buf];

      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"B498-Right-FitTest-CL%d", *buf];

      v68 = v66;
    }

    else
    {
      v68 = v55;
      v67 = v57;
    }

    v69 = MEMORY[0x277D755B8];
    v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v108 = v68;
    v71 = [v69 imageNamed:v68 inBundle:v70 compatibleWithTraitCollection:0];

    v107 = v71;
    v72 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v71];
    leftImView = self->_leftImView;
    self->_leftImView = v72;

    v74 = MEMORY[0x277D755B8];
    v75 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v76 = [v74 imageNamed:v67 inBundle:v75 compatibleWithTraitCollection:0];

    v77 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v76];
    rightImView = self->_rightImView;
    self->_rightImView = v77;

    v79 = [(BTSFitTestController *)self traitCollection];
    self->_darkMode = [v79 userInterfaceStyle] == 2;

    if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
    {
      v80 = [MEMORY[0x277D755E8] _headphoneGetAssetsDictionary:{-[BluetoothDevice productId](self->currentDevice, "productId")}];
      v81 = [(BluetoothDevice *)self->currentDevice productId];
      v111 = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:&v111];
      v82 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        darkMode = self->_darkMode;
        *buf = 67109632;
        *v115 = v81;
        *&v115[4] = 1024;
        *&v115[6] = darkMode;
        v116 = 1024;
        v117 = v111;
        _os_log_impl(&dword_251143000, v82, OS_LOG_TYPE_DEFAULT, "Initialized filter paramters: pid - %d, darkMode - %d, deviceColor - %d", buf, 0x14u);
      }

      [(UIImageView *)self->_leftImView _headphoneApplyFilters:v80 pid:v81 darkMode:self->_darkMode deviceColor:v111];
      [(UIImageView *)self->_rightImView _headphoneApplyFilters:v80 pid:v81 darkMode:self->_darkMode deviceColor:v111];
    }

    v84 = [MEMORY[0x277CCAB98] defaultCenter];
    [v84 addObserver:self selector:sel_inEarStatusChanged_ name:*MEMORY[0x277CF3150] object:0];

    v85 = [MEMORY[0x277CCAB98] defaultCenter];
    [v85 addObserver:self selector:sel_sealValueChanged_ name:*MEMORY[0x277CF3158] object:0];

    v86 = [MEMORY[0x277CCAB98] defaultCenter];
    [v86 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

    v87 = [MEMORY[0x277CCAB98] defaultCenter];
    [v87 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

    v88 = [MEMORY[0x277CCAB98] defaultCenter];
    [v88 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    v89 = [MEMORY[0x277CCAB98] defaultCenter];
    [v89 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    v90 = [MEMORY[0x277CCAB98] defaultCenter];
    v91 = *MEMORY[0x277CB8068];
    v92 = [MEMORY[0x277CB83F8] sharedInstance];
    [v90 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v91 object:v92];

    v93 = [MEMORY[0x277CCAB98] defaultCenter];
    v94 = *MEMORY[0x277D26D40];
    v95 = [MEMORY[0x277CB83F8] sharedInstance];
    [v93 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v94 object:v95];

    v96 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v97 = MEMORY[0x277D26B50];
    v113 = *MEMORY[0x277D26B50];
    v98 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
    v99 = *MEMORY[0x277D26DD0];
    v110 = 0;
    LOBYTE(v95) = [v96 setAttribute:v98 forKey:v99 error:&v110];
    v100 = v110;

    v101 = sharedBluetoothSettingsLogComponent();
    v102 = v101;
    if (v95)
    {
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v102, OS_LOG_TYPE_INFO, "Fit Test: Successfully set AVSC attribute. Register listener for Call Active notification", buf, 2u);
      }

      v102 = [MEMORY[0x277CCAB98] defaultCenter];
      [v102 addObserver:self selector:sel_handleCallIsActiveDidChangeNotification_ name:*v97 object:0];
    }

    else if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      [BTSFitTestController initWithDevice:];
    }

    v103 = objc_alloc_init(HPSDeviceAnalytics);
    deviceAnalytics = self->_deviceAnalytics;
    self->_deviceAnalytics = v103;

    v5 = v109;
  }

  v105 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  fitTestController = self->_fitTestController;
  self->_fitTestController = 0;

  playButton = self->_playButton;
  self->_playButton = 0;

  avSystemController = self->_avSystemController;
  self->_avSystemController = 0;

  player = self->_player;
  self->_player = 0;

  fitTestContentView = self->_fitTestContentView;
  self->_fitTestContentView = 0;

  stackViewImages = self->_stackViewImages;
  self->_stackViewImages = 0;

  leftBudLabel = self->_leftBudLabel;
  self->_leftBudLabel = 0;

  leftBudLabelImageView = self->_leftBudLabelImageView;
  self->_leftBudLabelImageView = 0;

  rightBudLabelImageView = self->_rightBudLabelImageView;
  self->_rightBudLabelImageView = 0;

  rightBudLabel = self->_rightBudLabel;
  self->_rightBudLabel = 0;

  leftImView = self->_leftImView;
  self->_leftImView = 0;

  rightImView = self->_rightImView;
  self->_rightImView = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v17.receiver = self;
  v17.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v17 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v6 viewDidLoad];
  v3 = [(BTSFitTestController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(BTSFitTestController *)self view];
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [(UIView *)self->_fitTestContentView sizeToFit];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v4 viewWillLayoutSubviews];
  [(BTSFitTestController *)self setupConstraints];
  v3 = [(BTSFitTestController *)self view];
  [v3 layoutIfNeeded];
}

- (void)loadView
{
  v36.receiver = self;
  v36.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v36 loadView];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FIT_TEST_INIT_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];

  if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v6 = v8;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v6 = v10;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

    v6 = v12;
  }

  v13 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v6 icon:0 contentLayout:2];
  fitTestController = self->_fitTestController;
  self->_fitTestController = v13;

  v15 = [(BTSFitTestController *)self view];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(OBWelcomeController *)self->_fitTestController view];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [(OBWelcomeController *)self->_fitTestController view];
  [v25 setAutoresizingMask:18];

  [(BTSFitTestController *)self setupFitTestContentView];
  v26 = [MEMORY[0x277D37618] boldButton];
  playButton = self->_playButton;
  self->_playButton = v26;

  [(OBTrayButton *)self->_playButton addTarget:self action:sel_startFitTest forControlEvents:64];
  v28 = self->_playButton;
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill"];
  [(OBTrayButton *)v28 setImage:v29 forState:0];

  [(BTSFitTestController *)self updateFitTestActiveState];
  v30 = [(OBWelcomeController *)self->_fitTestController buttonTray];
  [v30 addButton:self->_playButton];

  if ([(BTSFitTestController *)self isDebugModeEnabled])
  {
    v31 = [MEMORY[0x277D37650] linkButton];
    debugCopyResultsButton = self->_debugCopyResultsButton;
    self->_debugCopyResultsButton = v31;

    [(OBLinkTrayButton *)self->_debugCopyResultsButton setTitle:@"Copy Results" forState:0];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setClipsToBounds:1];
    v33 = [(OBLinkTrayButton *)self->_debugCopyResultsButton layer];
    [v33 setMasksToBounds:1];

    [(OBLinkTrayButton *)self->_debugCopyResultsButton addTarget:self action:sel_copyToClipboard forControlEvents:64];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setUserInteractionEnabled:1];
  }

  [(BTSFitTestController *)self addChildViewController:self->_fitTestController];
  v34 = [(BTSFitTestController *)self view];
  v35 = [(OBWelcomeController *)self->_fitTestController view];
  [v34 addSubview:v35];
}

- (void)copyToClipboard
{
  v4 = [MEMORY[0x277D75810] generalPasteboard];
  v3 = [(UILabel *)self->_resultDetailLabel text];
  [v4 setString:v3];
}

- (void)setupFitTestContentView
{
  [(UIStackView *)self->_stackViewImages setAxis:0];
  [(UIStackView *)self->_stackViewImages setAlignment:3];
  [(UIStackView *)self->_stackViewImages setDistribution:2];
  [(UIStackView *)self->_stackViewImages setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackViewImages setSemanticContentAttribute:3];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(UIImageView *)self->_leftBudLabelImageView setFrame:*MEMORY[0x277CBF3A0], v4, 22.0, 22.0];
  [(UIView *)self->_leftBudLabel center];
  [(UIImageView *)self->_leftBudLabelImageView setCenter:?];
  [(UIImageView *)self->_rightBudLabelImageView setFrame:v3, v4, 22.0, 22.0];
  [(UIView *)self->_rightBudLabel center];
  [(UIImageView *)self->_rightBudLabelImageView setCenter:?];
  [(UIImageView *)self->_leftImView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_rightImView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_leftBudLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_rightBudLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_leftBudResultLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_rightBudResultLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_resultDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1148846080;
  [(UILabel *)self->_leftBudResultLabel setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UILabel *)self->_rightBudResultLabel setContentHuggingPriority:1 forAxis:v6];
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  v7 = [v10 widthAnchor];
  v8 = [v7 constraintEqualToConstant:40.0];
  [v8 setActive:1];

  [(UIStackView *)self->_stackViewImages addArrangedSubview:self->_leftImView];
  [(UIStackView *)self->_stackViewImages addArrangedSubview:v10];
  [(UIStackView *)self->_stackViewImages addArrangedSubview:self->_rightImView];
  [(UIView *)self->_fitTestContentView addSubview:self->_leftBudLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_rightBudLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_leftBudResultLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_rightBudResultLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_resultDetailLabel];
  [(UIView *)self->_fitTestContentView addSubview:self->_stackViewImages];
  [(UIView *)self->_fitTestContentView bringSubviewToFront:self->_leftBudLabel];
  [(UIView *)self->_fitTestContentView bringSubviewToFront:self->_rightBudLabel];
  v9 = [(OBWelcomeController *)self->_fitTestController contentView];
  [v9 addSubview:self->_fitTestContentView];
}

- (BOOL)isiPad
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (void)setupConstraints
{
  v97 = objc_opt_new();
  v3 = [(UIView *)self->_fitTestContentView topAnchor];
  v4 = [(OBWelcomeController *)self->_fitTestController contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v97 addObject:v6];

  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 preferredContentSizeCategory];

  v96 = v8;
  v9 = ([v8 isEqualToString:*MEMORY[0x277D76858]] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D76840]) & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D76838]);
  v10 = [(BTSFitTestController *)self view];
  [v10 bounds];
  v12 = v11;

  if ([(BTSFitTestController *)self isSmallScreenDevice])
  {
    v13 = [(BTSFitTestController *)self view];
    [v13 bounds];
    v15 = v14 * 0.35;
  }

  else
  {
    v15 = v12 * 0.3;
  }

  if ([(BTSFitTestController *)self isiPad])
  {
    v16 = [(UIStackView *)self->_stackViewImages topAnchor];
    v17 = [(OBWelcomeController *)self->_fitTestController headerView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:35.0];
  }

  else
  {
    v20 = [(BTSFitTestController *)self view];
    [v20 size];
    v22 = v21;
    v23 = [(BTSFitTestController *)self view];
    [v23 size];
    v25 = v24;

    v16 = [(UIStackView *)self->_stackViewImages topAnchor];
    fitTestController = self->_fitTestController;
    if (v22 <= v25)
    {
      v17 = [(OBWelcomeController *)fitTestController headerView];
      v18 = [v17 topAnchor];
      v27 = v15;
      [v16 constraintEqualToAnchor:v18 constant:v27];
    }

    else
    {
      v17 = [(OBWelcomeController *)fitTestController contentView];
      v18 = [v17 topAnchor];
      [v16 constraintEqualToAnchor:v18];
    }
    v19 = ;
  }

  topSpacerConstraint = self->_topSpacerConstraint;
  self->_topSpacerConstraint = v19;

  v29 = [(BTSFitTestController *)self traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  if ((v9 | UIContentSizeCategoryIsAccessibilityCategory(v30)))
  {
  }

  else
  {
    v31 = isPreferredLanguageEnglish();

    if (v31)
    {
      v32 = [(OBWelcomeController *)self->_fitTestController contentView];
      v33 = [v32 heightAnchor];
      v34 = [v33 constraintGreaterThanOrEqualToConstant:403.0];
      [v97 addObject:v34];

      [v97 addObject:self->_topSpacerConstraint];
      goto LABEL_19;
    }
  }

  v35 = [(OBWelcomeController *)self->_fitTestController contentView];
  v36 = [v35 heightAnchor];
  v37 = [v36 constraintGreaterThanOrEqualToConstant:403.0];
  [v97 addObject:v37];

  v38 = [(UIStackView *)self->_stackViewImages topAnchor];
  v39 = [(OBWelcomeController *)self->_fitTestController headerView];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:100.0];
  [v97 addObject:v41];

LABEL_19:
  v42 = [(UIStackView *)self->_stackViewImages centerXAnchor];
  v43 = [(OBWelcomeController *)self->_fitTestController contentView];
  v44 = [v43 centerXAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  [v97 addObject:v45];

  v46 = [(UILabel *)self->_leftBudResultLabel topAnchor];
  v47 = [(UIView *)self->_leftBudLabel bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:1.0];
  [v97 addObject:v48];

  v49 = [(UILabel *)self->_rightBudResultLabel topAnchor];
  v50 = [(UIView *)self->_rightBudLabel bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:1.0];
  [v97 addObject:v51];

  v52 = [(UILabel *)self->_leftBudResultLabel centerXAnchor];
  v53 = [(UIView *)self->_leftBudLabel centerXAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v97 addObject:v54];

  v55 = [(UILabel *)self->_rightBudResultLabel centerXAnchor];
  v56 = [(UIView *)self->_rightBudLabel centerXAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v97 addObject:v57];

  v58 = [(UIView *)self->_leftBudLabel widthAnchor];
  v59 = [v58 constraintEqualToConstant:18.0];
  [v97 addObject:v59];

  v60 = [(UIView *)self->_leftBudLabel heightAnchor];
  v61 = [v60 constraintEqualToConstant:18.0];
  [v97 addObject:v61];

  v62 = [(UIView *)self->_rightBudLabel widthAnchor];
  v63 = [v62 constraintEqualToConstant:18.0];
  [v97 addObject:v63];

  v64 = [(UIView *)self->_rightBudLabel heightAnchor];
  v65 = [v64 constraintEqualToConstant:18.0];
  [v97 addObject:v65];

  v66 = [(UILabel *)self->_leftBudResultLabel widthAnchor];
  v67 = [v66 constraintLessThanOrEqualToConstant:113.0];
  [v97 addObject:v67];

  v68 = [(UILabel *)self->_rightBudResultLabel widthAnchor];
  v69 = [v68 constraintLessThanOrEqualToConstant:113.0];
  [v97 addObject:v69];

  v70 = [(UILabel *)self->_resultDetailLabel topAnchor];
  v71 = [(UILabel *)self->_leftBudResultLabel bottomAnchor];
  v72 = [v70 constraintGreaterThanOrEqualToAnchor:v71 constant:1.0];
  [v97 addObject:v72];

  v73 = [(UILabel *)self->_resultDetailLabel topAnchor];
  v74 = [(UILabel *)self->_rightBudResultLabel bottomAnchor];
  v75 = [v73 constraintGreaterThanOrEqualToAnchor:v74 constant:1.0];
  [v97 addObject:v75];

  v76 = [(UILabel *)self->_resultDetailLabel leadingAnchor];
  v77 = [(OBWelcomeController *)self->_fitTestController headerView];
  v78 = [v77 leadingAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];
  [v97 addObject:v79];

  v80 = [(UILabel *)self->_resultDetailLabel trailingAnchor];
  v81 = [(OBWelcomeController *)self->_fitTestController headerView];
  v82 = [v81 trailingAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  [v97 addObject:v83];

  v84 = [(UIView *)self->_leftBudLabel topAnchor];
  v85 = [(UIImageView *)self->_leftImView bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:20.0];
  [v97 addObject:v86];

  v87 = [(UIView *)self->_rightBudLabel topAnchor];
  v88 = [(UIImageView *)self->_rightImView bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:20.0];
  [v97 addObject:v89];

  v90 = [(UIView *)self->_leftBudLabel leftAnchor];
  v91 = [(UIStackView *)self->_stackViewImages leftAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:62.0];
  [v97 addObject:v92];

  v93 = [(UIView *)self->_rightBudLabel rightAnchor];
  v94 = [(UIStackView *)self->_stackViewImages rightAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:-62.0];
  [v97 addObject:v95];

  [MEMORY[0x277CCAAD0] activateConstraints:v97];
}

- (void)startFitTest
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 1146);
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_251143000, log, OS_LOG_TYPE_ERROR, "Fit Test: budsInEar: %d, callActive: %d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__BTSFitTestController_startFitTest__block_invoke()
{
  v0 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_251143000, v0, OS_LOG_TYPE_DEFAULT, "Fit Test: No action needed", v1, 2u);
  }
}

void __36__BTSFitTestController_startFitTest__block_invoke_138(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0.0;
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 getVolume:&v28 forCategory:@"Audio/Video"];

  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v28;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Current volume : %f", buf, 0xCu);
    }

    if (v28 < 0.5)
    {
      v6 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Fit Test: Increase volume for AudioVideo for fit test", buf, 2u);
      }

      v7 = [MEMORY[0x277D26E58] sharedAVSystemController];
      LODWORD(v8) = 0.5;
      [v7 setVolumeTo:@"Audio/Video" forCategory:v8];

      *(*(a1 + 32) + 1148) = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__BTSFitTestController_startFitTest__block_invoke_138_cold_1();
    }
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 pathForResource:@"E+D-US_ML" ofType:@"wav"];

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  v13 = [MEMORY[0x277CB83F8] sharedInstance];
  v27 = 0;
  [v13 setActive:1 error:&v27];
  v14 = v27;

  if (v14)
  {
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __36__BTSFitTestController_startFitTest__block_invoke_138_cold_2();
    }
  }

  v16 = [MEMORY[0x277CB83F8] sharedInstance];
  v17 = *MEMORY[0x277CB8030];
  v26 = v14;
  [v16 setCategory:v17 error:&v26];
  v18 = v26;

  if (v18)
  {
    v19 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __36__BTSFitTestController_startFitTest__block_invoke_138_cold_3();
    }

    v20 = 0;
  }

  else
  {
    v25 = 0;
    v21 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:v12 error:&v25];
    v20 = v25;
    v22 = *(a1 + 32);
    v23 = *(v22 + 1040);
    *(v22 + 1040) = v21;

    [*(*(a1 + 32) + 1040) setNumberOfLoops:5];
    [*(*(a1 + 32) + 1040) prepareToPlay];
    [*(*(a1 + 32) + 1040) play];
  }

  *(*(a1 + 32) + 1145) = 1;

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setCancelAction
{
  v3 = [(BTSFitTestController *)self navigationItem];
  [v3 setLeftBarButtonItems:0 animated:1];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissFitTest];
  v4 = [(BTSFitTestController *)self navigationItem];
  [v4 setLeftBarButtonItem:v5];
}

- (void)removeDoneButton
{
  v2 = [(BTSFitTestController *)self navigationItem];
  [v2 setRightBarButtonItem:0 animated:1];
}

- (void)dismissFitTest
{
  [(BTSFitTestController *)self cleanupAudio];
  [(BTSFitTestController *)self resetVolume];
  if (!self->_completionHandler)
  {

    [(BTSFitTestController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_152];
  }
}

- (void)inEarStatusChanged:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [v4 objectForKeyedSubscript:@"primaryInEarStatus"];
  v6 = [v4 objectForKeyedSubscript:@"secondaryInEarStatus"];
  v7 = [v4 objectForKeyedSubscript:@"device"];
  v8 = [v7 address];
  v9 = [(BluetoothDevice *)self->currentDevice address];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [v5 BOOLValue];
    v12 = ((v11 | [v6 BOOLValue]) & 1) == 0;
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "Fit Test: PrimaryInEar: %@, secondaryInEar : %@. newBudsInEar: %d", &v18, 0x1Cu);
    }

    budsInEar = self->_budsInEar;
    self->_budsInEar = v12;
    v15 = sharedBluetoothSettingsLogComponent();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (budsInEar == v12)
    {
      if (v16)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Fit Test: No change needed based on in-ear status change", &v18, 2u);
      }
    }

    else
    {
      if (v16)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Fit Test: Update UI since in-ear status has changed", &v18, 2u);
      }

      if (self->_testActive)
      {
        [(BTSFitTestController *)self fitTestStopped];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sealValueChanged:(id)a3
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_testActive)
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissFitTest];
    v6 = [(BTSFitTestController *)self navigationItem];
    [v6 setLeftBarButtonItems:0 animated:1];

    v7 = [(BTSFitTestController *)self navigationItem];
    [v7 setRightBarButtonItem:v5];

    v8 = [v4 object];
    v9 = [v8 objectForKeyedSubscript:@"sealLeft"];
    v10 = [v8 objectForKeyedSubscript:@"sealRight"];
    v103 = v9;
    [v9 floatValue];
    v12 = v11;
    v102 = v10;
    [v10 floatValue];
    v14 = v13;
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v117 = v12;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Fit Test: leftSeal : %0.06f", buf, 0xCu);
    }

    v16 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v117 = v14;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Fit Test: rightSeal : %0.06f", buf, 0xCu);
    }

    v17 = [v8 objectForKeyedSubscript:@"confidenceLeft"];
    v98 = v8;
    v18 = [v8 objectForKeyedSubscript:@"confidenceRight"];
    v101 = v17;
    [v17 floatValue];
    v20 = v19;
    v100 = v18;
    [v18 floatValue];
    v22 = v21;
    v23 = [(BluetoothDevice *)self->currentDevice productId];
    *&v24 = v12 + v20;
    if (v23 == 8210)
    {
      v22 = v14 + v22;
      v20 = v12 + v20;
    }

    v25 = [(BluetoothDevice *)self->currentDevice productId];
    *&v26 = v12 + v20;
    if (v25 == 8239)
    {
      v22 = v14 + v22;
      v20 = v12 + v20;
    }

    v27 = [(BluetoothDevice *)self->currentDevice productId];
    if (v27 == 8221)
    {
      v28 = v14 + v22;
    }

    else
    {
      v28 = v22;
    }

    if (v27 == 8221)
    {
      v29 = v12 + v20;
    }

    else
    {
      v29 = v20;
    }

    v30 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v117 = v29;
      _os_log_impl(&dword_251143000, v30, OS_LOG_TYPE_DEFAULT, "Fit Test: confidenceL : %0.06f", buf, 0xCu);
    }

    v31 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v117 = v28;
      _os_log_impl(&dword_251143000, v31, OS_LOG_TYPE_DEFAULT, "Fit Test: confidenceR : %0.06f", buf, 0xCu);
    }

    [(BTSFitTestController *)self fitTestStopped];
    v104 = [(OBWelcomeController *)self->_fitTestController headerView];
    [(BTSFitTestController *)self getSealThreshold];
    v33 = v32;
    [(BTSFitTestController *)self getConfidenceThreshold];
    v35 = v34;
    if (v29 < v34 || v28 < v34)
    {
      v37 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [BTSFitTestController sealValueChanged:];
      }

      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"FIT_TEST_RESULTS_FAILED_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
      [v104 setTitle:v39];

      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"FIT_TEST_RESULTS_FAILED_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [v104 setDetailText:v41];

      [(BTSFitTestController *)self setupConstraints];
      v42 = [(BTSFitTestController *)self view];
      [v42 setNeedsLayout];

      v43 = [(BTSFitTestController *)self view];
      [v43 layoutIfNeeded];

      v97 = 0;
      v99 = 0;
      v44 = 1;
      v45 = 1;
      v46 = 0x277D75000uLL;
      v47 = v8;
      v48 = v5;
      goto LABEL_70;
    }

    v99 = v12 < v33;
    v49 = MEMORY[0x277D75D18];
    if (v12 < v33)
    {
      v50 = v115;
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v51 = __41__BTSFitTestController_sealValueChanged___block_invoke;
    }

    else
    {
      v50 = v114;
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v51 = __41__BTSFitTestController_sealValueChanged___block_invoke_2;
    }

    v50[2] = v51;
    v50[3] = &unk_2796AD618;
    v50[4] = self;
    [v49 animateWithDuration:0.5 animations:?];
    v97 = v14 < v33;
    v52 = MEMORY[0x277D75D18];
    if (v14 < v33)
    {
      v53 = v113;
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v54 = __41__BTSFitTestController_sealValueChanged___block_invoke_3;
    }

    else
    {
      v53 = v112;
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v54 = __41__BTSFitTestController_sealValueChanged___block_invoke_4;
    }

    v53[2] = v54;
    v53[3] = &unk_2796AD618;
    v53[4] = self;
    [v52 animateWithDuration:0.5 animations:?];
    v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v56 = [v55 localizedStringForKey:@"FIT_TEST_RESULTS_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
    [v104 setTitle:v56];

    if (v12 >= v33 && v14 >= v33)
    {
      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v58 = [v57 localizedStringForKey:@"FIT_TEST_BOTH_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [v104 setDetailText:v58];

      v48 = v5;
      if (self->_completionHandler)
      {
        playButton = self->_playButton;
        v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v61 = [v60 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"DeviceConfig"];
        [(OBTrayButton *)playButton setTitle:v61 forState:0];

        v62 = [(OBTrayButton *)self->_playButton imageView];
        [v62 setHidden:1];

        [(OBTrayButton *)self->_playButton removeTarget:self action:sel_startFitTest forControlEvents:64];
        [(OBTrayButton *)self->_playButton addTarget:self action:sel_callCompletionHandler forControlEvents:64];
      }

      v97 = 0;
      v44 = 0;
      v99 = 0;
      v45 = 0;
LABEL_41:
      v46 = 0x277D75000;
LABEL_69:
      v47 = v98;
LABEL_70:
      if ([(BTSFitTestController *)self isDebugModeEnabled])
      {
        v82 = *(v46 + 3352);
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __41__BTSFitTestController_sealValueChanged___block_invoke_206;
        v105[3] = &unk_2796ADAB0;
        v105[4] = self;
        v106 = v33;
        v107 = v35;
        v108 = v12;
        v109 = v29;
        v110 = v14;
        v111 = v28;
        [v82 animateWithDuration:v105 animations:0.5];
      }

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:6 value:v12];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:7 value:v14];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:1 value:v29];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:2 value:v28];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:5 value:[(BluetoothDevice *)self->currentDevice productId]];
      if (v44 || v45)
      {
        v83 = v97 || v99;
      }

      else
      {
        v83 = 2;
      }

      [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:9 value:v83];
      v84 = [MEMORY[0x277CBEAA8] date];
      endFitTestTimestamp = self->_endFitTestTimestamp;
      self->_endFitTestTimestamp = v84;

      deviceAnalytics = self->_deviceAnalytics;
      [(NSDate *)self->_endFitTestTimestamp timeIntervalSinceDate:self->_startFitTestTimestamp];
      [(HPSDeviceAnalytics *)deviceAnalytics updateFitTestValue:8 value:v87];
      [(HPSDeviceAnalytics *)self->_deviceAnalytics submitFitTestAnalytics];

      goto LABEL_76;
    }

    v48 = v5;
    if (v12 >= v33 || v14 >= v33)
    {
      if (v12 >= v33 && v14 < v33)
      {
        v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v75 = [v74 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
        [v104 setDetailText:v75];

        if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
        {
          v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v77 = [v76 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
          [v104 setDetailText:v77];
        }

        v46 = 0x277D75000uLL;
        if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
        {
          v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v79 = [v78 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
          [v104 setDetailText:v79];
        }

        if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
        {
          v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v81 = [v80 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
          [v104 setDetailText:v81];
        }

        v99 = 0;
        v45 = 0;
        v44 = v14 < v33;
        goto LABEL_69;
      }

      if (v14 < v33 || v12 >= v33)
      {
        v65 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *v117 = v12 >= v33;
          *&v117[4] = 1024;
          *&v117[6] = v12 < v33;
          v118 = 1024;
          v119 = v14 >= v33;
          v120 = 1024;
          v121 = v14 < v33;
          _os_log_impl(&dword_251143000, v65, OS_LOG_TYPE_DEFAULT, "Fit Test: leftSealGood: %d, leftSealPoor: %d, rightSealGood: %d, rightSealPoor: %d", buf, 0x1Au);
        }

        v44 = v14 < v33;
        v45 = v12 < v33;
        goto LABEL_41;
      }

      v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v90 = [v89 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [v104 setDetailText:v90];

      if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
      {
        v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v92 = [v91 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
        [v104 setDetailText:v92];
      }

      v46 = 0x277D75000;
      if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
      {
        v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v94 = [v93 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
        [v104 setDetailText:v94];
      }

      if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
      {
        v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v96 = [v95 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
        [v104 setDetailText:v96];
      }

      v97 = 0;
      v44 = 0;
    }

    else
    {
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v67 = [v66 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [v104 setDetailText:v67];

      if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
      {
        v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v69 = [v68 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
        [v104 setDetailText:v69];
      }

      v46 = 0x277D75000;
      if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
      {
        v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v71 = [v70 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
        [v104 setDetailText:v71];
      }

      if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
      {
        v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v73 = [v72 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
        [v104 setDetailText:v73];
      }

      v44 = v14 < v33;
    }

    v45 = v12 < v33;
    goto LABEL_69;
  }

  v48 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v48, OS_LOG_TYPE_DEFAULT, "Fit Test: Discard results since test is not active", buf, 2u);
  }

LABEL_76:

  v88 = *MEMORY[0x277D85DE8];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"left.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemYellowColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1088) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemYellowColor];
  [*(*(a1 + 32) + 1112) setTextColor:v5];

  v6 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"FIT_TEST_POOR_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1112) setText:v7];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"left.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1088) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemGreenColor];
  [*(*(a1 + 32) + 1112) setTextColor:v5];

  v6 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"FIT_TEST_GOOD_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1112) setText:v7];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemYellowColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1104) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemYellowColor];
  [*(*(a1 + 32) + 1120) setTextColor:v5];

  v6 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"FIT_TEST_POOR_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1120) setText:v7];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1104) setImage:v4];

  v5 = [MEMORY[0x277D75348] systemGreenColor];
  [*(*(a1 + 32) + 1120) setTextColor:v5];

  v6 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"FIT_TEST_GOOD_RESULT" value:&stru_286339F58 table:@"DeviceConfig"];
  [*(*(a1 + 32) + 1120) setText:v7];
}

void __41__BTSFitTestController_sealValueChanged___block_invoke_206(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) buttonTray];
  [v2 addButton:*(*(a1 + 32) + 1016)];

  v3 = [MEMORY[0x277D75348] systemGreenColor];
  [*(*(a1 + 32) + 1136) setTextColor:v3];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target Seal : %.2f  Confidence : %.2f\nLeft Seal : %.2f  Confidence : %.2f\nRight Seal : %.2f  Confidence : %.2f", *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60)];
  [*(*(a1 + 32) + 1136) setText:v4];
}

- (void)fitTestStopped
{
  self->_testActive = 0;
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BTSFitTestController_fitTestStopped__block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(v3, block);

  [(OBTrayButton *)self->_playButton hidesBusyIndicator];
  v4 = [(OBWelcomeController *)self->_fitTestController headerView];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FIT_TEST_INIT_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
  [v4 setTitle:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];

  if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];

    v8 = v10;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v8 = v12;
  }

  if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"FIT_TEST_INIT_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];

    v8 = v14;
  }

  [v4 setDetailText:v8];
}

uint64_t __38__BTSFitTestController_fitTestStopped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetVolume];
  v2 = *(a1 + 32);

  return [v2 cleanupAudio];
}

- (void)deviceDisconnectedHandler:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 address];
  v5 = [(BluetoothDevice *)self->currentDevice address];

  if (v4 == v5)
  {
    [(BTSFitTestController *)self dismissFitTest];
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
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Fit Test: Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSFitTestController *)self dismissFitTest];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleCallIsActiveDidChangeNotification:(id)a3
{
  callActive = self->_callActive;
  v5 = [(BTSFitTestController *)self isCallActive];
  self->_callActive = [(BTSFitTestController *)self isCallActive];
  v6 = sharedBluetoothSettingsLogComponent();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (callActive == v5)
  {
    if (v7)
    {
      v10 = 0;
      v8 = "Fit Test: No change needed based on call status change";
      v9 = &v10;
LABEL_6:
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "Fit Test: Update UI since call status has changed";
    v9 = buf;
    goto LABEL_6;
  }
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CB8080]];
  v6 = [v5 unsignedIntegerValue];

  if (v6 == 1)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      testActive = self->_testActive;
      v10[0] = 67109120;
      v10[1] = testActive;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Fit Test: Audio session interrupted. Reset Fit Test (Active: %d)", v10, 8u);
    }

    if (self->_testActive)
    {
      [(BTSFitTestController *)self fitTestStopped];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaServerConnectionDied:(id)a3
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Fit Test: Audio session server connection died", v6, 2u);
  }

  avSystemController = self->_avSystemController;
  self->_avSystemController = 0;
}

- (void)updateFitTestActiveState
{
  v3 = 0x300000003;
  [(BluetoothDevice *)self->currentDevice inEarStatusPrimary:&v3 + 4 secondary:&v3];
  self->_budsInEar = v3 == 0;
  self->_callActive = [(BTSFitTestController *)self isCallActive];
}

- (void)resetVolume
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_volumeModified && self->_initialVolume <= 0.5)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      initialVolume = self->_initialVolume;
      v8 = 134217984;
      v9 = initialVolume;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Fit Test: Cleanup audio. Set audioVideo volume to: %f", &v8, 0xCu);
    }

    v5 = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [v5 setVolumeTo:@"Audio/Video" forCategory:v6];

    self->_volumeModified = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanupAudio
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCallActive
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26B48]];

  v4 = [v3 BOOLValue];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Call is active : %d", v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isDebugModeEnabled
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (CFPreferencesGetAppBooleanValue(@"FitTestOptions", @"com.apple.BTServer", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (float)getSealThreshold
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(BluetoothDevice *)self->currentDevice productId];
  v4 = v3;
  v5 = v3 == 8210 || v3 == 8239;
  v6 = 4.3;
  if (!v5)
  {
    v6 = -5.0;
  }

  if (v3 == 8221)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 8212)
  {
    v7 = 0.0;
    if (self->_completionHandler)
    {
      v8 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Fit Test: getSealThreshold Hearing Test Threshold 6.0", &v12, 2u);
      }
    }
  }

  if (v4 == 8228)
  {
    v7 = 0.0;
  }

  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v7;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Fit Test: Target Seal Threshold: %.2f", &v12, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (float)getConfidenceThreshold
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(BluetoothDevice *)self->currentDevice productId];
  v3 = v2 == 8210 || v2 == 8239;
  v4 = 5.1;
  if (!v3)
  {
    v4 = 10.0;
  }

  if (v2 == 8221)
  {
    v4 = 1.0;
  }

  if (v2 == 8212 || v2 == 8228)
  {
    v6 = -3.0;
  }

  else
  {
    v6 = v4;
  }

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Fit Test: Target Confidence Threshold: %.2f", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)getImageFileName:(unsigned int)a3 forSide:(BOOL)a4
{
  if (a3 > 118)
  {
    if (a3 > 169)
    {
      if (a3 > 203)
      {
        if (a3 == 204)
        {
          v6 = "light-CL12";
          v7 = "dark-CL12";
          goto LABEL_36;
        }

        if (a3 == 221)
        {
          v6 = "light-CL13";
          v7 = "dark-CL13";
          goto LABEL_36;
        }
      }

      else
      {
        if (a3 == 170)
        {
          v6 = "light-CL10";
          v7 = "dark-CL10";
          goto LABEL_36;
        }

        if (a3 == 187)
        {
          v6 = "light-CL11";
          v7 = "dark-CL11";
          goto LABEL_36;
        }
      }

      goto LABEL_26;
    }

    if (a3 == 119)
    {
      v6 = "light-CL7";
      goto LABEL_33;
    }

    if (a3 != 136)
    {
      if (a3 != 153)
      {
        goto LABEL_26;
      }

      v6 = "light-CL9";
LABEL_22:
      v7 = "dark-CL9";
      goto LABEL_36;
    }

    v6 = "light-CL8";
  }

  else
  {
    if (a3 <= 50)
    {
      if (!a3)
      {
        v6 = "light-CL0";
        v7 = "dark-CL0";
        goto LABEL_36;
      }

      if (a3 == 34)
      {
        v6 = "light-CL2";
        v7 = "dark-CL2";
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (a3 <= 84)
    {
      if (a3 == 51)
      {
        v6 = "light-CL3";
        v7 = "dark-CL3";
        goto LABEL_36;
      }

      if (a3 == 68)
      {
        v6 = "light-CL4";
LABEL_33:
        v7 = "dark-CL7";
        goto LABEL_36;
      }

LABEL_26:
      v6 = "light-CL1";
      v7 = "dark-CL1";
      goto LABEL_36;
    }

    if (a3 != 85)
    {
      if (a3 != 102)
      {
        goto LABEL_26;
      }

      v6 = "light-CL6";
      goto LABEL_22;
    }

    v6 = "light-CL5";
  }

  v7 = "dark-CL8";
LABEL_36:
  if (self->_darkMode)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = "Left";
  if (a4)
  {
    v9 = "Right";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-FitTest-%s", v9, v8, v4];

  return v10;
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Setting Completion Handler", v8, 2u);
  }

  v6 = _Block_copy(v4);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  [(HPSDeviceAnalytics *)self->_deviceAnalytics updateFitTestValue:4 value:1];
}

- (void)callCompletionHandler
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Fit Test: Call Completion Handler", v4, 2u);
  }

  (*(self->_completionHandler + 2))();
}

- (void)initWithDevice:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__BTSFitTestController_startFitTest__block_invoke_138_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __36__BTSFitTestController_startFitTest__block_invoke_138_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end