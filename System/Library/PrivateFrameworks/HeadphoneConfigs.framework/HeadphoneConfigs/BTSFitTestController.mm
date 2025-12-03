@interface BTSFitTestController
- (BOOL)isCallActive;
- (BOOL)isDebugModeEnabled;
- (BOOL)isiPad;
- (BTSFitTestController)initWithDevice:(id)device;
- (float)getConfidenceThreshold;
- (float)getSealThreshold;
- (id)getImageFileName:(unsigned int)name forSide:(BOOL)side;
- (void)callCompletionHandler;
- (void)cleanupAudio;
- (void)copyToClipboard;
- (void)dealloc;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)dismissFitTest;
- (void)fitTestStopped;
- (void)handleAudioSessionInterruption:(id)interruption;
- (void)handleCallIsActiveDidChangeNotification:(id)notification;
- (void)handleMediaServerConnectionDied:(id)died;
- (void)inEarStatusChanged:(id)changed;
- (void)loadView;
- (void)powerChangedHandler:(id)handler;
- (void)removeDoneButton;
- (void)resetVolume;
- (void)sealValueChanged:(id)changed;
- (void)setCancelAction;
- (void)setCompletionHandler:(id)handler;
- (void)setupConstraints;
- (void)setupFitTestContentView;
- (void)startFitTest;
- (void)updateFitTestActiveState;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BTSFitTestController

- (BTSFitTestController)initWithDevice:(id)device
{
  v118 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (self)
  {
    v109 = deviceCopy;
    v112.receiver = self;
    v112.super_class = BTSFitTestController;
    self = [(BTSFitTestController *)&v112 init];
    objc_storeStrong(&self->currentDevice, device);
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
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v13 = [mEMORY[0x277D26E58] getVolume:&self->_initialVolume forCategory:@"Audio/Video"];

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
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v29 = [v27 imageWithTintColor:systemGrayColor renderingMode:1];
    v30 = [v26 initWithImage:v29];
    leftBudLabelImageView = self->_leftBudLabelImageView;
    self->_leftBudLabelImageView = v30;

    v32 = objc_alloc(MEMORY[0x277D755E8]);
    v33 = [MEMORY[0x277D755B8] systemImageNamed:@"right.circle.fill"];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    v35 = [v33 imageWithTintColor:systemGrayColor2 renderingMode:1];
    v36 = [v32 initWithImage:v35];
    rightBudLabelImageView = self->_rightBudLabelImageView;
    self->_rightBudLabelImageView = v36;

    [(UIView *)self->_leftBudLabel setSize:18.0, 18.0];
    [(UIView *)self->_leftBudLabel _setContinuousCornerRadius:9.0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_leftBudLabel setBackgroundColor:clearColor];

    [(UIView *)self->_rightBudLabel setSize:18.0, 18.0];
    [(UIView *)self->_rightBudLabel _setContinuousCornerRadius:9.0];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_rightBudLabel setBackgroundColor:clearColor2];

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
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_leftBudResultLabel setTextColor:systemBlackColor];

    [(UILabel *)self->_leftBudResultLabel setTextAlignment:1];
    [(UILabel *)self->_leftBudResultLabel setNumberOfLines:0];
    [(UILabel *)self->_leftBudResultLabel setLineBreakMode:0];
    v47 = *MEMORY[0x277D76918];
    v48 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_leftBudResultLabel setFont:v48];

    [(UILabel *)self->_leftBudResultLabel setAlpha:1.0];
    [(UILabel *)self->_rightBudResultLabel setText:&stru_286339F58];
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_rightBudResultLabel setTextColor:systemBlackColor2];

    [(UILabel *)self->_rightBudResultLabel setTextAlignment:1];
    [(UILabel *)self->_rightBudResultLabel setNumberOfLines:0];
    [(UILabel *)self->_rightBudResultLabel setLineBreakMode:0];
    v50 = [MEMORY[0x277D74300] preferredFontForTextStyle:v47];
    [(UILabel *)self->_rightBudResultLabel setFont:v50];

    [(UILabel *)self->_rightBudResultLabel setAlpha:1.0];
    [(UILabel *)self->_resultDetailLabel setText:&stru_286339F58];
    systemBlackColor3 = [MEMORY[0x277D75348] systemBlackColor];
    [(UILabel *)self->_resultDetailLabel setTextColor:systemBlackColor3];

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

    traitCollection = [(BTSFitTestController *)self traitCollection];
    self->_darkMode = [traitCollection userInterfaceStyle] == 2;

    if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
    {
      v80 = [MEMORY[0x277D755E8] _headphoneGetAssetsDictionary:{-[BluetoothDevice productId](self->currentDevice, "productId")}];
      productId = [(BluetoothDevice *)self->currentDevice productId];
      v111 = 17;
      [(BluetoothDevice *)self->currentDevice getDeviceColor:&v111];
      v82 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        darkMode = self->_darkMode;
        *buf = 67109632;
        *v115 = productId;
        *&v115[4] = 1024;
        *&v115[6] = darkMode;
        v116 = 1024;
        v117 = v111;
        _os_log_impl(&dword_251143000, v82, OS_LOG_TYPE_DEFAULT, "Initialized filter paramters: pid - %d, darkMode - %d, deviceColor - %d", buf, 0x14u);
      }

      [(UIImageView *)self->_leftImView _headphoneApplyFilters:v80 pid:productId darkMode:self->_darkMode deviceColor:v111];
      [(UIImageView *)self->_rightImView _headphoneApplyFilters:v80 pid:productId darkMode:self->_darkMode deviceColor:v111];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_inEarStatusChanged_ name:*MEMORY[0x277CF3150] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_sealValueChanged_ name:*MEMORY[0x277CF3158] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    v91 = *MEMORY[0x277CB8068];
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [defaultCenter7 addObserver:self selector:sel_handleAudioSessionInterruption_ name:v91 object:mEMORY[0x277CB83F8]];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    v94 = *MEMORY[0x277D26D40];
    mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
    [defaultCenter8 addObserver:self selector:sel_handleMediaServerConnectionDied_ name:v94 object:mEMORY[0x277CB83F8]2];

    mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v97 = MEMORY[0x277D26B50];
    v113 = *MEMORY[0x277D26B50];
    v98 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
    v99 = *MEMORY[0x277D26DD0];
    v110 = 0;
    LOBYTE(mEMORY[0x277CB83F8]2) = [mEMORY[0x277D26E58]2 setAttribute:v98 forKey:v99 error:&v110];
    v100 = v110;

    v101 = sharedBluetoothSettingsLogComponent();
    defaultCenter9 = v101;
    if (mEMORY[0x277CB83F8]2)
    {
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_251143000, defaultCenter9, OS_LOG_TYPE_INFO, "Fit Test: Successfully set AVSC attribute. Register listener for Call Active notification", buf, 2u);
      }

      defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter9 addObserver:self selector:sel_handleCallIsActiveDidChangeNotification_ name:*v97 object:0];
    }

    else if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      [BTSFitTestController initWithDevice:];
    }

    v103 = objc_alloc_init(HPSDeviceAnalytics);
    deviceAnalytics = self->_deviceAnalytics;
    self->_deviceAnalytics = v103;

    deviceCopy = v109;
  }

  v105 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  navigationItem = [(BTSFitTestController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  view = [(BTSFitTestController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(UIView *)self->_fitTestContentView sizeToFit];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BTSFitTestController;
  [(BTSFitTestController *)&v4 viewWillLayoutSubviews];
  [(BTSFitTestController *)self setupConstraints];
  view = [(BTSFitTestController *)self view];
  [view layoutIfNeeded];
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

  view = [(BTSFitTestController *)self view];
  [view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view2 = [(OBWelcomeController *)self->_fitTestController view];
  [view2 setFrame:{v17, v19, v21, v23}];

  view3 = [(OBWelcomeController *)self->_fitTestController view];
  [view3 setAutoresizingMask:18];

  [(BTSFitTestController *)self setupFitTestContentView];
  boldButton = [MEMORY[0x277D37618] boldButton];
  playButton = self->_playButton;
  self->_playButton = boldButton;

  [(OBTrayButton *)self->_playButton addTarget:self action:sel_startFitTest forControlEvents:64];
  v28 = self->_playButton;
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill"];
  [(OBTrayButton *)v28 setImage:v29 forState:0];

  [(BTSFitTestController *)self updateFitTestActiveState];
  buttonTray = [(OBWelcomeController *)self->_fitTestController buttonTray];
  [buttonTray addButton:self->_playButton];

  if ([(BTSFitTestController *)self isDebugModeEnabled])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    debugCopyResultsButton = self->_debugCopyResultsButton;
    self->_debugCopyResultsButton = linkButton;

    [(OBLinkTrayButton *)self->_debugCopyResultsButton setTitle:@"Copy Results" forState:0];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setClipsToBounds:1];
    layer = [(OBLinkTrayButton *)self->_debugCopyResultsButton layer];
    [layer setMasksToBounds:1];

    [(OBLinkTrayButton *)self->_debugCopyResultsButton addTarget:self action:sel_copyToClipboard forControlEvents:64];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setUserInteractionEnabled:1];
  }

  [(BTSFitTestController *)self addChildViewController:self->_fitTestController];
  view4 = [(BTSFitTestController *)self view];
  view5 = [(OBWelcomeController *)self->_fitTestController view];
  [view4 addSubview:view5];
}

- (void)copyToClipboard
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  text = [(UILabel *)self->_resultDetailLabel text];
  [generalPasteboard setString:text];
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
  widthAnchor = [v10 widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:40.0];
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
  contentView = [(OBWelcomeController *)self->_fitTestController contentView];
  [contentView addSubview:self->_fitTestContentView];
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
  topAnchor = [(UIView *)self->_fitTestContentView topAnchor];
  contentView = [(OBWelcomeController *)self->_fitTestController contentView];
  topAnchor2 = [contentView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v97 addObject:v6];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  v96 = preferredContentSizeCategory;
  v9 = ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76858]] & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D76840]) & 1) == 0 && !objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D76838]);
  view = [(BTSFitTestController *)self view];
  [view bounds];
  v12 = v11;

  if ([(BTSFitTestController *)self isSmallScreenDevice])
  {
    view2 = [(BTSFitTestController *)self view];
    [view2 bounds];
    v15 = v14 * 0.35;
  }

  else
  {
    v15 = v12 * 0.3;
  }

  if ([(BTSFitTestController *)self isiPad])
  {
    topAnchor3 = [(UIStackView *)self->_stackViewImages topAnchor];
    headerView = [(OBWelcomeController *)self->_fitTestController headerView];
    bottomAnchor = [headerView bottomAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:35.0];
  }

  else
  {
    view3 = [(BTSFitTestController *)self view];
    [view3 size];
    v22 = v21;
    view4 = [(BTSFitTestController *)self view];
    [view4 size];
    v25 = v24;

    topAnchor3 = [(UIStackView *)self->_stackViewImages topAnchor];
    fitTestController = self->_fitTestController;
    if (v22 <= v25)
    {
      headerView = [(OBWelcomeController *)fitTestController headerView];
      bottomAnchor = [headerView topAnchor];
      v27 = v15;
      [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v27];
    }

    else
    {
      headerView = [(OBWelcomeController *)fitTestController contentView];
      bottomAnchor = [headerView topAnchor];
      [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    }
    v19 = ;
  }

  topSpacerConstraint = self->_topSpacerConstraint;
  self->_topSpacerConstraint = v19;

  traitCollection = [(BTSFitTestController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  if ((v9 | UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2)))
  {
  }

  else
  {
    v31 = isPreferredLanguageEnglish();

    if (v31)
    {
      contentView2 = [(OBWelcomeController *)self->_fitTestController contentView];
      heightAnchor = [contentView2 heightAnchor];
      v34 = [heightAnchor constraintGreaterThanOrEqualToConstant:403.0];
      [v97 addObject:v34];

      [v97 addObject:self->_topSpacerConstraint];
      goto LABEL_19;
    }
  }

  contentView3 = [(OBWelcomeController *)self->_fitTestController contentView];
  heightAnchor2 = [contentView3 heightAnchor];
  v37 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:403.0];
  [v97 addObject:v37];

  topAnchor4 = [(UIStackView *)self->_stackViewImages topAnchor];
  headerView2 = [(OBWelcomeController *)self->_fitTestController headerView];
  bottomAnchor2 = [headerView2 bottomAnchor];
  v41 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:100.0];
  [v97 addObject:v41];

LABEL_19:
  centerXAnchor = [(UIStackView *)self->_stackViewImages centerXAnchor];
  contentView4 = [(OBWelcomeController *)self->_fitTestController contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v97 addObject:v45];

  topAnchor5 = [(UILabel *)self->_leftBudResultLabel topAnchor];
  bottomAnchor3 = [(UIView *)self->_leftBudLabel bottomAnchor];
  v48 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
  [v97 addObject:v48];

  topAnchor6 = [(UILabel *)self->_rightBudResultLabel topAnchor];
  bottomAnchor4 = [(UIView *)self->_rightBudLabel bottomAnchor];
  v51 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:1.0];
  [v97 addObject:v51];

  centerXAnchor3 = [(UILabel *)self->_leftBudResultLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_leftBudLabel centerXAnchor];
  v54 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v97 addObject:v54];

  centerXAnchor5 = [(UILabel *)self->_rightBudResultLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_rightBudLabel centerXAnchor];
  v57 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v97 addObject:v57];

  widthAnchor = [(UIView *)self->_leftBudLabel widthAnchor];
  v59 = [widthAnchor constraintEqualToConstant:18.0];
  [v97 addObject:v59];

  heightAnchor3 = [(UIView *)self->_leftBudLabel heightAnchor];
  v61 = [heightAnchor3 constraintEqualToConstant:18.0];
  [v97 addObject:v61];

  widthAnchor2 = [(UIView *)self->_rightBudLabel widthAnchor];
  v63 = [widthAnchor2 constraintEqualToConstant:18.0];
  [v97 addObject:v63];

  heightAnchor4 = [(UIView *)self->_rightBudLabel heightAnchor];
  v65 = [heightAnchor4 constraintEqualToConstant:18.0];
  [v97 addObject:v65];

  widthAnchor3 = [(UILabel *)self->_leftBudResultLabel widthAnchor];
  v67 = [widthAnchor3 constraintLessThanOrEqualToConstant:113.0];
  [v97 addObject:v67];

  widthAnchor4 = [(UILabel *)self->_rightBudResultLabel widthAnchor];
  v69 = [widthAnchor4 constraintLessThanOrEqualToConstant:113.0];
  [v97 addObject:v69];

  topAnchor7 = [(UILabel *)self->_resultDetailLabel topAnchor];
  bottomAnchor5 = [(UILabel *)self->_leftBudResultLabel bottomAnchor];
  v72 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:1.0];
  [v97 addObject:v72];

  topAnchor8 = [(UILabel *)self->_resultDetailLabel topAnchor];
  bottomAnchor6 = [(UILabel *)self->_rightBudResultLabel bottomAnchor];
  v75 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:1.0];
  [v97 addObject:v75];

  leadingAnchor = [(UILabel *)self->_resultDetailLabel leadingAnchor];
  headerView3 = [(OBWelcomeController *)self->_fitTestController headerView];
  leadingAnchor2 = [headerView3 leadingAnchor];
  v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v97 addObject:v79];

  trailingAnchor = [(UILabel *)self->_resultDetailLabel trailingAnchor];
  headerView4 = [(OBWelcomeController *)self->_fitTestController headerView];
  trailingAnchor2 = [headerView4 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v97 addObject:v83];

  topAnchor9 = [(UIView *)self->_leftBudLabel topAnchor];
  bottomAnchor7 = [(UIImageView *)self->_leftImView bottomAnchor];
  v86 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:20.0];
  [v97 addObject:v86];

  topAnchor10 = [(UIView *)self->_rightBudLabel topAnchor];
  bottomAnchor8 = [(UIImageView *)self->_rightImView bottomAnchor];
  v89 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:20.0];
  [v97 addObject:v89];

  leftAnchor = [(UIView *)self->_leftBudLabel leftAnchor];
  leftAnchor2 = [(UIStackView *)self->_stackViewImages leftAnchor];
  v92 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:62.0];
  [v97 addObject:v92];

  rightAnchor = [(UIView *)self->_rightBudLabel rightAnchor];
  rightAnchor2 = [(UIStackView *)self->_stackViewImages rightAnchor];
  v95 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-62.0];
  [v97 addObject:v95];

  [MEMORY[0x277CCAAD0] activateConstraints:v97];
}

- (void)startFitTest
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *self;
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
  navigationItem = [(BTSFitTestController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:0 animated:1];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissFitTest];
  navigationItem2 = [(BTSFitTestController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];
}

- (void)removeDoneButton
{
  navigationItem = [(BTSFitTestController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0 animated:1];
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

- (void)inEarStatusChanged:(id)changed
{
  v24 = *MEMORY[0x277D85DE8];
  object = [changed object];
  v5 = [object objectForKeyedSubscript:@"primaryInEarStatus"];
  v6 = [object objectForKeyedSubscript:@"secondaryInEarStatus"];
  v7 = [object objectForKeyedSubscript:@"device"];
  address = [v7 address];
  address2 = [(BluetoothDevice *)self->currentDevice address];
  v10 = [address isEqualToString:address2];

  if (v10)
  {
    bOOLValue = [v5 BOOLValue];
    v12 = ((bOOLValue | [v6 BOOLValue]) & 1) == 0;
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

- (void)sealValueChanged:(id)changed
{
  v122 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (self->_testActive)
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissFitTest];
    navigationItem = [(BTSFitTestController *)self navigationItem];
    [navigationItem setLeftBarButtonItems:0 animated:1];

    navigationItem2 = [(BTSFitTestController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v5];

    object = [changedCopy object];
    v9 = [object objectForKeyedSubscript:@"sealLeft"];
    v10 = [object objectForKeyedSubscript:@"sealRight"];
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

    v17 = [object objectForKeyedSubscript:@"confidenceLeft"];
    v98 = object;
    v18 = [object objectForKeyedSubscript:@"confidenceRight"];
    v101 = v17;
    [v17 floatValue];
    v20 = v19;
    v100 = v18;
    [v18 floatValue];
    v22 = v21;
    productId = [(BluetoothDevice *)self->currentDevice productId];
    *&v24 = v12 + v20;
    if (productId == 8210)
    {
      v22 = v14 + v22;
      v20 = v12 + v20;
    }

    productId2 = [(BluetoothDevice *)self->currentDevice productId];
    *&v26 = v12 + v20;
    if (productId2 == 8239)
    {
      v22 = v14 + v22;
      v20 = v12 + v20;
    }

    productId3 = [(BluetoothDevice *)self->currentDevice productId];
    if (productId3 == 8221)
    {
      v28 = v14 + v22;
    }

    else
    {
      v28 = v22;
    }

    if (productId3 == 8221)
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
    headerView = [(OBWelcomeController *)self->_fitTestController headerView];
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
      [headerView setTitle:v39];

      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"FIT_TEST_RESULTS_FAILED_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v41];

      [(BTSFitTestController *)self setupConstraints];
      view = [(BTSFitTestController *)self view];
      [view setNeedsLayout];

      view2 = [(BTSFitTestController *)self view];
      [view2 layoutIfNeeded];

      v97 = 0;
      v99 = 0;
      v44 = 1;
      v45 = 1;
      v46 = 0x277D75000uLL;
      v47 = object;
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
    [headerView setTitle:v56];

    if (v12 >= v33 && v14 >= v33)
    {
      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v58 = [v57 localizedStringForKey:@"FIT_TEST_BOTH_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v58];

      v48 = v5;
      if (self->_completionHandler)
      {
        playButton = self->_playButton;
        v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v61 = [v60 localizedStringForKey:@"CONTINUE" value:&stru_286339F58 table:@"DeviceConfig"];
        [(OBTrayButton *)playButton setTitle:v61 forState:0];

        imageView = [(OBTrayButton *)self->_playButton imageView];
        [imageView setHidden:1];

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
      date = [MEMORY[0x277CBEAA8] date];
      endFitTestTimestamp = self->_endFitTestTimestamp;
      self->_endFitTestTimestamp = date;

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
        [headerView setDetailText:v75];

        if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
        {
          v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v77 = [v76 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
          [headerView setDetailText:v77];
        }

        v46 = 0x277D75000uLL;
        if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
        {
          v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v79 = [v78 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
          [headerView setDetailText:v79];
        }

        if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
        {
          v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v81 = [v80 localizedStringForKey:@"FIT_TEST_LEFT_GOOD_RIGHT_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
          [headerView setDetailText:v81];
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
      [headerView setDetailText:v90];

      if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
      {
        v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v92 = [v91 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
        [headerView setDetailText:v92];
      }

      v46 = 0x277D75000;
      if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
      {
        v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v94 = [v93 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
        [headerView setDetailText:v94];
      }

      if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
      {
        v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v96 = [v95 localizedStringForKey:@"FIT_TEST_LEFT_POOR_RIGHT_GOOD_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
        [headerView setDetailText:v96];
      }

      v97 = 0;
      v44 = 0;
    }

    else
    {
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v67 = [v66 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig"];
      [headerView setDetailText:v67];

      if ([(BluetoothDevice *)self->currentDevice productId]== 8210)
      {
        v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v69 = [v68 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
        [headerView setDetailText:v69];
      }

      v46 = 0x277D75000;
      if ([(BluetoothDevice *)self->currentDevice productId]== 8239)
      {
        v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v71 = [v70 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B494b"];
        [headerView setDetailText:v71];
      }

      if ([(BluetoothDevice *)self->currentDevice productId]== 8221)
      {
        v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v73 = [v72 localizedStringForKey:@"FIT_TEST_BOTH_POOR_DETAIL" value:&stru_286339F58 table:@"DeviceConfig-B498-v2"];
        [headerView setDetailText:v73];
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
  headerView = [(OBWelcomeController *)self->_fitTestController headerView];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FIT_TEST_INIT_HEADER" value:&stru_286339F58 table:@"DeviceConfig"];
  [headerView setTitle:v6];

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

  [headerView setDetailText:v8];
}

uint64_t __38__BTSFitTestController_fitTestStopped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetVolume];
  v2 = *(a1 + 32);

  return [v2 cleanupAudio];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  address2 = [(BluetoothDevice *)self->currentDevice address];

  if (address == address2)
  {
    [(BTSFitTestController *)self dismissFitTest];
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
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Fit Test: Received %@ with power state %s", &v12, 0x16u);
  }

  [(BTSFitTestController *)self dismissFitTest];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleCallIsActiveDidChangeNotification:(id)notification
{
  callActive = self->_callActive;
  isCallActive = [(BTSFitTestController *)self isCallActive];
  self->_callActive = [(BTSFitTestController *)self isCallActive];
  v6 = sharedBluetoothSettingsLogComponent();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (callActive == isCallActive)
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

- (void)handleAudioSessionInterruption:(id)interruption
{
  v11 = *MEMORY[0x277D85DE8];
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CB8080]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
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

- (void)handleMediaServerConnectionDied:(id)died
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

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    *&v6 = self->_initialVolume;
    [mEMORY[0x277D26E58] setVolumeTo:@"Audio/Video" forCategory:v6];

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
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26B48]];

  bOOLValue = [v3 BOOLValue];
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = bOOLValue;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Call is active : %d", v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return bOOLValue;
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
  productId = [(BluetoothDevice *)self->currentDevice productId];
  v4 = productId;
  v5 = productId == 8210 || productId == 8239;
  v6 = 4.3;
  if (!v5)
  {
    v6 = -5.0;
  }

  if (productId == 8221)
  {
    v7 = 5.0;
  }

  else
  {
    v7 = v6;
  }

  if (productId == 8212)
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
  productId = [(BluetoothDevice *)self->currentDevice productId];
  v3 = productId == 8210 || productId == 8239;
  v4 = 5.1;
  if (!v3)
  {
    v4 = 10.0;
  }

  if (productId == 8221)
  {
    v4 = 1.0;
  }

  if (productId == 8212 || productId == 8228)
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

- (id)getImageFileName:(unsigned int)name forSide:(BOOL)side
{
  if (name > 118)
  {
    if (name > 169)
    {
      if (name > 203)
      {
        if (name == 204)
        {
          v6 = "light-CL12";
          v7 = "dark-CL12";
          goto LABEL_36;
        }

        if (name == 221)
        {
          v6 = "light-CL13";
          v7 = "dark-CL13";
          goto LABEL_36;
        }
      }

      else
      {
        if (name == 170)
        {
          v6 = "light-CL10";
          v7 = "dark-CL10";
          goto LABEL_36;
        }

        if (name == 187)
        {
          v6 = "light-CL11";
          v7 = "dark-CL11";
          goto LABEL_36;
        }
      }

      goto LABEL_26;
    }

    if (name == 119)
    {
      v6 = "light-CL7";
      goto LABEL_33;
    }

    if (name != 136)
    {
      if (name != 153)
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
    if (name <= 50)
    {
      if (!name)
      {
        v6 = "light-CL0";
        v7 = "dark-CL0";
        goto LABEL_36;
      }

      if (name == 34)
      {
        v6 = "light-CL2";
        v7 = "dark-CL2";
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (name <= 84)
    {
      if (name == 51)
      {
        v6 = "light-CL3";
        v7 = "dark-CL3";
        goto LABEL_36;
      }

      if (name == 68)
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

    if (name != 85)
    {
      if (name != 102)
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
  if (side)
  {
    v9 = "Right";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-FitTest-%s", v9, v8, v4];

  return v10;
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Fit Test: Setting Completion Handler", v8, 2u);
  }

  v6 = _Block_copy(handlerCopy);
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