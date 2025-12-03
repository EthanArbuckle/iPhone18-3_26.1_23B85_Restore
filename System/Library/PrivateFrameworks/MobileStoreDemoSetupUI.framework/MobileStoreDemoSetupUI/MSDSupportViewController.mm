@interface MSDSupportViewController
- (MSDSupportViewController)init;
- (id)_currentCountryStackView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
      solariumEnabled = [(MSDSupportViewController *)v2 solariumEnabled];
      *buf = 67109120;
      v19 = solariumEnabled;
      _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "OBK/Solarium feature flag is toggled to %d", buf, 8u);
    }

    v6 = [MSDSetupUILocalization localizedStringForKey:@"SUPPORT_TITLE"];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"phone.circle.fill"];
    v8 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v6 detailText:0 icon:v7];
    [(MSDSupportViewController *)v2 setContentViewController:v8];

    contentViewController = [(MSDSupportViewController *)v2 contentViewController];
    navigationItem = [contentViewController navigationItem];
    [navigationItem setHidesBackButton:1];

    contentViewController2 = [(MSDSupportViewController *)v2 contentViewController];
    [contentViewController2 setScrollingDisabled:1];

    v12 = [MSDSetupUILocalization localizedStringForKey:@"SUPPORT_HEADER"];
    [(MSDSupportViewController *)v2 setTitle:v12];

    v13 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceRegion = [v13 getCurrentDeviceRegion];
    [(MSDSupportViewController *)v2 setCountryCode:getCurrentDeviceRegion];
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
  contentViewController = [(MSDSupportViewController *)self contentViewController];
  buttonTray = [contentViewController buttonTray];
  [buttonTray setHidden:1];

  contentViewController2 = [(MSDSupportViewController *)self contentViewController];
  [(MSDSupportViewController *)self addChildViewController:contentViewController2];

  contentViewController3 = [(MSDSupportViewController *)self contentViewController];
  view = [contentViewController3 view];

  contentViewController4 = [(MSDSupportViewController *)self contentViewController];
  contentView = [contentViewController4 contentView];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(MSDSupportViewController *)self view];
  [view2 addSubview:view];

  topAnchor = [view topAnchor];
  view3 = [(MSDSupportViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v101 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v121[0] = v101;
  bottomAnchor = [view bottomAnchor];
  view4 = [(MSDSupportViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v88 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v121[1] = v88;
  leftAnchor = [view leftAnchor];
  view5 = [(MSDSupportViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v121[2] = v12;
  v113 = view;
  rightAnchor = [view rightAnchor];
  view6 = [(MSDSupportViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v121[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:4];

  v19 = contentView;
  v109 = v18;
  [MEMORY[0x277CCAAD0] activateConstraints:v18];
  contentViewController5 = [(MSDSupportViewController *)self contentViewController];
  [contentViewController5 didMoveToParentViewController:self];

  _currentCountryStackView = [(MSDSupportViewController *)self _currentCountryStackView];
  [_currentCountryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:_currentCountryStackView];
  LOBYTE(rightAnchor2) = [(MSDSupportViewController *)self solariumEnabled];
  topAnchor3 = [_currentCountryStackView topAnchor];
  topAnchor4 = [contentView topAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v25 = v24;
  if (rightAnchor2)
  {
    v120[0] = v24;
    leftAnchor3 = [_currentCountryStackView leftAnchor];
    leftAnchor4 = [contentView leftAnchor];
    v28 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v120[1] = v28;
    v29 = v120;
  }

  else
  {
    v119[0] = v24;
    leftAnchor3 = [_currentCountryStackView centerXAnchor];
    leftAnchor4 = [contentView centerXAnchor];
    v28 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v119[1] = v28;
    v29 = v119;
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

  v105 = v30;
  [MEMORY[0x277CCAAD0] activateConstraints:v30];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v31 setTextAlignment:{-[MSDSupportViewController solariumEnabled](self, "solariumEnabled") ^ 1}];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v31 setTextColor:systemBlueColor];

  v33 = 0x277D74000uLL;
  v34 = [MEMORY[0x277D74300] boldSystemFontOfSize:30.0];
  [v31 setFont:v34];

  v35 = +[MSDStoreContactsModel sharedInstance];
  countryCode = [(MSDSupportViewController *)self countryCode];
  v37 = [v35 contactNumberForCountryCode:countryCode];
  [v31 setText:v37];

  [v31 setLayoutMargins:{30.0, 0.0, 30.0, 0.0}];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v31];
  LOBYTE(v35) = [(MSDSupportViewController *)self solariumEnabled];
  topAnchor5 = [v31 topAnchor];
  bottomAnchor3 = [_currentCountryStackView bottomAnchor];
  v39 = [topAnchor5 constraintEqualToAnchor:30.0 constant:?];
  v40 = v39;
  v107 = _currentCountryStackView;
  v111 = v31;
  if (v35)
  {
    v118[0] = v39;
    leadingAnchor = [v31 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v118[1] = v43;
    trailingAnchor = [v31 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v118[2] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:3];

    v33 = 0x277D74000;
    v19 = contentView;

    v31 = v111;
  }

  else
  {
    v117[0] = v39;
    leadingAnchor = [v31 centerXAnchor];
    leadingAnchor2 = [contentView centerXAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
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

  optionsTableView = [(MSDSupportViewController *)self optionsTableView];
  [optionsTableView setDelegate:self];

  optionsTableView2 = [(MSDSupportViewController *)self optionsTableView];
  [optionsTableView2 setDataSource:self];

  optionsTableView3 = [(MSDSupportViewController *)self optionsTableView];
  [optionsTableView3 setScrollEnabled:0];

  optionsTableView4 = [(MSDSupportViewController *)self optionsTableView];
  [optionsTableView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  optionsTableView5 = [(MSDSupportViewController *)self optionsTableView];
  [v113 addSubview:optionsTableView5];

  topAnchor6 = [v48 topAnchor];
  bottomAnchor4 = [v31 bottomAnchor];
  v89 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:30.0];
  v116[0] = v89;
  leadingAnchor3 = [v48 leadingAnchor];
  leadingAnchor4 = [v19 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v116[1] = v59;
  trailingAnchor3 = [v48 trailingAnchor];
  v61 = v19;
  v62 = trailingAnchor3;
  trailingAnchor4 = [v61 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:trailingAnchor4];
  v116[2] = v64;
  [v48 bottomAnchor];
  v65 = v100 = v48;
  optionsTableView6 = [(MSDSupportViewController *)self optionsTableView];
  topAnchor7 = [optionsTableView6 topAnchor];
  v68 = [v65 constraintEqualToAnchor:topAnchor7];
  v116[3] = v68;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v98];
  optionsTableView7 = [(MSDSupportViewController *)self optionsTableView];
  bottomAnchor5 = [optionsTableView7 bottomAnchor];
  bottomAnchor6 = [v113 bottomAnchor];
  v87 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-30.0];
  v115[0] = v87;
  optionsTableView8 = [(MSDSupportViewController *)self optionsTableView];
  leadingAnchor5 = [optionsTableView8 leadingAnchor];
  leadingAnchor6 = [v113 leadingAnchor];
  v69 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v115[1] = v69;
  optionsTableView9 = [(MSDSupportViewController *)self optionsTableView];
  trailingAnchor5 = [optionsTableView9 trailingAnchor];
  trailingAnchor6 = [v113 trailingAnchor];
  v73 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v115[2] = v73;
  optionsTableView10 = [(MSDSupportViewController *)self optionsTableView];
  heightAnchor = [optionsTableView10 heightAnchor];
  v76 = [heightAnchor constraintEqualToConstant:180.0];
  v115[3] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v77];
  optionsTableView11 = [(MSDSupportViewController *)self optionsTableView];
  [optionsTableView11 registerClass:objc_opt_class() forCellReuseIdentifier:@"SupportViewTableCell"];

  v79 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] > 1)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SupportViewTableCell"];
  [v5 setAccessoryType:1];
  [v5 setSelectionStyle:2];
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  if (![pathCopy row])
  {
    v7 = @"DEVICE_DETAIL_OPTION";
    goto LABEL_7;
  }

  if ([pathCopy row] == 1)
  {
    v7 = @"PHONE_NUMBERS_OPTION";
LABEL_7:
    v8 = [MSDSetupUILocalization localizedStringForKey:v7];
    [defaultContentConfiguration setText:v8];
  }

  [v5 setContentConfiguration:defaultContentConfiguration];

LABEL_9:

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section <= 0)
  {
    v6 = [MSDSetupUILocalization localizedStringForKey:@"ADDITIONAL_INFORMATION_HEADER", v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] <= 1)
  {
    if ([pathCopy row])
    {
      if ([pathCopy row] != 1)
      {
LABEL_8:
        optionsTableView = [(MSDSupportViewController *)self optionsTableView];
        [optionsTableView deselectRowAtIndexPath:pathCopy animated:1];

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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [(MSDSupportViewController *)self countryCode];
  v5 = [currentLocale localizedStringForCountryCode:countryCode];

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
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v15 setTintColor:blackColor];

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

  heightAnchor = [v15 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:35.0];
  v32[0] = v20;
  widthAnchor = [v15 widthAnchor];
  heightAnchor2 = [v15 heightAnchor];
  v23 = [widthAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
  v32[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v24];
  centerYAnchor = [v17 centerYAnchor];
  centerYAnchor2 = [v15 centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31 = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v28];
  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

@end