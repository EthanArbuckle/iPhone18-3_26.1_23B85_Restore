@interface HROnboardingBulletPointViewController
- (CGSize)_bulletImageSize;
- (NSArray)bulletPoints;
- (NSString)bodyString;
- (NSString)buttonTitleString;
- (NSString)titleString;
- (double)_cannotDoHeaderLastBaselineToCannotDoBodyFirstBaseline;
- (void)_adjustButtonFooterViewLocationForViewContentHeight;
- (void)_setUpButtonFooterView;
- (void)_setupBulletPointViews;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)updateUserInterfaceForStyle:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HROnboardingBulletPointViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v3 viewDidLoad];
  [(HROnboardingBulletPointViewController *)self _setUpButtonFooterView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v4 viewWillAppear:a3];
  [(HROnboardingBulletPointViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingBulletPointViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)updateUserInterfaceForStyle:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v15 updateUserInterfaceForStyle:a3];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(HROnboardingBulletPointViewController *)self bulletPointBodyLabels];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [MEMORY[0x277D75348] secondaryLabelColor];
        [v9 setTextColor:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setUpUI
{
  v37[1] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v36 setUpUI];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HROnboardingBulletPointViewController *)self setTitleLabel:v3];

  v4 = [(HROnboardingBulletPointViewController *)self titleString];
  v5 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v5 setText:v4];

  v6 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v6 setTextAlignment:1];

  v7 = [(HROnboardingBulletPointViewController *)self titleFont];
  v8 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v8 setFont:v7];

  v9 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v10 setNumberOfLines:0];

  v11 = [(HROnboardingBulletPointViewController *)self contentView];
  v12 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v11 addSubview:v12];

  v13 = [(HROnboardingBulletPointViewController *)self bodyString];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HROnboardingBulletPointViewController *)self setBodyLabel:v14];

    v15 = [(HROnboardingBulletPointViewController *)self bodyString];
    v16 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v16 setText:v15];

    v17 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v17 setTextAlignment:1];

    v18 = [(HROnboardingBulletPointViewController *)self _bodyFont];
    v19 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v19 setFont:v18];

    v20 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v20 setAdjustsFontForContentSizeCategory:1];

    v21 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v22 setNumberOfLines:0];

    v23 = [(HROnboardingBulletPointViewController *)self contentView];
    v24 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [v23 addSubview:v24];
  }

  v25 = objc_alloc_init(MEMORY[0x277D75A68]);
  [(HROnboardingBulletPointViewController *)self setBulletPointsView:v25];

  v26 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  [v26 setAxis:1];

  v27 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = [(HROnboardingBulletPointViewController *)self contentView];
  v29 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  [v28 addSubview:v29];

  [(HROnboardingBulletPointViewController *)self _setupBulletPointViews];
  v30 = [(HROnboardingBulletPointViewController *)self buttonTitleString];
  v37[0] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v32 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v31 footerText:0 boldFooterText:0 delegate:self];
  [(HROnboardingBulletPointViewController *)self setStackedButtonView:v32];

  v33 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
  [v33 setBlurHidden:1];

  v34 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
  [v34 setFixedBottomButtonSpacing:1];

  v35 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setupBulletPointViews
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
  [(HROnboardingBulletPointViewController *)self setBulletPointBodyLabels:v3];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(HROnboardingBulletPointViewController *)self bulletPoints];
  v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  v4 = 0;
  if (v40)
  {
    v39 = *v42;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        v7 = [HRImageLabel alloc];
        v8 = [v6 bulletImage];
        [(HROnboardingBulletPointViewController *)self _bulletImageSize];
        v10 = v9;
        v12 = v11;
        v13 = [v6 bulletTitleString];
        v14 = [(HRImageLabel *)v7 initWithImage:v8 size:v13 text:v10, v12];

        v15 = [(HROnboardingBulletPointViewController *)self _boldSubheadlineFont];
        v16 = [(HRImageLabel *)v14 textLabel];
        [v16 setFont:v15];

        [(HRImageLabel *)v14 setImageAlignment:2];
        [(HRImageLabel *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [(HROnboardingBulletPointViewController *)self contentView];
        [v17 addSubview:v14];

        v18 = [(HROnboardingBulletPointViewController *)self titleLabel];
        [(HRImageLabel *)v14 hk_alignHorizontalConstraintsWithView:v18 margin:0.0];

        if (v4)
        {
          v19 = [(HRImageLabel *)v14 textLabel];
          v20 = [v19 topAnchor];
          v21 = [(HRImageLabel *)v4 bottomAnchor];
          v22 = [v20 constraintEqualToAnchor:v21 constant:26.0];
          [v22 setActive:1];
        }

        else
        {
          v23 = [(HROnboardingBulletPointViewController *)self bodyString];

          v19 = [(HRImageLabel *)v14 textLabel];
          v20 = [v19 topAnchor];
          if (v23)
          {
            [(HROnboardingBulletPointViewController *)self bodyLabel];
          }

          else
          {
            [(HROnboardingBulletPointViewController *)self titleLabel];
          }
          v21 = ;
          v22 = [v21 bottomAnchor];
          v24 = [v20 constraintEqualToAnchor:v22 constant:37.0];
          [v24 setActive:1];
        }

        v25 = v14;
        v26 = [v6 bulletBodyString];
        v27 = [v26 length];

        v4 = v25;
        if (v27)
        {
          v28 = objc_alloc_init(MEMORY[0x277D756B8]);
          v29 = [v6 bulletBodyString];
          [v28 setText:v29];

          v30 = [(HROnboardingBulletPointViewController *)self _subheadlineFont];
          [v28 setFont:v30];

          [v28 setAdjustsFontForContentSizeCategory:1];
          [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v28 setNumberOfLines:0];
          v31 = [(HROnboardingBulletPointViewController *)self contentView];
          [v31 addSubview:v28];

          v32 = [(HRImageLabel *)v25 textLabel];
          [v28 hk_alignHorizontalConstraintsWithView:v32 margin:0.0];

          v33 = [v28 firstBaselineAnchor];
          v34 = [(HRImageLabel *)v25 textLabel];
          v35 = [v34 lastBaselineAnchor];
          [(HROnboardingBulletPointViewController *)self _cannotDoHeaderLastBaselineToCannotDoBodyFirstBaseline];
          v36 = [v33 constraintEqualToAnchor:v35 constant:?];
          [v36 setActive:1];

          v4 = v28;
          v37 = [(HROnboardingBulletPointViewController *)self bulletPointBodyLabels];
          [v37 addObject:v4];
        }
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }

  [(HROnboardingBulletPointViewController *)self setLastBulletPointView:v4];
}

- (void)setUpConstraints
{
  v31.receiver = self;
  v31.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v31 setUpConstraints];
  v3 = [(HROnboardingBulletPointViewController *)self titleLabel];
  v4 = [(HROnboardingBulletPointViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hrui_alignHorizontalConstraintsWithView:v4 insets:?];

  v5 = [(HROnboardingBulletPointViewController *)self titleLabel];
  v6 = [v5 topAnchor];
  v7 = [(HROnboardingBulletPointViewController *)self contentView];
  v8 = [v7 topAnchor];
  [(HROnboardingBulletPointViewController *)self contentTop];
  v9 = [v6 constraintEqualToAnchor:v8 constant:?];
  [v9 setActive:1];

  v10 = [(HROnboardingBulletPointViewController *)self bodyString];

  if (v10)
  {
    v11 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    v12 = [(HROnboardingBulletPointViewController *)self titleLabel];
    [v11 hk_alignHorizontalConstraintsWithView:v12 margin:0.0];

    v13 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    v14 = [v13 topAnchor];
    v15 = [(HROnboardingBulletPointViewController *)self titleLabel];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:15.0];
    [v17 setActive:1];

    v18 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
    v19 = [v18 topAnchor];
    [(HROnboardingBulletPointViewController *)self bodyLabel];
  }

  else
  {
    v18 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
    v19 = [v18 topAnchor];
    [(HROnboardingBulletPointViewController *)self titleLabel];
  }
  v20 = ;
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:37.0];
  [v22 setActive:1];

  v23 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  v24 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [v23 hk_alignHorizontalConstraintsWithView:v24 margin:0.0];

  v25 = [(HROnboardingBulletPointViewController *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [(HROnboardingBulletPointViewController *)self lastBulletPointView];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:*MEMORY[0x277D12778]];
  [(HROnboardingBulletPointViewController *)self setContentViewBottomConstraint:v29];

  v30 = [(HROnboardingBulletPointViewController *)self contentViewBottomConstraint];
  [v30 setActive:1];
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4)
  {
    v5 = [(HROnboardingBulletPointViewController *)self delegate];
    [v5 stepForward];
  }
}

- (CGSize)_bulletImageSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setUpButtonFooterView
{
  if ([(HROnboardingBulletPointViewController *)self isOnboarding])
  {
    v3 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    HKHealthUIBuddyDirectionalEdgeInsets();
    [(HROnboardingBulletPointViewController *)self setFooterView:v3 insets:?];

    v4 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    v5 = [(HROnboardingBulletPointViewController *)self view];
    [v4 alignBlurViewHorizontalConstraintsWithView:v5];

    v6 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    [v6 setBlurHidden:0];
  }
}

- (void)_adjustButtonFooterViewLocationForViewContentHeight
{
  v44[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingBulletPointViewController *)self isOnboarding])
  {
    v3 = [(HROnboardingBulletPointViewController *)self view];
    [v3 layoutIfNeeded];

    v4 = [(HROnboardingBulletPointViewController *)self view];
    v5 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    v6 = [v5 buttons];
    v7 = [v6 firstObject];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    [v4 convertRect:v16 fromView:{v9, v11, v13, v15}];
    v18 = v17;

    v19 = [(HROnboardingBulletPointViewController *)self contentView];
    [v19 frame];
    v21 = v20;
    v22 = [(HROnboardingBulletPointViewController *)self view];
    [v22 safeAreaInsets];
    v24 = v18 - v23;

    if (v21 > v24)
    {
      [(HROnboardingBulletPointViewController *)self removeFooterView];
      v25 = [(HROnboardingBulletPointViewController *)self contentView];
      v26 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      [v25 addSubview:v26];

      v27 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      [v27 setBlurHidden:1];

      v28 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      v29 = [(HROnboardingBulletPointViewController *)self titleLabel];
      [v28 hk_alignHorizontalConstraintsWithView:v29 margin:0.0];

      v30 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      v31 = [v30 topAnchor];
      v32 = [(HROnboardingBulletPointViewController *)self lastBulletPointView];
      v33 = [v32 bottomAnchor];
      v34 = [v31 constraintEqualToAnchor:v33 constant:*MEMORY[0x277D127A0]];
      [v34 setActive:1];

      v35 = MEMORY[0x277CCAAD0];
      v36 = [(HROnboardingBulletPointViewController *)self contentViewBottomConstraint];
      v44[0] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [v35 deactivateConstraints:v37];

      [(HROnboardingBulletPointViewController *)self setContentViewBottomConstraint:0];
      v38 = [(HROnboardingBulletPointViewController *)self contentView];
      v39 = [v38 bottomAnchor];
      v40 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      v41 = [v40 bottomAnchor];
      v42 = [v39 constraintEqualToAnchor:v41];
      [(HROnboardingBulletPointViewController *)self setContentViewBottomConstraint:v42];

      v43 = [(HROnboardingBulletPointViewController *)self contentViewBottomConstraint];
      [v43 setActive:1];
    }
  }
}

- (double)_cannotDoHeaderLastBaselineToCannotDoBodyFirstBaseline
{
  v2 = [(HROnboardingBulletPointViewController *)self _bodyFont];
  [v2 _scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

- (NSString)titleString
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return &stru_2864680B0;
}

- (NSString)bodyString
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return 0;
}

- (NSArray)bulletPoints
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return MEMORY[0x277CBEBF8];
}

- (NSString)buttonTitleString
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  return &stru_2864680B0;
}

@end