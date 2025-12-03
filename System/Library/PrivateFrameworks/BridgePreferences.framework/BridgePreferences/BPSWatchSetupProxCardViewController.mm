@interface BPSWatchSetupProxCardViewController
- (BPSWatchSetupProxCardViewController)initWithUserInfo:(id)info withDismissCompletionHandler:(id)handler;
- (PRXFlowDelegate)mainController;
- (void)_handleContinueButton;
- (void)_handleLearnMoreButton;
- (void)_handleUpdateNow;
- (void)_launchWatchAppForPairing;
- (void)_restoreWatchApp;
- (void)addAndConstrainWatchView:(id)view;
- (void)applicationsDidInstall:(id)install;
- (void)handleDeviceSetupNotification:(id)notification;
- (void)installSettingsIcon;
- (void)setupIncompatibleCard;
- (void)setupInstallOrLaunchCard;
- (void)setupUpdateCard;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BPSWatchSetupProxCardViewController

- (BPSWatchSetupProxCardViewController)initWithUserInfo:(id)info withDismissCompletionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = BPSWatchSetupProxCardViewController;
  v8 = [(BPSWatchSetupProxCardViewController *)&v32 initWithContentView:0];
  if (v8)
  {
    v9 = [infoCopy objectForKeyedSubscript:@"wd"];
    advertisingPayloadOrIdentifier = v8->_advertisingPayloadOrIdentifier;
    v8->_advertisingPayloadOrIdentifier = v9;

    v11 = [infoCopy objectForKeyedSubscript:@"di"];
    deviceUUID = v8->_deviceUUID;
    v8->_deviceUUID = v11;

    v13 = _Block_copy(handlerCopy);
    dismissCompletionHandler = v8->_dismissCompletionHandler;
    v8->_dismissCompletionHandler = v13;

    v15 = [(NSData *)v8->_advertisingPayloadOrIdentifier length];
    if (v15 == *MEMORY[0x277D37A88])
    {
      v16 = pbb_proxcard_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241E74000, v16, OS_LOG_TYPE_DEFAULT, "Legacy Data Found", buf, 2u);
      }

      v8->_pairingType = 0;
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8->_advertisingPayloadOrIdentifier encoding:4];
      v18 = [objc_alloc(MEMORY[0x277D2BD20]) initWithHumanReadableName:v17];
      advertisementIdentifier = v8->_advertisementIdentifier;
      v8->_advertisementIdentifier = v18;

      extendedMetadata = v8->_extendedMetadata;
      v8->_extendedMetadata = 0;
    }

    else
    {
      v21 = [(NSData *)v8->_advertisingPayloadOrIdentifier length];
      v22 = *MEMORY[0x277D37A98];
      v23 = pbb_proxcard_log();
      v17 = v23;
      if (v21 >= v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241E74000, v17, OS_LOG_TYPE_DEFAULT, "Current Data Found", buf, 2u);
        }

        v8->_pairingType = 1;
        v17 = [(NSData *)v8->_advertisingPayloadOrIdentifier subdataWithRange:2, 4];
        v24 = [objc_alloc(MEMORY[0x277D2BD20]) initWithPackedIdentifierData:v17];
        v25 = v8->_advertisementIdentifier;
        v8->_advertisementIdentifier = v24;

        v26 = [(NSData *)v8->_advertisingPayloadOrIdentifier subdataWithRange:6, 7];
        v27 = [objc_alloc(MEMORY[0x277D2BD28]) initWithPackedExtendedMetadataData:v26];
        v28 = v8->_extendedMetadata;
        v8->_extendedMetadata = v27;
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BPSWatchSetupProxCardViewController initWithUserInfo:withDismissCompletionHandler:];
      }
    }

    v29 = pbb_proxcard_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableName = [(WatchSetupAdvertisementIdentifier *)v8->_advertisementIdentifier humanReadableName];
      *buf = 138412290;
      v34 = humanReadableName;
      _os_log_impl(&dword_241E74000, v29, OS_LOG_TYPE_DEFAULT, "Human readable name for pairing watch - %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)setupIncompatibleCard
{
  [(BPSWatchSetupProxCardViewController *)self setDismissalType:3];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PROX_CARD_IPHONE_INCOMPATIBLE_TITLE" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PROX_CARD_IPHONE_INCOMPATIBLE_SUBTITLE" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self setSubtitle:v6];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D432F0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"LEARN_MORE" value:&stru_285406330 table:@"AbstactApplication"];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __60__BPSWatchSetupProxCardViewController_setupIncompatibleCard__block_invoke;
  v18 = &unk_278D238F8;
  objc_copyWeak(&v19, &location);
  v10 = [v7 actionWithTitle:v9 style:0 handler:&v15];

  v11 = [(BPSWatchSetupProxCardViewController *)self addAction:v10, v15, v16, v17, v18];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.applewatch"];
  v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
  [v13 setContentMode:1];
  quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
  [v13 setTintColor:quaternarySystemFillColor];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BPSWatchSetupProxCardViewController *)self addAndConstrainWatchView:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __60__BPSWatchSetupProxCardViewController_setupIncompatibleCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLearnMoreButton];
}

- (void)addAndConstrainWatchView:(id)view
{
  v30[5] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  contentView = [(BPSWatchSetupProxCardViewController *)self contentView];
  [contentView addSubview:viewCopy];

  v19 = MEMORY[0x277CCAAD0];
  topAnchor = [viewCopy topAnchor];
  contentView2 = [(BPSWatchSetupProxCardViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v25;
  bottomAnchor = [viewCopy bottomAnchor];
  contentView3 = [(BPSWatchSetupProxCardViewController *)self contentView];
  mainContentGuide2 = [contentView3 mainContentGuide];
  bottomAnchor2 = [mainContentGuide2 bottomAnchor];
  v20 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v30[1] = v20;
  leadingAnchor = [viewCopy leadingAnchor];
  contentView4 = [(BPSWatchSetupProxCardViewController *)self contentView];
  mainContentGuide3 = [contentView4 mainContentGuide];
  leadingAnchor2 = [mainContentGuide3 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[2] = v7;
  trailingAnchor = [viewCopy trailingAnchor];
  contentView5 = [(BPSWatchSetupProxCardViewController *)self contentView];
  mainContentGuide4 = [contentView5 mainContentGuide];
  trailingAnchor2 = [mainContentGuide4 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[3] = v12;
  heightAnchor = [viewCopy heightAnchor];

  v14 = [heightAnchor constraintEqualToConstant:175.0];
  v30[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  [v19 activateConstraints:v15];
}

- (void)setupInstallOrLaunchCard
{
  [(BPSWatchSetupProxCardViewController *)self setDismissalType:3];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PROX_CARD_SETUP_TITLE" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PROX_CARD_SETUP_SUBTITLE" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self setSubtitle:v6];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D432F0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTINUE" value:&stru_285406330 table:@"AbstactApplication"];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __63__BPSWatchSetupProxCardViewController_setupInstallOrLaunchCard__block_invoke;
  v18 = &unk_278D238F8;
  objc_copyWeak(&v19, &location);
  v10 = [v7 actionWithTitle:v9 style:0 handler:&v15];

  v11 = [(BPSWatchSetupProxCardViewController *)self addAction:v10, v15, v16, v17, v18];
  v12 = [BPSRemoteWatchView alloc];
  v13 = [(BPSRemoteWatchView *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(BPSRemoteWatchView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_advertisementIdentifier)
  {
    [(BPSRemoteWatchView *)v13 setAdvertisingIdentifier:?];
  }

  else
  {
    v14 = pbb_proxcard_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BPSWatchSetupProxCardViewController setupInstallOrLaunchCard];
    }

    [(BPSRemoteWatchView *)v13 setAdvertisingName:&stru_285406330];
  }

  [(BPSWatchSetupProxCardViewController *)self addAndConstrainWatchView:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __63__BPSWatchSetupProxCardViewController_setupInstallOrLaunchCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleContinueButton];
}

- (void)setupUpdateCard
{
  [(BPSWatchSetupProxCardViewController *)self setDismissalType:3];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PROX_CARD_SOFTWARE_UPDATE_TITLE" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PROX_CARD_SOFTWARE_UPDATE_SUBTITLE" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self setSubtitle:v6];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D432F0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CHECK_FOR_UPDATE" value:&stru_285406330 table:@"AbstactApplication"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__BPSWatchSetupProxCardViewController_setupUpdateCard__block_invoke;
  v19[3] = &unk_278D238F8;
  objc_copyWeak(&v20, &location);
  v10 = [v7 actionWithTitle:v9 style:0 handler:v19];

  v11 = MEMORY[0x277D432F0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"SET_UP_LATER" value:&stru_285406330 table:@"AbstactApplication"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__BPSWatchSetupProxCardViewController_setupUpdateCard__block_invoke_3;
  v17[3] = &unk_278D238F8;
  objc_copyWeak(&v18, &location);
  v14 = [v11 actionWithTitle:v13 style:1 handler:v17];

  v15 = [(BPSWatchSetupProxCardViewController *)self addAction:v10];
  v16 = [(BPSWatchSetupProxCardViewController *)self addAction:v14];
  [(BPSWatchSetupProxCardViewController *)self installSettingsIcon];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __54__BPSWatchSetupProxCardViewController_setupUpdateCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__BPSWatchSetupProxCardViewController_setupUpdateCard__block_invoke_2;
  v5[3] = &unk_278D23920;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void __54__BPSWatchSetupProxCardViewController_setupUpdateCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdateNow];
}

void __54__BPSWatchSetupProxCardViewController_setupUpdateCard__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)installSettingsIcon
{
  v80[17] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756D0]);
  contentView = [(BPSWatchSetupProxCardViewController *)self contentView];
  [contentView addLayoutGuide:v3];

  v79 = [MEMORY[0x277D755B8] imageNamed:@"Settings"];
  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v79];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(BPSWatchSetupProxCardViewController *)self contentView];
  [contentView2 addSubview:v5];

  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v7 setBackgroundColor:systemRedColor];

  layer = [v7 layer];
  [layer setCornerRadius:19.0];

  contentView3 = [(BPSWatchSetupProxCardViewController *)self contentView];
  [contentView3 addSubview:v7];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_28540EE70 numberStyle:0];
  [v11 setText:v12];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v11 setTextColor:whiteColor];

  [v11 setTextAlignment:1];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v78 = [v14 fontDescriptorWithSymbolicTraits:{objc_msgSend(v14, "symbolicTraits") | 2}];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v78 size:25.0];
  [v11 setFont:v15];

  [v7 addSubview:v11];
  v16 = 30.0 - *MEMORY[0x277D43380];
  contentView4 = [(BPSWatchSetupProxCardViewController *)self contentView];
  mainContentGuide = [contentView4 mainContentGuide];

  v54 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v3 centerXAnchor];
  v73 = mainContentGuide;
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v75 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v80[0] = v75;
  topAnchor = [v3 topAnchor];
  contentView5 = [(BPSWatchSetupProxCardViewController *)self contentView];
  subtitleLabel = [contentView5 subtitleLabel];
  bottomAnchor = [subtitleLabel bottomAnchor];
  v69 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:v16];
  v80[1] = v69;
  bottomAnchor2 = [v3 bottomAnchor];
  bottomAnchor3 = [mainContentGuide bottomAnchor];
  v66 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v80[2] = v66;
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v80[3] = v63;
  trailingAnchor = [v5 trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-11.0];
  v80[4] = v58;
  topAnchor2 = [v5 topAnchor];
  topAnchor3 = [v3 topAnchor];
  v55 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:11.0];
  v80[5] = v55;
  v62 = v5;
  bottomAnchor4 = [v5 bottomAnchor];
  bottomAnchor5 = [v3 bottomAnchor];
  v51 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v80[6] = v51;
  widthAnchor = [v5 widthAnchor];
  v49 = [widthAnchor constraintEqualToConstant:104.0];
  v80[7] = v49;
  heightAnchor = [v5 heightAnchor];
  widthAnchor2 = [v5 widthAnchor];
  v45 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v80[8] = v45;
  topAnchor4 = [v7 topAnchor];
  v59 = v3;
  topAnchor5 = [v3 topAnchor];
  v42 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v80[9] = v42;
  v19 = v7;
  trailingAnchor3 = [v7 trailingAnchor];
  trailingAnchor4 = [v3 trailingAnchor];
  v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v80[10] = v39;
  widthAnchor3 = [v7 widthAnchor];
  v37 = [widthAnchor3 constraintEqualToConstant:38.0];
  v80[11] = v37;
  heightAnchor2 = [v7 heightAnchor];
  widthAnchor4 = [v7 widthAnchor];
  v34 = [heightAnchor2 constraintEqualToAnchor:widthAnchor4];
  v80[12] = v34;
  v20 = v11;
  leadingAnchor3 = [v11 leadingAnchor];
  leadingAnchor4 = [v7 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v80[13] = v31;
  topAnchor6 = [v11 topAnchor];
  topAnchor7 = [v7 topAnchor];
  v22 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v80[14] = v22;
  v46 = v11;
  bottomAnchor6 = [v11 bottomAnchor];
  bottomAnchor7 = [v7 bottomAnchor];
  v25 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v80[15] = v25;
  trailingAnchor5 = [v20 trailingAnchor];
  trailingAnchor6 = [v19 trailingAnchor];
  v28 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v80[16] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:17];
  [v54 activateConstraints:v29];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = BPSWatchSetupProxCardViewController;
  [(BPSWatchSetupProxCardViewController *)&v9 viewDidLoad];
  if (self->_pairingType != 1 || ([MEMORY[0x277CBEAA8] now], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceReferenceDate"), v5 = v4, v3, CFPreferencesSetAppValue(@"ToBeSupportedNetworkRelayWatchDetected", objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v5), @"com.apple.Sharing"), CFPreferencesAppSynchronize(@"com.apple.Sharing"), !_os_feature_enabled_impl()))
  {
LABEL_13:
    [(BPSWatchSetupProxCardViewController *)self setupInstallOrLaunchCard];
    return;
  }

  systemVersions = [MEMORY[0x277D2BD08] systemVersions];
  v7 = [systemVersions pairingCompatibilitySupportStateForAdvertisingWatchVersion:{-[WatchSetupExtendedMetadata pairingVersion](self->_extendedMetadata, "pairingVersion")}];

  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        return;
      }
    }

    else
    {
      v8 = pbb_proxcard_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BPSWatchSetupProxCardViewController viewDidLoad];
      }
    }

    goto LABEL_13;
  }

  if (v7 == 2)
  {
    [(BPSWatchSetupProxCardViewController *)self setupUpdateCard];
  }

  else if (v7 == 3)
  {
    [(BPSWatchSetupProxCardViewController *)self setupIncompatibleCard];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = BPSWatchSetupProxCardViewController;
  [(BPSWatchSetupProxCardViewController *)&v6 viewWillAppear:appear];
  v4 = pbb_proxcard_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[BPSWatchSetupProxCardViewController viewWillAppear:]";
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleDeviceSetupNotification_ name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = BPSWatchSetupProxCardViewController;
  [(BPSWatchSetupProxCardViewController *)&v6 viewDidDisappear:disappear];
  v4 = pbb_proxcard_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[BPSWatchSetupProxCardViewController viewDidDisappear:]";
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)handleDeviceSetupNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (![(BPSWatchSetupProxCardViewController *)self pairing])
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    v7 = pbb_proxcard_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = name;
      v18 = 2112;
      v19 = userInfo;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "DeviceSetup notification '%@', %@", &v16, 0x16u);
    }

    name2 = [notificationCopy name];
    v9 = [name2 isEqual:@"com.apple.sharing.DeviceSetup"];

    if (v9)
    {
      v10 = [userInfo objectForKeyedSubscript:@"needsSetup"];
      bOOLValue = [v10 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v12 = [userInfo objectForKeyedSubscript:@"needsSetup"];
        stringValue = [v12 stringValue];

        if ([stringValue isEqual:self->_deviceUUID])
        {
          v14 = pbb_proxcard_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&dword_241E74000, v14, OS_LOG_TYPE_DEFAULT, "Auto-dismissing on setup started", &v16, 2u);
          }

          dismissCompletionHandler = self->_dismissCompletionHandler;
          if (dismissCompletionHandler)
          {
            dismissCompletionHandler[2](dismissCompletionHandler, 1, 0);
          }
        }
      }
    }
  }
}

- (void)_handleLearnMoreButton
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleContinueButton
{
  if (![(BPSWatchSetupProxCardViewController *)self pairing])
  {
    [(BPSWatchSetupProxCardViewController *)self setPairing:1];
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Bridge" allowPlaceholder:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = pbb_proxcard_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BPSWatchSetupProxCardViewController _handleContinueButton];
      }
    }

    applicationState = [v3 applicationState];
    isInstalled = [applicationState isInstalled];

    if (isInstalled)
    {
      [(BPSWatchSetupProxCardViewController *)self _launchWatchAppForPairing];
    }

    else
    {
      [(BPSWatchSetupProxCardViewController *)self _restoreWatchApp];
    }
  }
}

- (void)_handleUpdateNow
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_launchWatchAppForPairing
{
  dismissCompletionHandler = self->_dismissCompletionHandler;
  if (dismissCompletionHandler)
  {
    dismissCompletionHandler[2](dismissCompletionHandler, 1, &__block_literal_global_4);
  }
}

void __64__BPSWatchSetupProxCardViewController__launchWatchAppForPairing__block_invoke()
{
  v0 = pbb_proxcard_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v0, OS_LOG_TYPE_DEFAULT, "Launching Watch app", buf, 2u);
  }

  v1 = objc_alloc_init(MEMORY[0x277D54C30]);
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge://?action=StartPairing"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__BPSWatchSetupProxCardViewController__launchWatchAppForPairing__block_invoke_127;
  v4[3] = &unk_278D23948;
  v5 = v1;
  v3 = v1;
  [v3 openSetupURL:v2 completion:v4];
}

void __64__BPSWatchSetupProxCardViewController__launchWatchAppForPairing__block_invoke_127(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_proxcard_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__BPSWatchSetupProxCardViewController__launchWatchAppForPairing__block_invoke_127_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "Launched Watch app", v6, 2u);
  }

  [*(a1 + 32) invalidate];
}

- (void)_restoreWatchApp
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RESTORING" value:&stru_285406330 table:@"AbstactApplication"];
  [(BPSWatchSetupProxCardViewController *)self showActivityIndicatorWithStatus:v4];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];

  v6 = [objc_alloc(MEMORY[0x277CEC4B8]) initWithBundleID:@"com.apple.Bridge"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__BPSWatchSetupProxCardViewController__restoreWatchApp__block_invoke;
  v7[3] = &unk_278D23948;
  v7[4] = self;
  [v6 startWithErrorHandler:v7];
}

void __55__BPSWatchSetupProxCardViewController__restoreWatchApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_proxcard_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__BPSWatchSetupProxCardViewController__restoreWatchApp__block_invoke_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BPSWatchSetupProxCardViewController__restoreWatchApp__block_invoke_133;
    block[3] = &unk_278D23168;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "Restored Watch app", v6, 2u);
    }
  }
}

uint64_t __55__BPSWatchSetupProxCardViewController__restoreWatchApp__block_invoke_133(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PAIR_FAILED" value:&stru_285406330 table:@"AbstactApplication"];
  [*(a1 + 32) setSubtitle:v3];

  [*(a1 + 32) setPairing:0];
  v4 = *(a1 + 32);

  return [v4 hideActivityIndicator];
}

- (void)applicationsDidInstall:(id)install
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  installCopy = install;
  v5 = [installCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqual:@"com.apple.Bridge"];

        if (v10)
        {
          v11 = pbb_proxcard_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "Watch app installed", buf, 2u);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__BPSWatchSetupProxCardViewController_applicationsDidInstall___block_invoke;
          block[3] = &unk_278D23168;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
          goto LABEL_13;
        }
      }

      v6 = [installCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (PRXFlowDelegate)mainController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);

  return WeakRetained;
}

void __64__BPSWatchSetupProxCardViewController__launchWatchAppForPairing__block_invoke_127_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__BPSWatchSetupProxCardViewController__restoreWatchApp__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end