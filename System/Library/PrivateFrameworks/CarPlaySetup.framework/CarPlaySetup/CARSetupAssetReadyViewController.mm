@interface CARSetupAssetReadyViewController
- (CARSetupAssetReadyViewController)initWithAppsView:(id)view doneHandler:(id)handler;
- (void)_done;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetReadyViewController

- (CARSetupAssetReadyViewController)initWithAppsView:(id)view doneHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CARSetupAssetReadyViewController;
  v9 = [(CARSetupAssetReadyViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appsView, view);
    v11 = MEMORY[0x245D29570](handlerCopy);
    doneHandler = v10->_doneHandler;
    v10->_doneHandler = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v109[3] = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = CARSetupAssetReadyViewController;
  [(CARSetupAssetReadyViewController *)&v102 viewDidLoad];
  view = [(CARSetupAssetReadyViewController *)self view];
  [(CARSetupAssetReadyViewController *)self setOverrideUserInterfaceStyle:2];
  navigationItem = [(CARSetupAssetReadyViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  obj = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v88 = [v4 localizedStringForKey:@"READY_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [obj setText:v88];
  v5 = MEMORY[0x277D74310];
  traitCollection = [(CARSetupAssetReadyViewController *)self traitCollection];
  v7 = [v5 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:traitCollection];

  v87 = [v7 fontDescriptorWithSymbolicTraits:2];

  v86 = [MEMORY[0x277D74300] fontWithDescriptor:v87 size:0.0];
  [obj setFont:v86];
  [obj setTextAlignment:1];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [obj setTextColor:labelColor];

  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:obj];
  objc_storeStrong(&self->_titleLabel, obj);
  leadingAnchor = [obj leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v109[0] = v11;
  trailingAnchor = [obj trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v109[1] = v14;
  topAnchor = [obj topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:60.0];
  v109[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:3];
  [view addConstraints:v18];

  bottomAnchor = [obj bottomAnchor];
  v99 = objc_alloc_init(MEMORY[0x277D756B8]);
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"READY_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [v99 setText:v21];
  v22 = MEMORY[0x277D74310];
  traitCollection2 = [(CARSetupAssetReadyViewController *)self traitCollection];
  v85 = [v22 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:traitCollection2];

  v84 = [MEMORY[0x277D74300] fontWithDescriptor:v85 size:0.0];
  [v99 setFont:v84];
  [v99 setTextAlignment:1];
  [v99 setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v99 setTextColor:secondaryLabelColor];

  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v99];
  objc_storeStrong(&self->_subtitleLabel, v99);
  leadingAnchor3 = [v99 leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:30.0];
  v108[0] = v27;
  trailingAnchor3 = [v99 trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-30.0];
  v108[1] = v30;
  topAnchor3 = [v99 topAnchor];
  v32 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v108[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:3];
  [view addConstraints:v33];

  bottomAnchor2 = [v99 bottomAnchor];

  v34 = AFDeviceSupportsSystemAssistantExperience();
  v35 = @"SiriIcon";
  if (v34)
  {
    v35 = @"SAEIcon";
  }

  v83 = v35;
  v36 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = @"NO";
    if (v34)
    {
      v37 = @"YES";
    }

    *buf = 138543362;
    v107 = v37;
    _os_log_impl(&dword_242FD5000, v36, OS_LOG_TYPE_DEFAULT, "show system experience Siri icon: %{public}@", buf, 0xCu);
  }

  v38 = MEMORY[0x277D755B8];
  v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v82 = [v38 imageNamed:v83 inBundle:v39 withConfiguration:0];

  v93 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v82];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v93];
  objc_storeStrong(&self->_iconView, v93);
  centerXAnchor = [v93 centerXAnchor];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v105[0] = v42;
  topAnchor4 = [v93 topAnchor];
  v44 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:20.0];
  v105[1] = v44;
  widthAnchor = [v93 widthAnchor];
  v46 = [widthAnchor constraintEqualToConstant:75.0];
  v105[2] = v46;
  heightAnchor = [v93 heightAnchor];
  v48 = [heightAnchor constraintEqualToConstant:75.0];
  v105[3] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:4];
  [view addConstraints:v49];

  bottomAnchor3 = [v93 bottomAnchor];

  appsView = [(CARSetupAssetReadyViewController *)self appsView];
  v92 = appsView;
  if (appsView)
  {
    [appsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:v92];
    leadingAnchor5 = [v92 leadingAnchor];
    leadingAnchor6 = [safeAreaLayoutGuide leadingAnchor];
    v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:30.0];
    v104[0] = v53;
    trailingAnchor5 = [v92 trailingAnchor];
    trailingAnchor6 = [safeAreaLayoutGuide trailingAnchor];
    v56 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-30.0];
    v104[1] = v56;
    topAnchor5 = [v92 topAnchor];
    v58 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:30.0];
    v104[2] = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
    [view addConstraints:v59];

    bottomAnchor4 = [v92 bottomAnchor];

    bottomAnchor3 = bottomAnchor4;
  }

  objc_initWeak(buf, self);
  v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v81 = [v61 localizedStringForKey:@"READY_CARD_DONE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  grayButtonConfiguration = [MEMORY[0x277D75230] grayButtonConfiguration];
  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [grayButtonConfiguration setBaseForegroundColor:labelColor2];

  v63 = MEMORY[0x277D75220];
  v64 = MEMORY[0x277D750C8];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __47__CARSetupAssetReadyViewController_viewDidLoad__block_invoke;
  v100[3] = &unk_278D8F558;
  objc_copyWeak(&v101, buf);
  v65 = [v64 actionWithTitle:v81 image:0 identifier:0 handler:v100];
  v66 = [v63 buttonWithConfiguration:grayButtonConfiguration primaryAction:v65];

  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v66];
  objc_storeStrong(&self->_doneButton, v66);
  vala = [v66 centerXAnchor];
  centerXAnchor3 = [safeAreaLayoutGuide centerXAnchor];
  v79 = [vala constraintEqualToAnchor:centerXAnchor3];
  v103[0] = v79;
  topAnchor6 = [v66 topAnchor];
  v77 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor3];
  v103[1] = v77;
  bottomAnchor5 = [v66 bottomAnchor];
  bottomAnchor6 = [safeAreaLayoutGuide bottomAnchor];
  v69 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-30.0];
  v103[2] = v69;
  widthAnchor2 = [v66 widthAnchor];
  widthAnchor3 = [safeAreaLayoutGuide widthAnchor];
  v72 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:0.75];
  v103[3] = v72;
  heightAnchor2 = [v66 heightAnchor];
  v74 = [heightAnchor2 constraintEqualToConstant:50.0];
  v103[4] = v74;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:5];
  [view addConstraints:v75];

  objc_destroyWeak(&v101);
  objc_destroyWeak(buf);

  v76 = *MEMORY[0x277D85DE8];
}

void __47__CARSetupAssetReadyViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _done];
}

- (void)_done
{
  v3 = CARSetupLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "asset ready: done", v6, 2u);
  }

  doneHandler = [(CARSetupAssetReadyViewController *)self doneHandler];
  v5 = doneHandler;
  if (doneHandler)
  {
    (*(doneHandler + 16))(doneHandler);
  }
}

@end