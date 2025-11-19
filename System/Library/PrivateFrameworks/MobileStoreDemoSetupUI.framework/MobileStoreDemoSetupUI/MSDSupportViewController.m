@interface MSDSupportViewController
- (MSDSupportViewController)init;
- (id)_currentCountryStackView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MSDSupportViewController

- (MSDSupportViewController)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = MSDSupportViewController;
  v2 = [(MSDSupportViewController *)&v17 init];
  if (v2)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = _os_feature_enabled_impl();
    }

    else
    {
      v3 = 0;
    }

    [(MSDSupportViewController *)v2 setSolariumEnabled:v3];
    v4 = defaultLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MSDSupportViewController *)v2 solariumEnabled];
      *buf = 67109120;
      v19 = v5;
      _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "OBK/Solarium feature flag is toggled to %d", buf, 8u);
    }

    v6 = [MSDSetupUILocalization localizedStringForKey:@"SUPPORT_TITLE"];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"phone.circle.fill"];
    v8 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v6 detailText:0 icon:v7];
    [(MSDSupportViewController *)v2 setContentViewController:v8];

    v9 = [(MSDSupportViewController *)v2 contentViewController];
    v10 = [v9 navigationItem];
    [v10 setHidesBackButton:1];

    v11 = [(MSDSupportViewController *)v2 contentViewController];
    [v11 setScrollingDisabled:1];

    v12 = [MSDSetupUILocalization localizedStringForKey:@"SUPPORT_HEADER"];
    [(MSDSupportViewController *)v2 setTitle:v12];

    v13 = +[MSDLanguageAndRegionManager sharedInstance];
    v14 = [v13 getCurrentDeviceRegion];
    [(MSDSupportViewController *)v2 setCountryCode:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)viewDidLoad
{
  v121[4] = *MEMORY[0x277D85DE8];
  v114.receiver = self;
  v114.super_class = MSDSupportViewController;
  [(MSDSupportViewController *)&v114 viewDidLoad];
  v3 = [(MSDSupportViewController *)self contentViewController];
  v4 = [v3 buttonTray];
  [v4 setHidden:1];

  v5 = [(MSDSupportViewController *)self contentViewController];
  [(MSDSupportViewController *)self addChildViewController:v5];

  v6 = [(MSDSupportViewController *)self contentViewController];
  v7 = [v6 view];

  v8 = [(MSDSupportViewController *)self contentViewController];
  v112 = [v8 contentView];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(MSDSupportViewController *)self view];
  [v9 addSubview:v7];

  v108 = [v7 topAnchor];
  v110 = [(MSDSupportViewController *)self view];
  v106 = [v110 safeAreaLayoutGuide];
  v104 = [v106 topAnchor];
  v101 = [v108 constraintEqualToAnchor:v104];
  v121[0] = v101;
  v97 = [v7 bottomAnchor];
  v99 = [(MSDSupportViewController *)self view];
  v94 = [v99 safeAreaLayoutGuide];
  v91 = [v94 bottomAnchor];
  v88 = [v97 constraintEqualToAnchor:v91];
  v121[1] = v88;
  v82 = [v7 leftAnchor];
  v85 = [(MSDSupportViewController *)self view];
  v10 = [v85 safeAreaLayoutGuide];
  v11 = [v10 leftAnchor];
  v12 = [v82 constraintEqualToAnchor:v11];
  v121[2] = v12;
  v113 = v7;
  v13 = [v7 rightAnchor];
  v14 = [(MSDSupportViewController *)self view];
  v15 = [v14 safeAreaLayoutGuide];
  v16 = [v15 rightAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  v121[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:4];

  v19 = v112;
  v109 = v18;
  [MEMORY[0x277CCAAD0] activateConstraints:v18];
  v20 = [(MSDSupportViewController *)self contentViewController];
  [v20 didMoveToParentViewController:self];

  v21 = [(MSDSupportViewController *)self _currentCountryStackView];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v112 addSubview:v21];
  LOBYTE(v16) = [(MSDSupportViewController *)self solariumEnabled];
  v22 = [v21 topAnchor];
  v23 = [v112 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v25 = v24;
  if (v16)
  {
    v120[0] = v24;
    v26 = [v21 leftAnchor];
    v27 = [v112 leftAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v120[1] = v28;
    v29 = v120;
  }

  else
  {
    v119[0] = v24;
    v26 = [v21 centerXAnchor];
    v27 = [v112 centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v119[1] = v28;
    v29 = v119;
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

  v105 = v30;
  [MEMORY[0x277CCAAD0] activateConstraints:v30];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v31 setTextAlignment:{-[MSDSupportViewController solariumEnabled](self, "solariumEnabled") ^ 1}];
  v32 = [MEMORY[0x277D75348] systemBlueColor];
  [v31 setTextColor:v32];

  v33 = 0x277D74000uLL;
  v34 = [MEMORY[0x277D74300] boldSystemFontOfSize:30.0];
  [v31 setFont:v34];

  v35 = +[MSDStoreContactsModel sharedInstance];
  v36 = [(MSDSupportViewController *)self countryCode];
  v37 = [v35 contactNumberForCountryCode:v36];
  [v31 setText:v37];

  [v31 setLayoutMargins:{30.0, 0.0, 30.0, 0.0}];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v112 addSubview:v31];
  LOBYTE(v35) = [(MSDSupportViewController *)self solariumEnabled];
  v38 = [v31 topAnchor];
  v102 = [v21 bottomAnchor];
  v39 = [v38 constraintEqualToAnchor:30.0 constant:?];
  v40 = v39;
  v107 = v21;
  v111 = v31;
  if (v35)
  {
    v118[0] = v39;
    v41 = [v31 leadingAnchor];
    v42 = [v112 leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v118[1] = v43;
    v44 = [v31 trailingAnchor];
    v45 = [v112 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v118[2] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:3];

    v33 = 0x277D74000;
    v19 = v112;

    v31 = v111;
  }

  else
  {
    v117[0] = v39;
    v41 = [v31 centerXAnchor];
    v42 = [v112 centerXAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v117[1] = v43;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v47];
  v48 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v48 setTextAlignment:{-[MSDSupportViewController solariumEnabled](self, "solariumEnabled") ^ 1}];
  if ([(MSDSupportViewController *)self solariumEnabled])
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v49 = ;
  v103 = v47;
  [v48 setTextColor:v49];

  if ([(MSDSupportViewController *)self solariumEnabled])
  {
    v50 = [*(v33 + 768) preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    [v48 setFont:v50];
  }

  [v48 setNumberOfLines:0];
  [v48 setAllowsDefaultTighteningForTruncation:1];
  [v48 setAdjustsFontSizeToFitWidth:1];
  v51 = [MSDSetupUILocalization localizedStringForKey:@"SUPPORT_DESCRIPTION"];
  [v48 setText:v51];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 addSubview:v48];
  v52 = objc_alloc(MEMORY[0x277D75B40]);
  v53 = [v52 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(MSDSupportViewController *)self setOptionsTableView:v53];

  v54 = [(MSDSupportViewController *)self optionsTableView];
  [v54 setDelegate:self];

  v55 = [(MSDSupportViewController *)self optionsTableView];
  [v55 setDataSource:self];

  v56 = [(MSDSupportViewController *)self optionsTableView];
  [v56 setScrollEnabled:0];

  v57 = [(MSDSupportViewController *)self optionsTableView];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];

  v58 = [(MSDSupportViewController *)self optionsTableView];
  [v113 addSubview:v58];

  v95 = [v48 topAnchor];
  v92 = [v31 bottomAnchor];
  v89 = [v95 constraintEqualToAnchor:v92 constant:30.0];
  v116[0] = v89;
  v86 = [v48 leadingAnchor];
  v83 = [v19 leadingAnchor];
  v59 = [v86 constraintEqualToAnchor:v83];
  v116[1] = v59;
  v60 = [v48 trailingAnchor];
  v61 = v19;
  v62 = v60;
  v63 = [v61 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  v116[2] = v64;
  [v48 bottomAnchor];
  v65 = v100 = v48;
  v66 = [(MSDSupportViewController *)self optionsTableView];
  v67 = [v66 topAnchor];
  v68 = [v65 constraintEqualToAnchor:v67];
  v116[3] = v68;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v98];
  v96 = [(MSDSupportViewController *)self optionsTableView];
  v93 = [v96 bottomAnchor];
  v90 = [v113 bottomAnchor];
  v87 = [v93 constraintEqualToAnchor:v90 constant:-30.0];
  v115[0] = v87;
  v84 = [(MSDSupportViewController *)self optionsTableView];
  v81 = [v84 leadingAnchor];
  v80 = [v113 leadingAnchor];
  v69 = [v81 constraintEqualToAnchor:v80];
  v115[1] = v69;
  v70 = [(MSDSupportViewController *)self optionsTableView];
  v71 = [v70 trailingAnchor];
  v72 = [v113 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v115[2] = v73;
  v74 = [(MSDSupportViewController *)self optionsTableView];
  v75 = [v74 heightAnchor];
  v76 = [v75 constraintEqualToConstant:180.0];
  v115[3] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v77];
  v78 = [(MSDSupportViewController *)self optionsTableView];
  [v78 registerClass:objc_opt_class() forCellReuseIdentifier:@"SupportViewTableCell"];

  v79 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 row] > 1)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SupportViewTableCell"];
  [v5 setAccessoryType:1];
  [v5 setSelectionStyle:2];
  v6 = [v5 defaultContentConfiguration];
  if (![v4 row])
  {
    v7 = @"DEVICE_DETAIL_OPTION";
    goto LABEL_7;
  }

  if ([v4 row] == 1)
  {
    v7 = @"PHONE_NUMBERS_OPTION";
LABEL_7:
    v8 = [MSDSetupUILocalization localizedStringForKey:v7];
    [v6 setText:v8];
  }

  [v5 setContentConfiguration:v6];

LABEL_9:

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 <= 0)
  {
    v6 = [MSDSetupUILocalization localizedStringForKey:@"ADDITIONAL_INFORMATION_HEADER", v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  if ([v10 row] <= 1)
  {
    if ([v10 row])
    {
      if ([v10 row] != 1)
      {
LABEL_8:
        v9 = [(MSDSupportViewController *)self optionsTableView];
        [v9 deselectRowAtIndexPath:v10 animated:1];

        goto LABEL_9;
      }

      v5 = off_2798F1800;
    }

    else
    {
      v5 = &off_2798F18A8;
    }

    v6 = objc_alloc_init(*v5);
    if (v6)
    {
      v7 = v6;
      v8 = +[MSDSetupUIController sharedInstance];
      [v8 pushViewController:v7 andRemoveTopmostView:0];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (id)_currentCountryStackView
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(MSDSupportViewController *)self countryCode];
  v5 = [v3 localizedStringForCountryCode:v4];

  v6 = objc_alloc(MEMORY[0x277D75A68]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  [v11 setAxis:0];
  [v11 setDistribution:0];
  if ([(MSDSupportViewController *)self solariumEnabled])
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  [v11 setAlignment:v12];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setSpacing:10.0];
  v13 = objc_alloc(MEMORY[0x277D755E8]);
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"globe"];
  v15 = [v13 initWithImage:v14];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [MEMORY[0x277D75348] blackColor];
  [v15 setTintColor:v16];

  [v15 setContentMode:1];
  v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  [v17 setNumberOfLines:0];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setText:v5];
  v18 = [MEMORY[0x277D74300] boldSystemFontOfSize:22.0];
  [v17 setFont:v18];

  [v11 addArrangedSubview:v15];
  [v11 addArrangedSubview:v17];
  if ([(MSDSupportViewController *)self solariumEnabled])
  {
    [v11 setAlignment:1];
  }

  v19 = [v15 heightAnchor];
  v20 = [v19 constraintEqualToConstant:35.0];
  v32[0] = v20;
  v21 = [v15 widthAnchor];
  v22 = [v15 heightAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 multiplier:1.0];
  v32[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v24];
  v25 = [v17 centerYAnchor];
  v26 = [v15 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v31 = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v28];
  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

@end