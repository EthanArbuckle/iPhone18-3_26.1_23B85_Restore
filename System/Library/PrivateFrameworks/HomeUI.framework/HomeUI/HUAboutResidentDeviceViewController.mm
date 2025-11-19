@interface HUAboutResidentDeviceViewController
+ (double)atvImageToTextBaselineConstantForViewSizeSubclass:(int64_t)a3;
- (BOOL)_shouldShowNavigationBar;
- (BOOL)useNavigationBarForAutomationTabStyle;
- (HUAboutResidentDeviceViewController)initWithStyle:(unint64_t)a3;
- (HUAboutResidentDeviceViewControllerDelegate)delegate;
- (id)_backgroundColor;
- (id)_defaultLayoutOptionsForViewSize:(CGSize)a3;
- (void)_createSubviews;
- (void)_done:(id)a3;
- (void)_setNavigationBarVisibility;
- (void)updateViews;
- (void)updateViewsAndConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUAboutResidentDeviceViewController

- (HUAboutResidentDeviceViewController)initWithStyle:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = HUAboutResidentDeviceViewController;
  v4 = [(HUAboutResidentDeviceViewController *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    v6 = [(HUAboutResidentDeviceViewController *)v4 style];
    if (v6 == 1)
    {
      v8 = _HULocalizedStringWithDefaultValue(@"HUUsersHomeHubTitle", @"HUUsersHomeHubTitle", 1);
      [(HUAboutResidentDeviceViewController *)v5 setTitle:v8];

      v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel__done_];
      v10 = [(HUAboutResidentDeviceViewController *)v5 navigationItem];
      [v10 setRightBarButtonItem:v9];

      v7 = [(HUAboutResidentDeviceViewController *)v5 navigationItem];
      v11 = [v7 rightBarButtonItem];
      [v11 setEnabled:1];

      goto LABEL_6;
    }

    if (!v6)
    {
      v7 = _HULocalizedStringWithDefaultValue(@"HUTabAutomationTitle", @"HUTabAutomationTitle", 1);
      [(HUAboutResidentDeviceViewController *)v5 setTitle:v7];
LABEL_6:
    }
  }

  return v5;
}

- (void)_done:(id)a3
{
  v4 = [(HUAboutResidentDeviceViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HUAboutResidentDeviceViewController *)self delegate];
    [v6 aboutResidentDeviceViewControllerDidFinish:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v17 viewDidLayoutSubviews];
  v3 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (([(HUAboutResidentDeviceViewController *)self edgesForExtendedLayout]& 4) != 0)
  {
    v12 = [(HUAboutResidentDeviceViewController *)self view];
    [v12 frame];
    Height = CGRectGetHeight(v18);
    v14 = [(HUAboutResidentDeviceViewController *)self view];
    v15 = [v14 safeAreaLayoutGuide];
    [v15 layoutFrame];
    v9 = Height - CGRectGetMaxY(v19) + 10.0;
  }

  v16 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [v16 setContentInset:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v19 viewDidLoad];
  [(HUAboutResidentDeviceViewController *)self _createSubviews];
  v3 = [(HUAboutResidentDeviceViewController *)self style];
  if (v3 <= 2)
  {
    [(HUAboutResidentDeviceViewController *)self setEdgesForExtendedLayout:qword_20D5CB018[v3]];
  }

  [(HUAboutResidentDeviceViewController *)self _setNavigationBarVisibility];
  v4 = [(HUAboutResidentDeviceViewController *)self view];
  v5 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [v4 addSubview:v5];

  v6 = [(HUAboutResidentDeviceViewController *)self view];
  v7 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  [v6 addSubview:v7];

  if (![(HUAboutResidentDeviceViewController *)self style])
  {
    v8 = [(HUAboutResidentDeviceViewController *)self scrollView];
    v9 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v8 addSubview:v9];

    v10 = [(HUAboutResidentDeviceViewController *)self scrollView];
    v11 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v10 addSubview:v11];
  }

  v12 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v13 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  [v12 addSubview:v13];

  v14 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v15 = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  [v14 addSubview:v15];

  v16 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v17 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v16 addSubview:v17];

  if ([(HUAboutResidentDeviceViewController *)self _shouldShowNavigationBar])
  {
    v18 = [(HUAboutResidentDeviceViewController *)self navigationController];
    [v18 setNavigationBarHidden:1 animated:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = HUAboutResidentDeviceViewController;
  v7 = a4;
  [(HUAboutResidentDeviceViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HUAboutResidentDeviceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v4 viewWillAppear:a3];
  [(HUAboutResidentDeviceViewController *)self _setNavigationBarVisibility];
  [(HUAboutResidentDeviceViewController *)self updateViews];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v4 viewDidAppear:a3];
  [(HUAboutResidentDeviceViewController *)self updateViews];
}

- (BOOL)_shouldShowNavigationBar
{
  if (![MEMORY[0x277D14CE8] isAMac])
  {
    return 0;
  }

  v3 = [(HUAboutResidentDeviceViewController *)self presentingViewController];
  v4 = v3 == 0;

  return v4;
}

- (id)_backgroundColor
{
  v2 = [(HUAboutResidentDeviceViewController *)self style];
  if (v2 == 2)
  {
    v2 = [MEMORY[0x277D75348] clearColor];
  }

  else if (v2 == 1)
  {
    v2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else if (!v2)
  {
    v2 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  return v2;
}

- (void)_createSubviews
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(HUAboutResidentDeviceViewController *)self setStatusBarBackgroundView:v8];

  v9 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HUAboutResidentDeviceViewController *)self _backgroundColor];
  v11 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  [v11 setBackgroundColor:v10];

  v12 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v4, v5, v6, v7}];
  [(HUAboutResidentDeviceViewController *)self setScrollView:v12];

  v13 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HUAboutResidentDeviceViewController *)self _backgroundColor];
  v15 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [v15 setBackgroundColor:v14];

  if ([(HUAboutResidentDeviceViewController *)self style])
  {
    v16 = *MEMORY[0x277D76918];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUAboutResidentDeviceViewController *)self setTitleLabel:v17];

    v18 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v19 setTextAlignment:4];

    v20 = _HULocalizedStringWithDefaultValue(@"HUResidentDeviceTriggerInfoTitle", @"HUResidentDeviceTriggerInfoTitle", 1);
    v21 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v21 setText:v20];

    v22 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v22 setNumberOfLines:1];

    v23 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    v24 = [v23 headlineCellOptions];
    v25 = [v24 font];
    v26 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v26 setFont:v25];

    v27 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [v27 setAdjustsFontSizeToFitWidth:1];

    v28 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUAboutResidentDeviceViewController *)self setSubtitleLabel:v28];

    v29 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v30 setTextAlignment:4];

    v31 = _HULocalizedStringWithDefaultValue(@"HUResidentDeviceTriggerInfoSubtitleText", @"HUResidentDeviceTriggerInfoSubtitleText", 1);
    v32 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v32 setText:v31];

    v33 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v33 setNumberOfLines:0];

    v16 = *MEMORY[0x277D76918];
    v34 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
    [v34 _scaledValueForValue:18.0];
    v35 = [v34 fontWithSize:?];
    v36 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v36 setFont:v35];

    v37 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [v37 setAdjustsFontForContentSizeCategory:1];
  }

  v38 = objc_alloc(MEMORY[0x277D755E8]);
  v39 = HUImageNamed(@"appleTV");
  v40 = [v38 initWithImage:v39];
  [(HUAboutResidentDeviceViewController *)self setAtvImageView:v40];

  v41 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = objc_alloc(MEMORY[0x277D755E8]);
  v43 = HUImageNamed(@"homePod");
  v44 = [v42 initWithImage:v43];
  [(HUAboutResidentDeviceViewController *)self setHomePodImageView:v44];

  v45 = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

  v46 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUAboutResidentDeviceViewController *)self setHomeHubTextLabel:v46];

  v47 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v48 setTextAlignment:4];

  v49 = _HULocalizedStringWithDefaultValue(@"HUResidentDeviceInfoHomeHubText", @"HUResidentDeviceInfoHomeHubText", 1);
  v50 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v50 setText:v49];

  v51 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v51 setNumberOfLines:0];

  v55 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v16 weight:*MEMORY[0x277D74418]];
  [v55 _scaledValueForValue:18.0];
  v52 = [v55 fontWithSize:?];
  v53 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v53 setFont:v52];

  v54 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [v54 setAdjustsFontForContentSizeCategory:1];
}

- (id)_defaultLayoutOptionsForViewSize:(CGSize)a3
{
  v4 = [HUGridLayoutOptions defaultOptionsForViewSize:a3.width, a3.height];
  if ([v4 viewSizeSubclass] >= 4)
  {
    v5 = [(HUAboutResidentDeviceViewController *)self view];
    v6 = [v5 readableContentGuide];
    [v6 layoutFrame];
    [v4 setSectionLeadingMargin:?];

    [v4 sectionLeadingMargin];
    [v4 setSectionTrailingMargin:?];
  }

  return v4;
}

- (void)updateViews
{
  v3 = [(HUAboutResidentDeviceViewController *)self view];
  [v3 frame];
  v6 = [(HUAboutResidentDeviceViewController *)self _defaultLayoutOptionsForViewSize:v4, v5];
  [(HUAboutResidentDeviceViewController *)self setLayoutOptions:v6];

  [(HUAboutResidentDeviceViewController *)self updateViewsAndConstraints];
  [(HUAboutResidentDeviceViewController *)self _setNavigationBarVisibility];
  v7 = [(HUAboutResidentDeviceViewController *)self view];
  [v7 layoutIfNeeded];
}

- (void)updateViewsAndConstraints
{
  v155[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  v4 = [v3 headlineCellOptions];
  v5 = [v4 font];
  v6 = [(HUAboutResidentDeviceViewController *)self titleLabel];
  [v6 setFont:v5];

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(HUAboutResidentDeviceViewController *)self view];
  [v8 frame];
  v11 = HUViewSizeSubclassForViewSize(v9, v10);

  v12 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  v13 = [v12 leadingAnchor];
  v14 = [(HUAboutResidentDeviceViewController *)self view];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v7 addObject:v16];

  v17 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  v18 = [v17 trailingAnchor];
  v19 = [(HUAboutResidentDeviceViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v7 addObject:v21];

  v22 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  v23 = [v22 topAnchor];
  v24 = [(HUAboutResidentDeviceViewController *)self view];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v7 addObject:v26];

  v27 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  v28 = [v27 bottomAnchor];
  v29 = [(HUAboutResidentDeviceViewController *)self view];
  v30 = [v29 safeAreaLayoutGuide];
  v31 = [v30 topAnchor];
  v32 = [v28 constraintEqualToAnchor:v31];
  [v7 addObject:v32];

  v33 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v34 = [v33 leadingAnchor];
  v35 = [(HUAboutResidentDeviceViewController *)self view];
  v36 = [v35 leadingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  [v7 addObject:v37];

  v38 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v39 = [v38 trailingAnchor];
  v40 = [(HUAboutResidentDeviceViewController *)self view];
  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  [v7 addObject:v42];

  v43 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v44 = [v43 topAnchor];
  v45 = [(HUAboutResidentDeviceViewController *)self view];
  v46 = [v45 topAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v7 addObject:v47];

  v48 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v49 = [v48 bottomAnchor];
  v50 = [(HUAboutResidentDeviceViewController *)self view];
  v51 = [v50 bottomAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v7 addObject:v52];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v53 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [v53 sectionLeadingMargin];
    v55 = v54;
    v56 = [(HUAboutResidentDeviceViewController *)self view];
    v57 = v56;
    if (v55 != 0.0)
    {
      v58 = [v56 layoutMarginsGuide];
LABEL_7:
      v61 = v58;
      v62 = [v58 leadingAnchor];

      goto LABEL_9;
    }

LABEL_6:
    v58 = [v56 readableContentGuide];
    goto LABEL_7;
  }

  v53 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [v53 sectionLeadingMargin];
  v60 = v59;
  v56 = [(HUAboutResidentDeviceViewController *)self view];
  v57 = v56;
  if (v60 == 0.0)
  {
    goto LABEL_6;
  }

  v62 = [v56 leadingAnchor];
LABEL_9:

  if (![(HUAboutResidentDeviceViewController *)self style])
  {
    v63 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    v64 = [v63 leadingAnchor];
    v65 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [v65 sectionLeadingMargin];
    v66 = [v64 constraintEqualToAnchor:v62 constant:?];
    [v7 addObject:v66];

    v67 = [(HUAboutResidentDeviceViewController *)self view];
    v68 = [v67 trailingAnchor];
    v69 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    v70 = [v69 trailingAnchor];
    v71 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [v71 sectionTrailingMargin];
    v72 = [v68 constraintEqualToAnchor:v70 constant:?];
    [v7 addObject:v72];

    if (-[HUAboutResidentDeviceViewController useNavigationBarForAutomationTabStyle](self, "useNavigationBarForAutomationTabStyle") || [MEMORY[0x277D14CE8] isAMac])
    {
      v73 = [(HUAboutResidentDeviceViewController *)self titleLabel];
      v74 = [v73 topAnchor];
      v75 = [(HUAboutResidentDeviceViewController *)self view];
      v76 = [v75 readableContentGuide];
      v77 = [v76 topAnchor];
      v78 = [v74 constraintEqualToAnchor:v77];
      [v7 addObject:v78];
    }

    else
    {
      v154[0] = &unk_282491E98;
      v154[1] = &unk_282491EB0;
      v155[0] = &unk_282493540;
      v155[1] = &unk_282493550;
      v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:2];
      v80 = HUConstantFloatForViewSizeSubclass(v11, v79);

      v81 = [MEMORY[0x277D14CE8] isAMac];
      v82 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
      v83 = v82;
      if (v81)
      {
        [v82 largeTitleCellTopMargin];
        v85 = v84;
      }

      else
      {
        v86 = [v82 headlineCellOptions];
        [v86 headlineBaselineOffset];
        v85 = v87;
      }

      v73 = [(HUAboutResidentDeviceViewController *)self titleLabel];
      v74 = [v73 firstBaselineAnchor];
      v75 = [(HUAboutResidentDeviceViewController *)self scrollView];
      v76 = [v75 topAnchor];
      v77 = [v74 constraintEqualToAnchor:v76 constant:v80 + v85];
      [v7 addObject:v77];
    }

    v88 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    v89 = [v88 leadingAnchor];
    v90 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [v90 sectionLeadingMargin];
    v91 = [v89 constraintEqualToAnchor:v62 constant:?];
    [v7 addObject:v91];

    v92 = [(HUAboutResidentDeviceViewController *)self view];
    v93 = [v92 trailingAnchor];
    v94 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    v95 = [v94 trailingAnchor];
    v96 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [v96 sectionTrailingMargin];
    v97 = [v93 constraintEqualToAnchor:v95 constant:?];
    [v7 addObject:v97];

    v98 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    v99 = [v98 topAnchor];
    v100 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    v101 = [v100 lastBaselineAnchor];
    v102 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [v102 sectionTopMargin];
    v103 = [v99 constraintEqualToAnchor:v101 constant:?];
    [v7 addObject:v103];
  }

  v104 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  v105 = [v104 leadingAnchor];
  v106 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [v106 sectionLeadingMargin];
  v107 = [v105 constraintEqualToAnchor:v62 constant:?];
  [v7 addObject:v107];

  v108 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  v109 = [v108 widthAnchor];
  v110 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  v111 = [v110 heightAnchor];
  v112 = [v109 constraintEqualToAnchor:v111];
  [v7 addObject:v112];

  v113 = [(HUAboutResidentDeviceViewController *)self style];
  if (v113 - 1 >= 2)
  {
    if (v113)
    {
      goto LABEL_23;
    }

    v114 = [(HUAboutResidentDeviceViewController *)self atvImageView];
    v115 = [v114 topAnchor];
    v116 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    v117 = [v116 lastBaselineAnchor];
    [objc_opt_class() subtitleBaselineToATVImageConstant];
  }

  else
  {
    v114 = [(HUAboutResidentDeviceViewController *)self atvImageView];
    v115 = [v114 topAnchor];
    v116 = [(HUAboutResidentDeviceViewController *)self scrollView];
    v117 = [v116 topAnchor];
    [objc_opt_class() scrollViewTopToATVImageConstant];
  }

  v118 = [v115 constraintEqualToAnchor:v117 constant:?];
  [v7 addObject:v118];

LABEL_23:
  v119 = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  v120 = [v119 leadingAnchor];
  v121 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  v122 = [v121 trailingAnchor];
  v123 = [v120 constraintEqualToAnchor:v122 constant:28.0];
  [v7 addObject:v123];

  v124 = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  v125 = [v124 topAnchor];
  v126 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  v127 = [v126 topAnchor];
  v128 = [v125 constraintEqualToAnchor:v127];
  [v7 addObject:v128];

  v129 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  v130 = [v129 leadingAnchor];
  v131 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [v131 sectionLeadingMargin];
  v132 = [v130 constraintEqualToAnchor:v62 constant:?];
  [v7 addObject:v132];

  v133 = [(HUAboutResidentDeviceViewController *)self view];
  v134 = [v133 trailingAnchor];
  v135 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  v136 = [v135 trailingAnchor];
  v137 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [v137 sectionTrailingMargin];
  v138 = [v134 constraintEqualToAnchor:v136 constant:?];
  [v7 addObject:v138];

  v139 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  v140 = [v139 firstBaselineAnchor];
  v141 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  v142 = [v141 bottomAnchor];
  [objc_opt_class() atvImageToTextBaselineConstantForViewSizeSubclass:v11];
  v143 = [v140 constraintEqualToAnchor:v142 constant:?];
  [v7 addObject:v143];

  v144 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  v145 = [v144 bottomAnchor];
  v146 = [(HUAboutResidentDeviceViewController *)self scrollView];
  v147 = [v146 bottomAnchor];
  v148 = [v145 constraintEqualToAnchor:v147];
  [v7 addObject:v148];

  v149 = [(HUAboutResidentDeviceViewController *)self constraints];
  LOBYTE(v145) = [v7 isEqualToArray:v149];

  if ((v145 & 1) == 0)
  {
    v150 = MEMORY[0x277CCAAD0];
    v151 = [(HUAboutResidentDeviceViewController *)self constraints];
    [v150 deactivateConstraints:v151];

    [(HUAboutResidentDeviceViewController *)self setConstraints:v7];
    v152 = MEMORY[0x277CCAAD0];
    v153 = [(HUAboutResidentDeviceViewController *)self constraints];
    [v152 activateConstraints:v153];
  }
}

- (void)_setNavigationBarVisibility
{
  if (![(HUAboutResidentDeviceViewController *)self _shouldShowNavigationBar]&& ![(HUAboutResidentDeviceViewController *)self style])
  {
    v3 = [(HUAboutResidentDeviceViewController *)self useNavigationBarForAutomationTabStyle];
    if (v3)
    {
      [(HUAboutResidentDeviceViewController *)self setTitle:0];
      v4 = [MEMORY[0x277D75348] systemBackgroundColor];
      v5 = [(HUAboutResidentDeviceViewController *)self navigationController];
      v6 = [v5 view];
      [v6 setBackgroundColor:v4];
    }

    else
    {
      v4 = _HULocalizedStringWithDefaultValue(@"HUTabAutomationTitle", @"HUTabAutomationTitle", 1);
      [(HUAboutResidentDeviceViewController *)self setTitle:v4];
    }

    v7 = [(HUAboutResidentDeviceViewController *)self navigationController];
    [v7 setNavigationBarHidden:!v3 animated:0];
  }
}

- (BOOL)useNavigationBarForAutomationTabStyle
{
  if (-[HUAboutResidentDeviceViewController _shouldShowNavigationBar](self, "_shouldShowNavigationBar") || ([MEMORY[0x277D14CE8] isAMac] & 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(HUAboutResidentDeviceViewController *)self navigationController];
    v5 = [v4 splitViewController];
    if (v5)
    {
      v6 = [(HUAboutResidentDeviceViewController *)self navigationController];
      v7 = [v6 splitViewController];
      v3 = [v7 isCollapsed] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (double)atvImageToTextBaselineConstantForViewSizeSubclass:(int64_t)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 32770;
  }

  v4 = MEMORY[0x277D76920];
  if (a3)
  {
    v4 = MEMORY[0x277D76918];
  }

  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v4 addingSymbolicTraits:v3 options:0];
  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [v6 _scaledValueForValue:40.0];
  v8 = v7;

  return v8;
}

- (HUAboutResidentDeviceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end