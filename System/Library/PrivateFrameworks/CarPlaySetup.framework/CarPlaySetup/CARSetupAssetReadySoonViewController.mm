@interface CARSetupAssetReadySoonViewController
- (CARSetupAssetReadySoonViewController)initWithDoneHandler:(id)handler;
- (void)_done;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetReadySoonViewController

- (CARSetupAssetReadySoonViewController)initWithDoneHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = CARSetupAssetReadySoonViewController;
  v5 = [(CARSetupAssetReadySoonViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = MEMORY[0x245D29570](handlerCopy);
    doneHandler = v5->_doneHandler;
    v5->_doneHandler = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v74[3] = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = CARSetupAssetReadySoonViewController;
  [(CARSetupAssetReadySoonViewController *)&v71 viewDidLoad];
  view = [(CARSetupAssetReadySoonViewController *)self view];
  [(CARSetupAssetReadySoonViewController *)self setOverrideUserInterfaceStyle:2];
  navigationItem = [(CARSetupAssetReadySoonViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  obj = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v60 = [v4 localizedStringForKey:@"READY_SOON_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [obj setText:v60];
  v5 = MEMORY[0x277D74310];
  traitCollection = [(CARSetupAssetReadySoonViewController *)self traitCollection];
  v7 = [v5 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:traitCollection];

  v59 = [v7 fontDescriptorWithSymbolicTraits:2];

  v58 = [MEMORY[0x277D74300] fontWithDescriptor:v59 size:0.0];
  [obj setFont:v58];
  [obj setTextAlignment:1];
  [obj setNumberOfLines:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [obj setTextColor:labelColor];

  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:obj];
  objc_storeStrong(&self->_titleLabel, obj);
  leadingAnchor = [obj leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v74[0] = v11;
  trailingAnchor = [obj trailingAnchor];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v74[1] = v14;
  topAnchor = [obj topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:60.0];
  v74[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
  [view addConstraints:v18];

  v66 = objc_alloc_init(MEMORY[0x277D756B8]);
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"READY_SOON_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [v66 setText:v20];
  v21 = MEMORY[0x277D74310];
  traitCollection2 = [(CARSetupAssetReadySoonViewController *)self traitCollection];
  v57 = [v21 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:traitCollection2];

  v56 = [MEMORY[0x277D74300] fontWithDescriptor:v57 size:0.0];
  [v66 setFont:v56];
  [v66 setTextAlignment:1];
  [v66 setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v66 setTextColor:secondaryLabelColor];

  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v66];
  objc_storeStrong(&self->_subtitleLabel, v66);
  leadingAnchor3 = [v66 leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:30.0];
  v73[0] = v26;
  trailingAnchor3 = [v66 trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-30.0];
  v73[1] = v29;
  topAnchor3 = [v66 topAnchor];
  bottomAnchor = [obj bottomAnchor];
  v32 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:60.0];
  v73[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
  [view addConstraints:v33];

  objc_initWeak(&location, self);
  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v55 = [v34 localizedStringForKey:@"READY_SOON_CARD_DISMISS" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  grayButtonConfiguration = [MEMORY[0x277D75230] grayButtonConfiguration];
  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [grayButtonConfiguration setBaseForegroundColor:labelColor2];

  v36 = MEMORY[0x277D75220];
  v37 = MEMORY[0x277D750C8];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __51__CARSetupAssetReadySoonViewController_viewDidLoad__block_invoke;
  v68[3] = &unk_278D8F558;
  objc_copyWeak(&v69, &location);
  v38 = [v37 actionWithTitle:v55 image:0 identifier:0 handler:v68];
  v39 = [v36 buttonWithConfiguration:grayButtonConfiguration primaryAction:v38];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v39];
  objc_storeStrong(&self->_doneButton, v39);
  vala = [v39 centerXAnchor];
  centerXAnchor = [safeAreaLayoutGuide centerXAnchor];
  v53 = [vala constraintEqualToAnchor:centerXAnchor];
  v72[0] = v53;
  topAnchor4 = [v39 topAnchor];
  bottomAnchor2 = [v66 bottomAnchor];
  v50 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v72[1] = v50;
  bottomAnchor3 = [v39 bottomAnchor];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-30.0];
  v72[2] = v42;
  widthAnchor = [v39 widthAnchor];
  widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
  v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.75];
  v72[3] = v45;
  heightAnchor = [v39 heightAnchor];
  v47 = [heightAnchor constraintEqualToConstant:50.0];
  v72[4] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
  [view addConstraints:v48];

  objc_destroyWeak(&v69);
  objc_destroyWeak(&location);

  v49 = *MEMORY[0x277D85DE8];
}

void __51__CARSetupAssetReadySoonViewController_viewDidLoad__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_242FD5000, v3, OS_LOG_TYPE_DEFAULT, "asset ready soon: done", v6, 2u);
  }

  doneHandler = [(CARSetupAssetReadySoonViewController *)self doneHandler];
  v5 = doneHandler;
  if (doneHandler)
  {
    (*(doneHandler + 16))(doneHandler);
  }
}

@end