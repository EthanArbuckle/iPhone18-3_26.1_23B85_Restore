@interface HROnboardingElectrocardiogramUpdateCompleteViewController
- (HROnboardingElectrocardiogramUpdateCompleteViewControllerDelegate)electrocardiogramDelegate;
- (id)_bodyFont;
- (id)_titleFont;
- (id)buttonTitleString;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version electrocardiogramDelegate:(id)delegate;
- (id)otherDevicesWithUpdateAvailable;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_showDevicesInWatchAppTapped:(id)tapped;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)viewDidLoad;
@end

@implementation HROnboardingElectrocardiogramUpdateCompleteViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version electrocardiogramDelegate:(id)delegate
{
  onboardingCopy = onboarding;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = HROnboardingElectrocardiogramUpdateCompleteViewController;
  v9 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)&v13 initForOnboarding:onboardingCopy upgradingFromAlgorithmVersion:version];
  v10 = v9;
  if (v9)
  {
    navigationItem = [v9 navigationItem];
    [navigationItem setHidesBackButton:1];

    objc_storeWeak(v10 + 136, delegateCopy);
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingElectrocardiogramUpdateCompleteViewController;
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)&v3 viewDidLoad];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _setUpUI];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _setUpConstraints];
}

- (void)_setUpUI
{
  v28[1] = *MEMORY[0x277D85DE8];
  hrui_fontAdjustingLabel = [MEMORY[0x277D756B8] hrui_fontAdjustingLabel];
  titleString = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleString];
  [hrui_fontAdjustingLabel setText:titleString];

  [hrui_fontAdjustingLabel setTextAlignment:4];
  _titleFont = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _titleFont];
  [hrui_fontAdjustingLabel setFont:_titleFont];

  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setTitleLabel:hrui_fontAdjustingLabel];
  contentView = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  titleLabel = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  [contentView addSubview:titleLabel];

  hrui_fontAdjustingLabel2 = [MEMORY[0x277D756B8] hrui_fontAdjustingLabel];
  bodyString = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyString];
  [hrui_fontAdjustingLabel2 setText:bodyString];

  [hrui_fontAdjustingLabel2 setTextAlignment:4];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [hrui_fontAdjustingLabel2 setTextColor:secondaryLabelColor];

  _bodyFont = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _bodyFont];
  [hrui_fontAdjustingLabel2 setFont:_bodyFont];

  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setBodyLabel:hrui_fontAdjustingLabel2];
  contentView2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  bodyLabel = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  [contentView2 addSubview:bodyLabel];

  otherDevicesWithUpdateAvailable = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesWithUpdateAvailable];
  if ([otherDevicesWithUpdateAvailable count])
  {
    v15 = [otherDevicesWithUpdateAvailable componentsJoinedByString:@"\n"];
    v16 = [HRMiniTilePlatterView alloc];
    otherDevicesTileTitle = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTileTitle];
    otherDevicesTileBody = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTileBody];
    hrui_watchIconImage = [MEMORY[0x277D755B8] hrui_watchIconImage];
    otherDevicesTileAction = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTileAction];
    v21 = [(HRMiniTilePlatterView *)v16 initWithtitle:otherDevicesTileTitle body:otherDevicesTileBody footnote:v15 icon:hrui_watchIconImage actionText:otherDevicesTileAction];

    v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__showDevicesInWatchAppTapped_];
    [(HRMiniTilePlatterView *)v21 addGestureRecognizer:v22];
    [(HRMiniTilePlatterView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HRMiniTilePlatterView *)v21 setUserInteractionEnabled:1];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setOtherDevicesTile:v21];
    contentView3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    otherDevicesTile = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    [contentView3 addSubview:otherDevicesTile];
  }

  buttonTitleString = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self buttonTitleString];
  v28[0] = buttonTitleString;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v27 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v26 footerText:0 boldFooterText:0 delegate:self];

  [v27 setBlurHidden:0];
  [v27 setFixedBottomButtonSpacing:1];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setStackedButtonView:v27];
}

- (void)_setUpConstraints
{
  v92[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  contentView = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  titleLabel2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentTop];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v9 setActive:1];

  titleLabel3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  LODWORD(v11) = 1148846080;
  [titleLabel3 setContentHuggingPriority:0 forAxis:v11];

  bodyLabel = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  topAnchor3 = [bodyLabel topAnchor];
  titleLabel4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
  [v16 setActive:1];

  bodyLabel2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  contentView3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [bodyLabel2 hrui_alignHorizontalConstraintsWithView:contentView3 insets:?];

  otherDevicesTile = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];

  if (otherDevicesTile)
  {
    otherDevicesTile2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    topAnchor4 = [otherDevicesTile2 topAnchor];
    bodyLabel3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
    bottomAnchor2 = [bodyLabel3 bottomAnchor];
    v24 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:24.0];
    [v24 setActive:1];

    view = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
    [view hk_onboardingListDirectionalEdgeInsets];
    v27 = v26;

    otherDevicesTile3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    iconImageView = [otherDevicesTile3 iconImageView];
    [iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    otherDevicesTile4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    iconImageView2 = [otherDevicesTile4 iconImageView];
    leadingAnchor = [iconImageView2 leadingAnchor];
    titleLabel5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
    leadingAnchor2 = [titleLabel5 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v35 setActive:1];

    otherDevicesTile5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    trailingAnchor = [otherDevicesTile5 trailingAnchor];
    contentView4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v27];
    [v40 setActive:1];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
  }

  else
  {
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  }
  v41 = ;
  bottomAnchor3 = [v41 bottomAnchor];

  contentView5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v45 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor3];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:v45];

  contentViewBottomConstraint = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];

  stackedButtonView = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setFooterView:stackedButtonView insets:?];

  stackedButtonView2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  view2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  [stackedButtonView2 alignBlurViewHorizontalConstraintsWithView:view2];

  view3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  [view3 layoutIfNeeded];

  view4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  stackedButtonView3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  buttons = [stackedButtonView3 buttons];
  firstObject = [buttons firstObject];
  [firstObject frame];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  stackedButtonView4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  [view4 convertRect:stackedButtonView4 fromView:{v56, v58, v60, v62}];
  v65 = v64;

  contentView6 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  [contentView6 frame];
  v68 = v67;
  view5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  [view5 safeAreaInsets];
  v71 = v65 - v70;

  if (v68 <= v71)
  {
    v87 = MEMORY[0x277CCAAD0];
    contentViewBottomConstraint2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
    v91 = contentViewBottomConstraint2;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
    [v87 deactivateConstraints:v89];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:0];
    contentView7 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    bottomAnchor5 = [contentView7 bottomAnchor];
    stackedButtonView8 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor3];
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:stackedButtonView8];
  }

  else
  {
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self removeFooterView];
    contentView8 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    stackedButtonView5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    [contentView8 addSubview:stackedButtonView5];

    stackedButtonView6 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    titleLabel6 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
    [stackedButtonView6 hk_alignHorizontalConstraintsWithView:titleLabel6 margin:0.0];

    stackedButtonView7 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    topAnchor5 = [stackedButtonView7 topAnchor];
    v78 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:*MEMORY[0x277D127A0]];
    [v78 setActive:1];

    v79 = MEMORY[0x277CCAAD0];
    contentViewBottomConstraint3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
    v92[0] = contentViewBottomConstraint3;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:1];
    [v79 deactivateConstraints:v81];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:0];
    contentView7 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    bottomAnchor5 = [contentView7 bottomAnchor];
    stackedButtonView8 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    bottomAnchor6 = [stackedButtonView8 bottomAnchor];
    v86 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:v86];
  }

  contentViewBottomConstraint4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint4 setActive:1];
}

- (id)otherDevicesWithUpdateAvailable
{
  v29 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getPairedDevices = [mEMORY[0x277D2BCF8] getPairedDevices];
  v21 = mEMORY[0x277D2BCF8];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = getPairedDevices;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = *MEMORY[0x277D2BAF0];
    v22 = *MEMORY[0x277D2BBA8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (v11 != getActivePairedDevice)
        {
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
          v13 = [v11 supportsCapability:v12];

          v14 = [v11 valueForProperty:v9];

          if (v13 && v14 == 0)
          {
            v16 = [v11 valueForProperty:v22];
            v17 = v16;
            v18 = @"(null)";
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            [v23 addObject:v19];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v23;
}

- (void)_showDevicesInWatchAppTapped:(id)tapped
{
  electrocardiogramDelegate = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self electrocardiogramDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    electrocardiogramDelegate2 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self electrocardiogramDelegate];
    [electrocardiogramDelegate2 didTapOnShowDevicesInWatchApp];
  }
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index)
  {
    delegate = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self delegate];
    [delegate stepForward];
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (id)buttonTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ONBOARDING_DONE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  return v3;
}

- (HROnboardingElectrocardiogramUpdateCompleteViewControllerDelegate)electrocardiogramDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_electrocardiogramDelegate);

  return WeakRetained;
}

@end