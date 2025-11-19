@interface HRAtrialFibrillationIntroViewController
- (double)_assetImageBottomToTitleFirstBaseline;
- (double)_bodyLastBaselineToContentBottom;
- (double)_titleLastBaselineToBodyFirstBaseline;
- (double)_titleTopToFirstBaselineLeading;
- (id)_bodyFont;
- (id)_createHeroView;
- (id)_titleFont;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation HRAtrialFibrillationIntroViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationIntroViewController;
  [(HRAtrialFibrillationIntroViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HRAtrialFibrillationIntroViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(HRAtrialFibrillationIntroViewController *)self setUpUI];
  [(HRAtrialFibrillationIntroViewController *)self setUpConstraints];
}

- (void)setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(HRAtrialFibrillationIntroViewController *)self setScrollView:v3];

  v4 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [v4 setAlwaysBounceVertical:1];

  v5 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"AppleWatchCanLookforAtrialFibrillation.EntireView"];
  v7 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [v7 setAccessibilityIdentifier:v6];

  v8 = [(HRAtrialFibrillationIntroViewController *)self view];
  v9 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [v8 addSubview:v9];

  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HRAtrialFibrillationIntroViewController *)self setContentView:v10];

  v11 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  v13 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  [v12 addSubview:v13];

  v14 = [(HRAtrialFibrillationIntroViewController *)self _createHeroView];
  [(HRAtrialFibrillationIntroViewController *)self setHeroView:v14];

  v15 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v17 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  [v16 addSubview:v17];

  v18 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRAtrialFibrillationIntroViewController *)self setTitleLabel:v18];

  v19 = HRHeartRhythmUIFrameworkBundle();
  v20 = [v19 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v21 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v21 setText:v20];

  v22 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v22 setTextAlignment:4];

  v23 = [(HRAtrialFibrillationIntroViewController *)self _titleFont];
  v24 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v24 setFont:v23];

  v25 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v26 setNumberOfLines:0];

  v27 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v28 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v27 addSubview:v28];

  v29 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRAtrialFibrillationIntroViewController *)self setBodyLabel:v29];

  v30 = HRHeartRhythmUIFrameworkBundle();
  v31 = [v30 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_INTRO_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v32 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [v32 setText:v31];

  v33 = [MEMORY[0x277D75348] secondaryLabelColor];
  v34 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [v34 setTextColor:v33];

  v35 = [(HRAtrialFibrillationIntroViewController *)self _bodyFont];
  v36 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [v36 setFont:v35];

  v37 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [v38 setNumberOfLines:0];

  v39 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v40 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  [v39 addSubview:v40];

  v41 = +[HROnboardingInlineExpandedContentView learnMoreAboutAtrialFibrillationExpandedView];
  [(HRAtrialFibrillationIntroViewController *)self setLearnMoreContentView:v41];

  v43 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v42 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  [v43 addSubview:v42];
}

- (void)setUpConstraints
{
  v3 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  v4 = [(HRAtrialFibrillationIntroViewController *)self view];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  v6 = [v5 topAnchor];
  v7 = [(HRAtrialFibrillationIntroViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  v11 = [v10 bottomAnchor];
  v12 = [(HRAtrialFibrillationIntroViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v16 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [v15 hk_alignHorizontalConstraintsWithView:v16 margin:0.0];

  v17 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v18 = [(HRAtrialFibrillationIntroViewController *)self scrollView];
  [v17 hk_alignVerticalConstraintsWithView:v18 margin:0.0];

  v19 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v20 = [(HRAtrialFibrillationIntroViewController *)self view];
  [v19 hk_alignHorizontalConstraintsWithView:v20 margin:0.0];

  v21 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  v22 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  [v21 hk_alignHorizontalConstraintsWithView:v22 margin:0.0];

  v23 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  v24 = [v23 topAnchor];
  v25 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
  [v27 setActive:1];

  v28 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  v29 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v28 hrui_alignHorizontalConstraintsWithView:v29 insets:?];

  v30 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  v31 = [v30 firstBaselineAnchor];
  v32 = [(HRAtrialFibrillationIntroViewController *)self heroView];
  v33 = [v32 bottomAnchor];
  [(HRAtrialFibrillationIntroViewController *)self _assetImageBottomToTitleFirstBaseline];
  v34 = [v31 constraintEqualToAnchor:v33 constant:?];
  [v34 setActive:1];

  v35 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  v36 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  [v35 hk_alignHorizontalConstraintsWithView:v36 margin:0.0];

  v37 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  v38 = [v37 firstBaselineAnchor];
  v39 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  v40 = [v39 lastBaselineAnchor];
  [(HRAtrialFibrillationIntroViewController *)self _titleLastBaselineToBodyFirstBaseline];
  v41 = [v38 constraintEqualToAnchor:v40 constant:?];
  [v41 setActive:1];

  v42 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v43 = [v42 leadingAnchor];
  v44 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  v45 = [v44 leadingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v48 = [v47 trailingAnchor];
  v49 = [(HRAtrialFibrillationIntroViewController *)self titleLabel];
  v50 = [v49 trailingAnchor];
  v51 = [v48 constraintLessThanOrEqualToAnchor:v50];
  [v51 setActive:1];

  v52 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v53 = [v52 topAnchor];
  v54 = [(HRAtrialFibrillationIntroViewController *)self bodyLabel];
  v55 = [v54 bottomAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];
  [v56 setActive:1];

  v61 = [(HRAtrialFibrillationIntroViewController *)self contentView];
  v57 = [v61 bottomAnchor];
  v58 = [(HRAtrialFibrillationIntroViewController *)self learnMoreContentView];
  v59 = [v58 lastBaselineAnchor];
  [(HRAtrialFibrillationIntroViewController *)self _bodyLastBaselineToContentBottom];
  v60 = [v57 constraintEqualToAnchor:v59 constant:?];
  [v60 setActive:1];
}

- (id)_createHeroView
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = objc_alloc_init(HRSimulatedAtrialFibrillationNotificationView);
  [v3 addSubview:v4];
  [(HRSimulatedAtrialFibrillationNotificationView *)v4 hk_alignVerticalConstraintsWithView:v3 margin:0.0];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(HRSimulatedAtrialFibrillationNotificationView *)v4 widthAnchor];
  v7 = [v6 constraintEqualToConstant:160.0];
  v13[0] = v7;
  v8 = [(HRSimulatedAtrialFibrillationNotificationView *)v4 centerXAnchor];
  v9 = [v3 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v5 activateConstraints:v11];

  return v3;
}

- (id)_titleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRAtrialFibrillationIntroViewController *)self _titleFontTextStyle];
  v4 = [v2 hk_scalableFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [(HRAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v4 = [v2 preferredFontForTextStyle:v3];

  return v4;
}

- (double)_assetImageBottomToTitleFirstBaseline
{
  v2 = [(HRAtrialFibrillationIntroViewController *)self _titleFont];
  [v2 _scaledValueForValue:54.0];
  v4 = v3;

  return v4;
}

- (double)_titleTopToFirstBaselineLeading
{
  v2 = [MEMORY[0x277D759A0] hrui_currentDeviceHas5Point8InchScreen];
  result = 36.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

- (double)_titleLastBaselineToBodyFirstBaseline
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  v4 = [(HRAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v5 = [v3 initForTextStyle:v4];

  [v5 scaledValueForValue:32.0];
  v7 = v6;

  return v7;
}

- (double)_bodyLastBaselineToContentBottom
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  v4 = [(HRAtrialFibrillationIntroViewController *)self _bodyFontTextStyle];
  v5 = [v3 initForTextStyle:v4];

  [v5 scaledValueForValue:48.0];
  v7 = v6;

  return v7;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __79__HRAtrialFibrillationIntroViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796FB498;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(HRAtrialFibrillationIntroViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __79__HRAtrialFibrillationIntroViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(HRAtrialFibrillationIntroViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

@end