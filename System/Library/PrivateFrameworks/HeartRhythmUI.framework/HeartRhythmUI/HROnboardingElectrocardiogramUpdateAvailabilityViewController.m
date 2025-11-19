@interface HROnboardingElectrocardiogramUpdateAvailabilityViewController
+ (void)markElectrocardiogramUpdateAsViewed:(id)a3;
- (double)_bodyBottomToLocationTop;
- (double)_locationFooterLastBaselineToContinueButton;
- (double)_titleBottomToBodyTop;
- (id)_bodyFont;
- (id)_footnoteFont;
- (id)_titleFont;
- (id)buttonTitleString;
- (id)deviceNotSupportedBodyString;
- (id)featureDisabledBodyString;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (id)locationFeatureIneligiblePromptBodyString;
- (id)locationNotFoundPromptBodyString;
- (id)locationNotFoundPromptTitleString;
- (id)watchOSVersionTooLowBodyString;
- (void)_setUpStackedButtonView;
- (void)continueAndCheckForUpdateAvailability:(id)a3;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation HROnboardingElectrocardiogramUpdateAvailabilityViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HROnboardingElectrocardiogramUpdateAvailabilityViewController;
  v5 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)&v10 initForOnboarding:a3 upgradingFromAlgorithmVersion:a4];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [v5 setRightButtonType:2];
    }

    v7 = objc_alloc_init(HRElectrocardiogramWatchAppInstallability);
    v8 = v6[137];
    v6[137] = v7;
  }

  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HROnboardingElectrocardiogramUpdateAvailabilityViewController;
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)&v6 viewDidAppear:a3];
  v4 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self delegate];
  v5 = [v4 healthStore];
  [HROnboardingElectrocardiogramUpdateAvailabilityViewController markElectrocardiogramUpdateAsViewed:v5];
}

- (void)setUpUI
{
  v22.receiver = self;
  v22.super_class = HROnboardingElectrocardiogramUpdateAvailabilityViewController;
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)&v22 setUpUI];
  v3 = [[HROnboardingWristImageView alloc] initWithImageStyle:1];
  [(HROnboardingWristImageView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HROnboardingWristImageView *)v3 setContentMode:1];
  [(HROnboardingWristImageView *)v3 setTimeRemaining:26.0];
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self setHeroView:v3];

  v4 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  v5 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self heroView];
  [v4 addSubview:v5];

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  v12 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleString];
  [v11 setText:v12];

  [v11 setTextAlignment:4];
  v13 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _titleFont];
  [v11 setFont:v13];

  [v11 setAdjustsFontForContentSizeCategory:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setNumberOfLines:0];
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self setTitleLabel:v11];

  v14 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  v15 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleLabel];
  [v14 addSubview:v15];

  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  v17 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self bodyString];
  [v16 setText:v17];

  [v16 setTextAlignment:4];
  v18 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v16 setTextColor:v18];

  v19 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _bodyFont];
  [v16 setFont:v19];

  [v16 setAdjustsFontForContentSizeCategory:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setNumberOfLines:0];
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self setBodyLabel:v16];

  v20 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  v21 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self bodyLabel];
  [v20 addSubview:v21];

  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _setUpStackedButtonView];
}

- (void)setUpConstraints
{
  v38.receiver = self;
  v38.super_class = HROnboardingElectrocardiogramUpdateAvailabilityViewController;
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)&v38 setUpConstraints];
  v3 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self heroView];
  v4 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self heroView];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleLabel];
  v11 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v10 hrui_alignHorizontalConstraintsWithView:v11 insets:?];

  v12 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleLabel];
  v13 = [v12 topAnchor];
  v14 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self heroView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:29.0];
  [v16 setActive:1];

  v17 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self bodyLabel];
  v18 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleLabel];
  [v17 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

  v19 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self bodyLabel];
  v20 = [v19 topAnchor];
  v21 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleLabel];
  v22 = [v21 bottomAnchor];
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _titleBottomToBodyTop];
  v23 = [v20 constraintEqualToAnchor:v22 constant:?];
  [v23 setActive:1];

  v24 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  v25 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self titleLabel];
  [v24 hk_alignHorizontalConstraintsWithView:v25 margin:0.0];

  v26 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  v27 = [v26 topAnchor];
  v28 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self bodyLabel];
  v29 = [v28 bottomAnchor];
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _locationFooterLastBaselineToContinueButton];
  v30 = [v27 constraintEqualToAnchor:v29 constant:?];
  [v30 setActive:1];

  v31 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  v32 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  [v31 alignBlurViewHorizontalConstraintsWithView:v32];

  v33 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  v34 = [v33 bottomAnchor];
  v35 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  [v37 setActive:1];
}

+ (void)markElectrocardiogramUpdateAsViewed:(id)a3
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a3;
  v7 = [v5 date];
  v8 = [MEMORY[0x277CCD570] safetyDefaultsDomainWithHealthStore:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__HROnboardingElectrocardiogramUpdateAvailabilityViewController_markElectrocardiogramUpdateAsViewed___block_invoke;
  v10[3] = &unk_2796FB9F0;
  v12 = a1;
  v13 = a2;
  v11 = v7;
  v9 = v7;
  [v8 setDate:v9 forKey:@"ElectrocardiogramUpdateDateViewed" completion:v10];
}

void __101__HROnboardingElectrocardiogramUpdateAvailabilityViewController_markElectrocardiogramUpdateAsViewed___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2D8];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = a1[5];
      v7 = a1[6];
      v9 = v5;
      v10 = NSStringFromSelector(v7);
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_2521E7000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Could not set viewed date: %{public}@", &v15, 0x20u);

LABEL_6:
    }
  }

  else if (v6)
  {
    v12 = a1[5];
    v11 = a1[6];
    v9 = v5;
    v13 = NSStringFromSelector(v11);
    v14 = a1[4];
    v15 = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_2521E7000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Successfully set viewed date to %{public}@", &v15, 0x20u);

    goto LABEL_6;
  }
}

- (void)_setUpStackedButtonView
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self buttonTitleString];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self locationFooterString];
  v6 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v4 footerText:v5 boldFooterText:0 delegate:self];
  [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self setStackedButtonView:v6];

  v7 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  [v7 setFixedBottomButtonSpacing:1];

  v8 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  [v9 setBlurHidden:1];

  v10 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self contentView];
  v11 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self stackedButtonView];
  [v10 addSubview:v11];
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    v6 = [a3 buttons];
    v7 = [v6 objectAtIndexedSubscript:0];

    [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self continueAndCheckForUpdateAvailability:v7];
  }
}

- (void)continueAndCheckForUpdateAvailability:(id)a3
{
  v5 = a3;
  [v5 setEnabled:0];
  v6 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self onboardingAvailabilityDeterminer];

  if (!v6)
  {
    v7 = [HRElectrocardiogramCurrentLocationOnboardingDeterminer alloc];
    v8 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self delegate];
    v9 = [v8 healthStore];
    v10 = [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)v7 initWithHealthStore:v9];
    [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self setOnboardingAvailabilityDeterminer:v10];
  }

  v11 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self onboardingAvailabilityDeterminer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke;
  v13[3] = &unk_2796FB750;
  v14 = v5;
  v15 = self;
  v16 = a2;
  v12 = v5;
  [v11 isElectrocardiogramOnboardingAvailableInCurrentLocationForActiveWatch:v13];
}

void __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_2;
  v14[3] = &unk_2796FB728;
  v15 = *(a1 + 32);
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = v8;
  v19 = v7;
  v20 = v10;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setEnabled:1];
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    if ([v2 code] == 111)
    {
      v4 = *(a1 + 48);
      v5 = [v4 featureDisabledBodyString];
      [v4 presentLearnMoreAlertWithMessage:v5 learnMoreTapped:&__block_literal_global_3];
    }

    else if ([*v3 code] == 109)
    {
      v16 = *(a1 + 48);
      v5 = [v16 locationNotFoundPromptBodyString];
      v17 = [*(a1 + 48) locationNotFoundPromptTitleString];
      [v16 presentAlertWithMessage:v5 title:v17];
    }

    else
    {
      if ([*v3 code] == 113)
      {
        v20 = *(a1 + 48);
        v21 = [v20 watchOSVersionTooLowBodyString];
      }

      else
      {
        v22 = [*(a1 + 40) code];
        v20 = *(a1 + 48);
        if (v22 == 112)
        {
          [*(a1 + 48) deviceNotSupportedBodyString];
        }

        else
        {
          [*(a1 + 48) locationFeatureIneligiblePromptBodyString];
        }
        v21 = ;
      }

      v5 = v21;
      [v20 presentAlertWithMessage:v21];
    }

    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_2_cold_1(a1, v23, (a1 + 40));
    }
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "upgradingFromAlgorithmVersion")}];
    LODWORD(v6) = [v6 isEqualToNumber:v7];

    v8 = *(a1 + 48);
    if (v6)
    {
      v9 = [*(a1 + 48) updateFeatureIneligiblePromptBodyString];
      [v8 presentAlertWithMessage:v9];

      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 72);
        v13 = v10;
        v14 = NSStringFromSelector(v12);
        v15 = *(a1 + 40);
        *buf = 138543874;
        v28 = v11;
        v29 = 2114;
        v30 = v14;
        v31 = 2114;
        v32 = v15;
        _os_log_error_impl(&dword_2521E7000, v13, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] No update available, Error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v18 = [*(a1 + 48) ecgAppInstallability];
      v19 = *(a1 + 48);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_312;
      v24[3] = &unk_2796FB700;
      v24[4] = v19;
      v25 = *(a1 + 64);
      v26 = *(a1 + 56);
      [v18 checkElectrocardiogramAppInstallStateWithContext:v19 completion:v24];
    }
  }
}

void __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_3()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CCBD08]];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openURL:v1 withOptions:0];
}

void __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_312(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2D8];
    v15 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v15)
      {
        goto LABEL_9;
      }

      v19 = 136446466;
      v20 = "[HROnboardingElectrocardiogramUpdateAvailabilityViewController continueAndCheckForUpdateAvailability:]_block_invoke";
      v21 = 2114;
      v22 = v5;
      v16 = "[%{public}s]: Failed to install ECG App with error: %{public}@";
      v17 = v14;
      v18 = 22;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_9;
      }

      v19 = 136446210;
      v20 = "[HROnboardingElectrocardiogramUpdateAvailabilityViewController continueAndCheckForUpdateAvailability:]_block_invoke";
      v16 = "[%{public}s]: ECG App install was cancelled";
      v17 = v14;
      v18 = 12;
    }

    _os_log_impl(&dword_2521E7000, v17, OS_LOG_TYPE_DEFAULT, v16, &v19, v18);
    goto LABEL_9;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) delegate];
  v8 = [v7 userInfo];
  [v8 setObject:v6 forKeyedSubscript:@"HROnboardingElectrocardiogramCountryCodeKey"];

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) delegate];
  v11 = [v10 userInfo];
  [v11 setObject:v9 forKeyedSubscript:@"HROnboardingElectrocardiogramAlgorithmVersionKey"];

  v12 = [*(a1 + 32) delegate];
  [v12 stepForward];

  v13 = [*(a1 + 32) ecgAppInstallability];
  [v13 setAllowInstallingElectrocardiogramWatchApp:1];

LABEL_9:
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _footnoteTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_titleBottomToBodyTop
{
  v2 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:15.0];
  v4 = v3;

  return v4;
}

- (double)_bodyBottomToLocationTop
{
  v2 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:37.0];
  v4 = v3;

  return v4;
}

- (double)_locationFooterLastBaselineToContinueButton
{
  v2 = [(HROnboardingElectrocardiogramUpdateAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:6.0];
  v4 = v3;

  return v4;
}

- (id)buttonTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  return v3;
}

- (id)locationFeatureIneligiblePromptBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_LOCATION_INELIGIBLE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)locationNotFoundPromptTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_LOCATION_NOT_FOUND_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)locationNotFoundPromptBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_LOCATION_NOT_FOUND_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)featureDisabledBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_FEATURE_DISABLED_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)deviceNotSupportedBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_DEVICE_NOT_SUPPORTED_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)watchOSVersionTooLowBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_OS_VERSION_TOO_LOW" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

void __103__HROnboardingElectrocardiogramUpdateAvailabilityViewController_continueAndCheckForUpdateAvailability___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *a3;
  v9 = 138543874;
  v10 = v4;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_2521E7000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] Could not pass location check, Error: %{public}@", &v9, 0x20u);
}

@end