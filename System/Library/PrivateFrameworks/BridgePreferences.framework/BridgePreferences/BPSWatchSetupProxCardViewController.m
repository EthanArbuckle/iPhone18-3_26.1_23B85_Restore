@interface BPSWatchSetupProxCardViewController
- (BPSWatchSetupProxCardViewController)initWithUserInfo:(id)a3 withDismissCompletionHandler:(id)a4;
- (PRXFlowDelegate)mainController;
- (void)_handleContinueButton;
- (void)_handleLearnMoreButton;
- (void)_handleUpdateNow;
- (void)_launchWatchAppForPairing;
- (void)_restoreWatchApp;
- (void)addAndConstrainWatchView:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)handleDeviceSetupNotification:(id)a3;
- (void)installSettingsIcon;
- (void)setupIncompatibleCard;
- (void)setupInstallOrLaunchCard;
- (void)setupUpdateCard;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BPSWatchSetupProxCardViewController

- (BPSWatchSetupProxCardViewController)initWithUserInfo:(id)a3 withDismissCompletionHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = BPSWatchSetupProxCardViewController;
  v8 = [(BPSWatchSetupProxCardViewController *)&v32 initWithContentView:0];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"wd"];
    advertisingPayloadOrIdentifier = v8->_advertisingPayloadOrIdentifier;
    v8->_advertisingPayloadOrIdentifier = v9;

    v11 = [v6 objectForKeyedSubscript:@"di"];
    deviceUUID = v8->_deviceUUID;
    v8->_deviceUUID = v11;

    v13 = _Block_copy(v7);
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
      v30 = [(WatchSetupAdvertisementIdentifier *)v8->_advertisementIdentifier humanReadableName];
      *buf = 138412290;
      v34 = v30;
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
  v14 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  [v13 setTintColor:v14];

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

- (void)addAndConstrainWatchView:(id)a3
{
  v30[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BPSWatchSetupProxCardViewController *)self contentView];
  [v5 addSubview:v4];

  v19 = MEMORY[0x277CCAAD0];
  v28 = [v4 topAnchor];
  v29 = [(BPSWatchSetupProxCardViewController *)self contentView];
  v27 = [v29 mainContentGuide];
  v26 = [v27 topAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v23 = [v4 bottomAnchor];
  v24 = [(BPSWatchSetupProxCardViewController *)self contentView];
  v22 = [v24 mainContentGuide];
  v21 = [v22 bottomAnchor];
  v20 = [v23 constraintLessThanOrEqualToAnchor:v21];
  v30[1] = v20;
  v17 = [v4 leadingAnchor];
  v18 = [(BPSWatchSetupProxCardViewController *)self contentView];
  v16 = [v18 mainContentGuide];
  v6 = [v16 leadingAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v30[2] = v7;
  v8 = [v4 trailingAnchor];
  v9 = [(BPSWatchSetupProxCardViewController *)self contentView];
  v10 = [v9 mainContentGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
  v30[3] = v12;
  v13 = [v4 heightAnchor];

  v14 = [v13 constraintEqualToConstant:175.0];
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
  v4 = [(BPSWatchSetupProxCardViewController *)self contentView];
  [v4 addLayoutGuide:v3];

  v79 = [MEMORY[0x277D755B8] imageNamed:@"Settings"];
  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v79];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(BPSWatchSetupProxCardViewController *)self contentView];
  [v6 addSubview:v5];

  v7 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D75348] systemRedColor];
  [v7 setBackgroundColor:v8];

  v9 = [v7 layer];
  [v9 setCornerRadius:19.0];

  v10 = [(BPSWatchSetupProxCardViewController *)self contentView];
  [v10 addSubview:v7];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_28540EE70 numberStyle:0];
  [v11 setText:v12];

  v13 = [MEMORY[0x277D75348] whiteColor];
  [v11 setTextColor:v13];

  [v11 setTextAlignment:1];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v78 = [v14 fontDescriptorWithSymbolicTraits:{objc_msgSend(v14, "symbolicTraits") | 2}];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v78 size:25.0];
  [v11 setFont:v15];

  [v7 addSubview:v11];
  v16 = 30.0 - *MEMORY[0x277D43380];
  v17 = [(BPSWatchSetupProxCardViewController *)self contentView];
  v18 = [v17 mainContentGuide];

  v54 = MEMORY[0x277CCAAD0];
  v77 = [v3 centerXAnchor];
  v73 = v18;
  v76 = [v18 centerXAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v80[0] = v75;
  v72 = [v3 topAnchor];
  v74 = [(BPSWatchSetupProxCardViewController *)self contentView];
  v71 = [v74 subtitleLabel];
  v70 = [v71 bottomAnchor];
  v69 = [v72 constraintGreaterThanOrEqualToAnchor:v70 constant:v16];
  v80[1] = v69;
  v68 = [v3 bottomAnchor];
  v67 = [v18 bottomAnchor];
  v66 = [v68 constraintLessThanOrEqualToAnchor:v67];
  v80[2] = v66;
  v65 = [v5 leadingAnchor];
  v64 = [v3 leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v80[3] = v63;
  v61 = [v5 trailingAnchor];
  v60 = [v3 trailingAnchor];
  v58 = [v61 constraintEqualToAnchor:v60 constant:-11.0];
  v80[4] = v58;
  v57 = [v5 topAnchor];
  v56 = [v3 topAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:11.0];
  v80[5] = v55;
  v62 = v5;
  v53 = [v5 bottomAnchor];
  v52 = [v3 bottomAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v80[6] = v51;
  v50 = [v5 widthAnchor];
  v49 = [v50 constraintEqualToConstant:104.0];
  v80[7] = v49;
  v48 = [v5 heightAnchor];
  v47 = [v5 widthAnchor];
  v45 = [v48 constraintEqualToAnchor:v47];
  v80[8] = v45;
  v44 = [v7 topAnchor];
  v59 = v3;
  v43 = [v3 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v80[9] = v42;
  v19 = v7;
  v41 = [v7 trailingAnchor];
  v40 = [v3 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v80[10] = v39;
  v38 = [v7 widthAnchor];
  v37 = [v38 constraintEqualToConstant:38.0];
  v80[11] = v37;
  v36 = [v7 heightAnchor];
  v35 = [v7 widthAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v80[12] = v34;
  v20 = v11;
  v33 = [v11 leadingAnchor];
  v32 = [v7 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v80[13] = v31;
  v30 = [v11 topAnchor];
  v21 = [v7 topAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v80[14] = v22;
  v46 = v11;
  v23 = [v11 bottomAnchor];
  v24 = [v7 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v80[15] = v25;
  v26 = [v20 trailingAnchor];
  v27 = [v19 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
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

  v6 = [MEMORY[0x277D2BD08] systemVersions];
  v7 = [v6 pairingCompatibilitySupportStateForAdvertisingWatchVersion:{-[WatchSetupExtendedMetadata pairingVersion](self->_extendedMetadata, "pairingVersion")}];

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

- (void)viewWillAppear:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = BPSWatchSetupProxCardViewController;
  [(BPSWatchSetupProxCardViewController *)&v6 viewWillAppear:a3];
  v4 = pbb_proxcard_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[BPSWatchSetupProxCardViewController viewWillAppear:]";
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 addObserver:self selector:sel_handleDeviceSetupNotification_ name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = BPSWatchSetupProxCardViewController;
  [(BPSWatchSetupProxCardViewController *)&v6 viewDidDisappear:a3];
  v4 = pbb_proxcard_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[BPSWatchSetupProxCardViewController viewDidDisappear:]";
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)handleDeviceSetupNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(BPSWatchSetupProxCardViewController *)self pairing])
  {
    v5 = [v4 name];
    v6 = [v4 userInfo];
    v7 = pbb_proxcard_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "DeviceSetup notification '%@', %@", &v16, 0x16u);
    }

    v8 = [v4 name];
    v9 = [v8 isEqual:@"com.apple.sharing.DeviceSetup"];

    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"needsSetup"];
      v11 = [v10 BOOLValue];

      if ((v11 & 1) == 0)
      {
        v12 = [v6 objectForKeyedSubscript:@"needsSetup"];
        v13 = [v12 stringValue];

        if ([v13 isEqual:self->_deviceUUID])
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

    v6 = [v3 applicationState];
    v7 = [v6 isInstalled];

    if (v7)
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

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v5 addObserver:self];

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

- (void)applicationsDidInstall:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqual:@"com.apple.Bridge"];

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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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