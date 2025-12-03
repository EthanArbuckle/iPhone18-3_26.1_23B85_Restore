@interface HUAboutResidentDeviceViewController
+ (double)atvImageToTextBaselineConstantForViewSizeSubclass:(int64_t)subclass;
- (BOOL)_shouldShowNavigationBar;
- (BOOL)useNavigationBarForAutomationTabStyle;
- (HUAboutResidentDeviceViewController)initWithStyle:(unint64_t)style;
- (HUAboutResidentDeviceViewControllerDelegate)delegate;
- (id)_backgroundColor;
- (id)_defaultLayoutOptionsForViewSize:(CGSize)size;
- (void)_createSubviews;
- (void)_done:(id)_done;
- (void)_setNavigationBarVisibility;
- (void)updateViews;
- (void)updateViewsAndConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUAboutResidentDeviceViewController

- (HUAboutResidentDeviceViewController)initWithStyle:(unint64_t)style
{
  v13.receiver = self;
  v13.super_class = HUAboutResidentDeviceViewController;
  v4 = [(HUAboutResidentDeviceViewController *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    style = [(HUAboutResidentDeviceViewController *)v4 style];
    if (style == 1)
    {
      v8 = _HULocalizedStringWithDefaultValue(@"HUUsersHomeHubTitle", @"HUUsersHomeHubTitle", 1);
      [(HUAboutResidentDeviceViewController *)v5 setTitle:v8];

      v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel__done_];
      navigationItem = [(HUAboutResidentDeviceViewController *)v5 navigationItem];
      [navigationItem setRightBarButtonItem:v9];

      navigationItem2 = [(HUAboutResidentDeviceViewController *)v5 navigationItem];
      rightBarButtonItem = [navigationItem2 rightBarButtonItem];
      [rightBarButtonItem setEnabled:1];

      goto LABEL_6;
    }

    if (!style)
    {
      navigationItem2 = _HULocalizedStringWithDefaultValue(@"HUTabAutomationTitle", @"HUTabAutomationTitle", 1);
      [(HUAboutResidentDeviceViewController *)v5 setTitle:navigationItem2];
LABEL_6:
    }
  }

  return v5;
}

- (void)_done:(id)_done
{
  delegate = [(HUAboutResidentDeviceViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HUAboutResidentDeviceViewController *)self delegate];
    [delegate2 aboutResidentDeviceViewControllerDidFinish:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v17 viewDidLayoutSubviews];
  scrollView = [(HUAboutResidentDeviceViewController *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (([(HUAboutResidentDeviceViewController *)self edgesForExtendedLayout]& 4) != 0)
  {
    view = [(HUAboutResidentDeviceViewController *)self view];
    [view frame];
    Height = CGRectGetHeight(v18);
    view2 = [(HUAboutResidentDeviceViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v9 = Height - CGRectGetMaxY(v19) + 10.0;
  }

  scrollView2 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [scrollView2 setContentInset:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v19 viewDidLoad];
  [(HUAboutResidentDeviceViewController *)self _createSubviews];
  style = [(HUAboutResidentDeviceViewController *)self style];
  if (style <= 2)
  {
    [(HUAboutResidentDeviceViewController *)self setEdgesForExtendedLayout:qword_20D5CB018[style]];
  }

  [(HUAboutResidentDeviceViewController *)self _setNavigationBarVisibility];
  view = [(HUAboutResidentDeviceViewController *)self view];
  scrollView = [(HUAboutResidentDeviceViewController *)self scrollView];
  [view addSubview:scrollView];

  view2 = [(HUAboutResidentDeviceViewController *)self view];
  statusBarBackgroundView = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  [view2 addSubview:statusBarBackgroundView];

  if (![(HUAboutResidentDeviceViewController *)self style])
  {
    scrollView2 = [(HUAboutResidentDeviceViewController *)self scrollView];
    titleLabel = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [scrollView2 addSubview:titleLabel];

    scrollView3 = [(HUAboutResidentDeviceViewController *)self scrollView];
    subtitleLabel = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [scrollView3 addSubview:subtitleLabel];
  }

  scrollView4 = [(HUAboutResidentDeviceViewController *)self scrollView];
  atvImageView = [(HUAboutResidentDeviceViewController *)self atvImageView];
  [scrollView4 addSubview:atvImageView];

  scrollView5 = [(HUAboutResidentDeviceViewController *)self scrollView];
  homePodImageView = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  [scrollView5 addSubview:homePodImageView];

  scrollView6 = [(HUAboutResidentDeviceViewController *)self scrollView];
  homeHubTextLabel = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [scrollView6 addSubview:homeHubTextLabel];

  if ([(HUAboutResidentDeviceViewController *)self _shouldShowNavigationBar])
  {
    navigationController = [(HUAboutResidentDeviceViewController *)self navigationController];
    [navigationController setNavigationBarHidden:1 animated:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HUAboutResidentDeviceViewController;
  coordinatorCopy = coordinator;
  [(HUAboutResidentDeviceViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__HUAboutResidentDeviceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v4 viewWillAppear:appear];
  [(HUAboutResidentDeviceViewController *)self _setNavigationBarVisibility];
  [(HUAboutResidentDeviceViewController *)self updateViews];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUAboutResidentDeviceViewController;
  [(HUAboutResidentDeviceViewController *)&v4 viewDidAppear:appear];
  [(HUAboutResidentDeviceViewController *)self updateViews];
}

- (BOOL)_shouldShowNavigationBar
{
  if (![MEMORY[0x277D14CE8] isAMac])
  {
    return 0;
  }

  presentingViewController = [(HUAboutResidentDeviceViewController *)self presentingViewController];
  v4 = presentingViewController == 0;

  return v4;
}

- (id)_backgroundColor
{
  style = [(HUAboutResidentDeviceViewController *)self style];
  if (style == 2)
  {
    style = [MEMORY[0x277D75348] clearColor];
  }

  else if (style == 1)
  {
    style = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else if (!style)
  {
    style = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  return style;
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

  statusBarBackgroundView = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  [statusBarBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  _backgroundColor = [(HUAboutResidentDeviceViewController *)self _backgroundColor];
  statusBarBackgroundView2 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  [statusBarBackgroundView2 setBackgroundColor:_backgroundColor];

  v12 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v4, v5, v6, v7}];
  [(HUAboutResidentDeviceViewController *)self setScrollView:v12];

  scrollView = [(HUAboutResidentDeviceViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  _backgroundColor2 = [(HUAboutResidentDeviceViewController *)self _backgroundColor];
  scrollView2 = [(HUAboutResidentDeviceViewController *)self scrollView];
  [scrollView2 setBackgroundColor:_backgroundColor2];

  if ([(HUAboutResidentDeviceViewController *)self style])
  {
    v16 = *MEMORY[0x277D76918];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUAboutResidentDeviceViewController *)self setTitleLabel:v17];

    titleLabel = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [titleLabel2 setTextAlignment:4];

    v20 = _HULocalizedStringWithDefaultValue(@"HUResidentDeviceTriggerInfoTitle", @"HUResidentDeviceTriggerInfoTitle", 1);
    titleLabel3 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [titleLabel3 setText:v20];

    titleLabel4 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [titleLabel4 setNumberOfLines:1];

    layoutOptions = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    headlineCellOptions = [layoutOptions headlineCellOptions];
    font = [headlineCellOptions font];
    titleLabel5 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [titleLabel5 setFont:font];

    titleLabel6 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    [titleLabel6 setAdjustsFontSizeToFitWidth:1];

    v28 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUAboutResidentDeviceViewController *)self setSubtitleLabel:v28];

    subtitleLabel = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    subtitleLabel2 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [subtitleLabel2 setTextAlignment:4];

    v31 = _HULocalizedStringWithDefaultValue(@"HUResidentDeviceTriggerInfoSubtitleText", @"HUResidentDeviceTriggerInfoSubtitleText", 1);
    subtitleLabel3 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [subtitleLabel3 setText:v31];

    subtitleLabel4 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [subtitleLabel4 setNumberOfLines:0];

    v16 = *MEMORY[0x277D76918];
    v34 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
    [v34 _scaledValueForValue:18.0];
    v35 = [v34 fontWithSize:?];
    subtitleLabel5 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [subtitleLabel5 setFont:v35];

    subtitleLabel6 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    [subtitleLabel6 setAdjustsFontForContentSizeCategory:1];
  }

  v38 = objc_alloc(MEMORY[0x277D755E8]);
  v39 = HUImageNamed(@"appleTV");
  v40 = [v38 initWithImage:v39];
  [(HUAboutResidentDeviceViewController *)self setAtvImageView:v40];

  atvImageView = [(HUAboutResidentDeviceViewController *)self atvImageView];
  [atvImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = objc_alloc(MEMORY[0x277D755E8]);
  v43 = HUImageNamed(@"homePod");
  v44 = [v42 initWithImage:v43];
  [(HUAboutResidentDeviceViewController *)self setHomePodImageView:v44];

  homePodImageView = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  [homePodImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  v46 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUAboutResidentDeviceViewController *)self setHomeHubTextLabel:v46];

  homeHubTextLabel = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [homeHubTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  homeHubTextLabel2 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [homeHubTextLabel2 setTextAlignment:4];

  v49 = _HULocalizedStringWithDefaultValue(@"HUResidentDeviceInfoHomeHubText", @"HUResidentDeviceInfoHomeHubText", 1);
  homeHubTextLabel3 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [homeHubTextLabel3 setText:v49];

  homeHubTextLabel4 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [homeHubTextLabel4 setNumberOfLines:0];

  v55 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v16 weight:*MEMORY[0x277D74418]];
  [v55 _scaledValueForValue:18.0];
  v52 = [v55 fontWithSize:?];
  homeHubTextLabel5 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [homeHubTextLabel5 setFont:v52];

  homeHubTextLabel6 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  [homeHubTextLabel6 setAdjustsFontForContentSizeCategory:1];
}

- (id)_defaultLayoutOptionsForViewSize:(CGSize)size
{
  v4 = [HUGridLayoutOptions defaultOptionsForViewSize:size.width, size.height];
  if ([v4 viewSizeSubclass] >= 4)
  {
    view = [(HUAboutResidentDeviceViewController *)self view];
    readableContentGuide = [view readableContentGuide];
    [readableContentGuide layoutFrame];
    [v4 setSectionLeadingMargin:?];

    [v4 sectionLeadingMargin];
    [v4 setSectionTrailingMargin:?];
  }

  return v4;
}

- (void)updateViews
{
  view = [(HUAboutResidentDeviceViewController *)self view];
  [view frame];
  v6 = [(HUAboutResidentDeviceViewController *)self _defaultLayoutOptionsForViewSize:v4, v5];
  [(HUAboutResidentDeviceViewController *)self setLayoutOptions:v6];

  [(HUAboutResidentDeviceViewController *)self updateViewsAndConstraints];
  [(HUAboutResidentDeviceViewController *)self _setNavigationBarVisibility];
  view2 = [(HUAboutResidentDeviceViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)updateViewsAndConstraints
{
  v155[2] = *MEMORY[0x277D85DE8];
  layoutOptions = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  headlineCellOptions = [layoutOptions headlineCellOptions];
  font = [headlineCellOptions font];
  titleLabel = [(HUAboutResidentDeviceViewController *)self titleLabel];
  [titleLabel setFont:font];

  array = [MEMORY[0x277CBEB18] array];
  view = [(HUAboutResidentDeviceViewController *)self view];
  [view frame];
  v11 = HUViewSizeSubclassForViewSize(v9, v10);

  statusBarBackgroundView = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  leadingAnchor = [statusBarBackgroundView leadingAnchor];
  view2 = [(HUAboutResidentDeviceViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v16];

  statusBarBackgroundView2 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  trailingAnchor = [statusBarBackgroundView2 trailingAnchor];
  view3 = [(HUAboutResidentDeviceViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v21];

  statusBarBackgroundView3 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  topAnchor = [statusBarBackgroundView3 topAnchor];
  view4 = [(HUAboutResidentDeviceViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v26];

  statusBarBackgroundView4 = [(HUAboutResidentDeviceViewController *)self statusBarBackgroundView];
  bottomAnchor = [statusBarBackgroundView4 bottomAnchor];
  view5 = [(HUAboutResidentDeviceViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor3 = [safeAreaLayoutGuide topAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [array addObject:v32];

  scrollView = [(HUAboutResidentDeviceViewController *)self scrollView];
  leadingAnchor3 = [scrollView leadingAnchor];
  view6 = [(HUAboutResidentDeviceViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v37];

  scrollView2 = [(HUAboutResidentDeviceViewController *)self scrollView];
  trailingAnchor3 = [scrollView2 trailingAnchor];
  view7 = [(HUAboutResidentDeviceViewController *)self view];
  trailingAnchor4 = [view7 trailingAnchor];
  v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v42];

  scrollView3 = [(HUAboutResidentDeviceViewController *)self scrollView];
  topAnchor4 = [scrollView3 topAnchor];
  view8 = [(HUAboutResidentDeviceViewController *)self view];
  topAnchor5 = [view8 topAnchor];
  v47 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [array addObject:v47];

  scrollView4 = [(HUAboutResidentDeviceViewController *)self scrollView];
  bottomAnchor2 = [scrollView4 bottomAnchor];
  view9 = [(HUAboutResidentDeviceViewController *)self view];
  bottomAnchor3 = [view9 bottomAnchor];
  v52 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [array addObject:v52];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    layoutOptions2 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [layoutOptions2 sectionLeadingMargin];
    v55 = v54;
    view10 = [(HUAboutResidentDeviceViewController *)self view];
    v57 = view10;
    if (v55 != 0.0)
    {
      layoutMarginsGuide = [view10 layoutMarginsGuide];
LABEL_7:
      v61 = layoutMarginsGuide;
      leadingAnchor5 = [layoutMarginsGuide leadingAnchor];

      goto LABEL_9;
    }

LABEL_6:
    layoutMarginsGuide = [view10 readableContentGuide];
    goto LABEL_7;
  }

  layoutOptions2 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [layoutOptions2 sectionLeadingMargin];
  v60 = v59;
  view10 = [(HUAboutResidentDeviceViewController *)self view];
  v57 = view10;
  if (v60 == 0.0)
  {
    goto LABEL_6;
  }

  leadingAnchor5 = [view10 leadingAnchor];
LABEL_9:

  if (![(HUAboutResidentDeviceViewController *)self style])
  {
    titleLabel2 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    leadingAnchor6 = [titleLabel2 leadingAnchor];
    layoutOptions3 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [layoutOptions3 sectionLeadingMargin];
    v66 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor5 constant:?];
    [array addObject:v66];

    view11 = [(HUAboutResidentDeviceViewController *)self view];
    trailingAnchor5 = [view11 trailingAnchor];
    titleLabel3 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    trailingAnchor6 = [titleLabel3 trailingAnchor];
    layoutOptions4 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [layoutOptions4 sectionTrailingMargin];
    v72 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:?];
    [array addObject:v72];

    if (-[HUAboutResidentDeviceViewController useNavigationBarForAutomationTabStyle](self, "useNavigationBarForAutomationTabStyle") || [MEMORY[0x277D14CE8] isAMac])
    {
      titleLabel4 = [(HUAboutResidentDeviceViewController *)self titleLabel];
      topAnchor6 = [titleLabel4 topAnchor];
      view12 = [(HUAboutResidentDeviceViewController *)self view];
      readableContentGuide = [view12 readableContentGuide];
      topAnchor7 = [readableContentGuide topAnchor];
      v78 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
      [array addObject:v78];
    }

    else
    {
      v154[0] = &unk_282491E98;
      v154[1] = &unk_282491EB0;
      v155[0] = &unk_282493540;
      v155[1] = &unk_282493550;
      v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:2];
      v80 = HUConstantFloatForViewSizeSubclass(v11, v79);

      isAMac = [MEMORY[0x277D14CE8] isAMac];
      layoutOptions5 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
      v83 = layoutOptions5;
      if (isAMac)
      {
        [layoutOptions5 largeTitleCellTopMargin];
        v85 = v84;
      }

      else
      {
        headlineCellOptions2 = [layoutOptions5 headlineCellOptions];
        [headlineCellOptions2 headlineBaselineOffset];
        v85 = v87;
      }

      titleLabel4 = [(HUAboutResidentDeviceViewController *)self titleLabel];
      topAnchor6 = [titleLabel4 firstBaselineAnchor];
      view12 = [(HUAboutResidentDeviceViewController *)self scrollView];
      readableContentGuide = [view12 topAnchor];
      topAnchor7 = [topAnchor6 constraintEqualToAnchor:readableContentGuide constant:v80 + v85];
      [array addObject:topAnchor7];
    }

    subtitleLabel = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    leadingAnchor7 = [subtitleLabel leadingAnchor];
    layoutOptions6 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [layoutOptions6 sectionLeadingMargin];
    v91 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor5 constant:?];
    [array addObject:v91];

    view13 = [(HUAboutResidentDeviceViewController *)self view];
    trailingAnchor7 = [view13 trailingAnchor];
    subtitleLabel2 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    trailingAnchor8 = [subtitleLabel2 trailingAnchor];
    layoutOptions7 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [layoutOptions7 sectionTrailingMargin];
    v97 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:?];
    [array addObject:v97];

    subtitleLabel3 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    topAnchor8 = [subtitleLabel3 topAnchor];
    titleLabel5 = [(HUAboutResidentDeviceViewController *)self titleLabel];
    lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
    layoutOptions8 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
    [layoutOptions8 sectionTopMargin];
    v103 = [topAnchor8 constraintEqualToAnchor:lastBaselineAnchor constant:?];
    [array addObject:v103];
  }

  atvImageView = [(HUAboutResidentDeviceViewController *)self atvImageView];
  leadingAnchor8 = [atvImageView leadingAnchor];
  layoutOptions9 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [layoutOptions9 sectionLeadingMargin];
  v107 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor5 constant:?];
  [array addObject:v107];

  atvImageView2 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  widthAnchor = [atvImageView2 widthAnchor];
  atvImageView3 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  heightAnchor = [atvImageView3 heightAnchor];
  v112 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  [array addObject:v112];

  style = [(HUAboutResidentDeviceViewController *)self style];
  if (style - 1 >= 2)
  {
    if (style)
    {
      goto LABEL_23;
    }

    atvImageView4 = [(HUAboutResidentDeviceViewController *)self atvImageView];
    topAnchor9 = [atvImageView4 topAnchor];
    subtitleLabel4 = [(HUAboutResidentDeviceViewController *)self subtitleLabel];
    lastBaselineAnchor2 = [subtitleLabel4 lastBaselineAnchor];
    [objc_opt_class() subtitleBaselineToATVImageConstant];
  }

  else
  {
    atvImageView4 = [(HUAboutResidentDeviceViewController *)self atvImageView];
    topAnchor9 = [atvImageView4 topAnchor];
    subtitleLabel4 = [(HUAboutResidentDeviceViewController *)self scrollView];
    lastBaselineAnchor2 = [subtitleLabel4 topAnchor];
    [objc_opt_class() scrollViewTopToATVImageConstant];
  }

  v118 = [topAnchor9 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [array addObject:v118];

LABEL_23:
  homePodImageView = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  leadingAnchor9 = [homePodImageView leadingAnchor];
  atvImageView5 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  trailingAnchor9 = [atvImageView5 trailingAnchor];
  v123 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor9 constant:28.0];
  [array addObject:v123];

  homePodImageView2 = [(HUAboutResidentDeviceViewController *)self homePodImageView];
  topAnchor10 = [homePodImageView2 topAnchor];
  atvImageView6 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  topAnchor11 = [atvImageView6 topAnchor];
  v128 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  [array addObject:v128];

  homeHubTextLabel = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  leadingAnchor10 = [homeHubTextLabel leadingAnchor];
  layoutOptions10 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [layoutOptions10 sectionLeadingMargin];
  v132 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor5 constant:?];
  [array addObject:v132];

  view14 = [(HUAboutResidentDeviceViewController *)self view];
  trailingAnchor10 = [view14 trailingAnchor];
  homeHubTextLabel2 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  trailingAnchor11 = [homeHubTextLabel2 trailingAnchor];
  layoutOptions11 = [(HUAboutResidentDeviceViewController *)self layoutOptions];
  [layoutOptions11 sectionTrailingMargin];
  v138 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:?];
  [array addObject:v138];

  homeHubTextLabel3 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  firstBaselineAnchor = [homeHubTextLabel3 firstBaselineAnchor];
  atvImageView7 = [(HUAboutResidentDeviceViewController *)self atvImageView];
  bottomAnchor4 = [atvImageView7 bottomAnchor];
  [objc_opt_class() atvImageToTextBaselineConstantForViewSizeSubclass:v11];
  v143 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor4 constant:?];
  [array addObject:v143];

  homeHubTextLabel4 = [(HUAboutResidentDeviceViewController *)self homeHubTextLabel];
  bottomAnchor5 = [homeHubTextLabel4 bottomAnchor];
  scrollView5 = [(HUAboutResidentDeviceViewController *)self scrollView];
  bottomAnchor6 = [scrollView5 bottomAnchor];
  v148 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [array addObject:v148];

  constraints = [(HUAboutResidentDeviceViewController *)self constraints];
  LOBYTE(bottomAnchor5) = [array isEqualToArray:constraints];

  if ((bottomAnchor5 & 1) == 0)
  {
    v150 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUAboutResidentDeviceViewController *)self constraints];
    [v150 deactivateConstraints:constraints2];

    [(HUAboutResidentDeviceViewController *)self setConstraints:array];
    v152 = MEMORY[0x277CCAAD0];
    constraints3 = [(HUAboutResidentDeviceViewController *)self constraints];
    [v152 activateConstraints:constraints3];
  }
}

- (void)_setNavigationBarVisibility
{
  if (![(HUAboutResidentDeviceViewController *)self _shouldShowNavigationBar]&& ![(HUAboutResidentDeviceViewController *)self style])
  {
    useNavigationBarForAutomationTabStyle = [(HUAboutResidentDeviceViewController *)self useNavigationBarForAutomationTabStyle];
    if (useNavigationBarForAutomationTabStyle)
    {
      [(HUAboutResidentDeviceViewController *)self setTitle:0];
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      navigationController = [(HUAboutResidentDeviceViewController *)self navigationController];
      view = [navigationController view];
      [view setBackgroundColor:systemBackgroundColor];
    }

    else
    {
      systemBackgroundColor = _HULocalizedStringWithDefaultValue(@"HUTabAutomationTitle", @"HUTabAutomationTitle", 1);
      [(HUAboutResidentDeviceViewController *)self setTitle:systemBackgroundColor];
    }

    navigationController2 = [(HUAboutResidentDeviceViewController *)self navigationController];
    [navigationController2 setNavigationBarHidden:!useNavigationBarForAutomationTabStyle animated:0];
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
    navigationController = [(HUAboutResidentDeviceViewController *)self navigationController];
    splitViewController = [navigationController splitViewController];
    if (splitViewController)
    {
      navigationController2 = [(HUAboutResidentDeviceViewController *)self navigationController];
      splitViewController2 = [navigationController2 splitViewController];
      v3 = [splitViewController2 isCollapsed] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (double)atvImageToTextBaselineConstantForViewSizeSubclass:(int64_t)subclass
{
  if (subclass)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 32770;
  }

  v4 = MEMORY[0x277D76920];
  if (subclass)
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