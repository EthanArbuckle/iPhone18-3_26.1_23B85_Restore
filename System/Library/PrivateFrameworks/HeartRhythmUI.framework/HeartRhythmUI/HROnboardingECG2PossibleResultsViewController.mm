@interface HROnboardingECG2PossibleResultsViewController
- (HROnboardingECG2PossibleResultsViewController)initWithSample:(id)sample;
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

@implementation HROnboardingECG2PossibleResultsViewController

- (HROnboardingECG2PossibleResultsViewController)initWithSample:(id)sample
{
  sampleCopy = sample;
  v6 = [(HROnboardingECG2PossibleResultsViewController *)self initForOnboarding:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 1088), sample);
  }

  return v7;
}

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v9.receiver = self;
  v9.super_class = HROnboardingECG2PossibleResultsViewController;
  v5 = [(HROnboardingECG2PossibleResultsViewController *)&v9 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
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

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v3 viewDidLoad];
  [(HROnboardingECG2PossibleResultsViewController *)self _setStackedButtonViewAsFooterView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v4 viewWillAppear:appear];
  [(HROnboardingECG2PossibleResultsViewController *)self _playResultViewVideos];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v4 viewDidDisappear:disappear];
  [(HROnboardingECG2PossibleResultsViewController *)self _pauseResultViewVideos];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingECG2PossibleResultsViewController *)self _adjustStackedButtonViewLocationForViewContentHeight];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HROnboardingECG2PossibleResultsViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HROnboardingECG2PossibleResultsViewController *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)setUpUI
{
  v11.receiver = self;
  v11.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v11 setUpUI];
  if (([(HROnboardingECG2PossibleResultsViewController *)self isOnboarding]& 1) != 0 || ([(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpTitle];
    titleLabel = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
    lastBaselineAnchor = [titleLabel lastBaselineAnchor];
  }

  else
  {
    titleLabel = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
    lastBaselineAnchor = [titleLabel topAnchor];
  }

  v6 = lastBaselineAnchor;
  [(HROnboardingECG2PossibleResultsViewController *)self setViewTopAnchor:lastBaselineAnchor];

  electrocardiogram = [(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpOnlyResultView];
    onlyResultView = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
    title = [onlyResultView title];
    [(HROnboardingECG2PossibleResultsViewController *)self setTitle:title];
  }

  else
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpAllResultViews];
  }

  if ([(HROnboardingECG2PossibleResultsViewController *)self isOnboarding])
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpStackedButtonView];
  }

  else
  {
    electrocardiogram2 = [(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram];

    if (!electrocardiogram2)
    {
      [(HROnboardingECG2PossibleResultsViewController *)self _setUpDisclaimerLabel];
    }
  }
}

- (void)setUpConstraints
{
  v5.receiver = self;
  v5.super_class = HROnboardingECG2PossibleResultsViewController;
  [(HROnboardingECG2PossibleResultsViewController *)&v5 setUpConstraints];
  if (([(HROnboardingECG2PossibleResultsViewController *)self isOnboarding]& 1) != 0 || ([(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpTitleConstraints];
  }

  electrocardiogram = [(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpOnlyResultViewConstraints];
  }

  else
  {
    [(HROnboardingECG2PossibleResultsViewController *)self _setUpAllResultViewConstraints];
  }

  [(HROnboardingECG2PossibleResultsViewController *)self _setUpBottomResultViewConstraint];
}

- (void)_updateForCurrentSizeCategory
{
  [(HROnboardingECG2PossibleResultsViewController *)self _adjustDisclaimerLabelConstraints];
  view = [(HROnboardingECG2PossibleResultsViewController *)self view];
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
    delegate = [(HROnboardingECG2PossibleResultsViewController *)self delegate];
    [delegate stepForward];
  }
}

- (void)_setUpTitle
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingECG2PossibleResultsViewController *)self setTitleLabel:v3];

  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_TITLE");
  titleLabel = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [titleLabel setText:v4];

  v6 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"Onboarding.PageTitle"];
  titleLabel2 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [titleLabel2 setAccessibilityIdentifier:v6];

  titleLabel3 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [titleLabel3 setTextAlignment:4];

  titleFont = [(HROnboardingECG2PossibleResultsViewController *)self titleFont];
  titleLabel4 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [titleLabel4 setFont:titleFont];

  titleLabel5 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel6 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [titleLabel6 setNumberOfLines:0];

  contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  titleLabel7 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [contentView addSubview:titleLabel7];
}

- (void)_setUpTitleConstraints
{
  titleLabel = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  titleLabel2 = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingECG2PossibleResultsViewController *)self contentTop];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v8 setActive:1];
}

- (id)_resultViewForSample:(id)sample activeAlgorithmVersion:(int64_t)version
{
  sampleCopy = sample;
  privateClassification = [sampleCopy privateClassification];
  _algorithmVersion = [sampleCopy _algorithmVersion];

  v9 = [HRElectrocardiogramResultViewItem viewItemWithClassification:privateClassification sampleAlgorithmVersion:_algorithmVersion forAlgorithmVersion:version upgradingFromAlgorithmVersion:*MEMORY[0x277CCDEA8] learnMoreDelegate:self];

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
  electrocardiogram = [(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram];
  v4 = [(HROnboardingECG2PossibleResultsViewController *)self _resultViewForSample:electrocardiogram activeAlgorithmVersion:2];
  [(HROnboardingECG2PossibleResultsViewController *)self setOnlyResultView:v4];

  onlyResultView = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
  [onlyResultView setHideNumberedTitle:1];

  onlyResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
  [onlyResultView2 setShouldHideSeparatorLine:1];

  onlyResultView3 = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
  [onlyResultView3 setAlwaysExpanded:1];

  onlyResultView4 = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];

  if (onlyResultView4)
  {
    contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
    onlyResultView5 = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
    [contentView addSubview:onlyResultView5];
  }

  onlyResultView6 = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
  [(HROnboardingECG2PossibleResultsViewController *)self setBottomResultView:onlyResultView6];
}

- (void)_setUpOnlyResultViewConstraints
{
  onlyResultView = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
  contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [onlyResultView hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  onlyResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self onlyResultView];
  topAnchor = [onlyResultView2 topAnchor];
  viewTopAnchor = [(HROnboardingECG2PossibleResultsViewController *)self viewTopAnchor];
  v7 = [topAnchor constraintEqualToAnchor:viewTopAnchor];
  [v7 setActive:1];
}

- (void)_setUpAllResultViews
{
  v23 = [HRElectrocardiogramResultViewItem viewItemWithClassification:3 sampleAlgorithmVersion:0 forAlgorithmVersion:2 upgradingFromAlgorithmVersion:[(HROnboardingECG2PossibleResultsViewController *)self upgradingFromAlgorithmVersion] learnMoreDelegate:0];
  v3 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v23];
  [(HROnboardingECG2PossibleResultsViewController *)self setSinusRhythmResultReview:v3];

  contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  sinusRhythmResultReview = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  [contentView addSubview:sinusRhythmResultReview];

  v6 = [HRElectrocardiogramResultViewItem viewItemWithClassification:8 sampleAlgorithmVersion:0 forAlgorithmVersion:2 upgradingFromAlgorithmVersion:[(HROnboardingECG2PossibleResultsViewController *)self upgradingFromAlgorithmVersion] learnMoreDelegate:0];
  v7 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v6];
  [(HROnboardingECG2PossibleResultsViewController *)self setAtrialFibrillationResultView:v7];

  contentView2 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  atrialFibrillationResultView = [(HROnboardingECG2PossibleResultsViewController *)self atrialFibrillationResultView];
  [contentView2 addSubview:atrialFibrillationResultView];

  v10 = [HRElectrocardiogramResultViewItem viewItemWithClassification:6 sampleAlgorithmVersion:0 forAlgorithmVersion:2 upgradingFromAlgorithmVersion:[(HROnboardingECG2PossibleResultsViewController *)self upgradingFromAlgorithmVersion] learnMoreDelegate:0];
  v11 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v10];
  [(HROnboardingECG2PossibleResultsViewController *)self setHighOrLowHeartRateResultView:v11];

  contentView3 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  highOrLowHeartRateResultView = [(HROnboardingECG2PossibleResultsViewController *)self highOrLowHeartRateResultView];
  [contentView3 addSubview:highOrLowHeartRateResultView];

  v14 = [HRElectrocardiogramResultViewItem viewItemWithClassification:2 sampleAlgorithmVersion:0 forAlgorithmVersion:2 upgradingFromAlgorithmVersion:[(HROnboardingECG2PossibleResultsViewController *)self upgradingFromAlgorithmVersion] learnMoreDelegate:self];
  v15 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v14];
  [(HROnboardingECG2PossibleResultsViewController *)self setInconclusiveResultView:v15];

  contentView4 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  inconclusiveResultView = [(HROnboardingECG2PossibleResultsViewController *)self inconclusiveResultView];
  [contentView4 addSubview:inconclusiveResultView];

  v18 = [HRElectrocardiogramResultViewItem viewItemWithClassification:1 sampleAlgorithmVersion:0 forAlgorithmVersion:2 upgradingFromAlgorithmVersion:[(HROnboardingECG2PossibleResultsViewController *)self upgradingFromAlgorithmVersion] learnMoreDelegate:self];
  v19 = [HROnboardingElectrocardiogramResultView resultViewWithItem:v18];
  [(HROnboardingECG2PossibleResultsViewController *)self setPoorRecordingResultView:v19];

  contentView5 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  poorRecordingResultView = [(HROnboardingECG2PossibleResultsViewController *)self poorRecordingResultView];
  [contentView5 addSubview:poorRecordingResultView];

  poorRecordingResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self poorRecordingResultView];
  [(HROnboardingECG2PossibleResultsViewController *)self setBottomResultView:poorRecordingResultView2];
}

- (void)_setUpAllResultViewConstraints
{
  sinusRhythmResultReview = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [sinusRhythmResultReview hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  sinusRhythmResultReview2 = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  topAnchor = [sinusRhythmResultReview2 topAnchor];
  viewTopAnchor = [(HROnboardingECG2PossibleResultsViewController *)self viewTopAnchor];
  v8 = [topAnchor constraintEqualToAnchor:viewTopAnchor];
  [v8 setActive:1];

  atrialFibrillationResultView = [(HROnboardingECG2PossibleResultsViewController *)self atrialFibrillationResultView];
  sinusRhythmResultReview3 = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  [atrialFibrillationResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview3 margin:0.0];

  atrialFibrillationResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self atrialFibrillationResultView];
  topAnchor2 = [atrialFibrillationResultView2 topAnchor];
  sinusRhythmResultReview4 = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  bottomAnchor = [sinusRhythmResultReview4 bottomAnchor];
  v15 = [topAnchor2 constraintEqualToAnchor:bottomAnchor];
  [v15 setActive:1];

  highOrLowHeartRateResultView = [(HROnboardingECG2PossibleResultsViewController *)self highOrLowHeartRateResultView];
  sinusRhythmResultReview5 = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  [highOrLowHeartRateResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview5 margin:0.0];

  highOrLowHeartRateResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self highOrLowHeartRateResultView];
  topAnchor3 = [highOrLowHeartRateResultView2 topAnchor];
  atrialFibrillationResultView3 = [(HROnboardingECG2PossibleResultsViewController *)self atrialFibrillationResultView];
  bottomAnchor2 = [atrialFibrillationResultView3 bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2];
  [v22 setActive:1];

  inconclusiveResultView = [(HROnboardingECG2PossibleResultsViewController *)self inconclusiveResultView];
  sinusRhythmResultReview6 = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  [inconclusiveResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview6 margin:0.0];

  inconclusiveResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self inconclusiveResultView];
  topAnchor4 = [inconclusiveResultView2 topAnchor];
  highOrLowHeartRateResultView3 = [(HROnboardingECG2PossibleResultsViewController *)self highOrLowHeartRateResultView];
  bottomAnchor3 = [highOrLowHeartRateResultView3 bottomAnchor];
  v29 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3];
  [v29 setActive:1];

  poorRecordingResultView = [(HROnboardingECG2PossibleResultsViewController *)self poorRecordingResultView];
  sinusRhythmResultReview7 = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
  [poorRecordingResultView hk_alignHorizontalConstraintsWithView:sinusRhythmResultReview7 margin:0.0];

  poorRecordingResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self poorRecordingResultView];
  topAnchor5 = [poorRecordingResultView2 topAnchor];
  inconclusiveResultView3 = [(HROnboardingECG2PossibleResultsViewController *)self inconclusiveResultView];
  bottomAnchor4 = [inconclusiveResultView3 bottomAnchor];
  v35 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4];
  [v35 setActive:1];
}

- (void)_setUpBottomResultViewConstraint
{
  bottomResultView = [(HROnboardingECG2PossibleResultsViewController *)self bottomResultView];
  if (bottomResultView)
  {
    v4 = bottomResultView;
    contentViewBottomConstraint = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];

    if (!contentViewBottomConstraint)
    {
      contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
      bottomAnchor = [contentView bottomAnchor];
      bottomResultView2 = [(HROnboardingECG2PossibleResultsViewController *)self bottomResultView];
      bottomAnchor2 = [bottomResultView2 bottomAnchor];
      v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(HROnboardingECG2PossibleResultsViewController *)self setContentViewBottomConstraint:v10];

      contentViewBottomConstraint2 = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];
      [contentViewBottomConstraint2 setActive:1];
    }
  }
}

- (void)_setUpDisclaimerLabel
{
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingECG2PossibleResultsViewController *)self setDisclaimerLabel:v15];
  [v15 setAdjustsFontForContentSizeCategory:1];
  [v15 setNumberOfLines:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  [contentView addSubview:v15];

  titleLabel = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
  [v15 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

  firstBaselineAnchor = [v15 firstBaselineAnchor];
  bottomResultView = [(HROnboardingECG2PossibleResultsViewController *)self bottomResultView];
  bottomAnchor = [bottomResultView bottomAnchor];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor];
  [(HROnboardingECG2PossibleResultsViewController *)self setDisclaimerLabelTopConstraint:v8];

  disclaimerLabelTopConstraint = [(HROnboardingECG2PossibleResultsViewController *)self disclaimerLabelTopConstraint];
  [disclaimerLabelTopConstraint setActive:1];

  contentView2 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  bottomAnchor3 = [v15 bottomAnchor];
  v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [(HROnboardingECG2PossibleResultsViewController *)self setContentViewBottomConstraint:v13];

  contentViewBottomConstraint = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];

  [(HROnboardingECG2PossibleResultsViewController *)self _adjustDisclaimerLabelConstraints];
}

- (void)_adjustDisclaimerLabelConstraints
{
  disclaimerLabelTopConstraint = [(HROnboardingECG2PossibleResultsViewController *)self disclaimerLabelTopConstraint];

  if (disclaimerLabelTopConstraint)
  {
    v4 = *MEMORY[0x277D769D0];
    v17 = [objc_alloc(MEMORY[0x277D75520]) initForTextStyle:*MEMORY[0x277D769D0]];
    [v17 scaledValueForValue:40.0];
    v6 = v5;
    disclaimerLabelTopConstraint2 = [(HROnboardingECG2PossibleResultsViewController *)self disclaimerLabelTopConstraint];
    [disclaimerLabelTopConstraint2 setConstant:v6];

    contentViewBottomConstraint = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];
    [contentViewBottomConstraint setConstant:v6];

    v9 = MEMORY[0x277CCAB48];
    v10 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_FOOTER");
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v12 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_BOLD_FOOTER");
    v13 = [v9 hrui_attributedStringForText:v10 style:v4 color:secondaryLabelColor boldText:v12];

    disclaimerLabel = [(HROnboardingECG2PossibleResultsViewController *)self disclaimerLabel];
    [disclaimerLabel setAttributedText:v13];

    v15 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"ResultsYouMaySee.Note"];
    disclaimerLabel2 = [(HROnboardingECG2PossibleResultsViewController *)self disclaimerLabel];
    [disclaimerLabel2 setAccessibilityIdentifier:v15];
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
  [(HROnboardingECG2PossibleResultsViewController *)self setStackedButtonView:v8];

  stackedButtonView = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
  [stackedButtonView setBlurHidden:1];

  stackedButtonView2 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
  [stackedButtonView2 setFixedBottomButtonSpacing:1];

  stackedButtonView3 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
  [stackedButtonView3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setStackedButtonViewAsFooterView
{
  if ([(HROnboardingECG2PossibleResultsViewController *)self isOnboarding])
  {
    stackedButtonView = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];

    if (stackedButtonView)
    {
      stackedButtonView2 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
      HKHealthUIBuddyDirectionalEdgeInsets();
      [(HROnboardingECG2PossibleResultsViewController *)self setFooterView:stackedButtonView2 insets:?];

      stackedButtonView3 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
      view = [(HROnboardingECG2PossibleResultsViewController *)self view];
      [stackedButtonView3 alignBlurViewHorizontalConstraintsWithView:view];
    }
  }
}

- (void)_adjustStackedButtonViewLocationForViewContentHeight
{
  v45[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingECG2PossibleResultsViewController *)self isOnboarding])
  {
    stackedButtonView = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];

    if (stackedButtonView)
    {
      view = [(HROnboardingECG2PossibleResultsViewController *)self view];
      [view layoutIfNeeded];

      view2 = [(HROnboardingECG2PossibleResultsViewController *)self view];
      stackedButtonView2 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
      buttons = [stackedButtonView2 buttons];
      firstObject = [buttons firstObject];
      [firstObject frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      stackedButtonView3 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
      [view2 convertRect:stackedButtonView3 fromView:{v10, v12, v14, v16}];
      v19 = v18;

      contentView = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
      [contentView frame];
      v22 = v21;
      view3 = [(HROnboardingECG2PossibleResultsViewController *)self view];
      [view3 safeAreaInsets];
      v25 = v19 - v24;

      if (v22 > v25)
      {
        [(HROnboardingECG2PossibleResultsViewController *)self removeFooterView];
        contentView2 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
        stackedButtonView4 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
        [contentView2 addSubview:stackedButtonView4];

        stackedButtonView5 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
        titleLabel = [(HROnboardingECG2PossibleResultsViewController *)self titleLabel];
        [stackedButtonView5 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

        stackedButtonView6 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
        topAnchor = [stackedButtonView6 topAnchor];
        bottomResultView = [(HROnboardingECG2PossibleResultsViewController *)self bottomResultView];
        bottomAnchor = [bottomResultView bottomAnchor];
        v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        [v34 setActive:1];

        contentViewBottomConstraint = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];

        if (contentViewBottomConstraint)
        {
          v36 = MEMORY[0x277CCAAD0];
          contentViewBottomConstraint2 = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];
          v45[0] = contentViewBottomConstraint2;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
          [v36 deactivateConstraints:v38];
        }

        [(HROnboardingECG2PossibleResultsViewController *)self setContentViewBottomConstraint:0];
        contentView3 = [(HROnboardingECG2PossibleResultsViewController *)self contentView];
        bottomAnchor2 = [contentView3 bottomAnchor];
        stackedButtonView7 = [(HROnboardingECG2PossibleResultsViewController *)self stackedButtonView];
        bottomAnchor3 = [stackedButtonView7 bottomAnchor];
        v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
        [(HROnboardingECG2PossibleResultsViewController *)self setContentViewBottomConstraint:v43];

        contentViewBottomConstraint3 = [(HROnboardingECG2PossibleResultsViewController *)self contentViewBottomConstraint];
        [contentViewBottomConstraint3 setActive:1];
      }
    }
  }
}

- (void)_playResultViewVideos
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] error:0];

  electrocardiogram = [(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingECG2PossibleResultsViewController *)self bottomResultView];
  }

  else
  {
    sinusRhythmResultReview = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
    playerView = [sinusRhythmResultReview playerView];
    [playerView play];

    atrialFibrillationResultView = [(HROnboardingECG2PossibleResultsViewController *)self atrialFibrillationResultView];
    playerView2 = [atrialFibrillationResultView playerView];
    [playerView2 play];

    highOrLowHeartRateResultView = [(HROnboardingECG2PossibleResultsViewController *)self highOrLowHeartRateResultView];
    playerView3 = [highOrLowHeartRateResultView playerView];
    [playerView3 play];

    [(HROnboardingECG2PossibleResultsViewController *)self inconclusiveResultView];
  }
  v12 = ;
  playerView4 = [v12 playerView];
  [playerView4 play];
}

- (void)_pauseResultViewVideos
{
  electrocardiogram = [(HROnboardingECG2PossibleResultsViewController *)self electrocardiogram];

  if (electrocardiogram)
  {
    [(HROnboardingECG2PossibleResultsViewController *)self bottomResultView];
  }

  else
  {
    sinusRhythmResultReview = [(HROnboardingECG2PossibleResultsViewController *)self sinusRhythmResultReview];
    playerView = [sinusRhythmResultReview playerView];
    [playerView pause];

    atrialFibrillationResultView = [(HROnboardingECG2PossibleResultsViewController *)self atrialFibrillationResultView];
    playerView2 = [atrialFibrillationResultView playerView];
    [playerView2 pause];

    highOrLowHeartRateResultView = [(HROnboardingECG2PossibleResultsViewController *)self highOrLowHeartRateResultView];
    playerView3 = [highOrLowHeartRateResultView playerView];
    [playerView3 pause];

    [(HROnboardingECG2PossibleResultsViewController *)self inconclusiveResultView];
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
  v10 = __85__HROnboardingECG2PossibleResultsViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HROnboardingECG2PossibleResultsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __85__HROnboardingECG2PossibleResultsViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HROnboardingECG2PossibleResultsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end