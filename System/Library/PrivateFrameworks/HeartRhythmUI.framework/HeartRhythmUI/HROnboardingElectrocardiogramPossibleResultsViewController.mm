@interface HROnboardingElectrocardiogramPossibleResultsViewController
- (HROnboardingElectrocardiogramPossibleResultsViewController)initWithSample:(id)a3;
- (id)_resultViewForSample:(id)a3 activeAlgorithmVersion:(int64_t)a4;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (void)_adjustDisclaimerLabelConstraints;
- (void)_adjustStackedButtonViewLocationForViewContentHeight;
- (void)_pauseResultViewVideos;
- (void)_playResultViewVideos;
- (void)_setStackedButtonViewAsFooterView;
- (void)_setUpAllResultViewConstraints;
- (void)_setUpAllResultViews;
- (void)_setUpBottomResultViewConstraint;
- (void)_setUpDisclaimerLabel;
- (void)_setUpOnlyResultView;
- (void)_setUpOnlyResultViewConstraints;
- (void)_setUpStackedButtonView;
- (void)_setUpTitle;
- (void)_setUpTitleConstraints;
- (void)_updateForCurrentSizeCategory;
- (void)linkTextView:(id)a3 didTapOnLinkInRange:(_NSRange)a4;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HROnboardingElectrocardiogramPossibleResultsViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v9 initForOnboarding:a3 upgradingFromAlgorithmVersion:a4];
  v6 = v5;
  if (v5)
  {
    v7 = !v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v5 configureNavigationButtonWithTypeCancelWithConfirmForElectrocardiogram];
  }

  return v6;
}

- (HROnboardingElectrocardiogramPossibleResultsViewController)initWithSample:(id)a3
{
  v5 = a3;
  v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self initForOnboarding:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 1088), a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v3 viewDidLoad];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setStackedButtonViewAsFooterView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v4 viewWillAppear:a3];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _playResultViewVideos];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v4 viewDidDisappear:a3];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _pauseResultViewVideos];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _adjustStackedButtonViewLocationForViewContentHeight];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)setUpUI
{
  v11.receiver = self;
  v11.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v11 setUpUI];
  if (([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding]& 1) != 0 || ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpTitle];
    v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
    v5 = [v4 lastBaselineAnchor];
  }

  else
  {
    v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
    v5 = [v4 topAnchor];
  }

  v6 = v5;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setViewTopAnchor:v5];

  v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (v7)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpOnlyResultView];
    v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
    v9 = [v8 title];
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setTitle:v9];
  }

  else
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpAllResultViews];
  }

  if ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding])
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpStackedButtonView];
  }

  else
  {
    v10 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

    if (!v10)
    {
      [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpDisclaimerLabel];
    }
  }
}

- (void)setUpConstraints
{
  v5.receiver = self;
  v5.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v5 setUpConstraints];
  if (([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding]& 1) != 0 || ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpTitleConstraints];
  }

  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (v4)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpOnlyResultViewConstraints];
  }

  else
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpAllResultViewConstraints];
  }

  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpBottomResultViewConstraint];
}

- (void)_updateForCurrentSizeCategory
{
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _adjustDisclaimerLabelConstraints];
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)linkTextView:(id)a3 didTapOnLinkInRange:(_NSRange)a4
{
  v9 = a3;
  v4 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v5 = [v4 hk_hfeModeEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = [v9 URLIdentifier];
    if ((v6 - 1) >= 2)
    {
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = 0;
    }

    else
    {
      v7 = NSURLFromHRLinkTextViewURLIdentifier([v9 URLIdentifier]);
    }

    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v8 openURL:v7 withOptions:0];
  }

LABEL_7:
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self delegate];
    [v5 stepForward];
  }
}

- (void)_setUpTitle
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setTitleLabel:v3];

  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_TITLE");
  v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v5 setText:v4];

  v6 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.PageTitle"];
  v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v7 setAccessibilityIdentifier:v6];

  v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v8 setTextAlignment:1];

  v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleFont];
  v10 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v10 setFont:v9];

  v11 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v12 setNumberOfLines:0];

  v14 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v13 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v14 addSubview:v13];
}

- (void)_setUpTitleConstraints
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  v5 = [v9 topAnchor];
  v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v7 = [v6 topAnchor];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentTop];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  [v8 setActive:1];
}

- (id)_resultViewForSample:(id)a3 activeAlgorithmVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 privateClassification];
  v8 = [v6 _algorithmVersion];

  v9 = [HRElectrocardiogramResultViewItem viewItemWithClassification:v7 sampleAlgorithmVersion:v8 forAlgorithmVersion:a4 learnMoreDelegate:self];

  if (v9)
  {
    v10 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setUpOnlyResultView
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];
  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _resultViewForSample:v3 activeAlgorithmVersion:1];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setOnlyResultView:v4];

  v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [v5 setHideNumberedTitle:1];

  v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [v6 setShouldHideSeparatorLine:1];

  v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [v7 setAlwaysExpanded:1];

  v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];

  if (v8)
  {
    v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
    v10 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
    [v9 addSubview:v10];
  }

  v11 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setBottomResultView:v11];
}

- (void)_setUpOnlyResultViewConstraints
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  v5 = [v8 topAnchor];
  v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self viewTopAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];
}

- (void)_setUpAllResultViews
{
  v19 = [HRElectrocardiogramResultViewItem viewItemWithClassification:3 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:0];
  v3 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v19];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setSinusRhythmResultReview:v3];

  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [v4 addSubview:v5];

  v6 = [HRElectrocardiogramResultViewItem viewItemWithClassification:4 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:0];
  v7 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v6];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setAtrialFibrillationResultView:v7];

  v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  [v8 addSubview:v9];

  v10 = [HRElectrocardiogramResultViewItem viewItemWithClassification:5 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:0];
  v11 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v10];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setHighOrLowHeartRateResultView:v11];

  v12 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v13 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  [v12 addSubview:v13];

  v14 = [HRElectrocardiogramResultViewItem viewItemWithClassification:2 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:self];
  v15 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v14];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setInconclusiveResultView:v15];

  v16 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v17 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  [v16 addSubview:v17];

  v18 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setBottomResultView:v18];
}

- (void)_setUpAllResultViewConstraints
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self viewTopAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  v10 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [v9 hk_alignHorizontalConstraintsWithView:v10 margin:0.0];

  v11 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  v12 = [v11 topAnchor];
  v13 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  v17 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [v16 hk_alignHorizontalConstraintsWithView:v17 margin:0.0];

  v18 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  v19 = [v18 topAnchor];
  v20 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  v24 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [v23 hk_alignHorizontalConstraintsWithView:v24 margin:0.0];

  v29 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  v25 = [v29 topAnchor];
  v26 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];
}

- (void)_setUpBottomResultViewConstraint
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  if (v3)
  {
    v4 = v3;
    v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];

    if (!v5)
    {
      v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
      v7 = [v6 bottomAnchor];
      v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
      v9 = [v8 bottomAnchor];
      v10 = [v7 constraintEqualToAnchor:v9];
      [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:v10];

      v11 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
      [v11 setActive:1];
    }
  }
}

- (void)_setUpDisclaimerLabel
{
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setDisclaimerLabel:v15];
  [v15 setAdjustsFontForContentSizeCategory:1];
  [v15 setNumberOfLines:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  [v3 addSubview:v15];

  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v15 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [v15 firstBaselineAnchor];
  v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setDisclaimerLabelTopConstraint:v8];

  v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabelTopConstraint];
  [v9 setActive:1];

  v10 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v15 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:v13];

  v14 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
  [v14 setActive:1];

  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _adjustDisclaimerLabelConstraints];
}

- (void)_adjustDisclaimerLabelConstraints
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabelTopConstraint];

  if (v3)
  {
    v4 = *MEMORY[0x277D769D0];
    v15 = [objc_alloc(MEMORY[0x277D75520]) initForTextStyle:*MEMORY[0x277D769D0]];
    [v15 scaledValueForValue:40.0];
    v6 = v5;
    v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabelTopConstraint];
    [v7 setConstant:v6];

    v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
    [v8 setConstant:v6];

    v9 = MEMORY[0x277CCAB48];
    v10 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_FOOTER");
    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    v12 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_BOLD_FOOTER");
    v13 = [v9 hrui_attributedStringForText:v10 style:v4 color:v11 boldText:v12];

    v14 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabel];
    [v14 setAttributedText:v13];
  }
}

- (void)_setUpStackedButtonView
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = HRHeartRhythmUIFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_FOOTER");
  v7 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_BOLD_FOOTER");
  v8 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v5 footerText:v6 boldFooterText:v7 delegate:self];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setStackedButtonView:v8];

  v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
  [v9 setBlurHidden:1];

  v10 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
  [v10 setFixedBottomButtonSpacing:1];

  v11 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setStackedButtonViewAsFooterView
{
  if ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding])
  {
    v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];

    if (v3)
    {
      v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      HKHealthUIBuddyDirectionalEdgeInsets();
      [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setFooterView:v4 insets:?];

      v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      [v6 alignBlurViewHorizontalConstraintsWithView:v5];
    }
  }
}

- (void)_adjustStackedButtonViewLocationForViewContentHeight
{
  v45[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding])
  {
    v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];

    if (v3)
    {
      v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      [v4 layoutIfNeeded];

      v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      v7 = [v6 buttons];
      v8 = [v7 firstObject];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      [v5 convertRect:v17 fromView:{v10, v12, v14, v16}];
      v19 = v18;

      v20 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
      [v20 frame];
      v22 = v21;
      v23 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      [v23 safeAreaInsets];
      v25 = v19 - v24;

      if (v22 > v25)
      {
        [(HROnboardingElectrocardiogramPossibleResultsViewController *)self removeFooterView];
        v26 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
        v27 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        [v26 addSubview:v27];

        v28 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        v29 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
        [v28 hk_alignHorizontalConstraintsWithView:v29 margin:0.0];

        v30 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        v31 = [v30 topAnchor];
        v32 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
        v33 = [v32 bottomAnchor];
        v34 = [v31 constraintEqualToAnchor:v33];
        [v34 setActive:1];

        v35 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];

        if (v35)
        {
          v36 = MEMORY[0x277CCAAD0];
          v37 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
          v45[0] = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
          [v36 deactivateConstraints:v38];
        }

        [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:0];
        v39 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
        v40 = [v39 bottomAnchor];
        v41 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        v42 = [v41 bottomAnchor];
        v43 = [v40 constraintEqualToAnchor:v42];
        [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:v43];

        v44 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
        [v44 setActive:1];
      }
    }
  }
}

- (void)_playResultViewVideos
{
  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  [v3 setCategory:*MEMORY[0x277CB8020] error:0];

  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (v4)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  }

  else
  {
    v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
    v6 = [v5 playerView];
    [v6 play];

    v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
    v8 = [v7 playerView];
    [v8 play];

    v9 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
    v10 = [v9 playerView];
    [v10 play];

    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  }
  v12 = ;
  v11 = [v12 playerView];
  [v11 play];
}

- (void)_pauseResultViewVideos
{
  v3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (v3)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  }

  else
  {
    v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
    v5 = [v4 playerView];
    [v5 pause];

    v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
    v7 = [v6 playerView];
    [v7 pause];

    v8 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
    v9 = [v8 playerView];
    [v9 pause];

    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  }
  v11 = ;
  v10 = [v11 playerView];
  [v10 pause];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __98__HROnboardingElectrocardiogramPossibleResultsViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __98__HROnboardingElectrocardiogramPossibleResultsViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

@end