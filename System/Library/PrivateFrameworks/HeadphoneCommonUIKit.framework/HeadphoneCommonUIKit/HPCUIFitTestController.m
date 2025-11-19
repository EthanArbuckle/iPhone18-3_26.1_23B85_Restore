@interface HPCUIFitTestController
- (BOOL)isCallActive;
- (BOOL)isDebugModeEnabled;
- (BOOL)isPreferredLanguageEnglish;
- (BOOL)isiPad;
- (HPCUIFitTestController)initWithDevice:(id)a3 provider:(id)a4;
- (HPCUIFitTestControllerDepedencyProvider)provider;
- (float)getConfidenceThreshold;
- (float)getSealThreshold;
- (id)getResultsTitle;
- (id)getSubTitle;
- (id)getTitle;
- (void)applyFilters:(id)a3 imageView:(id)a4 deviceColor:(unsigned int)a5;
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

@implementation HPCUIFitTestController

- (HPCUIFitTestController)initWithDevice:(id)a3 provider:(id)a4
{
  v94[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self)
  {
    v90 = v7;
    v93.receiver = self;
    v93.super_class = HPCUIFitTestController;
    v8 = a4;
    v9 = [(HPCUIFitTestController *)&v93 init];
    objc_storeStrong(&v9->currentDevice, a3);
    objc_storeWeak(&v9->_provider, v8);

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
    v16 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    LOBYTE(v8) = [v16 getVolume:&v9->_initialVolume forCategory:@"Audio/Video"];

    if ((v8 & 1) == 0)
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
    v28 = [MEMORY[0x1E69DC888] systemGrayColor];
    v29 = [v27 imageWithTintColor:v28 renderingMode:1];
    v30 = [v26 initWithImage:v29];
    leftBudLabelImageView = v9->_leftBudLabelImageView;
    v9->_leftBudLabelImageView = v30;

    v32 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"right.circle.fill"];
    v34 = [MEMORY[0x1E69DC888] systemGrayColor];
    v35 = [v33 imageWithTintColor:v34 renderingMode:1];
    v36 = [v32 initWithImage:v35];
    rightBudLabelImageView = v9->_rightBudLabelImageView;
    v9->_rightBudLabelImageView = v36;

    [(UIView *)v9->_leftBudLabel setSize:18.0, 18.0];
    [(UIView *)v9->_leftBudLabel _setContinuousCornerRadius:9.0];
    v38 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v9->_leftBudLabel setBackgroundColor:v38];

    [(UIView *)v9->_rightBudLabel setSize:18.0, 18.0];
    [(UIView *)v9->_rightBudLabel _setContinuousCornerRadius:9.0];
    v39 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v9->_rightBudLabel setBackgroundColor:v39];

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
    v46 = [MEMORY[0x1E69DC888] systemBlackColor];
    [(UILabel *)v9->_leftBudResultLabel setTextColor:v46];

    [(UILabel *)v9->_leftBudResultLabel setTextAlignment:1];
    [(UILabel *)v9->_leftBudResultLabel setNumberOfLines:0];
    [(UILabel *)v9->_leftBudResultLabel setLineBreakMode:0];
    v47 = *MEMORY[0x1E69DDCF8];
    v48 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v9->_leftBudResultLabel setFont:v48];

    [(UILabel *)v9->_leftBudResultLabel setAlpha:1.0];
    [(UILabel *)v9->_rightBudResultLabel setText:&stru_1F210A6C0];
    v49 = [MEMORY[0x1E69DC888] systemBlackColor];
    [(UILabel *)v9->_rightBudResultLabel setTextColor:v49];

    [(UILabel *)v9->_rightBudResultLabel setTextAlignment:1];
    [(UILabel *)v9->_rightBudResultLabel setNumberOfLines:0];
    [(UILabel *)v9->_rightBudResultLabel setLineBreakMode:0];
    v50 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v47];
    [(UILabel *)v9->_rightBudResultLabel setFont:v50];

    [(UILabel *)v9->_rightBudResultLabel setAlpha:1.0];
    [(UILabel *)v9->_resultDetailLabel setText:&stru_1F210A6C0];
    v51 = [MEMORY[0x1E69DC888] systemBlackColor];
    [(UILabel *)v9->_resultDetailLabel setTextColor:v51];

    [(UILabel *)v9->_resultDetailLabel setTextAlignment:1];
    [(UILabel *)v9->_resultDetailLabel setNumberOfLines:0];
    [(UILabel *)v9->_resultDetailLabel setLineBreakMode:0];
    v52 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v47];
    [(UILabel *)v9->_resultDetailLabel setFont:v52];

    [(UILabel *)v9->_resultDetailLabel setAlpha:1.0];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = 0;

    v54 = [(HPCUIFitTestController *)v9 traitCollection];
    v9->_darkMode = [v54 userInterfaceStyle] == 2;

    v55 = [(HPCUIFitTestController *)v9 provider];
    v56 = [v55 leftImage:v9->_darkMode];

    v57 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v56];
    leftImView = v9->_leftImView;
    v9->_leftImView = v57;

    v59 = [(HPCUIFitTestController *)v9 provider];
    v60 = [v59 rightImage:v9->_darkMode];

    v61 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v60];
    rightImView = v9->_rightImView;
    v9->_rightImView = v61;

    v92 = 0;
    [(BluetoothDevice *)v9->currentDevice getDeviceColor:&v92];
    v63 = [(HPCUIFitTestController *)v9 provider];
    v64 = [v63 getAssetsDictionary];
    v65 = v9->_leftImView;
    v66 = [(HPCUIFitTestController *)v9 provider];
    -[HPCUIFitTestController applyFilters:imageView:deviceColor:](v9, "applyFilters:imageView:deviceColor:", v64, v65, [v66 deviceColor]);

    v67 = [(HPCUIFitTestController *)v9 provider];
    v68 = [v67 getAssetsDictionary];
    v69 = v9->_rightImView;
    v70 = [(HPCUIFitTestController *)v9 provider];
    -[HPCUIFitTestController applyFilters:imageView:deviceColor:](v9, "applyFilters:imageView:deviceColor:", v68, v69, [v70 deviceColor]);

    v71 = [MEMORY[0x1E696AD88] defaultCenter];
    [v71 addObserver:v9 selector:sel_inEarStatusChanged_ name:*MEMORY[0x1E698F438] object:0];

    v72 = [MEMORY[0x1E696AD88] defaultCenter];
    [v72 addObserver:v9 selector:sel_sealValueChanged_ name:*MEMORY[0x1E698F440] object:0];

    v73 = [MEMORY[0x1E696AD88] defaultCenter];
    [v73 addObserver:v9 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x1E698F450] object:0];

    v74 = [MEMORY[0x1E696AD88] defaultCenter];
    [v74 addObserver:v9 selector:sel_powerChangedHandler_ name:*MEMORY[0x1E698F448] object:0];

    v75 = [MEMORY[0x1E696AD88] defaultCenter];
    [v75 addObserver:v9 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

    v76 = [MEMORY[0x1E696AD88] defaultCenter];
    [v76 addObserver:v9 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v77 = [MEMORY[0x1E696AD88] defaultCenter];
    v78 = *MEMORY[0x1E69580D8];
    v79 = [MEMORY[0x1E6958460] sharedInstance];
    [v77 addObserver:v9 selector:sel_handleAudioSessionInterruption_ name:v78 object:v79];

    v80 = [MEMORY[0x1E696AD88] defaultCenter];
    v81 = *MEMORY[0x1E69AECB8];
    v82 = [MEMORY[0x1E6958460] sharedInstance];
    [v80 addObserver:v9 selector:sel_handleMediaServerConnectionDied_ name:v81 object:v82];

    v83 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v84 = MEMORY[0x1E69AEA40];
    v94[0] = *MEMORY[0x1E69AEA40];
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
    v86 = *MEMORY[0x1E69AECD8];
    v91 = 0;
    LOBYTE(v82) = [v83 setAttribute:v85 forKey:v86 error:&v91];
    v87 = v91;

    if (v82)
    {
      NSLog(&cfstr_FitTestSuccess.isa);
      v88 = [MEMORY[0x1E696AD88] defaultCenter];
      [v88 addObserver:v9 selector:sel_handleCallIsActiveDidChangeNotification_ name:*v84 object:0];
    }

    else
    {
      NSLog(&cfstr_FitTestFailedT.isa, v87);
    }

    v7 = v90;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
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
  v17.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v17 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v6 viewDidLoad];
  v3 = [(HPCUIFitTestController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(HPCUIFitTestController *)self view];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [(UIView *)self->_fitTestContentView sizeToFit];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HPCUIFitTestController;
  [(HPCUIFitTestController *)&v4 viewWillLayoutSubviews];
  [(HPCUIFitTestController *)self setupConstraints];
  v3 = [(HPCUIFitTestController *)self view];
  [v3 layoutIfNeeded];
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
  v2 = [(HPCUIFitTestController *)self provider];
  v3 = [v2 platformName];
  v4 = v3;
  v5 = @"AirPods";
  if (v3)
  {
    v5 = v3;
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
  v8 = [(HPCUIFitTestController *)self getTitle];
  v9 = [(HPCUIFitTestController *)self getSubTitle];
  v10 = [v7 initWithTitle:v8 detailText:v9 icon:0 contentLayout:2];
  fitTestController = self->_fitTestController;
  self->_fitTestController = v10;

  v12 = [(HPCUIFitTestController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(OBWelcomeController *)self->_fitTestController view];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [(OBWelcomeController *)self->_fitTestController view];
  [v22 setAutoresizingMask:18];

  [(HPCUIFitTestController *)self setupFitTestContentView];
  v23 = [MEMORY[0x1E69B7D00] boldButton];
  playButton = self->_playButton;
  self->_playButton = v23;

  [(OBTrayButton *)self->_playButton addTarget:self action:sel_startFitTest forControlEvents:64];
  v25 = self->_playButton;
  v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
  [(OBTrayButton *)v25 setImage:v26 forState:0];

  [(HPCUIFitTestController *)self updateFitTestActiveState];
  v27 = [(OBWelcomeController *)self->_fitTestController buttonTray];
  [v27 addButton:self->_playButton];

  if ([(HPCUIFitTestController *)self isDebugModeEnabled])
  {
    v28 = [MEMORY[0x1E69B7D38] linkButton];
    debugCopyResultsButton = self->_debugCopyResultsButton;
    self->_debugCopyResultsButton = v28;

    [(OBLinkTrayButton *)self->_debugCopyResultsButton setTitle:@"Copy Results" forState:0];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setClipsToBounds:1];
    v30 = [(OBLinkTrayButton *)self->_debugCopyResultsButton layer];
    [v30 setMasksToBounds:1];

    [(OBLinkTrayButton *)self->_debugCopyResultsButton addTarget:self action:sel_copyToClipboard forControlEvents:64];
    [(OBLinkTrayButton *)self->_debugCopyResultsButton setUserInteractionEnabled:1];
  }

  [(HPCUIFitTestController *)self addChildViewController:self->_fitTestController];
  v31 = [(HPCUIFitTestController *)self view];
  v32 = [(OBWelcomeController *)self->_fitTestController view];
  [v31 addSubview:v32];
}

- (void)copyToClipboard
{
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
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
  v102 = objc_opt_new();
  v3 = [(UIView *)self->_fitTestContentView topAnchor];
  v4 = [(OBWelcomeController *)self->_fitTestController contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v102 addObject:v6];

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 preferredContentSizeCategory];

  v101 = v8;
  v9 = ([v8 isEqualToString:*MEMORY[0x1E69DDC88]] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69DDC70]);
  v10 = [(HPCUIFitTestController *)self view];
  [v10 bounds];
  v12 = v11;

  if ([(HPCUIFitTestController *)self isSmallScreenDevice])
  {
    v13 = [(HPCUIFitTestController *)self view];
    [v13 bounds];
    v15 = v14 * 0.35;
  }

  else
  {
    v15 = v12 * 0.3;
  }

  if ([(HPCUIFitTestController *)self isiPad])
  {
    v16 = [(UIStackView *)self->_stackViewImages topAnchor];
    v17 = [(OBWelcomeController *)self->_fitTestController headerView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:35.0];
  }

  else
  {
    v20 = [(HPCUIFitTestController *)self view];
    [v20 size];
    v22 = v21;
    v23 = [(HPCUIFitTestController *)self view];
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

  v29 = [(HPCUIFitTestController *)self traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  if ((v9 | UIContentSizeCategoryIsAccessibilityCategory(v30)))
  {
  }

  else
  {
    v31 = [(HPCUIFitTestController *)self isPreferredLanguageEnglish];

    if (v31)
    {
      v32 = [(OBWelcomeController *)self->_fitTestController contentView];
      v33 = [v32 heightAnchor];
      v34 = [v33 constraintGreaterThanOrEqualToConstant:403.0];
      [v102 addObject:v34];

      [v102 addObject:self->_topSpacerConstraint];
      goto LABEL_19;
    }
  }

  v35 = [(OBWelcomeController *)self->_fitTestController contentView];
  v36 = [v35 heightAnchor];
  v37 = [v36 constraintGreaterThanOrEqualToConstant:403.0];
  [v102 addObject:v37];

  v38 = [(UIStackView *)self->_stackViewImages topAnchor];
  v39 = [(OBWelcomeController *)self->_fitTestController headerView];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:100.0];
  [v102 addObject:v41];

LABEL_19:
  v42 = [(UIStackView *)self->_stackViewImages centerXAnchor];
  v43 = [(OBWelcomeController *)self->_fitTestController contentView];
  v44 = [v43 centerXAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  [v102 addObject:v45];

  v46 = [(UILabel *)self->_leftBudResultLabel topAnchor];
  v47 = [(UIView *)self->_leftBudLabel bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:1.0];
  [v102 addObject:v48];

  v49 = [(UILabel *)self->_rightBudResultLabel topAnchor];
  v50 = [(UIView *)self->_rightBudLabel bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:1.0];
  [v102 addObject:v51];

  v52 = [(UILabel *)self->_leftBudResultLabel centerXAnchor];
  v53 = [(UIView *)self->_leftBudLabel centerXAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  [v102 addObject:v54];

  v55 = [(UILabel *)self->_rightBudResultLabel centerXAnchor];
  v56 = [(UIView *)self->_rightBudLabel centerXAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v102 addObject:v57];

  v58 = [(UIView *)self->_leftBudLabel widthAnchor];
  v59 = [v58 constraintEqualToConstant:18.0];
  [v102 addObject:v59];

  v60 = [(UIView *)self->_leftBudLabel heightAnchor];
  v61 = [v60 constraintEqualToConstant:18.0];
  [v102 addObject:v61];

  v62 = [(UIView *)self->_rightBudLabel widthAnchor];
  v63 = [v62 constraintEqualToConstant:18.0];
  [v102 addObject:v63];

  v64 = [(UIView *)self->_rightBudLabel heightAnchor];
  v65 = [v64 constraintEqualToConstant:18.0];
  [v102 addObject:v65];

  v66 = [(UILabel *)self->_leftBudResultLabel widthAnchor];
  v67 = [v66 constraintLessThanOrEqualToConstant:113.0];
  [v102 addObject:v67];

  v68 = [(UILabel *)self->_rightBudResultLabel widthAnchor];
  v69 = [v68 constraintLessThanOrEqualToConstant:113.0];
  [v102 addObject:v69];

  v70 = [(UILabel *)self->_resultDetailLabel topAnchor];
  v71 = [(UILabel *)self->_leftBudResultLabel bottomAnchor];
  v72 = [v70 constraintGreaterThanOrEqualToAnchor:v71 constant:1.0];
  [v102 addObject:v72];

  v73 = [(UILabel *)self->_resultDetailLabel topAnchor];
  v74 = [(UILabel *)self->_rightBudResultLabel bottomAnchor];
  v75 = [v73 constraintGreaterThanOrEqualToAnchor:v74 constant:1.0];
  [v102 addObject:v75];

  v76 = [(UILabel *)self->_resultDetailLabel leadingAnchor];
  v77 = [(OBWelcomeController *)self->_fitTestController headerView];
  v78 = [v77 leadingAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];
  [v102 addObject:v79];

  v80 = [(UILabel *)self->_resultDetailLabel trailingAnchor];
  v81 = [(OBWelcomeController *)self->_fitTestController headerView];
  v82 = [v81 trailingAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  [v102 addObject:v83];

  v84 = [(UIView *)self->_leftBudLabel topAnchor];
  v85 = [(UIImageView *)self->_leftImView bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:20.0];
  [v102 addObject:v86];

  v87 = [(UIView *)self->_rightBudLabel topAnchor];
  v88 = [(UIImageView *)self->_rightImView bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:20.0];
  [v102 addObject:v89];

  v90 = [(BluetoothDevice *)self->currentDevice productId];
  leftBudLabel = self->_leftBudLabel;
  if (v90 == 8231)
  {
    v92 = [(UIView *)leftBudLabel centerXAnchor];
    v93 = [(UIImageView *)self->_leftImView centerXAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    [v102 addObject:v94];

    v95 = [(UIView *)self->_rightBudLabel centerXAnchor];
    v96 = [(UIImageView *)self->_rightImView centerXAnchor];
    [v95 constraintEqualToAnchor:v96];
  }

  else
  {
    v97 = [(UIView *)leftBudLabel leftAnchor];
    v98 = [(UIStackView *)self->_stackViewImages leftAnchor];
    v99 = [v97 constraintEqualToAnchor:v98 constant:62.0];
    [v102 addObject:v99];

    v95 = [(UIView *)self->_rightBudLabel rightAnchor];
    v96 = [(UIStackView *)self->_stackViewImages rightAnchor];
    [v95 constraintEqualToAnchor:v96 constant:-62.0];
  }
  v100 = ;
  [v102 addObject:v100];

  [MEMORY[0x1E696ACD8] activateConstraints:v102];
}

- (void)startFitTest
{
  v3 = [(HPCUIFitTestController *)self provider];
  v4 = [v3 platformName];
  v5 = v4;
  v6 = @"AirPods Pro";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  callActive = self->_callActive;
  if (self->_budsInEar && !callActive)
  {
    [(HPCUIFitTestController *)self setCancelAction];
    [(HPCUIFitTestController *)self removeDoneButton];
    NSLog(&cfstr_FitTestStartFi.isa);
    v25 = [MEMORY[0x1E695DF00] date];
    startFitTestTimestamp = self->_startFitTestTimestamp;
    self->_startFitTestTimestamp = v25;

    [(BluetoothDevice *)self->currentDevice SendSetupCommand:1];
    v14 = [(OBWelcomeController *)self->_fitTestController headerView];
    v27 = MEMORY[0x1E696AEC0];
    v28 = MEMORY[0x1E696AAE8];
    v29 = objc_opt_self();
    v30 = [v28 bundleForClass:v29];
    v31 = [v30 localizedStringForKey:@"Do Not Remove %@" value:&stru_1F210A6C0 table:0];
    v32 = [v27 localizedStringWithFormat:v31, v7];

    [v14 setTitle:v32];
    [v14 setDetailText:&stru_1F210A6C0];
    v33 = [(HPCUIFitTestController *)self view];
    [v33 setNeedsLayout];

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
      v14 = [v10 alertControllerWithTitle:v13 message:&stru_1F210A6C0 preferredStyle:1];
    }

    else
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_self();
      v17 = [v9 bundleForClass:v16];
      v18 = [v17 localizedStringForKey:@"Place %@ In Both Ears" value:&stru_1F210A6C0 table:0];
      v11 = [v15 localizedStringWithFormat:v18, v7];

      v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:&stru_1F210A6C0 preferredStyle:1];
    }

    v19 = MEMORY[0x1E69DC648];
    v20 = MEMORY[0x1E696AAE8];
    v21 = objc_opt_self();
    v22 = [v20 bundleForClass:v21];
    v23 = [v22 localizedStringForKey:@"OK" value:&stru_1F210A6C0 table:0];
    v24 = [v19 actionWithTitle:v23 style:0 handler:&__block_literal_global_0];
    [v14 addAction:v24];

    [(HPCUIFitTestController *)self presentViewController:v14 animated:1 completion:0];
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
  v3 = [(HPCUIFitTestController *)self navigationItem];
  [v3 setLeftBarButtonItems:0 animated:1];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_dismissFitTest];
  v4 = [(HPCUIFitTestController *)self navigationItem];
  [v4 setLeftBarButtonItem:v5];
}

- (void)removeDoneButton
{
  v2 = [(HPCUIFitTestController *)self navigationItem];
  [v2 setRightBarButtonItem:0 animated:1];
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

- (void)inEarStatusChanged:(id)a3
{
  v13 = [a3 object];
  v4 = [v13 objectForKeyedSubscript:@"primaryInEarStatus"];
  v5 = [v13 objectForKeyedSubscript:@"secondaryInEarStatus"];
  v6 = [v13 objectForKeyedSubscript:@"device"];
  v7 = [v6 address];
  v8 = [(BluetoothDevice *)self->currentDevice address];

  if (v7 == v8)
  {
    v9 = [v4 BOOLValue];
    v10 = (v9 | [v5 BOOLValue]) ^ 1;
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

- (void)sealValueChanged:(id)a3
{
  v4 = a3;
  if (!self->_testActive)
  {
    NSLog(&cfstr_FitTestDiscard.isa);
    goto LABEL_39;
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissFitTest];
  v6 = [(HPCUIFitTestController *)self navigationItem];
  [v6 setLeftBarButtonItems:0 animated:1];

  v7 = [(HPCUIFitTestController *)self navigationItem];
  v80 = v5;
  [v7 setRightBarButtonItem:v5];

  v8 = [v4 object];
  v9 = [v8 objectForKeyedSubscript:@"sealLeft"];
  v10 = [v8 objectForKeyedSubscript:@"sealRight"];
  v79 = v9;
  [v9 floatValue];
  v12 = v11;
  v78 = v10;
  [v10 floatValue];
  v14 = v13;
  NSLog(&cfstr_FitTestLeftsea.isa, v12);
  NSLog(&cfstr_FitTestRightse.isa, v14);
  v15 = [v8 objectForKeyedSubscript:@"confidenceLeft"];
  v16 = [v8 objectForKeyedSubscript:@"confidenceRight"];
  v77 = v15;
  [v15 floatValue];
  v18 = v17;
  v76 = v16;
  [v16 floatValue];
  v20 = v19;
  NSLog(&cfstr_FitTestConfide.isa, v18);
  NSLog(&cfstr_FitTestConfide_0.isa, v20);
  [(HPCUIFitTestController *)self fitTestStopped];
  v21 = [(OBWelcomeController *)self->_fitTestController headerView];
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
    v42 = [(HPCUIFitTestController *)self provider];
    v43 = [v42 platformName];
    v44 = v43;
    v45 = @"AirPods";
    if (v43)
    {
      v45 = v43;
    }

    v46 = v45;

    v47 = [(HPCUIFitTestController *)self provider];
    v48 = [v47 singularName];
    v49 = v48;
    v50 = @"AirPod";
    if (v48)
    {
      v50 = v48;
    }

    v51 = v50;

    v52 = [(HPCUIFitTestController *)self getResultsTitle];
    [v21 setTitle:v52];

    if (v12 >= v24 && v14 >= v24)
    {
      v53 = MEMORY[0x1E696AAE8];
      v54 = objc_opt_self();
      v55 = [v53 bundleForClass:v54];
      v56 = [v55 localizedStringForKey:@"The ear tips you’re using are a good fit for both ears." value:&stru_1F210A6C0 table:0];
      [v21 setDetailText:v56];

      if (self->_completionHandler)
      {
        playButton = self->_playButton;
        v58 = MEMORY[0x1E696AAE8];
        v59 = objc_opt_self();
        v60 = [v58 bundleForClass:v59];
        v61 = [v60 localizedStringForKey:@"Continue" value:&stru_1F210A6C0 table:0];
        [(OBTrayButton *)playButton setTitle:v61 forState:0];

        v62 = [(OBTrayButton *)self->_playButton imageView];
        [v62 setHidden:1];

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

    [v21 setDetailText:v75];
    goto LABEL_35;
  }

  NSLog(&cfstr_FitTestConfide_1.isa);
  v28 = MEMORY[0x1E696AAE8];
  v29 = objc_opt_self();
  v30 = [v28 bundleForClass:v29];
  v31 = [v30 localizedStringForKey:@"Unable to Complete Ear Tip Fit Test" value:&stru_1F210A6C0 table:0];
  [v21 setTitle:v31];

  v32 = MEMORY[0x1E696AAE8];
  v33 = objc_opt_self();
  v34 = [v32 bundleForClass:v33];
  v35 = [v34 localizedStringForKey:@"Make sure to find a quiet location and remain still during ear tip fit test." value:&stru_1F210A6C0 table:0];
  [v21 setDetailText:v35];

  [(HPCUIFitTestController *)self setupConstraints];
  v36 = [(HPCUIFitTestController *)self view];
  [v36 setNeedsLayout];

  v37 = [(HPCUIFitTestController *)self view];
  [v37 layoutIfNeeded];

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
  v4 = [(OBWelcomeController *)self->_fitTestController headerView];
  v5 = [(HPCUIFitTestController *)self getTitle];
  [v4 setTitle:v5];

  v6 = [(HPCUIFitTestController *)self getSubTitle];
  [v4 setDetailText:v6];
}

uint64_t __40__HPCUIFitTestController_fitTestStopped__block_invoke(uint64_t a1)
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
    [(HPCUIFitTestController *)self dismissFitTest];
  }
}

- (void)powerChangedHandler:(id)a3
{
  v4 = MEMORY[0x1E698F468];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 enabled];

  v8 = [v5 name];

  v9 = "off";
  if (v7)
  {
    v9 = "on";
  }

  NSLog(&cfstr_FitTestReceive.isa, v8, v9);

  [(HPCUIFitTestController *)self dismissFitTest];
}

- (void)handleCallIsActiveDidChangeNotification:(id)a3
{
  callActive = self->_callActive;
  v5 = [(HPCUIFitTestController *)self isCallActive];
  self->_callActive = [(HPCUIFitTestController *)self isCallActive];
  if (callActive == v5)
  {
    NSLog(&cfstr_FitTestNoChang_0.isa);
  }

  else
  {
    NSLog(&cfstr_FitTestUpdateU_0.isa);
  }
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKey:*MEMORY[0x1E6958100]];
  v5 = [v4 unsignedIntegerValue];

  if (v5 == 1)
  {
    NSLog(&cfstr_FitTestAudioSe.isa, self->_testActive);
    if (self->_testActive)
    {
      [(HPCUIFitTestController *)self fitTestStopped];
    }
  }
}

- (void)handleMediaServerConnectionDied:(id)a3
{
  NSLog(&cfstr_FitTestAudioSe_0.isa, a2, a3);
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
      v4 = [MEMORY[0x1E69AED10] sharedAVSystemController];
      *&v5 = self->_initialVolume;
      [v4 setVolumeTo:@"Audio/Video" forCategory:v5];

      self->_volumeModified = 0;
    }
  }
}

- (void)cleanupAudio
{
  NSLog(&cfstr_FitTestCleanUp.isa, a2);
  [(AVAudioPlayer *)self->_player setVolume:0.0 fadeDuration:1.0];
  v3 = [MEMORY[0x1E6958460] sharedInstance];
  v5 = 0;
  [v3 setActive:0 withOptions:1 error:&v5];
  v4 = v5;

  if (v4)
  {
    NSLog(&cfstr_FitTestFailedT_0.isa, v4);
  }
}

- (BOOL)isCallActive
{
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEA38]];

  v4 = [v3 BOOLValue];
  LOBYTE(v2) = v4;
  NSLog(&cfstr_FitTestCallIsA.isa, v4);

  return v2;
}

- (BOOL)isPreferredLanguageEnglish
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v3 = [v2 firstObject];
  if ([v3 isEqualToString:@"en"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"en-"];
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
  v2 = [(BluetoothDevice *)self->currentDevice productId];
  v3 = 0.0;
  if (v2 > 8230)
  {
    if (v2 != 8231)
    {
      if (v2 != 8239)
      {
LABEL_10:
        v3 = -5.0;
        goto LABEL_11;
      }

      v3 = 4.3;
    }
  }

  else if (v2 != 8212 && v2 != 8228)
  {
    goto LABEL_10;
  }

LABEL_11:
  NSLog(&cfstr_FitTestGetseal.isa, v2, v3);
  return v3;
}

- (float)getConfidenceThreshold
{
  v2 = [(BluetoothDevice *)self->currentDevice productId];
  v3 = -3.0;
  if (v2 > 8230)
  {
    if (v2 != 8231)
    {
      if (v2 != 8239)
      {
LABEL_10:
        v3 = 10.0;
        goto LABEL_11;
      }

      v3 = 5.1;
    }
  }

  else if (v2 != 8212 && v2 != 8228)
  {
    goto LABEL_10;
  }

LABEL_11:
  NSLog(&cfstr_FitTestGetconf.isa, v2, v3);
  return v3;
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_FitTestSetting.isa);
  v5 = _Block_copy(v4);

  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;
}

- (void)callCompletionHandler
{
  NSLog(&cfstr_FitTestCallCom.isa, a2);
  v3 = *(self->_completionHandler + 2);

  v3();
}

- (void)applyFilters:(id)a3 imageView:(id)a4 deviceColor:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 allKeys];
    v11 = [v10 count];

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
      v18 = [(HPCUIFitTestController *)self provider];
      v19 = [v18 isProductOfDifferentColors];
      if (darkMode)
      {
        if (v19)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DarkMatrixValue-%d", v5];
        }

        else
        {
          v20 = @"DarkMatrixValue";
        }

        v21 = [(HPCUIFitTestController *)self provider];
        if ([v21 isProductOfDifferentColors])
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DarkBiasValue-%d", v5];
        }

        else
        {
          v22 = @"DarkBiasValue";
        }

        v24 = [v8 objectForKey:v20];
        [v24 floatValue];
        v26 = v25;

        v27 = [v8 objectForKey:v22];
        [v27 floatValue];
        v29 = v28;

        if (v29 != 0.0 && v26 != 0.0)
        {
          goto LABEL_26;
        }

        v54 = v13;
        v30 = [(HPCUIFitTestController *)self provider];
        v31 = [v30 isProductOfDifferentColors];

        if ((v31 & 1) == 0)
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
          v52 = [v9 layer];
          [v52 setFilters:v16];

          goto LABEL_27;
        }

        v53 = @"DarkBiasValue-%d";
        v32 = @"DarkMatrixValue-%d";
      }

      else
      {
        if (v19)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LightMatrixValue-%d", v5];
        }

        else
        {
          v20 = @"LightMatrixValue";
        }

        v23 = [(HPCUIFitTestController *)self provider];
        if ([v23 isProductOfDifferentColors])
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LightBiasValue-%d", v5];
        }

        else
        {
          v22 = @"LightBiasValue";
        }

        v33 = [v8 objectForKey:v20];
        [v33 floatValue];
        v26 = v34;

        v35 = [v8 objectForKey:v22];
        [v35 floatValue];
        v29 = v36;

        if (v29 != 0.0 && v26 != 0.0)
        {
          goto LABEL_26;
        }

        v54 = v13;
        v37 = [(HPCUIFitTestController *)self provider];
        v38 = [v37 isProductOfDifferentColors];

        if (!v38)
        {
          goto LABEL_25;
        }

        v53 = @"LightBiasValue-%d";
        v32 = @"LightMatrixValue-%d";
      }

      v39 = MEMORY[0x1E696AEC0];
      v40 = [(HPCUIFitTestController *)self provider];
      v41 = [v39 stringWithFormat:v32, objc_msgSend(v40, "defaultFiltersID")];

      v42 = MEMORY[0x1E696AEC0];
      v43 = [(HPCUIFitTestController *)self provider];
      v44 = [v42 stringWithFormat:v53, objc_msgSend(v43, "defaultFiltersID")];

      v45 = [v8 objectForKey:v41];
      [v45 floatValue];
      v26 = v46;

      v47 = [v8 objectForKey:v44];
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