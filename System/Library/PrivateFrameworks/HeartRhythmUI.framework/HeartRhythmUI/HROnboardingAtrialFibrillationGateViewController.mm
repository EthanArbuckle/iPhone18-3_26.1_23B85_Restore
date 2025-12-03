@interface HROnboardingAtrialFibrillationGateViewController
- (BOOL)_meetsAgeRequirement;
- (BOOL)_meetsDiagnosisRequirement;
- (id)ageIneligiblePromptAckButtonString;
- (id)ageIneligiblePromptBodyString;
- (id)ageIneligiblePromptTitleString;
- (id)axidForElementWithString:(id)string;
- (id)diagnosisIneligiblePromptAckButtonString;
- (id)diagnosisIneligiblePromptBodyString;
- (id)diagnosisIneligiblePromptTitleString;
- (id)footnoteString;
- (id)initForOnboarding:(BOOL)onboarding hasAtrialFibrillationDiagnosis:(id)diagnosis;
- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (void)_adjustButtonFooterViewLocationForViewContentHeight;
- (void)_setUpButtonFooterView;
- (void)_setUpStackedButtonView;
- (void)_updateButtonState;
- (void)optionSelectorView:(id)view didSelectOptionAtIndex:(int64_t)index;
- (void)setDiagnosis:(id)diagnosis;
- (void)setIsValidAge:(id)age;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HROnboardingAtrialFibrillationGateViewController

- (id)initForOnboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v8.receiver = self;
  v8.super_class = HROnboardingAtrialFibrillationGateViewController;
  v5 = [(HROnboardingAtrialFibrillationGateViewController *)&v8 initForOnboarding:onboarding upgradingFromAlgorithmVersion:version];
  v6 = v5;
  if (v5)
  {
    v5[1088] = 0;
    if (onboardingCopy)
    {
      [v5 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
    }
  }

  return v6;
}

- (id)initForOnboarding:(BOOL)onboarding hasAtrialFibrillationDiagnosis:(id)diagnosis
{
  onboardingCopy = onboarding;
  diagnosisCopy = diagnosis;
  v11.receiver = self;
  v11.super_class = HROnboardingAtrialFibrillationGateViewController;
  v8 = [(HROnboardingAtrialFibrillationGateViewController *)&v11 initForOnboarding:onboardingCopy];
  v9 = v8;
  if (v8)
  {
    *(v8 + 1088) = 0;
    if (onboardingCopy)
    {
      [v8 configureNavigationButtonWithTypeCancelWithConfirmForAtrialFibrillation];
    }

    objc_storeStrong(v9 + 139, diagnosis);
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v4 viewWillAppear:appear];
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
  titleLabel = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [titleLabel setText:v5];

  titleLabel2 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  titleFont = [(HROnboardingAtrialFibrillationGateViewController *)self titleFont];
  titleLabel3 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [titleLabel3 setFont:titleFont];

  titleLabel4 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  contentView = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  titleLabel6 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [contentView addSubview:titleLabel6];

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingAtrialFibrillationGateViewController *)self setBodyLabel:v14];

  v15 = HRHeartRhythmUIFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  bodyLabel = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel setText:v16];

  bodyLabel2 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel2 setTextAlignment:4];

  _bodyFont = [(HROnboardingAtrialFibrillationGateViewController *)self _bodyFont];
  bodyLabel3 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel3 setFont:_bodyFont];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel4 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel4 setTextColor:secondaryLabelColor];

  bodyLabel5 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel6 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel6 setNumberOfLines:0];

  v25 = [(HROnboardingAtrialFibrillationGateViewController *)self axidForElementWithString:@"GetStartedSubtitle"];
  bodyLabel7 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [bodyLabel7 setAccessibilityIdentifier:v25];

  contentView2 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  bodyLabel8 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  [contentView2 addSubview:bodyLabel8];

  v29 = objc_alloc_init(HRQuestionSelectionView);
  [(HROnboardingAtrialFibrillationGateViewController *)self setAgeQuestionView:v29];

  ageQuestionView = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [ageQuestionView setTranslatesAutoresizingMaskIntoConstraints:0];

  ageQuestionView2 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [ageQuestionView2 setIdentifier:@"AgeQuestionID"];

  ageQuestionView3 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [ageQuestionView3 setDelegate:self];

  v33 = HRHeartRhythmUIFrameworkBundle();
  v34 = [v33 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_AGE_PROMPT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  ageQuestionView4 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [ageQuestionView4 setQuestionText:v34];

  ageQuestionView5 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [ageQuestionView5 reloadOptions];

  contentView3 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  ageQuestionView6 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  [contentView3 addSubview:ageQuestionView6];

  v39 = objc_alloc_init(HRQuestionSelectionView);
  [(HROnboardingAtrialFibrillationGateViewController *)self setPreviousAfibQuestionView:v39];

  previousAfibQuestionView = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [previousAfibQuestionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = HRHeartRhythmUIFrameworkBundle();
  v42 = [v41 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_DIAGNOSIS_PROMPT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  previousAfibQuestionView2 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [previousAfibQuestionView2 setQuestionText:v42];

  previousAfibQuestionView3 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [previousAfibQuestionView3 setIdentifier:@"DiagnosisQuestionID"];

  previousAfibQuestionView4 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [previousAfibQuestionView4 setDelegate:self];

  prefilledDiagnosis = self->_prefilledDiagnosis;
  if (prefilledDiagnosis)
  {
    v47 = [(NSNumber *)prefilledDiagnosis isEqual:&unk_286471770];
    previousAfibQuestionView5 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
    [previousAfibQuestionView5 setSelectedIndex:v47];
  }

  previousAfibQuestionView6 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [previousAfibQuestionView6 reloadOptions];

  contentView4 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  previousAfibQuestionView7 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  [contentView4 addSubview:previousAfibQuestionView7];

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
  footnoteString = [(HROnboardingAtrialFibrillationGateViewController *)self footnoteString];
  v7 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v5 footerText:footnoteString boldFooterText:0 delegate:self];
  [(HROnboardingAtrialFibrillationGateViewController *)self setStackedButtonView:v7];

  stackedButtonView = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [stackedButtonView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackedButtonView2 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [stackedButtonView2 setFixedBottomButtonSpacing:1];
}

- (void)setUpConstraints
{
  v37.receiver = self;
  v37.super_class = HROnboardingAtrialFibrillationGateViewController;
  [(HROnboardingAtrialFibrillationGateViewController *)&v37 setUpConstraints];
  titleLabel = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  contentView = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  titleLabel2 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingAtrialFibrillationGateViewController *)self contentTop];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v9 setActive:1];

  bodyLabel = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  titleLabel3 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

  bodyLabel2 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  topAnchor3 = [bodyLabel2 topAnchor];
  titleLabel4 = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
  [v16 setActive:1];

  ageQuestionView = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  contentView3 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  [ageQuestionView hk_alignHorizontalConstraintsWithView:contentView3 margin:0.0];

  ageQuestionView2 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  topAnchor4 = [ageQuestionView2 topAnchor];
  bodyLabel3 = [(HROnboardingAtrialFibrillationGateViewController *)self bodyLabel];
  bottomAnchor2 = [bodyLabel3 bottomAnchor];
  v23 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:37.0];
  [v23 setActive:1];

  previousAfibQuestionView = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  contentView4 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  [previousAfibQuestionView hk_alignHorizontalConstraintsWithView:contentView4 margin:0.0];

  previousAfibQuestionView2 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  topAnchor5 = [previousAfibQuestionView2 topAnchor];
  ageQuestionView3 = [(HROnboardingAtrialFibrillationGateViewController *)self ageQuestionView];
  bottomAnchor3 = [ageQuestionView3 bottomAnchor];
  v30 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  [v30 setActive:1];

  contentView5 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  previousAfibQuestionView3 = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
  bottomAnchor5 = [previousAfibQuestionView3 bottomAnchor];
  v35 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [(HROnboardingAtrialFibrillationGateViewController *)self setContentViewBottomConstraint:v35];

  contentViewBottomConstraint = [(HROnboardingAtrialFibrillationGateViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];
}

- (void)setDiagnosis:(id)diagnosis
{
  diagnosisCopy = diagnosis;
  if (([(NSNumber *)self->_diagnosis isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_diagnosis, diagnosis);
    [(HROnboardingAtrialFibrillationGateViewController *)self _updateButtonState];
  }
}

- (void)setIsValidAge:(id)age
{
  ageCopy = age;
  if (([(NSNumber *)self->_isValidAge isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_isValidAge, age);
    [(HROnboardingAtrialFibrillationGateViewController *)self _updateButtonState];
  }
}

- (void)_adjustButtonFooterViewLocationForViewContentHeight
{
  v44[1] = *MEMORY[0x277D85DE8];
  view = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  [view layoutIfNeeded];

  view2 = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  stackedButtonView = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  buttons = [stackedButtonView buttons];
  firstObject = [buttons firstObject];
  [firstObject frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  stackedButtonView2 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [view2 convertRect:stackedButtonView2 fromView:{v9, v11, v13, v15}];
  v18 = v17;

  contentView = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
  [contentView frame];
  v21 = v20;
  view3 = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  [view3 safeAreaInsets];
  v24 = v18 - v23;

  if (v21 > v24)
  {
    [(HROnboardingAtrialFibrillationGateViewController *)self removeFooterView];
    stackedButtonView3 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    [stackedButtonView3 setBlurHidden:1];

    contentView2 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
    stackedButtonView4 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    [contentView2 addSubview:stackedButtonView4];

    stackedButtonView5 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    titleLabel = [(HROnboardingAtrialFibrillationGateViewController *)self titleLabel];
    [stackedButtonView5 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

    stackedButtonView6 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    topAnchor = [stackedButtonView6 topAnchor];
    previousAfibQuestionView = [(HROnboardingAtrialFibrillationGateViewController *)self previousAfibQuestionView];
    bottomAnchor = [previousAfibQuestionView bottomAnchor];
    v34 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:20.0];
    [v34 setActive:1];

    v35 = MEMORY[0x277CCAAD0];
    contentViewBottomConstraint = [(HROnboardingAtrialFibrillationGateViewController *)self contentViewBottomConstraint];
    v44[0] = contentViewBottomConstraint;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    [v35 deactivateConstraints:v37];

    [(HROnboardingAtrialFibrillationGateViewController *)self setContentViewBottomConstraint:0];
    contentView3 = [(HROnboardingAtrialFibrillationGateViewController *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    stackedButtonView7 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    bottomAnchor3 = [stackedButtonView7 bottomAnchor];
    v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [(HROnboardingAtrialFibrillationGateViewController *)self setContentViewBottomConstraint:v42];

    contentViewBottomConstraint2 = [(HROnboardingAtrialFibrillationGateViewController *)self contentViewBottomConstraint];
    [contentViewBottomConstraint2 setActive:1];
  }
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (index)
  {
    return;
  }

  if (![(HROnboardingAtrialFibrillationGateViewController *)self _meetsAgeRequirement])
  {
    v6 = MEMORY[0x277D75110];
    ageIneligiblePromptBodyString = [(HROnboardingAtrialFibrillationGateViewController *)self ageIneligiblePromptBodyString];
    delegate = [v6 alertControllerWithTitle:0 message:ageIneligiblePromptBodyString preferredStyle:1];

    v8 = MEMORY[0x277D750F8];
    ageIneligiblePromptAckButtonString = [(HROnboardingAtrialFibrillationGateViewController *)self ageIneligiblePromptAckButtonString];
LABEL_7:
    v12 = ageIneligiblePromptAckButtonString;
    v13 = [v8 actionWithTitle:ageIneligiblePromptAckButtonString style:1 handler:0];
    [delegate addAction:v13];

    [(HROnboardingAtrialFibrillationGateViewController *)self presentViewController:delegate animated:1 completion:0];
    goto LABEL_8;
  }

  if (![(HROnboardingAtrialFibrillationGateViewController *)self _meetsDiagnosisRequirement])
  {
    v10 = MEMORY[0x277D75110];
    diagnosisIneligiblePromptBodyString = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosisIneligiblePromptBodyString];
    delegate = [v10 alertControllerWithTitle:0 message:diagnosisIneligiblePromptBodyString preferredStyle:1];

    v8 = MEMORY[0x277D750F8];
    ageIneligiblePromptAckButtonString = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosisIneligiblePromptAckButtonString];
    goto LABEL_7;
  }

  delegate = [(HROnboardingAtrialFibrillationGateViewController *)self delegate];
  [delegate stepForward];
LABEL_8:
}

- (void)optionSelectorView:(id)view didSelectOptionAtIndex:(int64_t)index
{
  viewCopy = view;
  identifier = [viewCopy identifier];
  v7 = [identifier isEqualToString:@"AgeQuestionID"];

  if (v7)
  {
    if (index)
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
    identifier2 = [viewCopy identifier];
    v10 = [identifier2 isEqualToString:@"DiagnosisQuestionID"];

    if (v10)
    {
      if (index)
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
  isValidAge = [(HROnboardingAtrialFibrillationGateViewController *)self isValidAge];
  if (isValidAge && (v4 = isValidAge, [(HROnboardingAtrialFibrillationGateViewController *)self diagnosis], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    stackedButtonView = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    buttons = [stackedButtonView buttons];

    v8 = [buttons countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(buttons);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          [v12 setEnabled:1];
          v13 = HKHealthKeyColor();
          [v12 setBackgroundColor:v13];
        }

        v9 = [buttons countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    stackedButtonView2 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
    buttons = [stackedButtonView2 buttons];

    v15 = [buttons countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(buttons);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          [v19 setEnabled:0];
          lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
          [v19 setBackgroundColor:lightGrayColor];
        }

        v16 = [buttons countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (void)_setUpButtonFooterView
{
  stackedButtonView = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HROnboardingAtrialFibrillationGateViewController *)self setFooterView:stackedButtonView insets:?];

  stackedButtonView2 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  view = [(HROnboardingAtrialFibrillationGateViewController *)self view];
  [stackedButtonView2 alignBlurViewHorizontalConstraintsWithView:view];

  stackedButtonView3 = [(HROnboardingAtrialFibrillationGateViewController *)self stackedButtonView];
  [stackedButtonView3 setBlurHidden:0];
}

- (BOOL)_meetsAgeRequirement
{
  isValidAge = [(HROnboardingAtrialFibrillationGateViewController *)self isValidAge];
  if (isValidAge)
  {
    isValidAge2 = [(HROnboardingAtrialFibrillationGateViewController *)self isValidAge];
    bOOLValue = [isValidAge2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_meetsDiagnosisRequirement
{
  diagnosis = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosis];
  if (diagnosis)
  {
    diagnosis2 = [(HROnboardingAtrialFibrillationGateViewController *)self diagnosis];
    v5 = [diagnosis2 BOOLValue] ^ 1;
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

- (id)axidForElementWithString:(id)string
{
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"BirthDate.%@", string];
  v4 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:string];

  return v4;
}

@end