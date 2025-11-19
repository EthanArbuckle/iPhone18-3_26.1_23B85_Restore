@interface HROnboardingElectrocardiogramSetupCompleteViewController
- (HROnboardingElectrocardiogramSetupCompleteViewControllerDelegate)electrocardiogramDelegate;
- (double)_classificationTextDistance;
- (id)_bodyFont;
- (id)_classificationAttributedTextForElectrocardiogram:(id)a3 activeAlgorithmVersion:(int64_t)a4;
- (id)initForOnboarding:(BOOL)a3 isSampleInteractive:(BOOL)a4 electrocardiogramDelegate:(id)a5;
- (void)_electrocardiogramCardViewTapped:(id)a3;
- (void)_recomputeState;
- (void)_resetUI;
- (void)_setUpConstraints;
- (void)_setUpElectrocardiogramQuery;
- (void)_setUpUI;
- (void)_setupBodyLabelForSetupCompleteState:(int64_t)a3;
- (void)_stopElectrocardiogramQuery;
- (void)_updateUI;
- (void)_updateUIForElectrocardiogram:(id)a3;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HROnboardingElectrocardiogramSetupCompleteViewController

- (id)initForOnboarding:(BOOL)a3 isSampleInteractive:(BOOL)a4 electrocardiogramDelegate:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = *MEMORY[0x277CCDEA8];
  v14.receiver = self;
  v14.super_class = HROnboardingElectrocardiogramSetupCompleteViewController;
  v10 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)&v14 initForOnboarding:v6 upgradingFromAlgorithmVersion:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 navigationItem];
    [v12 setHidesBackButton:1];

    objc_storeWeak(v11 + 141, v8);
    *(v11 + 1088) = 1;
    *(v11 + 1089) = a4;
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
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  [v3 removeFromSuperview];

  v4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
  [v4 removeFromSuperview];

  v5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
  [v5 stopAnimating];

  v6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
  [v6 removeFromSuperview];

  v7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
  v8 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardTapGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  v9 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
  [v9 removeFromSuperview];

  v10 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  [v10 removeFromSuperview];

  v11 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  [v11 removeFromSuperview];

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self removeFooterView];
}

- (void)_setUpConstraints
{
  v103[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  v4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  HKHealthUIBuddyDirectionalEdgeInsets();
  v6 = v5;
  v7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  v8 = [v7 topAnchor];
  v9 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  v10 = [v9 topAnchor];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentTop];
  v11 = [v8 constraintEqualToAnchor:v10 constant:?];
  [v11 setActive:1];

  v12 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
  LODWORD(v13) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v13];

  if ([(HROnboardingElectrocardiogramSetupCompleteViewController *)self state]== 1)
  {
    v14 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
    v15 = [v14 leadingAnchor];
    v16 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:12.0];
    [v18 setActive:1];

    v19 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
    v20 = [v19 trailingAnchor];
    v21 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:-v6];
    [v23 setActive:1];

    v24 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self activityIndicatorView];
    v25 = [v24 bottomAnchor];
    v26 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    v27 = [v26 lastBaselineAnchor];
    [v25 constraintEqualToAnchor:v27 constant:2.0];
  }

  else
  {
    v24 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    v25 = [v24 trailingAnchor];
    v26 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    v27 = [v26 trailingAnchor];
    [v25 constraintLessThanOrEqualToAnchor:v27 constant:-v6];
  }
  v28 = ;
  [v28 setActive:1];

  if ([(HROnboardingElectrocardiogramSetupCompleteViewController *)self state]== 2)
  {
    v29 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];

    if (v29)
    {
      v30 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
      v31 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
      HKHealthUIBuddyDirectionalEdgeInsets();
      [v30 hrui_alignHorizontalConstraintsWithView:v31 insets:?];

      v32 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
      v33 = [v32 topAnchor];
      v34 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
      v35 = [v34 bottomAnchor];
      v36 = [v33 constraintEqualToAnchor:v35 constant:15.0];
      [v36 setActive:1];

      v37 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
      v38 = [v37 topAnchor];
      [(HROnboardingElectrocardiogramSetupCompleteViewController *)self classificationLabel];
    }

    else
    {
      v37 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
      v38 = [v37 topAnchor];
      [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    }
    v44 = ;
    v45 = [v44 bottomAnchor];
    v46 = [v38 constraintEqualToAnchor:v45 constant:37.0];
    [v46 setActive:1];

    v47 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
    v48 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    HKHealthUIBuddyDirectionalEdgeInsets();
    [v47 hrui_alignHorizontalConstraintsWithView:v48 insets:?];

    v39 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    v40 = [v39 topAnchor];
    v41 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
    v42 = [v41 bottomAnchor];
    v43 = 12.0;
  }

  else
  {
    v39 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    v40 = [v39 topAnchor];
    v41 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    v42 = [v41 bottomAnchor];
    v43 = 15.0;
  }

  v49 = [v40 constraintEqualToAnchor:v42 constant:v43];
  [v49 setActive:1];

  v50 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  v51 = [v50 bottomAnchor];

  v52 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  v53 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v52 hrui_alignHorizontalConstraintsWithView:v53 insets:?];

  v54 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  v55 = [v54 bottomAnchor];
  v56 = [v55 constraintEqualToAnchor:v51];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:v56];

  v57 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
  [v57 setActive:1];

  v58 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setFooterView:v58 insets:?];

  v59 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  v60 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  [v59 alignBlurViewHorizontalConstraintsWithView:v60];

  v61 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  [v61 layoutIfNeeded];

  v62 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  v63 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  v64 = [v63 buttons];
  v65 = [v64 firstObject];
  [v65 frame];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
  [v62 convertRect:v74 fromView:{v67, v69, v71, v73}];
  v76 = v75;

  v77 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
  [v77 frame];
  v79 = v78;
  v80 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self view];
  [v80 safeAreaInsets];
  v82 = v76 - v81;

  if (v79 <= v82)
  {
    v98 = MEMORY[0x277CCAAD0];
    v99 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
    v102 = v99;
    v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
    [v98 deactivateConstraints:v100];

    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:0];
    v93 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    v94 = [v93 bottomAnchor];
    v95 = [v94 constraintEqualToAnchor:v51];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:v95];
  }

  else
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self removeFooterView];
    v83 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    v84 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    [v83 addSubview:v84];

    v85 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    v86 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self titleLabel];
    [v85 hk_alignHorizontalConstraintsWithView:v86 margin:0.0];

    v87 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    v88 = [v87 topAnchor];
    v89 = [v88 constraintEqualToAnchor:v51 constant:*MEMORY[0x277D127A0]];
    [v89 setActive:1];

    v90 = MEMORY[0x277CCAAD0];
    v91 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
    v103[0] = v91;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
    [v90 deactivateConstraints:v92];

    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:0];
    v93 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentView];
    v94 = [v93 bottomAnchor];
    v95 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self stackedButtonView];
    v96 = [v95 bottomAnchor];
    v97 = [v94 constraintEqualToAnchor:v96];
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setContentViewBottomConstraint:v97];
  }

  v101 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self contentViewBottomConstraint];
  [v101 setActive:1];
}

- (void)_updateUIForElectrocardiogram:(id)a3
{
  v4 = a3;
  v5 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];

  if (v5)
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _stopElectrocardiogramQuery];
  }

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setElectrocardiogram:v4];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _recomputeState];
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 integerForKey:@"HROnboardingCinnamonSetupDelayInSec"];

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
  v2 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramCardView];
  [v2 updateUI];
}

- (void)_electrocardiogramCardViewTapped:(id)a3
{
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _stopElectrocardiogramQuery];
  v4 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramDelegate];
    v6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogram];
    [v7 didTapOnElectrocardiogram:v6];
  }
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _stopElectrocardiogramQuery];
    v6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
    [v6 stepForward];
  }
}

- (void)_recomputeState
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HROnboardingElectrocardiogramDidCompleteRecordingKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogram];

    if (v7)
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
    v16 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self state];
    _os_log_impl(&dword_2521E7000, v10, OS_LOG_TYPE_DEFAULT, "[%@]: Cinnamon Setup Complete state: %ld", &v13, 0x16u);
  }
}

- (id)_classificationAttributedTextForElectrocardiogram:(id)a3 activeAlgorithmVersion:(int64_t)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D74248];
  v7 = a3;
  v8 = [v6 defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _classificationTextDistance];
  v11 = v10;
  v12 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFont];
  [v12 ascender];
  v14 = v11 - v13;
  v15 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFont];
  [v15 descender];
  [v9 setParagraphSpacing:v14 - v16];

  v22 = *MEMORY[0x277D74118];
  v23[0] = v9;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v18 = objc_alloc(MEMORY[0x277CCA898]);
  v19 = [v7 hrui_classificationShortBodyTextWithActiveAlgorithmVersion:a4 isSharedData:0];

  v20 = [v18 initWithString:v19 attributes:v17];

  return v20;
}

- (void)_setupBodyLabelForSetupCompleteState:(int64_t)a3
{
  if (a3 == 2)
  {
    v11 = HRUIECGLocalizedString(@"ECG_ONBOARDING_6_BODY");
    v12 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [v12 setText:v11];

    v13 = [MEMORY[0x277D75348] secondaryLabelColor];
    v14 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [v14 setTextColor:v13];

    v15 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [v15 setTextAlignment:4];

    v10 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _subheadlineFont];
  }

  else
  {
    if (a3 == 1)
    {
      v4 = @"ECG_ONBOARDING_6_BODY_WAITING_FOR_SAMPLE";
    }

    else
    {
      if (a3)
      {
        return;
      }

      v4 = @"ECG_ONBOARDING_6_BODY_TAKEN_LATER";
    }

    v5 = HRUIECGLocalizedString(v4);
    v6 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [v6 setText:v5];

    v7 = [MEMORY[0x277D75348] secondaryLabelColor];
    v8 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [v8 setTextColor:v7];

    v9 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
    [v9 setTextAlignment:4];

    v10 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFont];
  }

  v17 = v10;
  v16 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self bodyLabel];
  [v16 setFont:v17];
}

- (void)_setUpElectrocardiogramQuery
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HROnboardingElectrocardiogramStartDateKey"];

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
  v11 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HROnboardingElectrocardiogramSetupCompleteViewController__setUpElectrocardiogramQuery__block_invoke;
  v19[3] = &unk_2796FB7C8;
  v19[4] = self;
  objc_copyWeak(&v20, &location);
  v12 = [v10 initWithType:v11 predicate:v6 anchor:0 limit:0 resultsHandler:v19];
  [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setElectrocardiogramQuery:v12];

  v17 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, &location);
  v13 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery:v17];
  [v13 setUpdateHandler:&v17];

  v14 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
  v15 = [v14 healthStore];
  v16 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];
  [v15 executeQuery:v16];

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
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];

  if (v3)
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

    v7 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self delegate];
    v8 = [v7 healthStore];
    v9 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self electrocardiogramQuery];
    [v8 stopQuery:v9];

    [(HROnboardingElectrocardiogramSetupCompleteViewController *)self setElectrocardiogramQuery:0];
  }
}

- (double)_classificationTextDistance
{
  v2 = MEMORY[0x277D75520];
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFontTextStyle];
  v4 = [v2 metricsForTextStyle:v3];

  [v4 scaledValueForValue:30.0];
  v6 = v5;

  return v6;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HROnboardingElectrocardiogramSetupCompleteViewController *)self _bodyFontTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3];

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