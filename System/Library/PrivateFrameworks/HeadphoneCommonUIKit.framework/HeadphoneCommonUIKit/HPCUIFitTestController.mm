@interface HPCUIFitTestController
- (BOOL)isCallActive;
- (BOOL)isDebugModeEnabled;
- (BOOL)isPreferredLanguageEnglish;
- (BOOL)isiPad;
- (HPCUIFitTestController)initWithDevice:(id)device provider:(id)provider;
- (HPCUIFitTestControllerDepedencyProvider)provider;
- (float)getConfidenceThreshold;
- (float)getSealThreshold;
- (id)getResultsTitle;
- (id)getSubTitle;
- (id)getTitle;
- (void)applyFilters:(id)filters imageView:(id)view deviceColor:(unsigned int)color;
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

@implementation HPCUIFitTestController

- (HPCUIFitTestController)initWithDevice:(id)device provider:(id)provider
{
  v94[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (self)
  {
    v90 = deviceCopy;
    v93.receiver = self;
    v93.super_class = HPCUIFitTestController;
    providerCopy = provider;
    v9 = [(HPCUIFitTestController *)&v93 init];
    objc_storeStrong(&v9->currentDevice, device);
    objc_storeWeak(&v9->_provider, providerCopy);

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    fitTestContentView = v9->_fitTestContentView;
    v9->_fitTestContentView = v10;

    v12 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackViewImages = v9->_stackViewImages;
    v9->_stackViewImages = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69AED10]);
    avSystemController = v9->_avSystemController;
    v9->_avSystemController = v14;

    v9->_testActive = 0;
    v9->_initialVolume = 0.0;
    v9->_volumeModified = 0;
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    LOBYTE(providerCopy) = [mEMORY[0x1E69AED10] getVolume:&v9->_initialVolume forCategory:@"Audio/Video"];

    if ((providerCopy & 1) == 0)
    {
      NSLog(&cfstr_FitTestUnableT.isa);
    }

    NSLog(&cfstr_FitTestVolumeB.isa, v9->_initialVolume);
    v17 = objc_alloc(MEMORY[0x1E69DD250]);
    v18 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
    v22 = [v17 initWithFrame:{*MEMORY[0x1E695F058], v19, v20, v21}];
    leftBudLabel = v9->_leftBudLabel;
    v9->_leftBudLabel = v22;

    v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v19, v20, v21}];
    rightBudLabel = v9->_rightBudLabel;
    v9->_rightBudLabel = v24;

    v26 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"left.circle.fill"];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v29 = [v27 imageWithTintColor:systemGrayColor renderingMode:1];
    v30 = [v26 initWithImage:v29];
    leftBudLabelImageView = v9->_leftBudLabelImageView;
    v9->_leftBudLabelImageView = v30;

    v32 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"right.circle.fill"];
    systemGrayColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
    v35 = [v33 imageWithTintColor:systemGrayColor2 renderingMode:1];
    v36 = [v32 initWithImage:v35];
    rightBudLabelImageView = v9->_rightBudLabelImageView;
    v9->_rightBudLabelImageView = v36;

    [(UIView *)v9->_leftBudLabel setSize:18.0, 18.0];
    [(UIView *)v9->_leftBudLabel _setContinuousCornerRadius:9.0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v9->_leftBudLabel setBackgroundColor:clearColor];

    [(UIView *)v9->_rightBudLabel setSize:18.0, 18.0];
    [(UIView *)v9->_rightBudLabel _setContinuousCornerRadius:9.0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v9->_rightBudLabel setBackgroundColor:clearColor2];

    [(UIView *)v9->_leftBudLabel addSubview:v9->_leftBudLabelImageView];
    [(UIView *)v9->_rightBudLabel addSubview:v9->_rightBudLabelImageView];
    v40 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
    leftBudResultLabel = v9->_leftBudResultLabel;
    v9->_leftBudResultLabel = v40;

    v42 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
    rightBudResultLabel = v9->_rightBudResultLabel;
    v9->_rightBudResultLabel = v42;

    v44 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v18, v19, v20, v21}];
    resultDetailLabel = v9->_resultDetailLabel;
    v9->_resultDetailLabel = v44;

    [(UILabel *)v9->_leftBudResultLabel setText:&stru_1F210A6C0];
    systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
    [(UILabel *)v9->_leftBudResultLabel setTextColor:systemBlackColor];

    [(UILabel *)v9->_leftBudResultLabel setTextAlignment:1];
    [(UILabel *)v9->_leftBudResultLabel setNumberOfLines:0];
    [(UILabel *)v9->_leftBudResultLabel setLineBreakMode:0];
    v47 = *MEMORY[0x1E69DDCF8];
    v48 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v9->_leftBudResultLabel setFont:v48];

    [(UILabel *)v9->_leftBudResultLabel setAlpha:1.0];
    [(UILabel *)v9->_rightBudResultLabel setText:&stru_1F210A6C0];
    systemBlackColor2 = [MEMORY[0x1E69DC888] systemBlackColor];
    [(UILabel *)v9->_rightBudResultLabel setTextColor:systemBlackColor2];

    [(UILabel *)v9->_rightBudResultLabel setTextAlignment:1];
    [(UILabel *)v9->_rightBudResultLabel setNumberOfLines:0];
    [(UILabel *)v9->_rightBudResultLabel setLineBreakMode:0];
    v50 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v47];
    [(UILabel *)v9->_rightBudResultLabel setFont:v50];

    [(UILabel *)v9->_rightBudResultLabel setAlpha:1.0];
    [(UILabel *)v9->_resultDetailLabel setText:&stru_1F210A6C0];
    systemBlackColor3 = [MEMORY[0x1E69DC888] systemBlackColor];
    [(UILabel *)v9->_resultDetailLabel setTextColor:systemBlackColor3];

    [(UILabel *)v9->_resultDetailLabel setTextAlignment:1];
    [(UILabel *)v9->_resultDetailLabel setNumberOfLines:0];
    [(UILabel *)v9->_resultDetailLabel setLineBreakMode:0];
    v52 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v47];
    [(UILabel *)v9->_resultDetailLabel setFont:v52];

    [(UILabel *)v9->_resultDetailLabel setAlpha:1.0];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = 0;

    traitCollection = [(HPCUIFitTestController *)v9 traitCollection];
    v9->_darkMode = [traitCollection userInterfaceStyle] == 2;

    provider = [(HPCUIFitTestController *)v9 provider];
    v56 = [provider leftImage:v9->_darkMode];

    v57 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v56];
    leftImView = v9->_leftImView;
    v9->_leftImView = v57;

    provider2 = [(HPCUIFitTestController *)v9 provider];
    v60 = [provider2 rightImage:v9->_darkMode];

    v61 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v60];
    rightImView = v9->_rightImView;
    v9->_rightImView = v61;

    v92 = 0;
    [(BluetoothDevice *)v9->currentDevice getDeviceColor:&v92];
    provider3 = [(HPCUIFitTestController *)v9 provider];
    getAssetsDictionary = [provider3 getAssetsDictionary];
    v65 = v9->_leftImView;
    provider4 = [(HPCUIFitTestController *)v9 provider];
    -[HPCUIFitTestController applyFilters:imageView:deviceColor:](v9, "applyFilters:imageView:deviceColor:", getAssetsDictionary, v65, [provider4 deviceColor]);

    provider5 = [(HPCUIFitTestController *)v9 provider];
    getAssetsDictionary2 = [provider5 getAssetsDictionary];
    v69 = v9->_rightImView;
    provider6 = [(HPCUIFitTestController *)v9 provider];
    -[HPCUIFitTestController applyFilters:imageView:deviceColor:](v9, "applyFilters:imageView:deviceColor:", getAssetsDictionary2, v69, [provider6 deviceColor]);

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_inEarStatusChanged_ name:*MEMORY[0x1E698F438] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_sealValueChanged_ name:*MEMORY[0x1E698F440] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x1E698F450] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v9 selector:sel_powerChangedHandler_ name:*MEMORY[0x1E698F448] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v9 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v9 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    v78 = *MEMORY[0x1E69580D8];
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    [defaultCenter7 addObserver:v9 selector:sel_handleAudioSessionInterruption_ name:v78 object:mEMORY[0x1E6958460]];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    v81 = *MEMORY[0x1E69AECB8];
    mEMORY[0x1E6958460]2 = [MEMORY[0x1E6958460] sharedInstance];
    [defaultCenter8 addObserver:v9 selector:sel_handleMediaServerConnectionDied_ name:v81 object:mEMORY[0x1E6958460]2];

    mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v84 = MEMORY[0x1E69AEA40];
    v94[0] = *MEMORY[0x1E69AEA40];
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
    v86 = *MEMORY[0x1E69AECD8];
    v91 = 0;
    LOBYTE(mEMORY[0x1E6958460]2) = [mEMORY[0x1E69AED10]2 setAttribute:v85 forKey:v86 error:&v91];
    v87 = v91;

    if (mEMORY[0x1E6958460]2)
    {
      NSLog(&cfstr_FitTestSuccess.isa);
      defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter9 addObserver:v9 selector:sel_handleCallIsActiveDidChangeNotification_ name:*v84 object:0];
    }

    else
    {
      NSLog(&cfstr_FitTestFailedT.isa, v87);
    }

    deviceCopy = v90;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HPCUIFitTestControllerDepedencyProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
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
  v17.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v17 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v6 viewDidLoad];
  navigationItem = [(HPCUIFitTestController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  view = [(HPCUIFitTestController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(UIView *)self->_fitTestContentView sizeToFit];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v4 viewWillLayoutSubviews];
  [(HPCUIFitTestController *)self setupConstraints];
  view = [(HPCUIFitTestController *)self view];
  [view layoutIfNeeded];
}

- (id)getTitle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v4 = [v2 bundleForClass:v3];
  v5 = [v4 localizedStringForKey:@"Ear Tip Fit Test" value:&stru_1F210A6C0 table:0];

  return v5;
}

- (id)getSubTitle
{
  provider = [(HPCUIFitTestController *)self provider];
  platformName = [provider platformName];
  v4 = platformName;
  v5 = @"AirPods";
  if (platformName)
  {
    v5 = platformName;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696AAE8];
  v9 = objc_opt_self();
  v10 = [v8 bundleForClass:v9];
  v11 = [v10 localizedStringForKey:@"Place %@ in both ears so they’re comfortable and secure value:then press play to test fit.\n\nFor best results table:{complete ear tip fit test in a quiet environment.", &stru_1F210A6C0, 0}];
  v12 = [v7 localizedStringWithFormat:v11, v6];

  return v12;
}

- (id)getResultsTitle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v4 = [v2 bundleForClass:v3];
  v5 = [v4 localizedStringForKey:@"Ear Tip Fit Results" value:&stru_1F210A6C0 table:0];

  return v5;
}

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v33 loadView];
  v3 = MEMORY[0x1E696AAE8];
  v4 = objc_opt_self();
  v5 = [v3 bundleForClass:v4];
  v6 = [v5 localizedStringForKey:@"Ear Tip Fit Test" value:&stru_1F210A6C0 table:0];

  v7 = objc_alloc(MEMORY[0x1E69B7D70]);
  getTitle = [(HPCUIFitTestController *)self getTitle];
  getSubTitle = [(HPCUIFitTestController *)self getSubTitle];
  v10 = [v7 initWithTitle:getTitle detailText:getSubTitle icon:0 contentLayout:2];
  fitTestController = self->_fitTestController;
  self->_fitTestController = v10;

  view = [(HPCUIFitTestController *)self view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view2 = [(OBWelcomeController *)self->_fitTestController view];
  [view2 setFrame:{v14, v16, v18, v20}];

  view3 = [(OBWelcomeController *)self->_fitTestController view];
  [view3 setAutoresizingMask:18];

  [(HPCUIFitTestController *)self setupFitTestContentView];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  playButton = self->_playButton;
  self->_playButton = boldButton;

  [(OBTrayButton *)self->_playButton addTarget:self action:sel_startFitTest forControlEvents:64];
  v25 = self->_playButton;
  v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
  [(OBTrayButton *)v25 setImage:v26 forState:0];

  [(HPCUIFitTestController *)self updateFitTestActiveState];
  buttonTray = [(OBWelcomeController *)self->_fitTestController buttonTray];
  [buttonTray addButton:self->_playButton];

  if ([(HPCUIFitTestController *)self isDebugModeEnabled])
  {
    linkButton = [MEMORY[0x1E69B7D38] linkButton];
    debugCopyResultsButton = self->_debugCopyResultsButton;
    self->_debugCopyResultsButton = linkButton;

    [(OBLinkTrayButton *)self->_debugCopyResultsButton setTitle:@"Copy Results" forState:0];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setClipsToBounds:1];
    layer = [(OBLinkTrayButton *)self->_debugCopyResultsButton layer];
    [layer setMasksToBounds:1];

    [(OBLinkTrayButton *)self->_debugCopyResultsButton addTarget:self action:sel_copyToClipboard forControlEvents:64];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setUserInteractionEnabled:1];
  }

  [(HPCUIFitTestController *)self addChildViewController:self->_fitTestController];
  view4 = [(HPCUIFitTestController *)self view];
  view5 = [(OBWelcomeController *)self->_fitTestController view];
  [view4 addSubview:view5];
}

- (void)copyToClipboard
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
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
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(UIImageView *)self->_leftBudLabelImageView setFrame:*MEMORY[0x1E695F058], v4, 22.0, 22.0];
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
  v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
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
  v102 = objc_opt_new();
  topAnchor = [(UIView *)self->_fitTestContentView topAnchor];
  contentView = [(OBWelcomeController *)self->_fitTestController contentView];
  topAnchor2 = [contentView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v102 addObject:v6];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  v101 = preferredContentSizeCategory;
  v9 = ([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC88]] & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && !objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC70]);
  view = [(HPCUIFitTestController *)self view];
  [view bounds];
  v12 = v11;

  if ([(HPCUIFitTestController *)self isSmallScreenDevice])
  {
    view2 = [(HPCUIFitTestController *)self view];
    [view2 bounds];
    v15 = v14 * 0.35;
  }

  else
  {
    v15 = v12 * 0.3;
  }

  if ([(HPCUIFitTestController *)self isiPad])
  {
    topAnchor3 = [(UIStackView *)self->_stackViewImages topAnchor];
    headerView = [(OBWelcomeController *)self->_fitTestController headerView];
    bottomAnchor = [headerView bottomAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:35.0];
  }

  else
  {
    view3 = [(HPCUIFitTestController *)self view];
    [view3 size];
    v22 = v21;
    view4 = [(HPCUIFitTestController *)self view];
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

  traitCollection = [(HPCUIFitTestController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  if ((v9 | UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2)))
  {
  }

  else
  {
    isPreferredLanguageEnglish = [(HPCUIFitTestController *)self isPreferredLanguageEnglish];

    if (isPreferredLanguageEnglish)
    {
      contentView2 = [(OBWelcomeController *)self->_fitTestController contentView];
      heightAnchor = [contentView2 heightAnchor];
      v34 = [heightAnchor constraintGreaterThanOrEqualToConstant:403.0];
      [v102 addObject:v34];

      [v102 addObject:self->_topSpacerConstraint];
      goto LABEL_19;
    }
  }

  contentView3 = [(OBWelcomeController *)self->_fitTestController contentView];
  heightAnchor2 = [contentView3 heightAnchor];
  v37 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:403.0];
  [v102 addObject:v37];

  topAnchor4 = [(UIStackView *)self->_stackViewImages topAnchor];
  headerView2 = [(OBWelcomeController *)self->_fitTestController headerView];
  bottomAnchor2 = [headerView2 bottomAnchor];
  v41 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:100.0];
  [v102 addObject:v41];

LABEL_19:
  centerXAnchor = [(UIStackView *)self->_stackViewImages centerXAnchor];
  contentView4 = [(OBWelcomeController *)self->_fitTestController contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v102 addObject:v45];

  topAnchor5 = [(UILabel *)self->_leftBudResultLabel topAnchor];
  bottomAnchor3 = [(UIView *)self->_leftBudLabel bottomAnchor];
  v48 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
  [v102 addObject:v48];

  topAnchor6 = [(UILabel *)self->_rightBudResultLabel topAnchor];
  bottomAnchor4 = [(UIView *)self->_rightBudLabel bottomAnchor];
  v51 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:1.0];
  [v102 addObject:v51];

  centerXAnchor3 = [(UILabel *)self->_leftBudResultLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_leftBudLabel centerXAnchor];
  v54 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v102 addObject:v54];

  centerXAnchor5 = [(UILabel *)self->_rightBudResultLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_rightBudLabel centerXAnchor];
  v57 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v102 addObject:v57];

  widthAnchor = [(UIView *)self->_leftBudLabel widthAnchor];
  v59 = [widthAnchor constraintEqualToConstant:18.0];
  [v102 addObject:v59];

  heightAnchor3 = [(UIView *)self->_leftBudLabel heightAnchor];
  v61 = [heightAnchor3 constraintEqualToConstant:18.0];
  [v102 addObject:v61];

  widthAnchor2 = [(UIView *)self->_rightBudLabel widthAnchor];
  v63 = [widthAnchor2 constraintEqualToConstant:18.0];
  [v102 addObject:v63];

  heightAnchor4 = [(UIView *)self->_rightBudLabel heightAnchor];
  v65 = [heightAnchor4 constraintEqualToConstant:18.0];
  [v102 addObject:v65];

  widthAnchor3 = [(UILabel *)self->_leftBudResultLabel widthAnchor];
  v67 = [widthAnchor3 constraintLessThanOrEqualToConstant:113.0];
  [v102 addObject:v67];

  widthAnchor4 = [(UILabel *)self->_rightBudResultLabel widthAnchor];
  v69 = [widthAnchor4 constraintLessThanOrEqualToConstant:113.0];
  [v102 addObject:v69];

  topAnchor7 = [(UILabel *)self->_resultDetailLabel topAnchor];
  bottomAnchor5 = [(UILabel *)self->_leftBudResultLabel bottomAnchor];
  v72 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:1.0];
  [v102 addObject:v72];

  topAnchor8 = [(UILabel *)self->_resultDetailLabel topAnchor];
  bottomAnchor6 = [(UILabel *)self->_rightBudResultLabel bottomAnchor];
  v75 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:1.0];
  [v102 addObject:v75];

  leadingAnchor = [(UILabel *)self->_resultDetailLabel leadingAnchor];
  headerView3 = [(OBWelcomeController *)self->_fitTestController headerView];
  leadingAnchor2 = [headerView3 leadingAnchor];
  v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v102 addObject:v79];

  trailingAnchor = [(UILabel *)self->_resultDetailLabel trailingAnchor];
  headerView4 = [(OBWelcomeController *)self->_fitTestController headerView];
  trailingAnchor2 = [headerView4 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v102 addObject:v83];

  topAnchor9 = [(UIView *)self->_leftBudLabel topAnchor];
  bottomAnchor7 = [(UIImageView *)self->_leftImView bottomAnchor];
  v86 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:20.0];
  [v102 addObject:v86];

  topAnchor10 = [(UIView *)self->_rightBudLabel topAnchor];
  bottomAnchor8 = [(UIImageView *)self->_rightImView bottomAnchor];
  v89 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:20.0];
  [v102 addObject:v89];

  productId = [(BluetoothDevice *)self->currentDevice productId];
  leftBudLabel = self->_leftBudLabel;
  if (productId == 8231)
  {
    centerXAnchor7 = [(UIView *)leftBudLabel centerXAnchor];
    centerXAnchor8 = [(UIImageView *)self->_leftImView centerXAnchor];
    v94 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v102 addObject:v94];

    centerXAnchor9 = [(UIView *)self->_rightBudLabel centerXAnchor];
    centerXAnchor10 = [(UIImageView *)self->_rightImView centerXAnchor];
    [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  }

  else
  {
    leftAnchor = [(UIView *)leftBudLabel leftAnchor];
    leftAnchor2 = [(UIStackView *)self->_stackViewImages leftAnchor];
    v99 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:62.0];
    [v102 addObject:v99];

    centerXAnchor9 = [(UIView *)self->_rightBudLabel rightAnchor];
    centerXAnchor10 = [(UIStackView *)self->_stackViewImages rightAnchor];
    [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10 constant:-62.0];
  }
  v100 = ;
  [v102 addObject:v100];

  [MEMORY[0x1E696ACD8] activateConstraints:v102];
}

- (void)startFitTest
{
  provider = [(HPCUIFitTestController *)self provider];
  platformName = [provider platformName];
  v5 = platformName;
  v6 = @"AirPods Pro";
  if (platformName)
  {
    v6 = platformName;
  }

  v7 = v6;

  callActive = self->_callActive;
  if (self->_budsInEar && !callActive)
  {
    [(HPCUIFitTestController *)self setCancelAction];
    [(HPCUIFitTestController *)self removeDoneButton];
    NSLog(&cfstr_FitTestStartFi.isa);
    date = [MEMORY[0x1E695DF00] date];
    startFitTestTimestamp = self->_startFitTestTimestamp;
    self->_startFitTestTimestamp = date;

    [(BluetoothDevice *)self->currentDevice SendSetupCommand:1];
    headerView = [(OBWelcomeController *)self->_fitTestController headerView];
    v27 = MEMORY[0x1E696AEC0];
    v28 = MEMORY[0x1E696AAE8];
    v29 = objc_opt_self();
    v30 = [v28 bundleForClass:v29];
    v31 = [v30 localizedStringForKey:@"Do Not Remove %@" value:&stru_1F210A6C0 table:0];
    v32 = [v27 localizedStringWithFormat:v31, v7];

    [headerView setTitle:v32];
    [headerView setDetailText:&stru_1F210A6C0];
    view = [(HPCUIFitTestController *)self view];
    [view setNeedsLayout];

    [(UILabel *)self->_leftBudResultLabel setText:&stru_1F210A6C0];
    [(UILabel *)self->_rightBudResultLabel setText:&stru_1F210A6C0];
    [(UILabel *)self->_resultDetailLabel setText:&stru_1F210A6C0];
    [(OBTrayButton *)self->_playButton showsBusyIndicator];
    v34 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__HPCUIFitTestController_startFitTest__block_invoke_2;
    block[3] = &unk_1E7973C60;
    block[4] = self;
    dispatch_async(v34, block);
  }

  else
  {
    NSLog(&cfstr_FitTestBudsine.isa, self->_budsInEar, callActive);
    v9 = MEMORY[0x1E696AAE8];
    if (self->_budsInEar)
    {
      v10 = MEMORY[0x1E69DC650];
      v11 = objc_opt_self();
      v12 = [v9 bundleForClass:v11];
      v13 = [v12 localizedStringForKey:@"End Call To Continue Test" value:&stru_1F210A6C0 table:0];
      headerView = [v10 alertControllerWithTitle:v13 message:&stru_1F210A6C0 preferredStyle:1];
    }

    else
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_self();
      v17 = [v9 bundleForClass:v16];
      v18 = [v17 localizedStringForKey:@"Place %@ In Both Ears" value:&stru_1F210A6C0 table:0];
      v11 = [v15 localizedStringWithFormat:v18, v7];

      headerView = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:&stru_1F210A6C0 preferredStyle:1];
    }

    v19 = MEMORY[0x1E69DC648];
    v20 = MEMORY[0x1E696AAE8];
    v21 = objc_opt_self();
    v22 = [v20 bundleForClass:v21];
    v23 = [v22 localizedStringForKey:@"OK" value:&stru_1F210A6C0 table:0];
    v24 = [v19 actionWithTitle:v23 style:0 handler:&__block_literal_global_0];
    [headerView addAction:v24];

    [(HPCUIFitTestController *)self presentViewController:headerView animated:1 completion:0];
  }
}

void __38__HPCUIFitTestController_startFitTest__block_invoke_2(uint64_t a1)
{
  v22 = 0.0;
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 getVolume:&v22 forCategory:@"Audio/Video"];

  if (v3)
  {
    NSLog(&cfstr_FitTestCurrent.isa, v22);
    *&v4 = v22;
    if (v22 < 0.5)
    {
      NSLog(&cfstr_FitTestIncreas.isa, v4);
      v5 = [MEMORY[0x1E69AED10] sharedAVSystemController];
      LODWORD(v6) = 0.5;
      [v5 setVolumeTo:@"Audio/Video" forCategory:v6];

      *(*(a1 + 32) + 1148) = 1;
    }
  }

  else
  {
    NSLog(&cfstr_FitTestUnableT_0.isa);
  }

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 pathForResource:@"E+D-US_ML" ofType:@"wav"];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = [MEMORY[0x1E6958460] sharedInstance];
  v21 = 0;
  [v10 setActive:1 error:&v21];
  v11 = v21;

  if (v11)
  {
    NSLog(&cfstr_FitTestUnableT_1.isa, v11);
  }

  v12 = [MEMORY[0x1E6958460] sharedInstance];
  v13 = *MEMORY[0x1E6958068];
  v20 = v11;
  [v12 setCategory:v13 error:&v20];
  v14 = v20;

  if (v14)
  {
    NSLog(&cfstr_FitTestCouldnT.isa, v14);

    v15 = 0;
  }

  else
  {
    v19 = 0;
    v16 = [objc_alloc(MEMORY[0x1E6958448]) initWithContentsOfURL:v9 error:&v19];
    v15 = v19;
    v17 = *(a1 + 32);
    v18 = *(v17 + 1040);
    *(v17 + 1040) = v16;

    [*(*(a1 + 32) + 1040) setNumberOfLoops:5];
    [*(*(a1 + 32) + 1040) prepareToPlay];
    [*(*(a1 + 32) + 1040) play];
  }

  *(*(a1 + 32) + 1145) = 1;
}

- (void)setCancelAction
{
  navigationItem = [(HPCUIFitTestController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:0 animated:1];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_dismissFitTest];
  navigationItem2 = [(HPCUIFitTestController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v5];
}

- (void)removeDoneButton
{
  navigationItem = [(HPCUIFitTestController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0 animated:1];
}

- (void)dismissFitTest
{
  [(HPCUIFitTestController *)self cleanupAudio];
  [(HPCUIFitTestController *)self resetVolume];
  if (!self->_completionHandler)
  {

    [(HPCUIFitTestController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_167];
  }
}

- (void)inEarStatusChanged:(id)changed
{
  object = [changed object];
  v4 = [object objectForKeyedSubscript:@"primaryInEarStatus"];
  v5 = [object objectForKeyedSubscript:@"secondaryInEarStatus"];
  v6 = [object objectForKeyedSubscript:@"device"];
  address = [v6 address];
  address2 = [(BluetoothDevice *)self->currentDevice address];

  if (address == address2)
  {
    bOOLValue = [v4 BOOLValue];
    v10 = (bOOLValue | [v5 BOOLValue]) ^ 1;
    v11 = v10 & 1;
    NSLog(&cfstr_FitTestPrimary.isa, v4, v5, v10 & 1);
    budsInEar = self->_budsInEar;
    self->_budsInEar = v11;
    if (budsInEar == v11)
    {
      NSLog(&cfstr_FitTestNoChang.isa);
    }

    else
    {
      NSLog(&cfstr_FitTestUpdateU.isa);
      if (self->_testActive)
      {
        [(HPCUIFitTestController *)self fitTestStopped];
      }
    }
  }
}

- (void)sealValueChanged:(id)changed
{
  changedCopy = changed;
  if (!self->_testActive)
  {
    NSLog(&cfstr_FitTestDiscard.isa);
    goto LABEL_39;
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissFitTest];
  navigationItem = [(HPCUIFitTestController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:0 animated:1];

  navigationItem2 = [(HPCUIFitTestController *)self navigationItem];
  v80 = v5;
  [navigationItem2 setRightBarButtonItem:v5];

  object = [changedCopy object];
  v9 = [object objectForKeyedSubscript:@"sealLeft"];
  v10 = [object objectForKeyedSubscript:@"sealRight"];
  v79 = v9;
  [v9 floatValue];
  v12 = v11;
  v78 = v10;
  [v10 floatValue];
  v14 = v13;
  NSLog(&cfstr_FitTestLeftsea.isa, v12);
  NSLog(&cfstr_FitTestRightse.isa, v14);
  v15 = [object objectForKeyedSubscript:@"confidenceLeft"];
  v16 = [object objectForKeyedSubscript:@"confidenceRight"];
  v77 = v15;
  [v15 floatValue];
  v18 = v17;
  v76 = v16;
  [v16 floatValue];
  v20 = v19;
  NSLog(&cfstr_FitTestConfide.isa, v18);
  NSLog(&cfstr_FitTestConfide_0.isa, v20);
  [(HPCUIFitTestController *)self fitTestStopped];
  headerView = [(OBWelcomeController *)self->_fitTestController headerView];
  [(HPCUIFitTestController *)self getConfidenceThreshold];
  if (v18 >= v22 && v20 >= v22)
  {
    [(HPCUIFitTestController *)self getSealThreshold];
    v24 = v23;
    v25 = MEMORY[0x1E69DD250];
    if (v12 >= v23)
    {
      v26 = v88;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v27 = __43__HPCUIFitTestController_sealValueChanged___block_invoke_2;
    }

    else
    {
      v26 = v89;
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v27 = __43__HPCUIFitTestController_sealValueChanged___block_invoke;
    }

    v38 = v12 >= v23;
    v26[2] = v27;
    v26[3] = &unk_1E7973C60;
    v26[4] = self;
    [v25 animateWithDuration:0.5 animations:?];
    v39 = MEMORY[0x1E69DD250];
    if (v14 >= v24)
    {
      v40 = v86;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v41 = __43__HPCUIFitTestController_sealValueChanged___block_invoke_4;
    }

    else
    {
      v40 = v87;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v41 = __43__HPCUIFitTestController_sealValueChanged___block_invoke_3;
    }

    v40[2] = v41;
    v40[3] = &unk_1E7973C60;
    v40[4] = self;
    [v39 animateWithDuration:0.5 animations:?];
    provider = [(HPCUIFitTestController *)self provider];
    platformName = [provider platformName];
    v44 = platformName;
    v45 = @"AirPods";
    if (platformName)
    {
      v45 = platformName;
    }

    v46 = v45;

    provider2 = [(HPCUIFitTestController *)self provider];
    singularName = [provider2 singularName];
    v49 = singularName;
    v50 = @"AirPod";
    if (singularName)
    {
      v50 = singularName;
    }

    v51 = v50;

    getResultsTitle = [(HPCUIFitTestController *)self getResultsTitle];
    [headerView setTitle:getResultsTitle];

    if (v12 >= v24 && v14 >= v24)
    {
      v53 = MEMORY[0x1E696AAE8];
      v54 = objc_opt_self();
      v55 = [v53 bundleForClass:v54];
      v56 = [v55 localizedStringForKey:@"The ear tips you’re using are a good fit for both ears." value:&stru_1F210A6C0 table:0];
      [headerView setDetailText:v56];

      if (self->_completionHandler)
      {
        playButton = self->_playButton;
        v58 = MEMORY[0x1E696AAE8];
        v59 = objc_opt_self();
        v60 = [v58 bundleForClass:v59];
        v61 = [v60 localizedStringForKey:@"Continue" value:&stru_1F210A6C0 table:0];
        [(OBTrayButton *)playButton setTitle:v61 forState:0];

        imageView = [(OBTrayButton *)self->_playButton imageView];
        [imageView setHidden:1];

        [(OBTrayButton *)self->_playButton removeTarget:self action:sel_startFitTest forControlEvents:64];
        [(OBTrayButton *)self->_playButton addTarget:self action:sel_callCompletionHandler forControlEvents:64];
      }

      goto LABEL_35;
    }

    if (v12 >= v24 || v14 >= v24)
    {
      if (v12 < v24 || v14 >= v24)
      {
        v64 = v14 < v24 || v38;
        if (v64)
        {
          NSLog(&cfstr_FitTestLeftsea_0.isa, v12 >= v24, v12 < v24, v14 >= v24, v14 < v24);
LABEL_35:

          goto LABEL_36;
        }

        v70 = MEMORY[0x1E696AEC0];
        v74 = MEMORY[0x1E696AAE8];
        v67 = objc_opt_self();
        v72 = [v74 bundleForClass:v67];
        v68 = v72;
        v73 = @"Try adjusting the left %@ in your ear, or change the ear tip size and try the test again.\n\nYou should use the ear tip that is most comfortable in each ear.";
      }

      else
      {
        v70 = MEMORY[0x1E696AEC0];
        v71 = MEMORY[0x1E696AAE8];
        v67 = objc_opt_self();
        v72 = [v71 bundleForClass:v67];
        v68 = v72;
        v73 = @"Try adjusting the right %@ in your ear, or change the ear tip size and try the test again.\n\nYou should use the ear tip that is most comfortable in each ear.";
      }

      v69 = [v72 localizedStringForKey:v73 value:&stru_1F210A6C0 table:0];
      [v70 localizedStringWithFormat:v69, v51];
    }

    else
    {
      v65 = MEMORY[0x1E696AEC0];
      v66 = MEMORY[0x1E696AAE8];
      v67 = objc_opt_self();
      v68 = [v66 bundleForClass:v67];
      v69 = [v68 localizedStringForKey:@"Adjust both %@ in your ears value:or try another ear tip size and run the test again.\n\nYou should use the ear tips that are most comfortable in each ear." table:{&stru_1F210A6C0, 0}];
      [v65 localizedStringWithFormat:v69, v46];
    }
    v75 = ;

    [headerView setDetailText:v75];
    goto LABEL_35;
  }

  NSLog(&cfstr_FitTestConfide_1.isa);
  v28 = MEMORY[0x1E696AAE8];
  v29 = objc_opt_self();
  v30 = [v28 bundleForClass:v29];
  v31 = [v30 localizedStringForKey:@"Unable to Complete Ear Tip Fit Test" value:&stru_1F210A6C0 table:0];
  [headerView setTitle:v31];

  v32 = MEMORY[0x1E696AAE8];
  v33 = objc_opt_self();
  v34 = [v32 bundleForClass:v33];
  v35 = [v34 localizedStringForKey:@"Make sure to find a quiet location and remain still during ear tip fit test." value:&stru_1F210A6C0 table:0];
  [headerView setDetailText:v35];

  [(HPCUIFitTestController *)self setupConstraints];
  view = [(HPCUIFitTestController *)self view];
  [view setNeedsLayout];

  view2 = [(HPCUIFitTestController *)self view];
  [view2 layoutIfNeeded];

LABEL_36:
  if ([(HPCUIFitTestController *)self isDebugModeEnabled])
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __43__HPCUIFitTestController_sealValueChanged___block_invoke_5;
    v81[3] = &unk_1E7973CA8;
    v81[4] = self;
    v82 = v12;
    v83 = v18;
    v84 = v14;
    v85 = v20;
    [MEMORY[0x1E69DD250] animateWithDuration:v81 animations:0.5];
  }

LABEL_39:
}

void __43__HPCUIFitTestController_sealValueChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"left.circle.fill"];
  v3 = [MEMORY[0x1E69DC888] systemYellowColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1088) setImage:v4];

  v5 = [MEMORY[0x1E69DC888] systemYellowColor];
  [*(*(a1 + 32) + 1112) setTextColor:v5];

  v6 = MEMORY[0x1E696AAE8];
  v9 = objc_opt_self();
  v7 = [v6 bundleForClass:v9];
  v8 = [v7 localizedStringForKey:@"Adjust or Try\n a Different\n Ear Tip" value:&stru_1F210A6C0 table:0];
  [*(*(a1 + 32) + 1112) setText:v8];
}

void __43__HPCUIFitTestController_sealValueChanged___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"left.circle.fill"];
  v3 = [MEMORY[0x1E69DC888] systemGreenColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1088) setImage:v4];

  v5 = [MEMORY[0x1E69DC888] systemGreenColor];
  [*(*(a1 + 32) + 1112) setTextColor:v5];

  v6 = MEMORY[0x1E696AAE8];
  v9 = objc_opt_self();
  v7 = [v6 bundleForClass:v9];
  v8 = [v7 localizedStringForKey:@"Good Seal" value:&stru_1F210A6C0 table:0];
  [*(*(a1 + 32) + 1112) setText:v8];
}

void __43__HPCUIFitTestController_sealValueChanged___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"right.circle.fill"];
  v3 = [MEMORY[0x1E69DC888] systemYellowColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1104) setImage:v4];

  v5 = [MEMORY[0x1E69DC888] systemYellowColor];
  [*(*(a1 + 32) + 1120) setTextColor:v5];

  v6 = MEMORY[0x1E696AAE8];
  v9 = objc_opt_self();
  v7 = [v6 bundleForClass:v9];
  v8 = [v7 localizedStringForKey:@"Adjust or Try\n a Different\n Ear Tip" value:&stru_1F210A6C0 table:0];
  [*(*(a1 + 32) + 1120) setText:v8];
}

void __43__HPCUIFitTestController_sealValueChanged___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"right.circle.fill"];
  v3 = [MEMORY[0x1E69DC888] systemGreenColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  [*(*(a1 + 32) + 1104) setImage:v4];

  v5 = [MEMORY[0x1E69DC888] systemGreenColor];
  [*(*(a1 + 32) + 1120) setTextColor:v5];

  v6 = MEMORY[0x1E696AAE8];
  v9 = objc_opt_self();
  v7 = [v6 bundleForClass:v9];
  v8 = [v7 localizedStringForKey:@"Good Seal" value:&stru_1F210A6C0 table:0];
  [*(*(a1 + 32) + 1120) setText:v8];
}

void __43__HPCUIFitTestController_sealValueChanged___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) buttonTray];
  [v2 addButton:*(*(a1 + 32) + 1016)];

  v3 = [MEMORY[0x1E69DC888] systemGreenColor];
  [*(*(a1 + 32) + 1136) setTextColor:v3];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nLeft Seal : %.2f  Confidence : %.2f\nRight Seal : %.2f  Confidence : %.2f", *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52)];
  [*(*(a1 + 32) + 1136) setText:v4];
}

- (void)fitTestStopped
{
  self->_testActive = 0;
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HPCUIFitTestController_fitTestStopped__block_invoke;
  block[3] = &unk_1E7973C60;
  block[4] = self;
  dispatch_async(v3, block);

  [(OBTrayButton *)self->_playButton hidesBusyIndicator];
  headerView = [(OBWelcomeController *)self->_fitTestController headerView];
  getTitle = [(HPCUIFitTestController *)self getTitle];
  [headerView setTitle:getTitle];

  getSubTitle = [(HPCUIFitTestController *)self getSubTitle];
  [headerView setDetailText:getSubTitle];
}

uint64_t __40__HPCUIFitTestController_fitTestStopped__block_invoke(uint64_t a1)
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
    [(HPCUIFitTestController *)self dismissFitTest];
  }
}

- (void)powerChangedHandler:(id)handler
{
  v4 = MEMORY[0x1E698F468];
  handlerCopy = handler;
  sharedInstance = [v4 sharedInstance];
  enabled = [sharedInstance enabled];

  name = [handlerCopy name];

  v9 = "off";
  if (enabled)
  {
    v9 = "on";
  }

  NSLog(&cfstr_FitTestReceive.isa, name, v9);

  [(HPCUIFitTestController *)self dismissFitTest];
}

- (void)handleCallIsActiveDidChangeNotification:(id)notification
{
  callActive = self->_callActive;
  isCallActive = [(HPCUIFitTestController *)self isCallActive];
  self->_callActive = [(HPCUIFitTestController *)self isCallActive];
  if (callActive == isCallActive)
  {
    NSLog(&cfstr_FitTestNoChang_0.isa);
  }

  else
  {
    NSLog(&cfstr_FitTestUpdateU_0.isa);
  }
}

- (void)handleAudioSessionInterruption:(id)interruption
{
  userInfo = [interruption userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E6958100]];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    NSLog(&cfstr_FitTestAudioSe.isa, self->_testActive);
    if (self->_testActive)
    {
      [(HPCUIFitTestController *)self fitTestStopped];
    }
  }
}

- (void)handleMediaServerConnectionDied:(id)died
{
  NSLog(&cfstr_FitTestAudioSe_0.isa, a2, died);
  avSystemController = self->_avSystemController;
  self->_avSystemController = 0;
}

- (void)updateFitTestActiveState
{
  v3 = 0x300000003;
  [(BluetoothDevice *)self->currentDevice inEarStatusPrimary:&v3 + 4 secondary:&v3];
  self->_budsInEar = v3 == 0;
  self->_callActive = [(HPCUIFitTestController *)self isCallActive];
}

- (void)resetVolume
{
  if (self->_volumeModified)
  {
    initialVolume = self->_initialVolume;
    if (initialVolume <= 0.5)
    {
      NSLog(&cfstr_FitTestCleanup.isa, a2, initialVolume);
      mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
      *&v5 = self->_initialVolume;
      [mEMORY[0x1E69AED10] setVolumeTo:@"Audio/Video" forCategory:v5];

      self->_volumeModified = 0;
    }
  }
}

- (void)cleanupAudio
{
  NSLog(&cfstr_FitTestCleanUp.isa, a2);
  [(AVAudioPlayer *)self->_player setVolume:0.0 fadeDuration:1.0];
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  v5 = 0;
  [mEMORY[0x1E6958460] setActive:0 withOptions:1 error:&v5];
  v4 = v5;

  if (v4)
  {
    NSLog(&cfstr_FitTestFailedT_0.isa, v4);
  }
}

- (BOOL)isCallActive
{
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED10] attributeForKey:*MEMORY[0x1E69AEA38]];

  bOOLValue = [v3 BOOLValue];
  LOBYTE(mEMORY[0x1E69AED10]) = bOOLValue;
  NSLog(&cfstr_FitTestCallIsA.isa, bOOLValue);

  return mEMORY[0x1E69AED10];
}

- (BOOL)isPreferredLanguageEnglish
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  if ([firstObject isEqualToString:@"en"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [firstObject hasPrefix:@"en-"];
  }

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
  productId = [(BluetoothDevice *)self->currentDevice productId];
  v3 = 0.0;
  if (productId > 8230)
  {
    if (productId != 8231)
    {
      if (productId != 8239)
      {
LABEL_10:
        v3 = -5.0;
        goto LABEL_11;
      }

      v3 = 4.3;
    }
  }

  else if (productId != 8212 && productId != 8228)
  {
    goto LABEL_10;
  }

LABEL_11:
  NSLog(&cfstr_FitTestGetseal.isa, productId, v3);
  return v3;
}

- (float)getConfidenceThreshold
{
  productId = [(BluetoothDevice *)self->currentDevice productId];
  v3 = -3.0;
  if (productId > 8230)
  {
    if (productId != 8231)
    {
      if (productId != 8239)
      {
LABEL_10:
        v3 = 10.0;
        goto LABEL_11;
      }

      v3 = 5.1;
    }
  }

  else if (productId != 8212 && productId != 8228)
  {
    goto LABEL_10;
  }

LABEL_11:
  NSLog(&cfstr_FitTestGetconf.isa, productId, v3);
  return v3;
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  NSLog(&cfstr_FitTestSetting.isa);
  v5 = _Block_copy(handlerCopy);

  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;
}

- (void)callCompletionHandler
{
  NSLog(&cfstr_FitTestCallCom.isa, a2);
  v3 = *(self->_completionHandler + 2);

  v3();
}

- (void)applyFilters:(id)filters imageView:(id)view deviceColor:(unsigned int)color
{
  v5 = *&color;
  filtersCopy = filters;
  viewCopy = view;
  if (filtersCopy)
  {
    allKeys = [filtersCopy allKeys];
    v11 = [allKeys count];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E6979378]);
      v13 = [v12 initWithType:*MEMORY[0x1E6979880]];
      v14 = objc_alloc(MEMORY[0x1E6979378]);
      v15 = [v14 initWithType:*MEMORY[0x1E6979818]];
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66 = *(MEMORY[0x1E6979280] + 4);
      v67 = *(MEMORY[0x1E6979280] + 20);
      v64 = *(MEMORY[0x1E6979280] + 28);
      v65 = *(MEMORY[0x1E6979280] + 44);
      v63[0] = *(MEMORY[0x1E6979280] + 52);
      *(v63 + 12) = *(MEMORY[0x1E6979280] + 64);
      darkMode = self->_darkMode;
      provider = [(HPCUIFitTestController *)self provider];
      isProductOfDifferentColors = [provider isProductOfDifferentColors];
      if (darkMode)
      {
        if (isProductOfDifferentColors)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DarkMatrixValue-%d", v5];
        }

        else
        {
          v20 = @"DarkMatrixValue";
        }

        provider2 = [(HPCUIFitTestController *)self provider];
        if ([provider2 isProductOfDifferentColors])
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DarkBiasValue-%d", v5];
        }

        else
        {
          v22 = @"DarkBiasValue";
        }

        v24 = [filtersCopy objectForKey:v20];
        [v24 floatValue];
        v26 = v25;

        v27 = [filtersCopy objectForKey:v22];
        [v27 floatValue];
        v29 = v28;

        if (v29 != 0.0 && v26 != 0.0)
        {
          goto LABEL_26;
        }

        v54 = v13;
        provider3 = [(HPCUIFitTestController *)self provider];
        isProductOfDifferentColors2 = [provider3 isProductOfDifferentColors];

        if ((isProductOfDifferentColors2 & 1) == 0)
        {
LABEL_25:
          v13 = v54;
LABEL_26:
          v55 = v26;
          v56 = v66;
          v57 = v67;
          v58 = v26;
          v59 = v64;
          v60 = v65;
          v61 = v26;
          *v62 = v63[0];
          *&v62[12] = *(v63 + 12);
          v49 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v55];
          [v13 setValue:v49 forKey:@"inputColorMatrix"];

          *&v50 = v29;
          v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
          [v15 setValue:v51 forKey:@"inputAmount"];

          [v16 addObject:v13];
          [v16 addObject:v15];
          layer = [viewCopy layer];
          [layer setFilters:v16];

          goto LABEL_27;
        }

        v53 = @"DarkBiasValue-%d";
        v32 = @"DarkMatrixValue-%d";
      }

      else
      {
        if (isProductOfDifferentColors)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LightMatrixValue-%d", v5];
        }

        else
        {
          v20 = @"LightMatrixValue";
        }

        provider4 = [(HPCUIFitTestController *)self provider];
        if ([provider4 isProductOfDifferentColors])
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LightBiasValue-%d", v5];
        }

        else
        {
          v22 = @"LightBiasValue";
        }

        v33 = [filtersCopy objectForKey:v20];
        [v33 floatValue];
        v26 = v34;

        v35 = [filtersCopy objectForKey:v22];
        [v35 floatValue];
        v29 = v36;

        if (v29 != 0.0 && v26 != 0.0)
        {
          goto LABEL_26;
        }

        v54 = v13;
        provider5 = [(HPCUIFitTestController *)self provider];
        isProductOfDifferentColors3 = [provider5 isProductOfDifferentColors];

        if (!isProductOfDifferentColors3)
        {
          goto LABEL_25;
        }

        v53 = @"LightBiasValue-%d";
        v32 = @"LightMatrixValue-%d";
      }

      v39 = MEMORY[0x1E696AEC0];
      provider6 = [(HPCUIFitTestController *)self provider];
      v41 = [v39 stringWithFormat:v32, objc_msgSend(provider6, "defaultFiltersID")];

      v42 = MEMORY[0x1E696AEC0];
      provider7 = [(HPCUIFitTestController *)self provider];
      v44 = [v42 stringWithFormat:v53, objc_msgSend(provider7, "defaultFiltersID")];

      v45 = [filtersCopy objectForKey:v41];
      [v45 floatValue];
      v26 = v46;

      v47 = [filtersCopy objectForKey:v44];
      [v47 floatValue];
      v29 = v48;

      v20 = v41;
      v22 = v44;
      goto LABEL_25;
    }
  }

LABEL_27:
}

@end