@interface HROnboardingAtrialFibrillationGateViewController
- (BOOL)_meetsAgeRequirement;
- (BOOL)_meetsDiagnosisRequirement;
- (id)ageIneligiblePromptAckButtonString;
- (id)ageIneligiblePromptBodyString;
- (id)ageIneligiblePromptTitleString;
- (id)axidForElementWithString:(id)a3;
- (id)diagnosisIneligiblePromptAckButtonString;
- (id)diagnosisIneligiblePromptBodyString;
- (id)diagnosisIneligiblePromptTitleString;
- (id)footnoteString;
- (id)initForOnboarding:(BOOL)a3 hasAtrialFibrillationDiagnosis:(id)a4;
- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
- (void)_adjustButtonFooterViewLocationForViewContentHeight;
- (void)_setUpButtonFooterView;
- (void)_setUpStackedButtonView;
- (void)_updateButtonState;
- (void)optionSelectorView:(id)a3 didSelectOptionAtIndex:(int64_t)a4;
- (void)setDiagnosis:(id)a3;
- (void)setIsValidAge:(id)a3;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HROnboardingAtrialFibrillationGateViewController

- (id)initForOnboarding:(BOOL)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HROnboardingAtrialFibrillationGateViewController;
  v5 = [(HROnboardingAtrialFibrillationGateViewController *)&v8 initForOnboarding:a3 upgradingFromAlgorithmVersion:a4];
  v6 = v5;
  if (v5)
  {
    v5[1088] = 0;
    if (v4)
    {
      [v5 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
    }
  }

  return v6;
}

- (id)initForOnboarding:(BOOL)a3 hasAtrialFibrillationDiagnosis:(id)a4
{
  v5 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HROnboardingAtrialFibrillationGateViewController;
  v8 = [(HROnboardingAtrialFibrillationGateViewController *)&v11 initForOnboarding:v5];
  v9 = v8;
  if (v8)
  {
    *(v8 + 1088) = 0;
    if (v5)
    {
      [v8 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
    }

    objc_storeStrong(v9 + 139, a4);
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v3 viewDidLoad];
  [(HROnboardingAtrialFibrillationGateViewController *)self _setUpButtonFooterView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v4 viewWillAppear:a3];
  [(HROnboardingAtrialFibrillationGateViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingAtrialFibrillationGateViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)setUpUI
{
  v52.receiver = self;
  v52.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v52 setUpUI];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationGateViewController *)self setTitleLabel:v3];

  v4 = HRHeartRhythmUIFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v6 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v6 setText:v5];

  v7 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v7 setTextAlignment:4];

  v8 = [(HROnboardingAtrialFibrillationGateViewController *)self titleFont];
  v9 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v9 setFont:v8];

  v10 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v11 setNumberOfLines:0];

  v12 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  v13 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v12 addSubview:v13];

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationGateViewController *)self setBodyLabel:v14];

  v15 = HRHeartRhythmUIFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v17 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v17 setText:v16];

  v18 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v18 setTextAlignment:4];

  v19 = [(HROnboardingAtrialFibrillationGateViewController *)self _bodyFont];
  v20 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v20 setFont:v19];

  v21 = [MEMORY[0x277D75348] secondaryLabelColor];
  v22 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v22 setTextColor:v21];

  v23 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v24 setNumberOfLines:0];

  v25 = [(HROnboardingAtrialFibrillationGateViewController *)self axidForElementWithString:@"GetStartedSubtitle"];
  v26 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v26 setAccessibilityIdentifier:v25];

  v27 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  v28 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [v27 addSubview:v28];

  v29 = objc_alloc_init(HRQuestionSelectionView);
  [(HROnboardingAtrialFibrillationGateViewController *)self setAgeQuestionView:v29];

  v30 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [v31 setIdentifier:@"AgeQuestionID"];

  v32 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [v32 setDelegate:self];

  v33 = HRHeartRhythmUIFrameworkBundle();
  v34 = [v33 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_AGE_PROMPT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v35 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [v35 setQuestionText:v34];

  v36 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [v36 reloadOptions];

  v37 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  v38 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [v37 addSubview:v38];

  v39 = objc_alloc_init(HRQuestionSelectionView);
  [(HROnboardingAtrialFibrillationGateViewController *)self setPreviousAfibQuestionView:v39];

  v40 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = HRHeartRhythmUIFrameworkBundle();
  v42 = [v41 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_DIAGNOSIS_PROMPT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v43 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [v43 setQuestionText:v42];

  v44 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [v44 setIdentifier:@"DiagnosisQuestionID"];

  v45 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [v45 setDelegate:self];

  prefilledDiagnosis = self->_prefilledDiagnosis;
  if (prefilledDiagnosis)
  {
    v47 = [(NSNumber *)prefilledDiagnosis isEqual:&unk_286471770];
    v48 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
    [v48 setSelectedIndex:v47];
  }

  v49 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [v49 reloadOptions];

  v50 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  v51 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [v50 addSubview:v51];

  [(HROnboardingAtrialFibrillationGateViewController *)self _setUpStackedButtonView];
  [(HROnboardingAtrialFibrillationGateViewController *)self _updateButtonState];
}

- (void)_setUpStackedButtonView
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = HRHeartRhythmUIFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [(HROnboardingAtrialFibrillationGateViewController *)self footnoteString];
  v7 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v5 footerText:v6 boldFooterText:0 delegate:self];
  [(HROnboardingAtrialFibrillationGateViewController *)self setStackedButtonView:v7];

  v8 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [v9 setFixedBottomButtonSpacing:1];
}

- (void)setUpConstraints
{
  v37.receiver = self;
  v37.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v37 setUpConstraints];
  v3 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  v4 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  v5 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  v8 = [v7 topAnchor];
  [(HROnboardingAtrialFibrillationGateViewController *)self contentTop];
  v9 = [v6 constraintEqualToAnchor:v8 constant:?];
  [v9 setActive:1];

  v10 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  v11 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [v10 hk_alignHorizontalConstraintsWithView:v11 margin:0.0];

  v12 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  v13 = [v12 topAnchor];
  v14 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:15.0];
  [v16 setActive:1];

  v17 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  v18 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  [v17 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

  v19 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  v20 = [v19 topAnchor];
  v21 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:37.0];
  [v23 setActive:1];

  v24 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  v25 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  [v24 hk_alignHorizontalConstraintsWithView:v25 margin:0.0];

  v26 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  v27 = [v26 topAnchor];
  v28 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  v32 = [v31 bottomAnchor];
  v33 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [(HROnboardingAtrialFibrillationGateViewController *)self setContentViewBottomConstraint:v35];

  v36 = [(HROnboardingAtrialFibrillationGateViewController *)self contentViewBottomConstraint];
  [v36 setActive:1];
}

- (void)setDiagnosis:(id)a3
{
  v5 = a3;
  if (([(NSNumber *)self->_diagnosis isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_diagnosis, a3);
    [(HROnboardingAtrialFibrillationGateViewController *)self _updateButtonState];
  }
}

- (void)setIsValidAge:(id)a3
{
  v5 = a3;
  if (([(NSNumber *)self->_isValidAge isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_isValidAge, a3);
    [(HROnboardingAtrialFibrillationGateViewController *)self _updateButtonState];
  }
}

- (void)_adjustButtonFooterViewLocationForViewContentHeight
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  v5 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  v6 = [v5 buttons];
  v7 = [v6 firstObject];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [v4 convertRect:v16 fromView:{v9, v11, v13, v15}];
  v18 = v17;

  v19 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  [v19 frame];
  v21 = v20;
  v22 = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  [v22 safeAreaInsets];
  v24 = v18 - v23;

  if (v21 > v24)
  {
    [(HROnboardingAtrialFibrillationGateViewController *)self removeFooterView];
    v25 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    [v25 setBlurHidden:1];

    v26 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
    v27 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    [v26 addSubview:v27];

    v28 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    v29 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
    [v28 hk_alignHorizontalConstraintsWithView:v29 margin:0.0];

    v30 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    v31 = [v30 topAnchor];
    v32 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
    v33 = [v32 bottomAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:20.0];
    [v34 setActive:1];

    v35 = MEMORY[0x277CCAAD0];
    v36 = [(HROnboardingAtrialFibrillationGateViewController *)self contentViewBottomConstraint];
    v44[0] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    [v35 deactivateConstraints:v37];

    [(HROnboardingAtrialFibrillationGateViewController *)self setContentViewBottomConstraint:0];
    v38 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
    v39 = [v38 bottomAnchor];
    v40 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    v41 = [v40 bottomAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [(HROnboardingAtrialFibrillationGateViewController *)self setContentViewBottomConstraint:v42];

    v43 = [(HROnboardingAtrialFibrillationGateViewController *)self contentViewBottomConstraint];
    [v43 setActive:1];
  }
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (a4)
  {
    return;
  }

  if (![(HROnboardingAtrialFibrillationGateViewController *)self _meetsAgeRequirement])
  {
    v6 = MEMORY[0x277D75110];
    v7 = [(HROnboardingAtrialFibrillationGateViewController *)self ageIneligiblePromptBodyString];
    v14 = [v6 alertControllerWithTitle:0 message:v7 preferredStyle:1];

    v8 = MEMORY[0x277D750F8];
    v9 = [(HROnboardingAtrialFibrillationGateViewController *)self ageIneligiblePromptAckButtonString];
LABEL_7:
    v12 = v9;
    v13 = [v8 actionWithTitle:v9 style:1 handler:0];
    [v14 addAction:v13];

    [(HROnboardingAtrialFibrillationGateViewController *)self presentViewController:v14 animated:1 completion:0];
    goto LABEL_8;
  }

  if (![(HROnboardingAtrialFibrillationGateViewController *)self _meetsDiagnosisRequirement])
  {
    v10 = MEMORY[0x277D75110];
    v11 = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosisIneligiblePromptBodyString];
    v14 = [v10 alertControllerWithTitle:0 message:v11 preferredStyle:1];

    v8 = MEMORY[0x277D750F8];
    v9 = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosisIneligiblePromptAckButtonString];
    goto LABEL_7;
  }

  v14 = [(HROnboardingAtrialFibrillationGateViewController *)self delegate];
  [v14 stepForward];
LABEL_8:
}

- (void)optionSelectorView:(id)a3 didSelectOptionAtIndex:(int64_t)a4
{
  v12 = a3;
  v6 = [v12 identifier];
  v7 = [v6 isEqualToString:@"AgeQuestionID"];

  if (v7)
  {
    if (a4)
    {
      v8 = MEMORY[0x277CBEC28];
    }

    else
    {
      v8 = MEMORY[0x277CBEC38];
    }

    [(HROnboardingAtrialFibrillationGateViewController *)self setIsValidAge:v8];
  }

  else
  {
    v9 = [v12 identifier];
    v10 = [v9 isEqualToString:@"DiagnosisQuestionID"];

    if (v10)
    {
      if (a4)
      {
        v11 = MEMORY[0x277CBEC28];
      }

      else
      {
        v11 = MEMORY[0x277CBEC38];
      }

      [(HROnboardingAtrialFibrillationGateViewController *)self setDiagnosis:v11];
    }
  }
}

- (void)_updateButtonState
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HROnboardingAtrialFibrillationGateViewController *)self isValidAge];
  if (v3 && (v4 = v3, [(HROnboardingAtrialFibrillationGateViewController *)self diagnosis], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    v7 = [v6 buttons];

    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          [v12 setEnabled:1];
          v13 = HKHealthKeyColor();
          [v12 setBackgroundColor:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    v7 = [v14 buttons];

    v15 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          [v19 setEnabled:0];
          v20 = [MEMORY[0x277D75348] lightGrayColor];
          [v19 setBackgroundColor:v20];
        }

        v16 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (void)_setUpButtonFooterView
{
  v3 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HROnboardingAtrialFibrillationGateViewController *)self setFooterView:v3 insets:?];

  v4 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  v5 = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  [v4 alignBlurViewHorizontalConstraintsWithView:v5];

  v6 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [v6 setBlurHidden:0];
}

- (BOOL)_meetsAgeRequirement
{
  v3 = [(HROnboardingAtrialFibrillationGateViewController *)self isValidAge];
  if (v3)
  {
    v4 = [(HROnboardingAtrialFibrillationGateViewController *)self isValidAge];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_meetsDiagnosisRequirement
{
  v3 = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosis];
  if (v3)
  {
    v4 = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosis];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)ageIneligiblePromptTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_AGE_GATE_INELIGIBLE_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)ageIneligiblePromptBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_AGE_GATE_INELIGIBLE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)ageIneligiblePromptAckButtonString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_AGE_GATE_INELIGIBLE_ACK_BUTTON" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)diagnosisIneligiblePromptTitleString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_DIAGNOSIS_GATE_INELIGIBLE_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)diagnosisIneligiblePromptBodyString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_DIAGNOSIS_GATE_INELIGIBLE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)diagnosisIneligiblePromptAckButtonString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_DIAGNOSIS_GATE_INELIGIBLE_ACK_BUTTON" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)footnoteString
{
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_FOOTER" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  return v3;
}

- (id)axidForElementWithString:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"BirthDate.%@", a3];
  v4 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v3];

  return v4;
}

@end