@interface CARSetupAssetReadyViewController
- (CARSetupAssetReadyViewController)initWithAppsView:(id)a3 doneHandler:(id)a4;
- (void)_done;
- (void)viewDidLoad;
@end

@implementation CARSetupAssetReadyViewController

- (CARSetupAssetReadyViewController)initWithAppsView:(id)a3 doneHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CARSetupAssetReadyViewController;
  v9 = [(CARSetupAssetReadyViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appsView, a3);
    v11 = MEMORY[0x245D29570](v8);
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
  v98 = [(CARSetupAssetReadyViewController *)self view];
  [(CARSetupAssetReadyViewController *)self setOverrideUserInterfaceStyle:2];
  v2 = [(CARSetupAssetReadyViewController *)self navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [MEMORY[0x277D75348] blackColor];
  [v98 setBackgroundColor:v3];

  v96 = [v98 safeAreaLayoutGuide];
  obj = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v88 = [v4 localizedStringForKey:@"READY_CARD_TITLE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [obj setText:v88];
  v5 = MEMORY[0x277D74310];
  v6 = [(CARSetupAssetReadyViewController *)self traitCollection];
  v7 = [v5 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:v6];

  v87 = [v7 fontDescriptorWithSymbolicTraits:2];

  v86 = [MEMORY[0x277D74300] fontWithDescriptor:v87 size:0.0];
  [obj setFont:v86];
  [obj setTextAlignment:1];
  v8 = [MEMORY[0x277D75348] labelColor];
  [obj setTextColor:v8];

  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  [v98 addSubview:obj];
  objc_storeStrong(&self->_titleLabel, obj);
  v9 = [obj leadingAnchor];
  v10 = [v96 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:30.0];
  v109[0] = v11;
  v12 = [obj trailingAnchor];
  v13 = [v96 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-30.0];
  v109[1] = v14;
  v15 = [obj topAnchor];
  v16 = [v96 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:60.0];
  v109[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:3];
  [v98 addConstraints:v18];

  v19 = [obj bottomAnchor];
  v99 = objc_alloc_init(MEMORY[0x277D756B8]);
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"READY_CARD_MESSAGE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  [v99 setText:v21];
  v22 = MEMORY[0x277D74310];
  v23 = [(CARSetupAssetReadyViewController *)self traitCollection];
  v85 = [v22 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:v23];

  v84 = [MEMORY[0x277D74300] fontWithDescriptor:v85 size:0.0];
  [v99 setFont:v84];
  [v99 setTextAlignment:1];
  [v99 setNumberOfLines:0];
  v24 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v99 setTextColor:v24];

  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v98 addSubview:v99];
  objc_storeStrong(&self->_subtitleLabel, v99);
  v25 = [v99 leadingAnchor];
  v26 = [v96 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:30.0];
  v108[0] = v27;
  v28 = [v99 trailingAnchor];
  v29 = [v96 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-30.0];
  v108[1] = v30;
  v31 = [v99 topAnchor];
  v32 = [v31 constraintEqualToSystemSpacingBelowAnchor:v19 multiplier:1.0];
  v108[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:3];
  [v98 addConstraints:v33];

  v91 = [v99 bottomAnchor];

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
  [v98 addSubview:v93];
  objc_storeStrong(&self->_iconView, v93);
  v40 = [v93 centerXAnchor];
  v41 = [v96 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  v105[0] = v42;
  v43 = [v93 topAnchor];
  v44 = [v43 constraintEqualToAnchor:v91 constant:20.0];
  v105[1] = v44;
  v45 = [v93 widthAnchor];
  v46 = [v45 constraintEqualToConstant:75.0];
  v105[2] = v46;
  v47 = [v93 heightAnchor];
  v48 = [v47 constraintEqualToConstant:75.0];
  v105[3] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:4];
  [v98 addConstraints:v49];

  v90 = [v93 bottomAnchor];

  v50 = [(CARSetupAssetReadyViewController *)self appsView];
  v92 = v50;
  if (v50)
  {
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v98 addSubview:v92];
    v51 = [v92 leadingAnchor];
    v52 = [v96 leadingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:30.0];
    v104[0] = v53;
    v54 = [v92 trailingAnchor];
    v55 = [v96 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:-30.0];
    v104[1] = v56;
    v57 = [v92 topAnchor];
    v58 = [v57 constraintEqualToAnchor:v90 constant:30.0];
    v104[2] = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
    [v98 addConstraints:v59];

    v60 = [v92 bottomAnchor];

    v90 = v60;
  }

  objc_initWeak(buf, self);
  v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v81 = [v61 localizedStringForKey:@"READY_CARD_DONE" value:&stru_2855A1F50 table:@"Localizable-Themed"];

  v89 = [MEMORY[0x277D75230] grayButtonConfiguration];
  v62 = [MEMORY[0x277D75348] labelColor];
  [v89 setBaseForegroundColor:v62];

  v63 = MEMORY[0x277D75220];
  v64 = MEMORY[0x277D750C8];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __47__CARSetupAssetReadyViewController_viewDidLoad__block_invoke;
  v100[3] = &unk_278D8F558;
  objc_copyWeak(&v101, buf);
  v65 = [v64 actionWithTitle:v81 image:0 identifier:0 handler:v100];
  v66 = [v63 buttonWithConfiguration:v89 primaryAction:v65];

  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v98 addSubview:v66];
  objc_storeStrong(&self->_doneButton, v66);
  vala = [v66 centerXAnchor];
  v80 = [v96 centerXAnchor];
  v79 = [vala constraintEqualToAnchor:v80];
  v103[0] = v79;
  v78 = [v66 topAnchor];
  v77 = [v78 constraintGreaterThanOrEqualToAnchor:v90];
  v103[1] = v77;
  v67 = [v66 bottomAnchor];
  v68 = [v96 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-30.0];
  v103[2] = v69;
  v70 = [v66 widthAnchor];
  v71 = [v96 widthAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 multiplier:0.75];
  v103[3] = v72;
  v73 = [v66 heightAnchor];
  v74 = [v73 constraintEqualToConstant:50.0];
  v103[4] = v74;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:5];
  [v98 addConstraints:v75];

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

  v4 = [(CARSetupAssetReadyViewController *)self doneHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }
}

@end