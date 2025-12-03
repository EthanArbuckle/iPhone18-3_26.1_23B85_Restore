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
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)updateUserInterfaceForStyle:(int64_t)style;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HROnboardingBulletPointViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v3 viewDidLoad];
  [(HROnboardingBulletPointViewController *)self _setUpButtonFooterView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v4 viewWillAppear:appear];
  [(HROnboardingBulletPointViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v3 viewDidLayoutSubviews];
  [(HROnboardingBulletPointViewController *)self _adjustButtonFooterViewLocationForViewContentHeight];
}

- (void)updateUserInterfaceForStyle:(int64_t)style
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HROnboardingBulletPointViewController;
  [(HROnboardingBulletPointViewController *)&v15 updateUserInterfaceForStyle:style];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  bulletPointBodyLabels = [(HROnboardingBulletPointViewController *)self bulletPointBodyLabels];
  v5 = [bulletPointBodyLabels countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(bulletPointBodyLabels);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [v9 setTextColor:secondaryLabelColor];

        ++v8;
      }

      while (v6 != v8);
      v6 = [bulletPointBodyLabels countByEnumeratingWithState:&v11 objects:v16 count:16];
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

  titleString = [(HROnboardingBulletPointViewController *)self titleString];
  titleLabel = [(HROnboardingBulletPointViewController *)self titleLabel];
  [titleLabel setText:titleString];

  titleLabel2 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:1];

  titleFont = [(HROnboardingBulletPointViewController *)self titleFont];
  titleLabel3 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [titleLabel3 setFont:titleFont];

  titleLabel4 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  contentView = [(HROnboardingBulletPointViewController *)self contentView];
  titleLabel6 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [contentView addSubview:titleLabel6];

  bodyString = [(HROnboardingBulletPointViewController *)self bodyString];

  if (bodyString)
  {
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HROnboardingBulletPointViewController *)self setBodyLabel:v14];

    bodyString2 = [(HROnboardingBulletPointViewController *)self bodyString];
    bodyLabel = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [bodyLabel setText:bodyString2];

    bodyLabel2 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [bodyLabel2 setTextAlignment:1];

    _bodyFont = [(HROnboardingBulletPointViewController *)self _bodyFont];
    bodyLabel3 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [bodyLabel3 setFont:_bodyFont];

    bodyLabel4 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [bodyLabel4 setAdjustsFontForContentSizeCategory:1];

    bodyLabel5 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [bodyLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    bodyLabel6 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [bodyLabel6 setNumberOfLines:0];

    contentView2 = [(HROnboardingBulletPointViewController *)self contentView];
    bodyLabel7 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    [contentView2 addSubview:bodyLabel7];
  }

  v25 = objc_alloc_init(MEMORY[0x277D75A68]);
  [(HROnboardingBulletPointViewController *)self setBulletPointsView:v25];

  bulletPointsView = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  [bulletPointsView setAxis:1];

  bulletPointsView2 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  [bulletPointsView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(HROnboardingBulletPointViewController *)self contentView];
  bulletPointsView3 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  [contentView3 addSubview:bulletPointsView3];

  [(HROnboardingBulletPointViewController *)self _setupBulletPointViews];
  buttonTitleString = [(HROnboardingBulletPointViewController *)self buttonTitleString];
  v37[0] = buttonTitleString;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v32 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v31 footerText:0 boldFooterText:0 delegate:self];
  [(HROnboardingBulletPointViewController *)self setStackedButtonView:v32];

  stackedButtonView = [(HROnboardingBulletPointViewController *)self stackedButtonView];
  [stackedButtonView setBlurHidden:1];

  stackedButtonView2 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
  [stackedButtonView2 setFixedBottomButtonSpacing:1];

  stackedButtonView3 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
  [stackedButtonView3 setTranslatesAutoresizingMaskIntoConstraints:0];
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
        bulletImage = [v6 bulletImage];
        [(HROnboardingBulletPointViewController *)self _bulletImageSize];
        v10 = v9;
        v12 = v11;
        bulletTitleString = [v6 bulletTitleString];
        v14 = [(HRImageLabel *)v7 initWithImage:bulletImage size:bulletTitleString text:v10, v12];

        _boldSubheadlineFont = [(HROnboardingBulletPointViewController *)self _boldSubheadlineFont];
        textLabel = [(HRImageLabel *)v14 textLabel];
        [textLabel setFont:_boldSubheadlineFont];

        [(HRImageLabel *)v14 setImageAlignment:2];
        [(HRImageLabel *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView = [(HROnboardingBulletPointViewController *)self contentView];
        [contentView addSubview:v14];

        titleLabel = [(HROnboardingBulletPointViewController *)self titleLabel];
        [(HRImageLabel *)v14 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

        if (v4)
        {
          textLabel2 = [(HRImageLabel *)v14 textLabel];
          topAnchor = [textLabel2 topAnchor];
          bottomAnchor = [(HRImageLabel *)v4 bottomAnchor];
          v21BottomAnchor = [topAnchor constraintEqualToAnchor:bottomAnchor constant:26.0];
          [v21BottomAnchor setActive:1];
        }

        else
        {
          bodyString = [(HROnboardingBulletPointViewController *)self bodyString];

          textLabel2 = [(HRImageLabel *)v14 textLabel];
          topAnchor = [textLabel2 topAnchor];
          if (bodyString)
          {
            [(HROnboardingBulletPointViewController *)self bodyLabel];
          }

          else
          {
            [(HROnboardingBulletPointViewController *)self titleLabel];
          }
          bottomAnchor = ;
          v21BottomAnchor = [bottomAnchor bottomAnchor];
          v24 = [topAnchor constraintEqualToAnchor:v21BottomAnchor constant:37.0];
          [v24 setActive:1];
        }

        v25 = v14;
        bulletBodyString = [v6 bulletBodyString];
        v27 = [bulletBodyString length];

        v4 = v25;
        if (v27)
        {
          v28 = objc_alloc_init(MEMORY[0x277D756B8]);
          bulletBodyString2 = [v6 bulletBodyString];
          [v28 setText:bulletBodyString2];

          _subheadlineFont = [(HROnboardingBulletPointViewController *)self _subheadlineFont];
          [v28 setFont:_subheadlineFont];

          [v28 setAdjustsFontForContentSizeCategory:1];
          [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v28 setNumberOfLines:0];
          contentView2 = [(HROnboardingBulletPointViewController *)self contentView];
          [contentView2 addSubview:v28];

          textLabel3 = [(HRImageLabel *)v25 textLabel];
          [v28 hk_alignHorizontalConstraintsWithView:textLabel3 margin:0.0];

          firstBaselineAnchor = [v28 firstBaselineAnchor];
          textLabel4 = [(HRImageLabel *)v25 textLabel];
          lastBaselineAnchor = [textLabel4 lastBaselineAnchor];
          [(HROnboardingBulletPointViewController *)self _cannotDoHeaderLastBaselineToCannotDoBodyFirstBaseline];
          v36 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
          [v36 setActive:1];

          v4 = v28;
          bulletPointBodyLabels = [(HROnboardingBulletPointViewController *)self bulletPointBodyLabels];
          [bulletPointBodyLabels addObject:v4];
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
  titleLabel = [(HROnboardingBulletPointViewController *)self titleLabel];
  contentView = [(HROnboardingBulletPointViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hrui_alignHorizontalConstraintsWithView:contentView insets:?];

  titleLabel2 = [(HROnboardingBulletPointViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HROnboardingBulletPointViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HROnboardingBulletPointViewController *)self contentTop];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v9 setActive:1];

  bodyString = [(HROnboardingBulletPointViewController *)self bodyString];

  if (bodyString)
  {
    bodyLabel = [(HROnboardingBulletPointViewController *)self bodyLabel];
    titleLabel3 = [(HROnboardingBulletPointViewController *)self titleLabel];
    [bodyLabel hk_alignHorizontalConstraintsWithView:titleLabel3 margin:0.0];

    bodyLabel2 = [(HROnboardingBulletPointViewController *)self bodyLabel];
    topAnchor3 = [bodyLabel2 topAnchor];
    titleLabel4 = [(HROnboardingBulletPointViewController *)self titleLabel];
    bottomAnchor = [titleLabel4 bottomAnchor];
    v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
    [v17 setActive:1];

    bulletPointsView = [(HROnboardingBulletPointViewController *)self bulletPointsView];
    topAnchor4 = [bulletPointsView topAnchor];
    [(HROnboardingBulletPointViewController *)self bodyLabel];
  }

  else
  {
    bulletPointsView = [(HROnboardingBulletPointViewController *)self bulletPointsView];
    topAnchor4 = [bulletPointsView topAnchor];
    [(HROnboardingBulletPointViewController *)self titleLabel];
  }
  v20 = ;
  bottomAnchor2 = [v20 bottomAnchor];
  v22 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:37.0];
  [v22 setActive:1];

  bulletPointsView2 = [(HROnboardingBulletPointViewController *)self bulletPointsView];
  titleLabel5 = [(HROnboardingBulletPointViewController *)self titleLabel];
  [bulletPointsView2 hk_alignHorizontalConstraintsWithView:titleLabel5 margin:0.0];

  contentView3 = [(HROnboardingBulletPointViewController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  lastBulletPointView = [(HROnboardingBulletPointViewController *)self lastBulletPointView];
  bottomAnchor4 = [lastBulletPointView bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:*MEMORY[0x277D12778]];
  [(HROnboardingBulletPointViewController *)self setContentViewBottomConstraint:v29];

  contentViewBottomConstraint = [(HROnboardingBulletPointViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:1];
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index)
  {
    delegate = [(HROnboardingBulletPointViewController *)self delegate];
    [delegate stepForward];
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
    stackedButtonView = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    HKHealthUIBuddyDirectionalEdgeInsets();
    [(HROnboardingBulletPointViewController *)self setFooterView:stackedButtonView insets:?];

    stackedButtonView2 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    view = [(HROnboardingBulletPointViewController *)self view];
    [stackedButtonView2 alignBlurViewHorizontalConstraintsWithView:view];

    stackedButtonView3 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    [stackedButtonView3 setBlurHidden:0];
  }
}

- (void)_adjustButtonFooterViewLocationForViewContentHeight
{
  v44[1] = *MEMORY[0x277D85DE8];
  if ([(HROnboardingBulletPointViewController *)self isOnboarding])
  {
    view = [(HROnboardingBulletPointViewController *)self view];
    [view layoutIfNeeded];

    view2 = [(HROnboardingBulletPointViewController *)self view];
    stackedButtonView = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    buttons = [stackedButtonView buttons];
    firstObject = [buttons firstObject];
    [firstObject frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    stackedButtonView2 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
    [view2 convertRect:stackedButtonView2 fromView:{v9, v11, v13, v15}];
    v18 = v17;

    contentView = [(HROnboardingBulletPointViewController *)self contentView];
    [contentView frame];
    v21 = v20;
    view3 = [(HROnboardingBulletPointViewController *)self view];
    [view3 safeAreaInsets];
    v24 = v18 - v23;

    if (v21 > v24)
    {
      [(HROnboardingBulletPointViewController *)self removeFooterView];
      contentView2 = [(HROnboardingBulletPointViewController *)self contentView];
      stackedButtonView3 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      [contentView2 addSubview:stackedButtonView3];

      stackedButtonView4 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      [stackedButtonView4 setBlurHidden:1];

      stackedButtonView5 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      titleLabel = [(HROnboardingBulletPointViewController *)self titleLabel];
      [stackedButtonView5 hk_alignHorizontalConstraintsWithView:titleLabel margin:0.0];

      stackedButtonView6 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      topAnchor = [stackedButtonView6 topAnchor];
      lastBulletPointView = [(HROnboardingBulletPointViewController *)self lastBulletPointView];
      bottomAnchor = [lastBulletPointView bottomAnchor];
      v34 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:*MEMORY[0x277D127A0]];
      [v34 setActive:1];

      v35 = MEMORY[0x277CCAAD0];
      contentViewBottomConstraint = [(HROnboardingBulletPointViewController *)self contentViewBottomConstraint];
      v44[0] = contentViewBottomConstraint;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [v35 deactivateConstraints:v37];

      [(HROnboardingBulletPointViewController *)self setContentViewBottomConstraint:0];
      contentView3 = [(HROnboardingBulletPointViewController *)self contentView];
      bottomAnchor2 = [contentView3 bottomAnchor];
      stackedButtonView7 = [(HROnboardingBulletPointViewController *)self stackedButtonView];
      bottomAnchor3 = [stackedButtonView7 bottomAnchor];
      v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      [(HROnboardingBulletPointViewController *)self setContentViewBottomConstraint:v42];

      contentViewBottomConstraint2 = [(HROnboardingBulletPointViewController *)self contentViewBottomConstraint];
      [contentViewBottomConstraint2 setActive:1];
    }
  }
}

- (double)_cannotDoHeaderLastBaselineToCannotDoBodyFirstBaseline
{
  _bodyFont = [(HROnboardingBulletPointViewController *)self _bodyFont];
  [_bodyFont _scaledValueForValue:27.0];
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