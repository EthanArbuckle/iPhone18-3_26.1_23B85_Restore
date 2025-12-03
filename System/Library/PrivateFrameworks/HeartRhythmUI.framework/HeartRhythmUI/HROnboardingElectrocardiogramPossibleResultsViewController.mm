@interface HROnboardingElectrocardiogramPossibleResultsViewController
- (HROnboardingElectrocardiogramPossibleResultsViewController)initWithSample:(id)sample;
- (id)_resultViewForSample:(id)sample activeAlgorithmVersion:(int64_t)version;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
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
- (void)linkTextView:(id)view didTapOnLinkInRange:(_NSRange)range;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HROnboardingElectrocardiogramPossibleResultsViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  v5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v9 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
  v6 = v5;
  if (v5)
  {
    v7 = !onboardingCopy;
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

- (HROnboardingElectrocardiogramPossibleResultsViewController)initWithSample:(id)sample
{
  sampleCopy = sample;
  v6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self initForOnboarding:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 1088), sample);
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v4 viewWillAppear:appear];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _playResultViewVideos];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v4 viewDidDisappear:disappear];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _pauseResultViewVideos];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _adjustStackedButtonViewLocationForViewContentHeight];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HROnboardingElectrocardiogramPossibleResultsViewController;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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
    titleLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
    lastBaselineAnchor = [titleLabel lastBaselineAnchor];
  }

  else
  {
    titleLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
    lastBaselineAnchor = [titleLabel topAnchor];
  }

  v6 = lastBaselineAnchor;
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setViewTopAnchor:lastBaselineAnchor];

  electrocardiogram = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _setUpOnlyResultView];
    onlyResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
    title = [onlyResultView title];
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setTitle:title];
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
    electrocardiogram2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

    if (!electrocardiogram2)
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

  electrocardiogram = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
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
  view = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
  [view setNeedsLayout];
}

- (void)linkTextView:(id)view didTapOnLinkInRange:(_NSRange)range
{
  viewCopy = view;
  hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  hk_hfeModeEnabled = [hk_heartRhythmDefaults hk_hfeModeEnabled];

  if ((hk_hfeModeEnabled & 1) == 0)
  {
    uRLIdentifier = [viewCopy URLIdentifier];
    if ((uRLIdentifier - 1) >= 2)
    {
      if (!uRLIdentifier)
      {
        goto LABEL_7;
      }

      v7 = 0;
    }

    else
    {
      v7 = NSURLFromHRLinkTextViewURLIdentifier([viewCopy URLIdentifier]);
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openURL:v7 withOptions:0];
  }

LABEL_7:
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index)
  {
    delegate = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self delegate];
    [delegate stepForward];
  }
}

- (void)_setUpTitle
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setTitleLabel:v3];

  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_TITLE");
  titleLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [titleLabel setText:v4];

  v6 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.PageTitle"];
  titleLabel2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [titleLabel2 setAccessibilityIdentifier:v6];

  titleLabel3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [titleLabel3 setTextAlignment:1];

  titleFont = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleFont];
  titleLabel4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [titleLabel4 setFont:titleFont];

  titleLabel5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [titleLabel6 setNumberOfLines:0];

  contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  titleLabel7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [contentView addSubview:titleLabel7];
}

- (void)_setUpTitleConstraints
{
  titleLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  titleLabel2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentTop];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v8 setActive:1];
}

- (id)_resultViewForSample:(id)sample activeAlgorithmVersion:(int64_t)version
{
  sampleCopy = sample;
  privateClassification = [sampleCopy privateClassification];
  _algorithmVersion = [sampleCopy _algorithmVersion];

  v9 = [HRElectrocardiogramResultViewItem viewItemWithClassification:privateClassification sampleAlgorithmVersion:_algorithmVersion forAlgorithmVersion:version learnMoreDelegate:self];

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
  electrocardiogram = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];
  v4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _resultViewForSample:electrocardiogram activeAlgorithmVersion:1];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setOnlyResultView:v4];

  onlyResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [onlyResultView setHideNumberedTitle:1];

  onlyResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [onlyResultView2 setShouldHideSeparatorLine:1];

  onlyResultView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [onlyResultView3 setAlwaysExpanded:1];

  onlyResultView4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];

  if (onlyResultView4)
  {
    contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
    onlyResultView5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
    [contentView addSubview:onlyResultView5];
  }

  onlyResultView6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setBottomResultView:onlyResultView6];
}

- (void)_setUpOnlyResultViewConstraints
{
  onlyResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [onlyResultView hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  onlyResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self onlyResultView];
  topAnchor = [onlyResultView2 topAnchor];
  viewTopAnchor = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self viewTopAnchor];
  v7 = [topAnchor constraintEqualToAnchor:viewTopAnchor];
  [v7 setActive:1];
}

- (void)_setUpAllResultViews
{
  v19 = [HRElectrocardiogramResultViewItem viewItemWithClassification:3 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:0];
  v3 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v19];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setSinusRhythmResultReview:v3];

  contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  sinusRhythmResultReview = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [contentView addSubview:sinusRhythmResultReview];

  v6 = [HRElectrocardiogramResultViewItem viewItemWithClassification:4 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:0];
  v7 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v6];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setAtrialFibrillationResultView:v7];

  contentView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  atrialFibrillationResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  [contentView2 addSubview:atrialFibrillationResultView];

  v10 = [HRElectrocardiogramResultViewItem viewItemWithClassification:5 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:0];
  v11 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v10];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setHighOrLowHeartRateResultView:v11];

  contentView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  highOrLowHeartRateResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  [contentView3 addSubview:highOrLowHeartRateResultView];

  v14 = [HRElectrocardiogramResultViewItem viewItemWithClassification:2 sampleAlgorithmVersion:0 forAlgorithmVersion:1 learnMoreDelegate:self];
  v15 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v14];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setInconclusiveResultView:v15];

  contentView4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  inconclusiveResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  [contentView4 addSubview:inconclusiveResultView];

  inconclusiveResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setBottomResultView:inconclusiveResultView2];
}

- (void)_setUpAllResultViewConstraints
{
  sinusRhythmResultReview = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [sinusRhythmResultReview hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  sinusRhythmResultReview2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  topAnchor = [sinusRhythmResultReview2 topAnchor];
  viewTopAnchor = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self viewTopAnchor];
  v8 = [topAnchor constraintEqualToAnchor:viewTopAnchor];
  [v8 setActive:1];

  atrialFibrillationResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  sinusRhythmResultReview3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [atrialFibrillationResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview3 margin:0.0];

  atrialFibrillationResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  topAnchor2 = [atrialFibrillationResultView2 topAnchor];
  sinusRhythmResultReview4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  bottomAnchor = [sinusRhythmResultReview4 bottomAnchor];
  v15 = [topAnchor2 constraintEqualToAnchor:bottomAnchor];
  [v15 setActive:1];

  highOrLowHeartRateResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  sinusRhythmResultReview5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [highOrLowHeartRateResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview5 margin:0.0];

  highOrLowHeartRateResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  topAnchor3 = [highOrLowHeartRateResultView2 topAnchor];
  atrialFibrillationResultView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
  bottomAnchor2 = [atrialFibrillationResultView3 bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2];
  [v22 setActive:1];

  inconclusiveResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  sinusRhythmResultReview6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
  [inconclusiveResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview6 margin:0.0];

  inconclusiveResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  topAnchor4 = [inconclusiveResultView2 topAnchor];
  highOrLowHeartRateResultView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
  bottomAnchor3 = [highOrLowHeartRateResultView3 bottomAnchor];
  v28 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3];
  [v28 setActive:1];
}

- (void)_setUpBottomResultViewConstraint
{
  bottomResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  if (bottomResultView)
  {
    v4 = bottomResultView;
    contentViewBottomConstraint = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];

    if (!contentViewBottomConstraint)
    {
      contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
      bottomAnchor = [contentView bottomAnchor];
      bottomResultView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
      bottomAnchor2 = [bottomResultView2 bottomAnchor];
      v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:v10];

      contentViewBottomConstraint2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
      [contentViewBottomConstraint2 setActive:1];
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
  contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  [contentView addSubview:v15];

  titleLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
  [v15 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

  firstBaselineAnchor = [v15 firstBaselineAnchor];
  bottomResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  bottomAnchor = [bottomResultView bottomAnchor];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setDisclaimerLabelTopConstraint:v8];

  disclaimerLabelTopConstraint = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabelTopConstraint];
  [disclaimerLabelTopConstraint setActive:1];

  contentView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  bottomAnchor3 = [v15 bottomAnchor];
  v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:v13];

  contentViewBottomConstraint = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];

  [(HROnboardingElectrocardiogramPossibleResultsViewController *)self _adjustDisclaimerLabelConstraints];
}

- (void)_adjustDisclaimerLabelConstraints
{
  disclaimerLabelTopConstraint = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabelTopConstraint];

  if (disclaimerLabelTopConstraint)
  {
    v4 = *MEMORY[0x277D769D0];
    v15 = [objc_alloc(MEMORY[0x277D75520]) initForTextStyle:*MEMORY[0x277D769D0]];
    [v15 scaledValueForValue:40.0];
    v6 = v5;
    disclaimerLabelTopConstraint2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabelTopConstraint];
    [disclaimerLabelTopConstraint2 setConstant:v6];

    contentViewBottomConstraint = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
    [contentViewBottomConstraint setConstant:v6];

    v9 = MEMORY[0x277CCAB48];
    v10 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_FOOTER");
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v12 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_BOLD_FOOTER");
    v13 = [v9 hrui_attributedStringForText:v10 style:v4 color:secondaryLabelColor boldText:v12];

    disclaimerLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self disclaimerLabel];
    [disclaimerLabel setAttributedText:v13];
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

  stackedButtonView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
  [stackedButtonView setBlurHidden:1];

  stackedButtonView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
  [stackedButtonView2 setFixedBottomButtonSpacing:1];

  stackedButtonView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
  [stackedButtonView3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setStackedButtonViewAsFooterView
{
  if ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding])
  {
    stackedButtonView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];

    if (stackedButtonView)
    {
      stackedButtonView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      HKHealthUIBuddyDirectionalEdgeInsets();
      [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setFooterView:stackedButtonView2 insets:?];

      stackedButtonView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      view = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      [stackedButtonView3 alignBlurViewHorizontalConstraintsWithView:view];
    }
  }
}

- (void)_adjustStackedButtonViewLocationForViewContentHeight
{
  v45[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingElectrocardiogramPossibleResultsViewController *)self isOnboarding])
  {
    stackedButtonView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];

    if (stackedButtonView)
    {
      view = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      [view layoutIfNeeded];

      view2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      stackedButtonView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      buttons = [stackedButtonView2 buttons];
      firstObject = [buttons firstObject];
      [firstObject frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      stackedButtonView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
      [view2 convertRect:stackedButtonView3 fromView:{v10, v12, v14, v16}];
      v19 = v18;

      contentView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
      [contentView frame];
      v22 = v21;
      view3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self view];
      [view3 safeAreaInsets];
      v25 = v19 - v24;

      if (v22 > v25)
      {
        [(HROnboardingElectrocardiogramPossibleResultsViewController *)self removeFooterView];
        contentView2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
        stackedButtonView4 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        [contentView2 addSubview:stackedButtonView4];

        stackedButtonView5 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        titleLabel = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self titleLabel];
        [stackedButtonView5 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

        stackedButtonView6 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        topAnchor = [stackedButtonView6 topAnchor];
        bottomResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
        bottomAnchor = [bottomResultView bottomAnchor];
        v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        [v34 setActive:1];

        contentViewBottomConstraint = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];

        if (contentViewBottomConstraint)
        {
          v36 = MEMORY[0x277CCAAD0];
          contentViewBottomConstraint2 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
          v45[0] = contentViewBottomConstraint2;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
          [v36 deactivateConstraints:v38];
        }

        [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:0];
        contentView3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentView];
        bottomAnchor2 = [contentView3 bottomAnchor];
        stackedButtonView7 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self stackedButtonView];
        bottomAnchor3 = [stackedButtonView7 bottomAnchor];
        v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
        [(HROnboardingElectrocardiogramPossibleResultsViewController *)self setContentViewBottomConstraint:v43];

        contentViewBottomConstraint3 = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self contentViewBottomConstraint];
        [contentViewBottomConstraint3 setActive:1];
      }
    }
  }
}

- (void)_playResultViewVideos
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] error:0];

  electrocardiogram = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  }

  else
  {
    sinusRhythmResultReview = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
    playerView = [sinusRhythmResultReview playerView];
    [playerView play];

    atrialFibrillationResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
    playerView2 = [atrialFibrillationResultView playerView];
    [playerView2 play];

    highOrLowHeartRateResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
    playerView3 = [highOrLowHeartRateResultView playerView];
    [playerView3 play];

    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  }
  v12 = ;
  playerView4 = [v12 playerView];
  [playerView4 play];
}

- (void)_pauseResultViewVideos
{
  electrocardiogram = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self bottomResultView];
  }

  else
  {
    sinusRhythmResultReview = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self sinusRhythmResultReview];
    playerView = [sinusRhythmResultReview playerView];
    [playerView pause];

    atrialFibrillationResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self atrialFibrillationResultView];
    playerView2 = [atrialFibrillationResultView playerView];
    [playerView2 pause];

    highOrLowHeartRateResultView = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self highOrLowHeartRateResultView];
    playerView3 = [highOrLowHeartRateResultView playerView];
    [playerView3 pause];

    [(HROnboardingElectrocardiogramPossibleResultsViewController *)self inconclusiveResultView];
  }
  v11 = ;
  playerView4 = [v11 playerView];
  [playerView4 pause];
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

  navigationItem = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

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
  navigationItem = [(HROnboardingElectrocardiogramPossibleResultsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end