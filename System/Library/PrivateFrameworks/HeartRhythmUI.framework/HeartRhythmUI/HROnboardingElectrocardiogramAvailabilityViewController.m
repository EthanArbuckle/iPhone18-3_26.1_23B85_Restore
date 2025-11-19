@interface HROnboardingElectrocardiogramAvailabilityViewController
- (BOOL)_meetsAgeRequirement;
- (double)_ageEntryLastBaselineToBottomSeparator;
- (double)_ageEntryTopSeparatorToFirstBaseline;
- (double)_agePromptLastBaselineToAgeEntryTop;
- (double)_birthdayFooterLastBaselineToContinueButton;
- (double)_bodyBottomToAgePromptTop;
- (double)_bottomSeparatorToBirthdayFooterFirstBaseline;
- (double)_titleBottomToBodyTop;
- (id)_birthdayPromptFont;
- (id)_bodyFont;
- (id)_defaultDOB;
- (id)_footnoteFont;
- (id)_titleFont;
- (id)ageWithDate:(id)a3;
- (id)buttonTitleString;
- (id)combinedFooterString;
- (id)createHeroView;
- (id)createLearnMoreExpandedView;
- (id)deviceNotSupportedBodyString;
- (id)featureDisabledBodyString;
- (id)initForOnboarding:(BOOL)a3 provenance:(int64_t)a4;
- (id)locationFeatureIneligiblePromptBodyString;
- (id)locationFooterString;
- (id)locationNotFoundPromptBodyString;
- (id)locationNotFoundPromptTitleString;
- (id)watchOSVersionTooLowBodyString;
- (void)_setUpStackedButtonView;
- (void)_setupBirthdayEntryView;
- (void)_trackElectrocardiogramOnboardingStepIfNeeded:(int64_t)a3 countryCode:(id)a4 algorithmVersion:(id)a5;
- (void)_updateDateOfBirthDisplay;
- (void)optionSelectorView:(id)a3 didSelectOptionAtIndex:(int64_t)a4;
- (void)setDateOfBirth:(id)a3;
- (void)setIsValidAge:(id)a3;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
@end

@implementation HROnboardingElectrocardiogramAvailabilityViewController

- (id)initForOnboarding:(BOOL)a3 provenance:(int64_t)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CCDEA8];
  v12.receiver = self;
  v12.super_class = HROnboardingElectrocardiogramAvailabilityViewController;
  v7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)&v12 initForOnboarding:a3 upgradingFromAlgorithmVersion:v6];
  v8 = v7;
  if (v7)
  {
    if (v5)
    {
      [v7 setRightButtonType:2];
    }

    v8[145] = a4;
    v9 = objc_alloc_init(HRElectrocardiogramWatchAppInstallability);
    v10 = v8[137];
    v8[137] = v9;
  }

  return v8;
}

- (void)setDateOfBirth:(id)a3
{
  v5 = a3;
  if (([(NSDate *)self->_dateOfBirth isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dateOfBirth, a3);
    [(HROnboardingElectrocardiogramAvailabilityViewController *)self _updateDateOfBirthDisplay];
  }
}

- (void)setIsValidAge:(id)a3
{
  v5 = a3;
  if (([(NSNumber *)self->_isValidAge isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_isValidAge, a3);
    [(HROnboardingElectrocardiogramAvailabilityViewController *)self _updateDateOfBirthDisplay];
  }
}

- (id)_defaultDOB
{
  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 hk_dateOfBirthDateComponentsWithDate:v4];

  v6 = [v2 dateFromComponents:v5];
  v7 = [v2 dateByAddingUnit:4 value:-35 toDate:v6 options:0];

  return v7;
}

- (void)setUpUI
{
  v43.receiver = self;
  v43.super_class = HROnboardingElectrocardiogramAvailabilityViewController;
  [(HROnboardingElectrocardiogramAvailabilityViewController *)&v43 setUpUI];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self createHeroView];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setHeroView:v3];

  v4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  [v5 addSubview:v6];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setTitleLabel:v7];

  v8 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleString];
  v9 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v9 setText:v8];

  v10 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.PageTitle"];
  v11 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v11 setAccessibilityIdentifier:v10];

  v12 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v12 setTextAlignment:4];

  v13 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _titleFont];
  v14 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v14 setFont:v13];

  v15 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v15 setAdjustsFontForContentSizeCategory:1];

  v16 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v17 setNumberOfLines:0];

  v18 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v19 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v18 addSubview:v19];

  v20 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setBodyLabel:v20];

  v21 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyString];
  v22 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v22 setText:v21];

  v23 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.EcgDescription"];
  v24 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v24 setAccessibilityIdentifier:v23];

  v25 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v25 setTextAlignment:4];

  v26 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  v27 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v27 setFont:v26];

  v28 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v28 setAdjustsFontForContentSizeCategory:1];

  v29 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v30 setNumberOfLines:0];

  v31 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v32 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [v31 addSubview:v32];

  v33 = objc_alloc_init(HRQuestionSelectionView);
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setAgeQuestionView:v33];

  v34 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [v35 setIdentifier:@"ECGAgeQuestionID"];

  v36 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [v36 setDelegate:self];

  v37 = HRHeartRhythmUIFrameworkBundle();
  v38 = [v37 localizedStringForKey:@"AGE_GATE_PROMPT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  v39 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [v39 setQuestionText:v38];

  v40 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [v40 reloadOptions];

  v41 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v42 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [v41 addSubview:v42];

  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _setUpStackedButtonView];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _updateDateOfBirthDisplay];
}

- (void)setUpConstraints
{
  v45.receiver = self;
  v45.super_class = HROnboardingElectrocardiogramAvailabilityViewController;
  [(HROnboardingElectrocardiogramAvailabilityViewController *)&v45 setUpConstraints];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  v4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  v11 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v10 hrui_alignHorizontalConstraintsWithView:v11 insets:?];

  v12 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  v13 = [v12 topAnchor];
  v14 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:29.0];
  [v16 setActive:1];

  v17 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  v18 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v17 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

  v19 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  v20 = [v19 topAnchor];
  v21 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  v22 = [v21 bottomAnchor];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _titleBottomToBodyTop];
  v23 = [v20 constraintEqualToAnchor:v22 constant:?];
  [v23 setActive:1];

  v24 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  v25 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  [v24 hk_alignHorizontalConstraintsWithView:v25 margin:0.0];

  v26 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  v27 = [v26 topAnchor];
  v28 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  v29 = [v28 bottomAnchor];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyBottomToAgePromptTop];
  v30 = [v27 constraintEqualToAnchor:v29 constant:?];
  [v30 setActive:1];

  v31 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  v32 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [v31 hk_alignHorizontalConstraintsWithView:v32 margin:0.0];

  v33 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  v34 = [v33 topAnchor];
  v35 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  v36 = [v35 bottomAnchor];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _birthdayFooterLastBaselineToContinueButton];
  v37 = [v34 constraintEqualToAnchor:v36 constant:?];
  [v37 setActive:1];

  v38 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  v39 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  [v38 alignBlurViewHorizontalConstraintsWithView:v39];

  v40 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v41 = [v40 bottomAnchor];
  v42 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [v44 setActive:1];
}

- (id)createHeroView
{
  v2 = [[HROnboardingWristImageView alloc] initWithImageStyle:1];
  [(HROnboardingWristImageView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HROnboardingWristImageView *)v2 setContentMode:1];
  [(HROnboardingWristImageView *)v2 setTimeRemaining:26.0];

  return v2;
}

- (void)_setupBirthdayEntryView
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _ageEntryTitleFont];
  [v3 setFont:v4];

  v5 = HRHeartRhythmUIFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"AGE_GATE_DATE_OF_BIRTH_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  [v3 setText:v6];

  v7 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"BirthDate.Title"];
  [v3 setAccessibilityIdentifier:v7];

  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setNumberOfLines:0];
  v8 = objc_alloc(MEMORY[0x277D12990]);
  v9 = HRHeartRhythmUIFrameworkBundle();
  v10 = [v9 localizedStringForKey:@"AGE_GATE_FIELD_REQUIRED_PLACEHOLDER" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  v11 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _defaultDOB];
  v12 = [v8 initWithFrame:v10 initialText:v11 defaultDate:130 maxYears:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v12 setDelegate:self];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"BirthDate.Picker"];
  [v12 setAccessibilityIdentifier:v13];

  v14 = objc_alloc(MEMORY[0x277D75A68]);
  v20[0] = v3;
  v20[1] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v14 initWithArrangedSubviews:v15];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAxis:HKUIApplicationIsUsingAccessibilityContentSizeCategory()];
  [v16 setCustomSpacing:v3 afterView:28.0];
  LODWORD(v17) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v17];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setBirthdayEntryView:v16];
  v18 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v19 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self birthdayEntryView];
  [v18 addSubview:v19];
}

- (BOOL)_meetsAgeRequirement
{
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self isValidAge];
  if (v3)
  {
    v4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self isValidAge];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ageWithDate:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    v5 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    v6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self dateOfBirth];
    v7 = [v4 hk_dateOfBirthDateComponentsWithDate:v6];

    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v5 hk_dateOfBirthDateComponentsWithDate:v8];

    v10 = [v5 components:4 fromDateComponents:v7 toDateComponents:v9 options:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "year")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setUpStackedButtonView
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self buttonTitleString];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self combinedFooterString];
  v6 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v4 footerText:v5 boldFooterText:0 delegate:self];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setStackedButtonView:v6];

  v7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [v7 setFixedBottomButtonSpacing:1];

  v8 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [v9 setBlurHidden:1];

  v10 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  v11 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [v10 addSubview:v11];
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  v7 = a3;
  if (!a4)
  {
    if ([(HROnboardingElectrocardiogramAvailabilityViewController *)self _meetsAgeRequirement])
    {
      [(HROnboardingElectrocardiogramAvailabilityViewController *)self _trackElectrocardiogramOnboardingStepIfNeeded:3 countryCode:0 algorithmVersion:0];
      v8 = [v7 buttons];
      v9 = [v8 objectAtIndexedSubscript:0];

      [v9 setEnabled:0];
      v10 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self onboardingAvailabilityDeterminer];

      if (!v10)
      {
        v11 = [HRElectrocardiogramCurrentLocationOnboardingDeterminer alloc];
        v12 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self delegate];
        v13 = [v12 healthStore];
        v14 = [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)v11 initWithHealthStore:v13];
        [(HROnboardingElectrocardiogramAvailabilityViewController *)self setOnboardingAvailabilityDeterminer:v14];
      }

      v15 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self onboardingAvailabilityDeterminer];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke;
      v18[3] = &unk_2796FB750;
      v19 = v9;
      v20 = self;
      v21 = a2;
      v16 = v9;
      [v15 isElectrocardiogramOnboardingAvailableInCurrentLocationForActiveWatch:v18];
    }

    else
    {
      v17 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageIneligiblePromptBodyString];
      [(HROnboardingElectrocardiogramAvailabilityViewController *)self presentAlertWithMessage:v17];
    }
  }
}

void __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2;
  v15[3] = &unk_2796FB728;
  v16 = *(a1 + 32);
  v17 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = v8;
  v19 = v10;
  v20 = v7;
  v21 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  [a1[4] setEnabled:1];
  v3 = a1 + 5;
  v2 = a1[5];
  if (v2 || !a1[6])
  {
    if ([v2 code] == 111)
    {
      v4 = a1[7];
      v5 = [v4 featureDisabledBodyString];
      [v4 presentLearnMoreAlertWithMessage:v5 learnMoreTapped:&__block_literal_global_0];
    }

    else if ([*v3 code] == 109)
    {
      v6 = a1[7];
      v5 = [v6 locationNotFoundPromptBodyString];
      v7 = [a1[7] locationNotFoundPromptTitleString];
      [v6 presentAlertWithMessage:v5 title:v7];
    }

    else
    {
      if ([*v3 code] == 113)
      {
        v13 = a1[7];
        v14 = [v13 watchOSVersionTooLowBodyString];
      }

      else
      {
        v15 = [a1[5] code];
        v13 = a1[7];
        if (v15 == 112)
        {
          [a1[7] deviceNotSupportedBodyString];
        }

        else
        {
          [a1[7] locationFeatureIneligiblePromptBodyString];
        }
        v14 = ;
      }

      v5 = v14;
      [v13 presentAlertWithMessage:v14];
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2_cold_1(a1, v16, a1 + 5);
    }
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[8];
      v10 = a1[6];
      *buf = 136446722;
      v21 = "[HROnboardingElectrocardiogramAvailabilityViewController stackedButtonView:didTapButtonAtIndex:]_block_invoke";
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_2521E7000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}s] Location check: countryCode: %{public}@ algorithmVersion: %{public}@", buf, 0x20u);
    }

    v11 = [a1[7] ecgAppInstallability];
    v12 = a1[7];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_345;
    v17[3] = &unk_2796FB700;
    v17[4] = v12;
    v18 = a1[8];
    v19 = a1[6];
    [v11 checkElectrocardiogramAppInstallStateWithContext:v12 completion:v17];
  }
}

void __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_3()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CCBD08]];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openURL:v1 withOptions:0];
}

void __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_345(uint64_t a1, int a2, void *a3)
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
      v20 = "[HROnboardingElectrocardiogramAvailabilityViewController stackedButtonView:didTapButtonAtIndex:]_block_invoke";
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
      v20 = "[HROnboardingElectrocardiogramAvailabilityViewController stackedButtonView:didTapButtonAtIndex:]_block_invoke";
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

  [*(a1 + 32) _trackElectrocardiogramOnboardingStepIfNeeded:4 countryCode:*(a1 + 40) algorithmVersion:*(a1 + 48)];
  v12 = [*(a1 + 32) delegate];
  [v12 stepForward];

  v13 = [*(a1 + 32) ecgAppInstallability];
  [v13 setAllowInstallingElectrocardiogramWatchApp:1];

LABEL_9:
}

- (void)optionSelectorView:(id)a3 didSelectOptionAtIndex:(int64_t)a4
{
  if (a4)
  {
    v4 = MEMORY[0x277CBEC28];
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setIsValidAge:v4];
}

- (void)_trackElectrocardiogramOnboardingStepIfNeeded:(int64_t)a3 countryCode:(id)a4 algorithmVersion:(id)a5
{
  v11 = a4;
  v8 = a5;
  if ([(HROnboardingElectrocardiogramAvailabilityViewController *)self isOnboarding]&& !+[HRElectrocardiogramOnboardingManager hasOverriddenOnboardingSettings])
  {
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CCD380], "onboardingVersionForKnownAlgorithmVersion:", objc_msgSend(v8, "integerValue"))}];
    }

    else
    {
      v9 = 0;
    }

    v10 = +[HRUIAnalyticsManager sharedManager];
    [v10 trackElectrocardiogramOnboardingStep:a3 forOnboardingType:0 onboardingVersion:v9 countryCode:v11 provenance:{-[HROnboardingElectrocardiogramAvailabilityViewController provenance](self, "provenance")}];
  }
}

- (void)_updateDateOfBirthDisplay
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self isValidAge];

  if (v3)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
    v5 = [v4 buttons];

    v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          [v10 setEnabled:1];
          v11 = HKHealthKeyColor();
          [v10 setBackgroundColor:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
    *(&v19 + 1) = 0;
    v20 = 0uLL;
    v12 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
    v5 = [v12 buttons];

    v13 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v5);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          [v17 setEnabled:0];
          v18 = [MEMORY[0x277D75348] lightGrayColor];
          [v17 setBackgroundColor:v18];
        }

        v14 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (id)_birthdayPromptFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _footnoteTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_titleBottomToBodyTop
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:15.0];
  v4 = v3;

  return v4;
}

- (double)_bodyBottomToAgePromptTop
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:37.0];
  v4 = v3;

  return v4;
}

- (double)_agePromptLastBaselineToAgeEntryTop
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_ageEntryTopSeparatorToFirstBaseline
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:36.0];
  v4 = v3;

  return v4;
}

- (double)_ageEntryLastBaselineToBottomSeparator
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

- (double)_bottomSeparatorToBirthdayFooterFirstBaseline
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_birthdayFooterLastBaselineToContinueButton
{
  v2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [v2 _scaledValueForValue:6.0];
  v4 = v3;

  return v4;
}

- (id)locationFooterString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ECG_ONBOARDING_1_LOCATION_FOOTNOTE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Shared"];

  return v3;
}

- (id)combinedFooterString
{
  v3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self locationFooterString];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageGatingFooterString];
    v6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self locationFooterString];
    v7 = [v4 stringWithFormat:@"%@\n\n%@", v5, v6];
  }

  else
  {
    v7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self birthdayFooterString];
  }

  return v7;
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

- (id)createLearnMoreExpandedView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);

  return v2;
}

void __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
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