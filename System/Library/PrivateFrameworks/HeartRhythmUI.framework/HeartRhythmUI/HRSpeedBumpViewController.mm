@interface HRSpeedBumpViewController
- (HRSpeedBumpViewController)initWithSpeedBumpItem:(id)a3 onboarding:(BOOL)a4 upgradingFromAlgorithmVersion:(int64_t)a5;
- (double)_titleLastBaselineToBodyTop;
- (id)identifierBundle;
- (void)_scrollBubbleViewToVisible:(id)a3;
- (void)_setStackedButtonViewAsFooterView;
- (void)_setUpBodyConstraints;
- (void)_setUpBodyLabel;
- (void)_setUpBubbleViewConstraints;
- (void)_setUpBubbleViews;
- (void)_setUpStackedButtonView;
- (void)_setUpTitleConstraints;
- (void)_setUpTitleLabel;
- (void)_updateContentViewBottomConstraintWithAnchor:(id)a3 constant:(double)a4;
- (void)_updateUIWithLatestVisibleBubbleView:(id)a3 animated:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HRSpeedBumpViewController

- (HRSpeedBumpViewController)initWithSpeedBumpItem:(id)a3 onboarding:(BOOL)a4 upgradingFromAlgorithmVersion:(int64_t)a5
{
  v6 = a4;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HRSpeedBumpViewController;
  v10 = [(HRSpeedBumpViewController *)&v13 initForOnboarding:v6 upgradingFromAlgorithmVersion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, a3);
  }

  return v11;
}

- (void)setUpUI
{
  v9.receiver = self;
  v9.super_class = HRSpeedBumpViewController;
  [(HRSpeedBumpViewController *)&v9 setUpUI];
  v3 = [(HRSpeedBumpViewController *)self scrollView];
  [v3 setDelegate:self];

  v4 = [(HRSpeedBumpViewController *)self identifierBundle];
  v5 = [v4 stringByAppendingString:@".EntireView"];
  v6 = [(HRSpeedBumpViewController *)self scrollView];
  [v6 setAccessibilityIdentifier:v5];

  [(HRSpeedBumpViewController *)self _setUpTitleLabel];
  v7 = [(HRSpeedBumpViewController *)self item];
  v8 = [v7 body];

  if (v8)
  {
    [(HRSpeedBumpViewController *)self _setUpBodyLabel];
  }

  [(HRSpeedBumpViewController *)self _setUpBubbleViews];
}

- (void)setUpConstraints
{
  v9.receiver = self;
  v9.super_class = HRSpeedBumpViewController;
  [(HRSpeedBumpViewController *)&v9 setUpConstraints];
  [(HRSpeedBumpViewController *)self _setUpTitleConstraints];
  v3 = [(HRSpeedBumpViewController *)self item];
  v4 = [v3 body];

  if (v4)
  {
    [(HRSpeedBumpViewController *)self _setUpBodyConstraints];
  }

  [(HRSpeedBumpViewController *)self _setUpBubbleViewConstraints];
  v5 = [(HRSpeedBumpViewController *)self contentView];
  v6 = [v5 _bottomVisibleView];

  if ([(HRSpeedBumpViewController *)self isOnboarding])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *MEMORY[0x277D12778];
  }

  v8 = [v6 bottomAnchor];
  [(HRSpeedBumpViewController *)self _updateContentViewBottomConstraintWithAnchor:v8 constant:v7];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HRSpeedBumpViewController;
  [(HRSpeedBumpViewController *)&v9 viewDidLoad];
  v3 = [(HRSpeedBumpViewController *)self isOnboarding];
  v4 = [(HRSpeedBumpViewController *)self bubbleViews];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 firstObject];
    [(HRSpeedBumpViewController *)self setLatestVisibleBubbleView:v6];

    [(HRSpeedBumpViewController *)self setInitialContentOffset:1.79769313e308];
  }

  else
  {
    v7 = [v4 lastObject];
    [(HRSpeedBumpViewController *)self setLatestVisibleBubbleView:v7];
  }

  v8 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
  [(HRSpeedBumpViewController *)self _updateUIWithLatestVisibleBubbleView:v8 animated:0];

  if ([(HRSpeedBumpViewController *)self isOnboarding])
  {
    [(HRSpeedBumpViewController *)self _setUpStackedButtonView];
    [(HRSpeedBumpViewController *)self _setStackedButtonViewAsFooterView];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(HRSpeedBumpViewController *)self initialContentOffset];
  if (v4 == 1.79769313e308)
  {
    v6 = [(HRSpeedBumpViewController *)self scrollView];
    [v6 contentOffset];
    [(HRSpeedBumpViewController *)self setInitialContentOffset:v5];
  }
}

- (void)stackedButtonView:(id)a3 didTapButtonAtIndex:(int64_t)a4
{
  if (!a4 && ![(HRSpeedBumpViewController *)self stateAnimating])
  {
    v5 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
    v6 = [(HRSpeedBumpViewController *)self bubbleViews];
    v7 = [v6 lastObject];

    if (v5 == v7)
    {
      v21 = [(HRSpeedBumpViewController *)self delegate];
      [v21 stepForward];
    }

    else
    {
      v8 = [(HRSpeedBumpViewController *)self bubbleViews];
      v9 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
      v10 = [v8 indexOfObject:v9];

      v11 = [(HRSpeedBumpViewController *)self bubbleViews];
      v12 = [v11 objectAtIndexedSubscript:v10 + 1];
      [(HRSpeedBumpViewController *)self setLatestVisibleBubbleView:v12];

      v13 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
      [(HRSpeedBumpViewController *)self _updateUIWithLatestVisibleBubbleView:v13 animated:1];

      v14 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
      v15 = [(HRSpeedBumpViewController *)self bubbleViews];
      v16 = [v15 lastObject];

      if (v14 != v16)
      {
        return;
      }

      v21 = [(HRSpeedBumpViewController *)self stackedButtonView];
      v17 = [v21 buttons];
      v18 = [v17 firstObject];
      v19 = HRHeartRhythmUIFrameworkBundle();
      v20 = [v19 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
      [v18 setTitle:v20 forState:0];
    }
  }
}

- (void)_updateUIWithLatestVisibleBubbleView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HRSpeedBumpViewController *)self isOnboarding];
  v8 = MEMORY[0x277D127A0];
  if (!v7)
  {
    v8 = MEMORY[0x277D12778];
  }

  v9 = *v8;
  v10 = [v6 bottomAnchor];
  [(HRSpeedBumpViewController *)self _updateContentViewBottomConstraintWithAnchor:v10 constant:v9];

  v11 = [(HRSpeedBumpViewController *)self view];
  [v11 layoutIfNeeded];

  if (v4)
  {
    [(HRSpeedBumpViewController *)self _scrollBubbleViewToVisible:v6];
    if (v6)
    {
      [v6 setAlpha:0.0];
      [(HRSpeedBumpViewController *)self setStateAnimating:1];
      v12 = objc_alloc(MEMORY[0x277D75D40]);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75__HRSpeedBumpViewController__updateUIWithLatestVisibleBubbleView_animated___block_invoke;
      v24[3] = &unk_2796FB778;
      v25 = v6;
      v13 = [v12 initWithDuration:0 curve:v24 animations:0.5];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__HRSpeedBumpViewController__updateUIWithLatestVisibleBubbleView_animated___block_invoke_2;
      v23[3] = &unk_2796FBB20;
      v23[4] = self;
      [v13 addCompletion:v23];
      [v13 startAnimation];
    }
  }

  else
  {
    v14 = [(HRSpeedBumpViewController *)self bubbleViews];
    v15 = [v14 indexOfObject:v6];

    v16 = [(HRSpeedBumpViewController *)self bubbleViews];
    v17 = [v16 count];

    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = [(HRSpeedBumpViewController *)self bubbleViews];
        v20 = [v19 objectAtIndexedSubscript:v18];
        [v20 setHidden:v18 > v15];

        ++v18;
        v21 = [(HRSpeedBumpViewController *)self bubbleViews];
        v22 = [v21 count];
      }

      while (v18 < v22);
    }
  }
}

uint64_t __75__HRSpeedBumpViewController__updateUIWithLatestVisibleBubbleView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 setHidden:0];
}

- (id)identifierBundle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HRSpeedBumpViewController *)self item];
  v4 = [v2 healthAccessibilityIdentifier:objc_msgSend(v3 suffix:{"category"), @"Onboarding.FourThings"}];

  return v4;
}

- (void)_setUpTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRSpeedBumpViewController *)self setTitleLabel:v3];

  v4 = [(HRSpeedBumpViewController *)self item];
  v5 = [v4 title];
  v6 = [(HRSpeedBumpViewController *)self titleLabel];
  [v6 setText:v5];

  v7 = [(HRSpeedBumpViewController *)self titleLabel];
  [v7 setTextAlignment:4];

  v8 = [(HRSpeedBumpViewController *)self titleFont];
  v9 = [(HRSpeedBumpViewController *)self titleLabel];
  [v9 setFont:v8];

  v10 = [(HRSpeedBumpViewController *)self titleLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HRSpeedBumpViewController *)self titleLabel];
  [v11 setNumberOfLines:0];

  v12 = [(HRSpeedBumpViewController *)self identifierBundle];
  v13 = [v12 stringByAppendingString:@".Title"];
  v14 = [(HRSpeedBumpViewController *)self titleLabel];
  [v14 setAccessibilityIdentifier:v13];

  v16 = [(HRSpeedBumpViewController *)self contentView];
  v15 = [(HRSpeedBumpViewController *)self titleLabel];
  [v16 addSubview:v15];
}

- (void)_setUpBodyLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRSpeedBumpViewController *)self setBodyLabel:v3];

  v4 = [(HRSpeedBumpViewController *)self item];
  v5 = [v4 body];
  v6 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v6 setText:v5];

  v7 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v7 setTextAlignment:4];

  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v9 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v9 setTextColor:v8];

  v10 = [(HRSpeedBumpViewController *)self _bodyFont];
  v11 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v11 setFont:v10];

  v12 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v12 setAdjustsFontForContentSizeCategory:1];

  v13 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v14 setNumberOfLines:0];

  v15 = [(HRSpeedBumpViewController *)self identifierBundle];
  v16 = [v15 stringByAppendingString:@".Description"];
  v17 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v17 setAccessibilityIdentifier:v16];

  v19 = [(HRSpeedBumpViewController *)self contentView];
  v18 = [(HRSpeedBumpViewController *)self bodyLabel];
  [v19 addSubview:v18];
}

- (void)_setUpTitleConstraints
{
  v3 = [(HRSpeedBumpViewController *)self titleLabel];
  v4 = [(HRSpeedBumpViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hk_alignHorizontalConstraintsWithView:v4 insets:?];

  v9 = [(HRSpeedBumpViewController *)self titleLabel];
  v5 = [v9 topAnchor];
  v6 = [(HRSpeedBumpViewController *)self contentView];
  v7 = [v6 topAnchor];
  [(HRSpeedBumpViewController *)self contentTop];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  [v8 setActive:1];
}

- (void)_setUpBodyConstraints
{
  v3 = [(HRSpeedBumpViewController *)self bodyLabel];
  v4 = [(HRSpeedBumpViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [v3 hk_alignHorizontalConstraintsWithView:v4 insets:?];

  v9 = [(HRSpeedBumpViewController *)self bodyLabel];
  v5 = [v9 topAnchor];
  v6 = [(HRSpeedBumpViewController *)self titleLabel];
  v7 = [v6 lastBaselineAnchor];
  [(HRSpeedBumpViewController *)self _titleLastBaselineToBodyTop];
  v8 = [v5 constraintEqualToAnchor:v7 constant:?];
  [v8 setActive:1];
}

- (void)_setUpBubbleViews
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HRSpeedBumpViewController *)self item];
  v5 = [v4 bubbles];
  v28 = [v3 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v6 = [(HRSpeedBumpViewController *)self item];
  v7 = [v6 bubbles];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(HRSpeedBumpViewController *)self item];
      v11 = [v10 bubbles];
      v12 = [v11 objectAtIndexedSubscript:v9];

      v13 = [(HRSpeedBumpViewController *)self identifierBundle];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"s.Item%d.Title", ++v9];
      v15 = [v13 stringByAppendingString:v14];

      v16 = [(HRSpeedBumpViewController *)self identifierBundle];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@".Item%d.Description", v9];
      v18 = [v16 stringByAppendingString:v17];

      v19 = objc_opt_class();
      v20 = [v12 title];
      v21 = [v12 body];
      v22 = [v19 createBubbleViewTitledListItem:v20 titleAccessibilityIdentifier:v15 listBody:v21 bodyAccessibilityIdentifier:v18 itemNumber:v9];

      [v22 setHidden:1];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      v23 = [(HRSpeedBumpViewController *)self contentView];
      [v23 addSubview:v22];

      [v28 addObject:v22];
      v24 = [(HRSpeedBumpViewController *)self item];
      v25 = [v24 bubbles];
      v26 = [v25 count];
    }

    while (v26 > v9);
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v28];
  [(HRSpeedBumpViewController *)self setBubbleViews:v27];
}

- (void)_setUpBubbleViewConstraints
{
  v3 = [(HRSpeedBumpViewController *)self bubbleViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    v6 = *MEMORY[0x277D75060];
    v7 = *(MEMORY[0x277D75060] + 8);
    v8 = *(MEMORY[0x277D75060] + 16);
    v9 = *(MEMORY[0x277D75060] + 24);
    do
    {
      v10 = [(HRSpeedBumpViewController *)self bubbleViews];
      v11 = [v10 objectAtIndexedSubscript:v5];

      if (v5)
      {
        v12 = [(HRSpeedBumpViewController *)self bubbleViews];
        v13 = [v12 objectAtIndexedSubscript:v5 - 1];

        v14 = 10.0;
      }

      else
      {
        v15 = [(HRSpeedBumpViewController *)self bodyLabel];

        if (v15)
        {
          [(HRSpeedBumpViewController *)self bodyLabel];
        }

        else
        {
          [(HRSpeedBumpViewController *)self titleLabel];
        }
        v13 = ;
        v14 = 34.0;
      }

      v16 = [v13 lastBaselineAnchor];

      [v11 hk_onboardingListEdgeInsets];
      [v11 setLayoutMargins:?];
      v17 = [v11 bubbleContent];
      v18 = [(HRSpeedBumpViewController *)self titleLabel];
      [v17 hk_alignHorizontalConstraintsWithView:v18 insets:{v6, v7, v8, v9}];

      v19 = [v11 topAnchor];
      v20 = [v19 constraintEqualToAnchor:v16 constant:v14];
      [v20 setActive:1];

      ++v5;
      v21 = [(HRSpeedBumpViewController *)self bubbleViews];
      v22 = [v21 count];
    }

    while (v22 > v5);
  }
}

- (void)_setUpStackedButtonView
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = HRHeartRhythmUIFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ONBOARDING_NEXT" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [HRStackedButtonView buddyStackedButtonViewWithTitles:v5 footerText:0 boldFooterText:0 delegate:self];
  [(HRSpeedBumpViewController *)self setStackedButtonView:v6];

  v7 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [v7 setBlurHidden:0];

  v8 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [v8 setFixedBottomButtonSpacing:1];

  v9 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setStackedButtonViewAsFooterView
{
  v3 = [(HRSpeedBumpViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HRSpeedBumpViewController *)self setFooterView:v3 insets:?];

  v4 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [v4 setClipsToBounds:0];

  v5 = [(HRSpeedBumpViewController *)self stackedButtonView];
  v6 = [(HRSpeedBumpViewController *)self view];
  [v5 alignBlurViewHorizontalConstraintsWithView:v6];

  v7 = objc_alloc(MEMORY[0x277D76220]);
  v8 = [(HRSpeedBumpViewController *)self scrollView];
  v10 = [v7 initWithScrollView:v8 edge:4 style:0];

  v9 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [v9 addInteraction:v10];
}

- (void)_updateContentViewBottomConstraintWithAnchor:(id)a3 constant:(double)a4
{
  v6 = a3;
  v7 = [(HRSpeedBumpViewController *)self contentViewBottomConstraint];
  [v7 setActive:0];

  [(HRSpeedBumpViewController *)self setContentViewBottomConstraint:0];
  v8 = [(HRSpeedBumpViewController *)self contentView];
  v9 = [v8 bottomAnchor];
  v10 = [v9 constraintEqualToAnchor:v6 constant:a4];

  [(HRSpeedBumpViewController *)self setContentViewBottomConstraint:v10];
  v11 = [(HRSpeedBumpViewController *)self contentViewBottomConstraint];
  [v11 setActive:1];
}

- (void)_scrollBubbleViewToVisible:(id)a3
{
  v4 = a3;
  [(HRSpeedBumpViewController *)self initialContentOffset];
  if (v5 == 1.79769313e308)
  {
    v6 = [(HRSpeedBumpViewController *)self scrollView];
    [v6 contentOffset];
    [(HRSpeedBumpViewController *)self setInitialContentOffset:v7];
  }

  v8 = [(HRSpeedBumpViewController *)self scrollView];
  [v8 bounds];
  Height = CGRectGetHeight(v32);
  v10 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [v10 bounds];
  v11 = Height - CGRectGetHeight(v33);

  [v4 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v34.origin.x = v13;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  MaxY = CGRectGetMaxY(v34);
  v21 = [(HRSpeedBumpViewController *)self navigationController];
  v22 = [v21 navigationBar];
  [v22 bounds];
  v23 = MaxY + CGRectGetHeight(v35);

  v24 = v23 - v11 + 20.0;
  if (v24 > 0.0)
  {
    v25 = [(HRSpeedBumpViewController *)self scrollView];
    [v25 contentOffset];
    v27 = v26;
    [(HRSpeedBumpViewController *)self initialContentOffset];
    v29 = v24 + v28;

    v30 = [(HRSpeedBumpViewController *)self scrollView];
    [v30 setContentOffset:1 animated:{v27, v29}];
  }
}

- (double)_titleLastBaselineToBodyTop
{
  v2 = [(HRSpeedBumpViewController *)self titleFont];
  [v2 _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

@end