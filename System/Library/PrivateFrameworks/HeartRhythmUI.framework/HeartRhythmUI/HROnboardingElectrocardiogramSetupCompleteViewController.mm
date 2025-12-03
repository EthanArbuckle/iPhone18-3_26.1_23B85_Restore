@interface HROnboardingElectrocardiogramSetupCompleteViewController
- (HROnboardingElectrocardiogramSetupCompleteViewControllerDelegate)electrocardiogramDelegate;
- (double)_classificationTextDistance;
- (id)_bodyFont;
- (id)_classificationAttributedTextForElectrocardiogram:(id)electrocardiogram activeAlgorithmVersion:(int64_t)version;
- (id)initForOnboarding:(BOOL)onboarding isSampleInteractive:(BOOL)interactive electrocardiogramDelegate:(id)delegate;
- (void)_electrocardiogramCardViewTapped:(id)tapped;
- (void)_recomputeState;
- (void)_resetUI;
- (void)_setUpConstraints;
- (void)_setUpElectrocardiogramQuery;
- (void)_setUpUI;
- (void)_setupBodyLabelForSetupCompleteState:(int64_t)state;
- (void)_stopElectrocardiogramQuery;
- (void)_updateUI;
- (void)_updateUIForElectrocardiogram:(id)electrocardiogram;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HROnboardingElectrocardiogramSetupCompleteViewController

- (id)initForOnboarding:(BOOL)onboarding isSampleInteractive:(BOOL)interactive electrocardiogramDelegate:(id)delegate
{
  onboardingCopy = onboarding;
  delegateCopy = delegate;
  v9 = *MEMORY[0x277CCDEA8];
  v14.receiver = self;
  v14.super_class = HROnboardingElectrocardiogramSetupCompleteViewController;
  v10 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)&v14 initForOnboarding:onboardingCopy upgradingFromAlgorithmVersion:v9];
  v11 = v10;
  if (v10)
  {
    navigationItem = [v10 navigationItem];
    [navigationItem setHidesBackButton:1];

    objc_storeWeak(v11 + 141, delegateCopy);
    *(v11 + 1088) = 1;
    *(v11 + 1089) = interactive;
  }

  return v11;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingElectrocardiogramSetupCompleteViewController;
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)&v3 viewDidLoad];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _recomputeState];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _setUpUI];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _setUpConstraints];
  if ([(HROnboardingElectrocardiogramSetupCompleteViewController *)self state]== 1)
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _setUpElectrocardiogramQuery];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingElectrocardiogramSetupCompleteViewController;
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)&v3 viewDidLayoutSubviews];
  if ([(HROnboardingElectrocardiogramSetupCompleteViewController *)self firstViewDidLayoutSubviews])
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setFirstViewDidLayoutSubviews:0];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _updateUI];
  }
}

- (void)_setUpUI
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "[HROnboardingElectrocardiogramSetupCompleteViewController _setUpUI]";
  _os_log_error_impl(&dword_2521E7000, log, OS_LOG_TYPE_ERROR, "%{public}s: Failed to fetch active algorithm version.", &v1, 0xCu);
}

- (void)_resetUI
{
  titleLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  [titleLabel removeFromSuperview];

  activityIndicatorView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
  [activityIndicatorView removeFromSuperview];

  activityIndicatorView2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
  [activityIndicatorView2 stopAnimating];

  classificationLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
  [classificationLabel removeFromSuperview];

  electrocardiogramCardView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
  electrocardiogramCardTapGestureRecognizer = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardTapGestureRecognizer];
  [electrocardiogramCardView removeGestureRecognizer:electrocardiogramCardTapGestureRecognizer];

  electrocardiogramCardView2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
  [electrocardiogramCardView2 removeFromSuperview];

  bodyLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  [bodyLabel removeFromSuperview];

  stackedButtonView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  [stackedButtonView removeFromSuperview];

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self removeFooterView];
}

- (void)_setUpConstraints
{
  v103[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  contentView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  HKHealthUIBuddyDirectionalEdgeInsets();
  v6 = v5;
  titleLabel2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentTop];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v11 setActive:1];

  titleLabel3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  LODWORD(v13) = 1148846080;
  [titleLabel3 setContentHuggingPriority:0 forAxis:v13];

  if ([(HROnboardingElectrocardiogramSetupCompleteViewController *)self state]== 1)
  {
    activityIndicatorView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
    leadingAnchor = [activityIndicatorView leadingAnchor];
    titleLabel4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    trailingAnchor = [titleLabel4 trailingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:12.0];
    [v18 setActive:1];

    activityIndicatorView2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
    trailingAnchor2 = [activityIndicatorView2 trailingAnchor];
    contentView3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    trailingAnchor3 = [contentView3 trailingAnchor];
    v23 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v6];
    [v23 setActive:1];

    activityIndicatorView3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
    bottomAnchor = [activityIndicatorView3 bottomAnchor];
    titleLabel5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
    [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:2.0];
  }

  else
  {
    activityIndicatorView3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    bottomAnchor = [activityIndicatorView3 trailingAnchor];
    titleLabel5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    lastBaselineAnchor = [titleLabel5 trailingAnchor];
    [bottomAnchor constraintLessThanOrEqualToAnchor:lastBaselineAnchor constant:-v6];
  }
  v28 = ;
  [v28 setActive:1];

  if ([(HROnboardingElectrocardiogramSetupCompleteViewController *)self state]== 2)
  {
    classificationLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];

    if (classificationLabel)
    {
      classificationLabel2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
      contentView4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
      HKHealthUIBuddyDirectionalEdgeInsets();
      [classificationLabel2 hrui_alignHorizontalConstraintsWithView:contentView4 insets:?];

      classificationLabel3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
      topAnchor3 = [classificationLabel3 topAnchor];
      titleLabel6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
      bottomAnchor2 = [titleLabel6 bottomAnchor];
      v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:15.0];
      [v36 setActive:1];

      electrocardiogramCardView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
      topAnchor4 = [electrocardiogramCardView topAnchor];
      [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
    }

    else
    {
      electrocardiogramCardView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
      topAnchor4 = [electrocardiogramCardView topAnchor];
      [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    }
    v44 = ;
    bottomAnchor3 = [v44 bottomAnchor];
    v46 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:37.0];
    [v46 setActive:1];

    electrocardiogramCardView2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
    contentView5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    HKHealthUIBuddyDirectionalEdgeInsets();
    [electrocardiogramCardView2 hrui_alignHorizontalConstraintsWithView:contentView5 insets:?];

    bodyLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    topAnchor5 = [bodyLabel topAnchor];
    electrocardiogramCardView3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
    bottomAnchor4 = [electrocardiogramCardView3 bottomAnchor];
    v43 = 12.0;
  }

  else
  {
    bodyLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    topAnchor5 = [bodyLabel topAnchor];
    electrocardiogramCardView3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    bottomAnchor4 = [electrocardiogramCardView3 bottomAnchor];
    v43 = 15.0;
  }

  v49 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4 constant:v43];
  [v49 setActive:1];

  bodyLabel2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  bottomAnchor5 = [bodyLabel2 bottomAnchor];

  bodyLabel3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  contentView6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [bodyLabel3 hrui_alignHorizontalConstraintsWithView:contentView6 insets:?];

  contentView7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  bottomAnchor6 = [contentView7 bottomAnchor];
  v56 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor5];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:v56];

  contentViewBottomConstraint = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];

  stackedButtonView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setFooterView:stackedButtonView insets:?];

  stackedButtonView2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  view = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  [stackedButtonView2 alignBlurViewHorizontalConstraintsWithView:view];

  view2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  [view2 layoutIfNeeded];

  view3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  stackedButtonView3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  buttons = [stackedButtonView3 buttons];
  firstObject = [buttons firstObject];
  [firstObject frame];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  stackedButtonView4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  [view3 convertRect:stackedButtonView4 fromView:{v67, v69, v71, v73}];
  v76 = v75;

  contentView8 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  [contentView8 frame];
  v79 = v78;
  view4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  [view4 safeAreaInsets];
  v82 = v76 - v81;

  if (v79 <= v82)
  {
    v98 = MEMORY[0x277CCAAD0];
    contentViewBottomConstraint2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
    v102 = contentViewBottomConstraint2;
    v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
    [v98 deactivateConstraints:v100];

    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:0];
    contentView9 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    bottomAnchor7 = [contentView9 bottomAnchor];
    stackedButtonView8 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor5];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:stackedButtonView8];
  }

  else
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self removeFooterView];
    contentView10 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    stackedButtonView5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    [contentView10 addSubview:stackedButtonView5];

    stackedButtonView6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    titleLabel7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    [stackedButtonView6 hk_alignHorizontalConstraintsWithView:titleLabel7 margin:0.0];

    stackedButtonView7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    topAnchor6 = [stackedButtonView7 topAnchor];
    v89 = [topAnchor6 constraintEqualToAnchor:bottomAnchor5 constant:*MEMORY[0x277D127A0]];
    [v89 setActive:1];

    v90 = MEMORY[0x277CCAAD0];
    contentViewBottomConstraint3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
    v103[0] = contentViewBottomConstraint3;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
    [v90 deactivateConstraints:v92];

    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:0];
    contentView9 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    bottomAnchor7 = [contentView9 bottomAnchor];
    stackedButtonView8 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    bottomAnchor8 = [stackedButtonView8 bottomAnchor];
    v97 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:v97];
  }

  contentViewBottomConstraint4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint4 setActive:1];
}

- (void)_updateUIForElectrocardiogram:(id)electrocardiogram
{
  electrocardiogramCopy = electrocardiogram;
  electrocardiogramQuery = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];

  if (electrocardiogramQuery)
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _stopElectrocardiogramQuery];
  }

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setElectrocardiogram:electrocardiogramCopy];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _recomputeState];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults integerForKey:@"HROnboardingCinnamonSetupDelayInSec"];

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && v7 >= 1)
  {
    v8 = dispatch_time(0, 1000000000 * v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__HROnboardingElectrocardiogramSetupCompleteViewController__updateUIForElectrocardiogram___block_invoke;
    block[3] = &unk_2796FB778;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _resetUI];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _setUpUI];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _setUpConstraints];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _updateUI];
  }
}

uint64_t __90__HROnboardingElectrocardiogramSetupCompleteViewController__updateUIForElectrocardiogram___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetUI];
  [*(a1 + 32) _setUpUI];
  [*(a1 + 32) _setUpConstraints];
  v2 = *(a1 + 32);

  return [v2 _updateUI];
}

- (void)_updateUI
{
  electrocardiogramCardView = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
  [electrocardiogramCardView updateUI];
}

- (void)_electrocardiogramCardViewTapped:(id)tapped
{
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _stopElectrocardiogramQuery];
  electrocardiogramDelegate = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    electrocardiogramDelegate2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramDelegate];
    electrocardiogram = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogram];
    [electrocardiogramDelegate2 didTapOnElectrocardiogram:electrocardiogram];
  }
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index)
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _stopElectrocardiogramQuery];
    delegate = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
    [delegate stepForward];
  }
}

- (void)_recomputeState
{
  v17 = *MEMORY[0x277D85DE8];
  delegate = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
  userInfo = [delegate userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HROnboardingElectrocardiogramDidCompleteRecordingKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    electrocardiogram = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogram];

    if (electrocardiogram)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setState:v8];
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = v11;
    v13 = 138412546;
    v14 = v11;
    v15 = 2048;
    state = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self state];
    _os_log_impl(&dword_2521E7000, v10, OS_LOG_TYPE_DEFAULT, "[%@]: Cinnamon Setup Complete state: %ld", &v13, 0x16u);
  }
}

- (id)_classificationAttributedTextForElectrocardiogram:(id)electrocardiogram activeAlgorithmVersion:(int64_t)version
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D74248];
  electrocardiogramCopy = electrocardiogram;
  defaultParagraphStyle = [v6 defaultParagraphStyle];
  v9 = [defaultParagraphStyle mutableCopy];

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _classificationTextDistance];
  v11 = v10;
  _bodyFont = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFont];
  [_bodyFont ascender];
  v14 = v11 - v13;
  _bodyFont2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFont];
  [_bodyFont2 descender];
  [v9 setParagraphSpacing:v14 - v16];

  v22 = *MEMORY[0x277D74118];
  v23[0] = v9;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v18 = objc_alloc(MEMORY[0x277CCA898]);
  v19 = [electrocardiogramCopy hrui_classificationShortBodyTextWithActiveAlgorithmVersion:version isSharedData:0];

  v20 = [v18 initWithString:v19 attributes:v17];

  return v20;
}

- (void)_setupBodyLabelForSetupCompleteState:(int64_t)state
{
  if (state == 2)
  {
    v11 = HRUIECGLocalizedString(@"ECG_ONBOARDING_6_BODY");
    bodyLabel = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [bodyLabel setText:v11];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    bodyLabel2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [bodyLabel2 setTextColor:secondaryLabelColor];

    bodyLabel3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [bodyLabel3 setTextAlignment:4];

    _subheadlineFont = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _subheadlineFont];
  }

  else
  {
    if (state == 1)
    {
      v4 = @"ECG_ONBOARDING_6_BODY_WAITING_FOR_SAMPLE";
    }

    else
    {
      if (state)
      {
        return;
      }

      v4 = @"ECG_ONBOARDING_6_BODY_TAKEN_LATER";
    }

    v5 = HRUIECGLocalizedString(v4);
    bodyLabel4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [bodyLabel4 setText:v5];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    bodyLabel5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [bodyLabel5 setTextColor:secondaryLabelColor2];

    bodyLabel6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [bodyLabel6 setTextAlignment:4];

    _subheadlineFont = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFont];
  }

  v17 = _subheadlineFont;
  bodyLabel7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  [bodyLabel7 setFont:v17];
}

- (void)_setUpElectrocardiogramQuery
{
  v26 = *MEMORY[0x277D85DE8];
  delegate = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
  userInfo = [delegate userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HROnboardingElectrocardiogramStartDateKey"];

  v6 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v5 endDate:0 options:0];
  objc_initWeak(&location, self);
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v5;
    v9 = v8;
    _os_log_impl(&dword_2521E7000, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Querying for new electrocardiograms during on-boarding after %@", buf, 0x16u);
  }

  v10 = objc_alloc(MEMORY[0x277CCCFF0]);
  electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke;
  v19[3] = &unk_2796FB7C8;
  v19[4] = self;
  objc_copyWeak(&v20, &location);
  v12 = [v10 initWithType:electrocardiogramType predicate:v6 anchor:0 limit:0 resultsHandler:v19];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setElectrocardiogramQuery:v12];

  v17 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, &location);
  v13 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery:v17];
  [v13 setUpdateHandler:&v17];

  delegate2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
  healthStore = [delegate2 healthStore];
  electrocardiogramQuery = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];
  [healthStore executeQuery:electrocardiogramQuery];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2;
  v13[3] = &unk_2796FB7A0;
  v10 = *(a1 + 32);
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  objc_copyWeak(&v17, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v13);
  objc_destroyWeak(&v17);
}

void __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_cold_1(a1, v2);
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
      v4 = *(a1 + 48);
      v23[0] = v3;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v6 = [v4 sortedArrayUsingDescriptors:v5];

      v7 = [v6 firstObject];

      if (v7)
      {
        _HKInitializeLogging();
        v8 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = [MEMORY[0x277CCDD30] sharedBehavior];
          v11 = [v10 showSensitiveLogItems];
          v12 = [v6 firstObject];
          v13 = v12;
          v14 = v12;
          if ((v11 & 1) == 0)
          {
            v14 = [v12 UUID];
          }

          v19 = 138412546;
          v20 = v9;
          v21 = 2112;
          v22 = v14;
          _os_log_impl(&dword_2521E7000, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Initial electrocardiogram retrieved during on-boarding: %@", &v19, 0x16u);
          if ((v11 & 1) == 0)
          {
          }
        }

        WeakRetained = objc_loadWeakRetained((a1 + 56));
        v16 = [v6 firstObject];
        [WeakRetained _updateUIForElectrocardiogram:v16];
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v3 = v17;
      v19 = 138412290;
      v20 = objc_opt_class();
      v18 = v20;
      _os_log_impl(&dword_2521E7000, v3, OS_LOG_TYPE_DEFAULT, "[%@]: No initial electrocardiograms retrieved during on-boarding", &v19, 0xCu);
    }
  }
}

void __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_347(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_348;
  block[3] = &unk_2796FB7F0;
  v13 = v9;
  v10 = v9;
  objc_copyWeak(&v15, (a1 + 32));
  v14 = v8;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v15);
}

void __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_348(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_348_cold_1(a1, v2);
    }
  }

  else if (*(a1 + 40))
  {
    v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
    v4 = *(a1 + 40);
    v22[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v6 = [v4 sortedArrayUsingDescriptors:v5];

    v7 = [v6 firstObject];

    if (v7)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v10 = objc_opt_class();
        v11 = [MEMORY[0x277CCDD30] sharedBehavior];
        v12 = [v11 showSensitiveLogItems];
        v13 = [v6 firstObject];
        v14 = v13;
        v15 = v13;
        if ((v12 & 1) == 0)
        {
          v15 = [v13 UUID];
        }

        v18 = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_2521E7000, v8, OS_LOG_TYPE_DEFAULT, "[%@]: New electrocardiogram received during on-boarding: %@", &v18, 0x16u);
        if ((v12 & 1) == 0)
        {
        }
      }

      v16 = objc_loadWeakRetained((a1 + 48));
      v17 = [v6 firstObject];
      [v16 _updateUIForElectrocardiogram:v17];
    }
  }
}

- (void)_stopElectrocardiogramQuery
{
  v11 = *MEMORY[0x277D85DE8];
  electrocardiogramQuery = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];

  if (electrocardiogramQuery)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *v10 = 138412290;
      *&v10[4] = objc_opt_class();
      v6 = *&v10[4];
      _os_log_impl(&dword_2521E7000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Stopping query for new electrocardiograms", v10, 0xCu);
    }

    delegate = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
    healthStore = [delegate healthStore];
    electrocardiogramQuery2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];
    [healthStore stopQuery:electrocardiogramQuery2];

    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setElectrocardiogramQuery:0];
  }
}

- (double)_classificationTextDistance
{
  v2 = MEMORY[0x277D75520];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFontTextStyle];
  v4 = [v2 metricsForTextStyle:_bodyFontTextStyle];

  [v4 scaledValueForValue:30.0];
  v6 = v5;

  return v6;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  _bodyFontTextStyle = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_bodyFontTextStyle];

  return v4;
}

- (HROnboardingElectrocardiogramSetupCompleteViewControllerDelegate)electrocardiogramDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_electrocardiogramDelegate);

  return WeakRetained;
}

void __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_1_1(&dword_2521E7000, v5, v6, "[%@]: Error fetching electrocardiograms during on-boarding: %@", v7, v8, v9, v10, v11);
}

void __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke_2_348_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_opt_class();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  OUTLINED_FUNCTION_1_1(&dword_2521E7000, v7, v8, "[%@]: Error fetching electrocardiograms during on-boarding: %@", v9, v10, v11, v12, v13);
}

@end