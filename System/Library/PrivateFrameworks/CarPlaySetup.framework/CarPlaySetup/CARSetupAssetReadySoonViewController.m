@interface CARSetupAssetReadySoonViewController
- (CARSetupAssetReadySoonViewController)initWithDoneHandler:(id)a3;
- (void)_done;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetReadySoonViewController

- (CARSetupAssetReadySoonViewController)initWithDoneHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CARSetupAssetReadySoonViewController;
  v5 = [(CARSetupAssetReadySoonViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = MEMORY[0x245D29570](v4);
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
  v63 = [(CARSetupAssetReadySoonViewController *)self view];
  [(CARSetupAssetReadySoonViewController *)self setOverrideUserInterfaceStyle:2];
  v2 = [(CARSetupAssetReadySoonViewController *)self navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [MEMORY[0x277D75348] blackColor];
  [v63 setBackgroundColor:v3];

  v62 = [v63 safeAreaLayoutGuide];
  obj = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v60 = [v4 localizedStringForKey:@"READY_SOON_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [obj setText:v60];
  v5 = MEMORY[0x277D74310];
  v6 = [(CARSetupAssetReadySoonViewController *)self traitCollection];
  v7 = [v5 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:v6];

  v59 = [v7 fontDescriptorWithSymbolicTraits:2];

  v58 = [MEMORY[0x277D74300] fontWithDescriptor:v59 size:0.0];
  [obj setFont:v58];
  [obj setTextAlignment:1];
  [obj setNumberOfLines:0];
  v8 = [MEMORY[0x277D75348] labelColor];
  [obj setTextColor:v8];

  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  [v63 addSubview:obj];
  objc_storeStrong(&self->_titleLabel, obj);
  v9 = [obj leadingAnchor];
  v10 = [v62 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:30.0];
  v74[0] = v11;
  v12 = [obj trailingAnchor];
  v13 = [v62 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-30.0];
  v74[1] = v14;
  v15 = [obj topAnchor];
  v16 = [v62 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:60.0];
  v74[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
  [v63 addConstraints:v18];

  v66 = objc_alloc_init(MEMORY[0x277D756B8]);
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"READY_SOON_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [v66 setText:v20];
  v21 = MEMORY[0x277D74310];
  v22 = [(CARSetupAssetReadySoonViewController *)self traitCollection];
  v57 = [v21 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:v22];

  v56 = [MEMORY[0x277D74300] fontWithDescriptor:v57 size:0.0];
  [v66 setFont:v56];
  [v66 setTextAlignment:1];
  [v66 setNumberOfLines:0];
  v23 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v66 setTextColor:v23];

  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v63 addSubview:v66];
  objc_storeStrong(&self->_subtitleLabel, v66);
  v24 = [v66 leadingAnchor];
  v25 = [v62 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:30.0];
  v73[0] = v26;
  v27 = [v66 trailingAnchor];
  v28 = [v62 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-30.0];
  v73[1] = v29;
  v30 = [v66 topAnchor];
  v31 = [obj bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:60.0];
  v73[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
  [v63 addConstraints:v33];

  objc_initWeak(&location, self);
  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v55 = [v34 localizedStringForKey:@"READY_SOON_CARD_DISMISS" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v61 = [MEMORY[0x277D75230] grayButtonConfiguration];
  v35 = [MEMORY[0x277D75348] labelColor];
  [v61 setBaseForegroundColor:v35];

  v36 = MEMORY[0x277D75220];
  v37 = MEMORY[0x277D750C8];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __51__CARSetupAssetReadySoonViewController_viewDidLoad__block_invoke;
  v68[3] = &unk_278D8F558;
  objc_copyWeak(&v69, &location);
  v38 = [v37 actionWithTitle:v55 image:0 identifier:0 handler:v68];
  v39 = [v36 buttonWithConfiguration:v61 primaryAction:v38];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v63 addSubview:v39];
  objc_storeStrong(&self->_doneButton, v39);
  vala = [v39 centerXAnchor];
  v54 = [v62 centerXAnchor];
  v53 = [vala constraintEqualToAnchor:v54];
  v72[0] = v53;
  v52 = [v39 topAnchor];
  v51 = [v66 bottomAnchor];
  v50 = [v52 constraintGreaterThanOrEqualToAnchor:v51];
  v72[1] = v50;
  v40 = [v39 bottomAnchor];
  v41 = [v62 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-30.0];
  v72[2] = v42;
  v43 = [v39 widthAnchor];
  v44 = [v62 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 multiplier:0.75];
  v72[3] = v45;
  v46 = [v39 heightAnchor];
  v47 = [v46 constraintEqualToConstant:50.0];
  v72[4] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
  [v63 addConstraints:v48];

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

  v4 = [(CARSetupAssetReadySoonViewController *)self doneHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }
}

@end