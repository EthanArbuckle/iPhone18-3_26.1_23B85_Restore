@interface HROnboardingElectrocardiogramUpdateCompleteViewController
- (HROnboardingElectrocardiogramUpdateCompleteViewControllerDelegate)electrocardiogramDelegate;
- (id)_bodyFont;
- (id)_titleFont;
- (id)buttonTitleString;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4 electrocardiogramDelegate:(id)a5;
- (id)otherDevicesWithUpdateAvailable;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_showDevicesInWatchAppTapped:(id)a3;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HROnboardingElectrocardiogramUpdateCompleteViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4 electrocardiogramDelegate:(id)a5
{
  v6 = a3;
  v8 = a5;
  v13.receiver = self;
  v13.super_class = HROnboardingElectrocardiogramUpdateCompleteViewController;
  v9 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)&v13 initForOnboarding:v6 upgradingFromAlgorithmVersion:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 navigationItem];
    [v11 setHidesBackButton:1];

    objc_storeWeak(v10 + 136, v8);
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
  v3 = [MEMORY[0x277D756B8] hrui_fontAdjustingLabel];
  v4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleString];
  [v3 setText:v4];

  [v3 setTextAlignment:4];
  v5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _titleFont];
  [v3 setFont:v5];

  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setTitleLabel:v3];
  v6 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  v7 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  [v6 addSubview:v7];

  v8 = [MEMORY[0x277D756B8] hrui_fontAdjustingLabel];
  v9 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyString];
  [v8 setText:v9];

  [v8 setTextAlignment:4];
  v10 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v8 setTextColor:v10];

  v11 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _bodyFont];
  [v8 setFont:v11];

  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setBodyLabel:v8];
  v12 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  v13 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  [v12 addSubview:v13];

  v14 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesWithUpdateAvailable];
  if ([v14 count])
  {
    v15 = [v14 componentsJoinedByString:@"\n"];
    v16 = [HRMiniTilePlatterView alloc];
    v17 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTileTitle];
    v18 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTileBody];
    v19 = [MEMORY[0x277D755B8] hrui_watchIconImage];
    v20 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTileAction];
    v21 = [(HRMiniTilePlatterView *)v16 initWithtitle:v17 body:v18 footnote:v15 icon:v19 actionText:v20];

    v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__showDevicesInWatchAppTapped_];
    [(HRMiniTilePlatterView *)v21 addGestureRecognizer:v22];
    [(HRMiniTilePlatterView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HRMiniTilePlatterView *)v21 setUserInteractionEnabled:1];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setOtherDevicesTile:v21];
    v23 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    v24 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    [v23 addSubview:v24];
  }

  v25 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self buttonTitleString];
  v28[0] = v25;
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
  v3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  v4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  v5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  v8 = [v7 topAnchor];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentTop];
  v9 = [v6 constraintEqualToAnchor:v8 constant:?];
  [v9 setActive:1];

  v10 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  LODWORD(v11) = 1148846080;
  [v10 setContentHuggingPriority:0 forAxis:v11];

  v12 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  v13 = [v12 topAnchor];
  v14 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  [v16 setActive:1];

  v17 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  v18 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v17 hrui_alignHorizontalConstraintsWithView:v18 insets:?];

  v19 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];

  if (v19)
  {
    v20 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    v21 = [v20 topAnchor];
    v22 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:24.0];
    [v24 setActive:1];

    v25 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
    [v25 hk_onboardingListDirectionalEdgeInsets];
    v27 = v26;

    v28 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    v29 = [v28 iconImageView];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    v31 = [v30 iconImageView];
    v32 = [v31 leadingAnchor];
    v33 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
    v34 = [v33 leadingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
    v37 = [v36 trailingAnchor];
    v38 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    v39 = [v38 trailingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:-v27];
    [v40 setActive:1];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self otherDevicesTile];
  }

  else
  {
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self bodyLabel];
  }
  v41 = ;
  v42 = [v41 bottomAnchor];

  v43 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  v44 = [v43 bottomAnchor];
  v45 = [v44 constraintEqualToAnchor:v42];
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:v45];

  v46 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
  [v46 setActive:1];

  v47 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setFooterView:v47 insets:?];

  v48 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  v49 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  [v48 alignBlurViewHorizontalConstraintsWithView:v49];

  v50 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  [v50 layoutIfNeeded];

  v51 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  v52 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  v53 = [v52 buttons];
  v54 = [v53 firstObject];
  [v54 frame];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
  [v51 convertRect:v63 fromView:{v56, v58, v60, v62}];
  v65 = v64;

  v66 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
  [v66 frame];
  v68 = v67;
  v69 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self view];
  [v69 safeAreaInsets];
  v71 = v65 - v70;

  if (v68 <= v71)
  {
    v87 = MEMORY[0x277CCAAD0];
    v88 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
    v91 = v88;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
    [v87 deactivateConstraints:v89];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:0];
    v82 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    v83 = [v82 bottomAnchor];
    v84 = [v83 constraintEqualToAnchor:v42];
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:v84];
  }

  else
  {
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self removeFooterView];
    v72 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    v73 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    [v72 addSubview:v73];

    v74 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    v75 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self titleLabel];
    [v74 hk_alignHorizontalConstraintsWithView:v75 margin:0.0];

    v76 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    v77 = [v76 topAnchor];
    v78 = [v77 constraintEqualToAnchor:v42 constant:*MEMORY[0x277D127A0]];
    [v78 setActive:1];

    v79 = MEMORY[0x277CCAAD0];
    v80 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
    v92[0] = v80;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:1];
    [v79 deactivateConstraints:v81];

    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:0];
    v82 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentView];
    v83 = [v82 bottomAnchor];
    v84 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self stackedButtonView];
    v85 = [v84 bottomAnchor];
    v86 = [v83 constraintEqualToAnchor:v85];
    [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self setContentViewBottomConstraint:v86];
  }

  v90 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self contentViewBottomConstraint];
  [v90 setActive:1];
}

- (id)otherDevicesWithUpdateAvailable
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getPairedDevices];
  v21 = v2;
  v4 = [v2 getActivePairedDevice];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
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
        if (v11 != v4)
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

- (void)_showDevicesInWatchAppTapped:(id)a3
{
  v4 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self electrocardiogramDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self electrocardiogramDelegate];
    [v6 didTapOnShowDevicesInWatchApp];
  }
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    v5 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self delegate];
    [v5 stepForward];
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramUpdateCompleteViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

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