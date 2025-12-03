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
- (id)ageWithDate:(id)date;
- (id)buttonTitleString;
- (id)combinedFooterString;
- (id)createHeroView;
- (id)createLearnMoreExpandedView;
- (id)deviceNotSupportedBodyString;
- (id)featureDisabledBodyString;
- (id)initForOnboarding:(BOOL)onboarding provenance:(int64_t)provenance;
- (id)locationFeatureIneligiblePromptBodyString;
- (id)locationFooterString;
- (id)locationNotFoundPromptBodyString;
- (id)locationNotFoundPromptTitleString;
- (id)watchOSVersionTooLowBodyString;
- (void)_setUpStackedButtonView;
- (void)_setupBirthdayEntryView;
- (void)_trackElectrocardiogramOnboardingStepIfNeeded:(int64_t)needed countryCode:(id)code algorithmVersion:(id)version;
- (void)_updateDateOfBirthDisplay;
- (void)optionSelectorView:(id)view didSelectOptionAtIndex:(int64_t)index;
- (void)setDateOfBirth:(id)birth;
- (void)setIsValidAge:(id)age;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
@end

@implementation HROnboardingElectrocardiogramAvailabilityViewController

- (id)initForOnboarding:(BOOL)onboarding provenance:(int64_t)provenance
{
  onboardingCopy = onboarding;
  v6 = *MEMORY[0x277CCDEA8];
  v12.receiver = self;
  v12.super_class = HROnboardingElectrocardiogramAvailabilityViewController;
  v7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)&v12 initForOnboarding:onboarding upgradingFromAlgorithmVersion:v6];
  v8 = v7;
  if (v7)
  {
    if (onboardingCopy)
    {
      [v7 setRightButtonType:2];
    }

    v8[145] = provenance;
    v9 = objc_alloc_init(HRElectrocardiogramWatchAppInstallability);
    v10 = v8[137];
    v8[137] = v9;
  }

  return v8;
}

- (void)setDateOfBirth:(id)birth
{
  birthCopy = birth;
  if (([(NSDate *)self->_dateOfBirth isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dateOfBirth, birth);
    [(HROnboardingElectrocardiogramAvailabilityViewController *)self _updateDateOfBirthDisplay];
  }
}

- (void)setIsValidAge:(id)age
{
  ageCopy = age;
  if (([(NSNumber *)self->_isValidAge isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_isValidAge, age);
    [(HROnboardingElectrocardiogramAvailabilityViewController *)self _updateDateOfBirthDisplay];
  }
}

- (id)_defaultDOB
{
  hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
  hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:date];

  v6 = [hk_gregorianCalendarWithUTCTimeZone dateFromComponents:v5];
  v7 = [hk_gregorianCalendarWithUTCTimeZone dateByAddingUnit:4 value:-35 toDate:v6 options:0];

  return v7;
}

- (void)setUpUI
{
  v43.receiver = self;
  v43.super_class = HROnboardingElectrocardiogramAvailabilityViewController;
  [(HROnboardingElectrocardiogramAvailabilityViewController *)&v43 setUpUI];
  createHeroView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self createHeroView];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setHeroView:createHeroView];

  heroView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  [heroView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  heroView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  [contentView addSubview:heroView2];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setTitleLabel:v7];

  titleString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleString];
  titleLabel = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel setText:titleString];

  v10 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.PageTitle"];
  titleLabel2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel2 setAccessibilityIdentifier:v10];

  titleLabel3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel3 setTextAlignment:4];

  _titleFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _titleFont];
  titleLabel4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel4 setFont:_titleFont];

  titleLabel5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel5 setAdjustsFontForContentSizeCategory:1];

  titleLabel6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [titleLabel7 setNumberOfLines:0];

  contentView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  titleLabel8 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [contentView2 addSubview:titleLabel8];

  v20 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setBodyLabel:v20];

  bodyString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyString];
  bodyLabel = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel setText:bodyString];

  v23 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.EcgDescription"];
  bodyLabel2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel2 setAccessibilityIdentifier:v23];

  bodyLabel3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel3 setTextAlignment:4];

  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  bodyLabel4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel4 setFont:_bodyFont];

  bodyLabel5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel5 setAdjustsFontForContentSizeCategory:1];

  bodyLabel6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel7 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [bodyLabel7 setNumberOfLines:0];

  contentView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  bodyLabel8 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  [contentView3 addSubview:bodyLabel8];

  v33 = objc_alloc_init(HRQuestionSelectionView);
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setAgeQuestionView:v33];

  ageQuestionView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [ageQuestionView setTranslatesAutoresizingMaskIntoConstraints:0];

  ageQuestionView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [ageQuestionView2 setIdentifier:@"ECGAgeQuestionID"];

  ageQuestionView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [ageQuestionView3 setDelegate:self];

  v37 = HRHeartRhythmUIFrameworkBundle();
  v38 = [v37 localizedStringForKey:@"AGE_GATE_PROMPT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  ageQuestionView4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [ageQuestionView4 setQuestionText:v38];

  ageQuestionView5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [ageQuestionView5 reloadOptions];

  contentView4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  ageQuestionView6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  [contentView4 addSubview:ageQuestionView6];

  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _setUpStackedButtonView];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _updateDateOfBirthDisplay];
}

- (void)setUpConstraints
{
  v45.receiver = self;
  v45.super_class = HROnboardingElectrocardiogramAvailabilityViewController;
  [(HROnboardingElectrocardiogramAvailabilityViewController *)&v45 setUpConstraints];
  heroView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  contentView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  [heroView hk_alignHorizontalConstraintsWithView:contentView margin:0.0];

  heroView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  topAnchor = [heroView2 topAnchor];
  contentView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  titleLabel = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  contentView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView3 insets:?];

  titleLabel2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  topAnchor3 = [titleLabel2 topAnchor];
  heroView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self heroView];
  bottomAnchor = [heroView3 bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:29.0];
  [v16 setActive:1];

  bodyLabel = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  titleLabel3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

  bodyLabel2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  topAnchor4 = [bodyLabel2 topAnchor];
  titleLabel4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  bottomAnchor2 = [titleLabel4 bottomAnchor];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _titleBottomToBodyTop];
  v23 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:?];
  [v23 setActive:1];

  ageQuestionView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  contentView4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  [ageQuestionView hk_alignHorizontalConstraintsWithView:contentView4 margin:0.0];

  ageQuestionView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  topAnchor5 = [ageQuestionView2 topAnchor];
  bodyLabel3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self bodyLabel];
  bottomAnchor3 = [bodyLabel3 bottomAnchor];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyBottomToAgePromptTop];
  v30 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:?];
  [v30 setActive:1];

  stackedButtonView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  titleLabel5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self titleLabel];
  [stackedButtonView hk_alignHorizontalConstraintsWithView:titleLabel5 margin:0.0];

  stackedButtonView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  topAnchor6 = [stackedButtonView2 topAnchor];
  ageQuestionView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageQuestionView];
  bottomAnchor4 = [ageQuestionView3 bottomAnchor];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self _birthdayFooterLastBaselineToContinueButton];
  v37 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:?];
  [v37 setActive:1];

  stackedButtonView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  contentView5 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  [stackedButtonView3 alignBlurViewHorizontalConstraintsWithView:contentView5];

  contentView6 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  bottomAnchor5 = [contentView6 bottomAnchor];
  stackedButtonView4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  bottomAnchor6 = [stackedButtonView4 bottomAnchor];
  v44 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
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
  _ageEntryTitleFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _ageEntryTitleFont];
  [v3 setFont:_ageEntryTitleFont];

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
  _defaultDOB = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _defaultDOB];
  v12 = [v8 initWithFrame:v10 initialText:_defaultDOB defaultDate:130 maxYears:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

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
  contentView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  birthdayEntryView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self birthdayEntryView];
  [contentView addSubview:birthdayEntryView];
}

- (BOOL)_meetsAgeRequirement
{
  isValidAge = [(HROnboardingElectrocardiogramAvailabilityViewController *)self isValidAge];
  if (isValidAge)
  {
    isValidAge2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self isValidAge];
    bOOLValue = [isValidAge2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)ageWithDate:(id)date
{
  if (date)
  {
    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    dateOfBirth = [(HROnboardingElectrocardiogramAvailabilityViewController *)self dateOfBirth];
    v7 = [hk_gregorianCalendarWithUTCTimeZone hk_dateOfBirthDateComponentsWithDate:dateOfBirth];

    date = [MEMORY[0x277CBEAA8] date];
    v9 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:date];

    v10 = [hk_gregorianCalendarWithLocalTimeZone components:4 fromDateComponents:v7 toDateComponents:v9 options:0];
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
  buttonTitleString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self buttonTitleString];
  v12[0] = buttonTitleString;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  combinedFooterString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self combinedFooterString];
  v6 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v4 footerText:combinedFooterString boldFooterText:0 delegate:self];
  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setStackedButtonView:v6];

  stackedButtonView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [stackedButtonView setFixedBottomButtonSpacing:1];

  stackedButtonView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [stackedButtonView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  stackedButtonView3 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [stackedButtonView3 setBlurHidden:1];

  contentView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self contentView];
  stackedButtonView4 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
  [contentView addSubview:stackedButtonView4];
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  viewCopy = view;
  if (!index)
  {
    if ([(HROnboardingElectrocardiogramAvailabilityViewController *)self _meetsAgeRequirement])
    {
      [(HROnboardingElectrocardiogramAvailabilityViewController *)self _trackElectrocardiogramOnboardingStepIfNeeded:3 countryCode:0 algorithmVersion:0];
      buttons = [viewCopy buttons];
      v9 = [buttons objectAtIndexedSubscript:0];

      [v9 setEnabled:0];
      onboardingAvailabilityDeterminer = [(HROnboardingElectrocardiogramAvailabilityViewController *)self onboardingAvailabilityDeterminer];

      if (!onboardingAvailabilityDeterminer)
      {
        v11 = [HRElectrocardiogramCurrentLocationOnboardingDeterminer alloc];
        delegate = [(HROnboardingElectrocardiogramAvailabilityViewController *)self delegate];
        healthStore = [delegate healthStore];
        v14 = [(HRElectrocardiogramCurrentLocationOnboardingDeterminer *)v11 initWithHealthStore:healthStore];
        [(HROnboardingElectrocardiogramAvailabilityViewController *)self setOnboardingAvailabilityDeterminer:v14];
      }

      onboardingAvailabilityDeterminer2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self onboardingAvailabilityDeterminer];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __97__HROnboardingElectrocardiogramAvailabilityViewController_stackedButtonView_didTapButtonAtIndex___block_invoke;
      v18[3] = &unk_2796FB750;
      v19 = v9;
      selfCopy = self;
      v21 = a2;
      v16 = v9;
      [onboardingAvailabilityDeterminer2 isElectrocardiogramOnboardingAvailableInCurrentLocationForActiveWatch:v18];
    }

    else
    {
      ageIneligiblePromptBodyString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageIneligiblePromptBodyString];
      [(HROnboardingElectrocardiogramAvailabilityViewController *)self presentAlertWithMessage:ageIneligiblePromptBodyString];
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

- (void)optionSelectorView:(id)view didSelectOptionAtIndex:(int64_t)index
{
  if (index)
  {
    v4 = MEMORY[0x277CBEC28];
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  [(HROnboardingElectrocardiogramAvailabilityViewController *)self setIsValidAge:v4];
}

- (void)_trackElectrocardiogramOnboardingStepIfNeeded:(int64_t)needed countryCode:(id)code algorithmVersion:(id)version
{
  codeCopy = code;
  versionCopy = version;
  if ([(HROnboardingElectrocardiogramAvailabilityViewController *)self isOnboarding]&& !+[HRElectrocardiogramOnboardingManager hasOverriddenOnboardingSettings])
  {
    if (versionCopy)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277CCD380], "onboardingVersionForKnownAlgorithmVersion:", objc_msgSend(versionCopy, "integerValue"))}];
    }

    else
    {
      v9 = 0;
    }

    v10 = +[HRUIAnalyticsManager sharedManager];
    [v10 trackElectrocardiogramOnboardingStep:needed forOnboardingType:0 onboardingVersion:v9 countryCode:codeCopy provenance:{-[HROnboardingElectrocardiogramAvailabilityViewController provenance](self, "provenance")}];
  }
}

- (void)_updateDateOfBirthDisplay
{
  v29 = *MEMORY[0x277D85DE8];
  isValidAge = [(HROnboardingElectrocardiogramAvailabilityViewController *)self isValidAge];

  if (isValidAge)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    stackedButtonView = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
    buttons = [stackedButtonView buttons];

    v6 = [buttons countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(buttons);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          [v10 setEnabled:1];
          v11 = HKHealthKeyColor();
          [v10 setBackgroundColor:v11];
        }

        v7 = [buttons countByEnumeratingWithState:&v23 objects:v28 count:16];
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
    stackedButtonView2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self stackedButtonView];
    buttons = [stackedButtonView2 buttons];

    v13 = [buttons countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(buttons);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          [v17 setEnabled:0];
          lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
          [v17 setBackgroundColor:lightGrayColor];
        }

        v14 = [buttons countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  _titleFontTextStyle = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:_titleFontTextStyle symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (id)_birthdayPromptFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_bodyFontTextStyle symbolicTraits:2];

  return v4;
}

- (id)_footnoteFont
{
  v2 = MEMORY[0x277D74300];
  _footnoteTextStyle = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _footnoteTextStyle];
  v4 = [v2 preferredFontForTextStyle:_footnoteTextStyle];

  return v4;
}

- (double)_titleBottomToBodyTop
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:15.0];
  v4 = v3;

  return v4;
}

- (double)_bodyBottomToAgePromptTop
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:37.0];
  v4 = v3;

  return v4;
}

- (double)_agePromptLastBaselineToAgeEntryTop
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_ageEntryTopSeparatorToFirstBaseline
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:36.0];
  v4 = v3;

  return v4;
}

- (double)_ageEntryLastBaselineToBottomSeparator
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

- (double)_bottomSeparatorToBirthdayFooterFirstBaseline
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_birthdayFooterLastBaselineToContinueButton
{
  _bodyFont = [(HROnboardingElectrocardiogramAvailabilityViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:6.0];
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
  locationFooterString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self locationFooterString];

  if (locationFooterString)
  {
    v4 = MEMORY[0x277CCACA8];
    ageGatingFooterString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self ageGatingFooterString];
    locationFooterString2 = [(HROnboardingElectrocardiogramAvailabilityViewController *)self locationFooterString];
    birthdayFooterString = [v4 stringWithFormat:@"%@\n\n%@", ageGatingFooterString, locationFooterString2];
  }

  else
  {
    birthdayFooterString = [(HROnboardingElectrocardiogramAvailabilityViewController *)self birthdayFooterString];
  }

  return birthdayFooterString;
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