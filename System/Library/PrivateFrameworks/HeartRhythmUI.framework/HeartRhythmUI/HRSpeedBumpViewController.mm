@interface HRSpeedBumpViewController
- (HRSpeedBumpViewController)initWithSpeedBumpItem:(id)item onboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version;
- (double)_titleLastBaselineToBodyTop;
- (id)identifierBundle;
- (void)_scrollBubbleViewToVisible:(id)visible;
- (void)_setStackedButtonViewAsFooterView;
- (void)_setUpBodyConstraints;
- (void)_setUpBodyLabel;
- (void)_setUpBubbleViewConstraints;
- (void)_setUpBubbleViews;
- (void)_setUpStackedButtonView;
- (void)_setUpTitleConstraints;
- (void)_setUpTitleLabel;
- (void)_updateContentViewBottomConstraintWithAnchor:(id)anchor constant:(double)constant;
- (void)_updateUIWithLatestVisibleBubbleView:(id)view animated:(BOOL)animated;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setUpConstraints;
- (void)setUpUI;
- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index;
- (void)viewDidLoad;
@end

@implementation HRSpeedBumpViewController

- (HRSpeedBumpViewController)initWithSpeedBumpItem:(id)item onboarding:(BOOL)onboarding upgradingFromAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = HRSpeedBumpViewController;
  v10 = [(HRSpeedBumpViewController *)&v13 initForOnboarding:onboardingCopy upgradingFromAlgorithmVersion:version];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
  }

  return v11;
}

- (void)setUpUI
{
  v9.receiver = self;
  v9.super_class = HRSpeedBumpViewController;
  [(HRSpeedBumpViewController *)&v9 setUpUI];
  scrollView = [(HRSpeedBumpViewController *)self scrollView];
  [scrollView setDelegate:self];

  identifierBundle = [(HRSpeedBumpViewController *)self identifierBundle];
  v5 = [identifierBundle stringByAppendingString:@".EntireView"];
  scrollView2 = [(HRSpeedBumpViewController *)self scrollView];
  [scrollView2 setAccessibilityIdentifier:v5];

  [(HRSpeedBumpViewController *)self _setUpTitleLabel];
  item = [(HRSpeedBumpViewController *)self item];
  body = [item body];

  if (body)
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
  item = [(HRSpeedBumpViewController *)self item];
  body = [item body];

  if (body)
  {
    [(HRSpeedBumpViewController *)self _setUpBodyConstraints];
  }

  [(HRSpeedBumpViewController *)self _setUpBubbleViewConstraints];
  contentView = [(HRSpeedBumpViewController *)self contentView];
  _bottomVisibleView = [contentView _bottomVisibleView];

  if ([(HRSpeedBumpViewController *)self isOnboarding])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *MEMORY[0x277D12778];
  }

  bottomAnchor = [_bottomVisibleView bottomAnchor];
  [(HRSpeedBumpViewController *)self _updateContentViewBottomConstraintWithAnchor:bottomAnchor constant:v7];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HRSpeedBumpViewController;
  [(HRSpeedBumpViewController *)&v9 viewDidLoad];
  isOnboarding = [(HRSpeedBumpViewController *)self isOnboarding];
  bubbleViews = [(HRSpeedBumpViewController *)self bubbleViews];
  v5 = bubbleViews;
  if (isOnboarding)
  {
    firstObject = [bubbleViews firstObject];
    [(HRSpeedBumpViewController *)self setLatestVisibleBubbleView:firstObject];

    [(HRSpeedBumpViewController *)self setInitialContentOffset:1.79769313e308];
  }

  else
  {
    lastObject = [bubbleViews lastObject];
    [(HRSpeedBumpViewController *)self setLatestVisibleBubbleView:lastObject];
  }

  latestVisibleBubbleView = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
  [(HRSpeedBumpViewController *)self _updateUIWithLatestVisibleBubbleView:latestVisibleBubbleView animated:0];

  if ([(HRSpeedBumpViewController *)self isOnboarding])
  {
    [(HRSpeedBumpViewController *)self _setUpStackedButtonView];
    [(HRSpeedBumpViewController *)self _setStackedButtonViewAsFooterView];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(HRSpeedBumpViewController *)self initialContentOffset];
  if (v4 == 1.79769313e308)
  {
    scrollView = [(HRSpeedBumpViewController *)self scrollView];
    [scrollView contentOffset];
    [(HRSpeedBumpViewController *)self setInitialContentOffset:v5];
  }
}

- (void)stackedButtonView:(id)view didTapButtonAtIndex:(int64_t)index
{
  if (!index && ![(HRSpeedBumpViewController *)self stateAnimating])
  {
    latestVisibleBubbleView = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
    bubbleViews = [(HRSpeedBumpViewController *)self bubbleViews];
    lastObject = [bubbleViews lastObject];

    if (latestVisibleBubbleView == lastObject)
    {
      delegate = [(HRSpeedBumpViewController *)self delegate];
      [delegate stepForward];
    }

    else
    {
      bubbleViews2 = [(HRSpeedBumpViewController *)self bubbleViews];
      latestVisibleBubbleView2 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
      v10 = [bubbleViews2 indexOfObject:latestVisibleBubbleView2];

      bubbleViews3 = [(HRSpeedBumpViewController *)self bubbleViews];
      v12 = [bubbleViews3 objectAtIndexedSubscript:v10 + 1];
      [(HRSpeedBumpViewController *)self setLatestVisibleBubbleView:v12];

      latestVisibleBubbleView3 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
      [(HRSpeedBumpViewController *)self _updateUIWithLatestVisibleBubbleView:latestVisibleBubbleView3 animated:1];

      latestVisibleBubbleView4 = [(HRSpeedBumpViewController *)self latestVisibleBubbleView];
      bubbleViews4 = [(HRSpeedBumpViewController *)self bubbleViews];
      lastObject2 = [bubbleViews4 lastObject];

      if (latestVisibleBubbleView4 != lastObject2)
      {
        return;
      }

      delegate = [(HRSpeedBumpViewController *)self stackedButtonView];
      buttons = [delegate buttons];
      firstObject = [buttons firstObject];
      v19 = HRHeartRhythmUIFrameworkBundle();
      v20 = [v19 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];
      [firstObject setTitle:v20 forState:0];
    }
  }
}

- (void)_updateUIWithLatestVisibleBubbleView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  isOnboarding = [(HRSpeedBumpViewController *)self isOnboarding];
  v8 = MEMORY[0x277D127A0];
  if (!isOnboarding)
  {
    v8 = MEMORY[0x277D12778];
  }

  v9 = *v8;
  bottomAnchor = [viewCopy bottomAnchor];
  [(HRSpeedBumpViewController *)self _updateContentViewBottomConstraintWithAnchor:bottomAnchor constant:v9];

  view = [(HRSpeedBumpViewController *)self view];
  [view layoutIfNeeded];

  if (animatedCopy)
  {
    [(HRSpeedBumpViewController *)self _scrollBubbleViewToVisible:viewCopy];
    if (viewCopy)
    {
      [viewCopy setAlpha:0.0];
      [(HRSpeedBumpViewController *)self setStateAnimating:1];
      v12 = objc_alloc(MEMORY[0x277D75D40]);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75__HRSpeedBumpViewController__updateUIWithLatestVisibleBubbleView_animated___block_invoke;
      v24[3] = &unk_2796FB778;
      v25 = viewCopy;
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
    bubbleViews = [(HRSpeedBumpViewController *)self bubbleViews];
    v15 = [bubbleViews indexOfObject:viewCopy];

    bubbleViews2 = [(HRSpeedBumpViewController *)self bubbleViews];
    v17 = [bubbleViews2 count];

    if (v17)
    {
      v18 = 0;
      do
      {
        bubbleViews3 = [(HRSpeedBumpViewController *)self bubbleViews];
        v20 = [bubbleViews3 objectAtIndexedSubscript:v18];
        [v20 setHidden:v18 > v15];

        ++v18;
        bubbleViews4 = [(HRSpeedBumpViewController *)self bubbleViews];
        v22 = [bubbleViews4 count];
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
  item = [(HRSpeedBumpViewController *)self item];
  v4 = [v2 healthAccessibilityIdentifier:objc_msgSend(item suffix:{"category"), @"Onboarding.FourThings"}];

  return v4;
}

- (void)_setUpTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRSpeedBumpViewController *)self setTitleLabel:v3];

  item = [(HRSpeedBumpViewController *)self item];
  title = [item title];
  titleLabel = [(HRSpeedBumpViewController *)self titleLabel];
  [titleLabel setText:title];

  titleLabel2 = [(HRSpeedBumpViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:4];

  titleFont = [(HRSpeedBumpViewController *)self titleFont];
  titleLabel3 = [(HRSpeedBumpViewController *)self titleLabel];
  [titleLabel3 setFont:titleFont];

  titleLabel4 = [(HRSpeedBumpViewController *)self titleLabel];
  [titleLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel5 = [(HRSpeedBumpViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  identifierBundle = [(HRSpeedBumpViewController *)self identifierBundle];
  v13 = [identifierBundle stringByAppendingString:@".Title"];
  titleLabel6 = [(HRSpeedBumpViewController *)self titleLabel];
  [titleLabel6 setAccessibilityIdentifier:v13];

  contentView = [(HRSpeedBumpViewController *)self contentView];
  titleLabel7 = [(HRSpeedBumpViewController *)self titleLabel];
  [contentView addSubview:titleLabel7];
}

- (void)_setUpBodyLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRSpeedBumpViewController *)self setBodyLabel:v3];

  item = [(HRSpeedBumpViewController *)self item];
  body = [item body];
  bodyLabel = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel setText:body];

  bodyLabel2 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel2 setTextAlignment:4];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  bodyLabel3 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel3 setTextColor:secondaryLabelColor];

  _bodyFont = [(HRSpeedBumpViewController *)self _bodyFont];
  bodyLabel4 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel4 setFont:_bodyFont];

  bodyLabel5 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel5 setAdjustsFontForContentSizeCategory:1];

  bodyLabel6 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyLabel7 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel7 setNumberOfLines:0];

  identifierBundle = [(HRSpeedBumpViewController *)self identifierBundle];
  v16 = [identifierBundle stringByAppendingString:@".Description"];
  bodyLabel8 = [(HRSpeedBumpViewController *)self bodyLabel];
  [bodyLabel8 setAccessibilityIdentifier:v16];

  contentView = [(HRSpeedBumpViewController *)self contentView];
  bodyLabel9 = [(HRSpeedBumpViewController *)self bodyLabel];
  [contentView addSubview:bodyLabel9];
}

- (void)_setUpTitleConstraints
{
  titleLabel = [(HRSpeedBumpViewController *)self titleLabel];
  contentView = [(HRSpeedBumpViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [titleLabel hk_alignHorizontalConstraintsWithView:contentView insets:?];

  titleLabel2 = [(HRSpeedBumpViewController *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView2 = [(HRSpeedBumpViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  [(HRSpeedBumpViewController *)self contentTop];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v8 setActive:1];
}

- (void)_setUpBodyConstraints
{
  bodyLabel = [(HRSpeedBumpViewController *)self bodyLabel];
  contentView = [(HRSpeedBumpViewController *)self contentView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [bodyLabel hk_alignHorizontalConstraintsWithView:contentView insets:?];

  bodyLabel2 = [(HRSpeedBumpViewController *)self bodyLabel];
  topAnchor = [bodyLabel2 topAnchor];
  titleLabel = [(HRSpeedBumpViewController *)self titleLabel];
  lastBaselineAnchor = [titleLabel lastBaselineAnchor];
  [(HRSpeedBumpViewController *)self _titleLastBaselineToBodyTop];
  v8 = [topAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v8 setActive:1];
}

- (void)_setUpBubbleViews
{
  v3 = MEMORY[0x277CBEB18];
  item = [(HRSpeedBumpViewController *)self item];
  bubbles = [item bubbles];
  v28 = [v3 arrayWithCapacity:{objc_msgSend(bubbles, "count")}];

  item2 = [(HRSpeedBumpViewController *)self item];
  bubbles2 = [item2 bubbles];
  v8 = [bubbles2 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      item3 = [(HRSpeedBumpViewController *)self item];
      bubbles3 = [item3 bubbles];
      v12 = [bubbles3 objectAtIndexedSubscript:v9];

      identifierBundle = [(HRSpeedBumpViewController *)self identifierBundle];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"s.Item%d.Title", ++v9];
      v15 = [identifierBundle stringByAppendingString:v14];

      identifierBundle2 = [(HRSpeedBumpViewController *)self identifierBundle];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@".Item%d.Description", v9];
      v18 = [identifierBundle2 stringByAppendingString:v17];

      v19 = objc_opt_class();
      title = [v12 title];
      body = [v12 body];
      v22 = [v19 createBubbleViewTitledListItem:title titleAccessibilityIdentifier:v15 listBody:body bodyAccessibilityIdentifier:v18 itemNumber:v9];

      [v22 setHidden:1];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(HRSpeedBumpViewController *)self contentView];
      [contentView addSubview:v22];

      [v28 addObject:v22];
      item4 = [(HRSpeedBumpViewController *)self item];
      bubbles4 = [item4 bubbles];
      v26 = [bubbles4 count];
    }

    while (v26 > v9);
  }

  v27 = [MEMORY[0x277CBEA60] arrayWithArray:v28];
  [(HRSpeedBumpViewController *)self setBubbleViews:v27];
}

- (void)_setUpBubbleViewConstraints
{
  bubbleViews = [(HRSpeedBumpViewController *)self bubbleViews];
  v4 = [bubbleViews count];

  if (v4)
  {
    v5 = 0;
    v6 = *MEMORY[0x277D75060];
    v7 = *(MEMORY[0x277D75060] + 8);
    v8 = *(MEMORY[0x277D75060] + 16);
    v9 = *(MEMORY[0x277D75060] + 24);
    do
    {
      bubbleViews2 = [(HRSpeedBumpViewController *)self bubbleViews];
      v11 = [bubbleViews2 objectAtIndexedSubscript:v5];

      if (v5)
      {
        bubbleViews3 = [(HRSpeedBumpViewController *)self bubbleViews];
        v13 = [bubbleViews3 objectAtIndexedSubscript:v5 - 1];

        v14 = 10.0;
      }

      else
      {
        bodyLabel = [(HRSpeedBumpViewController *)self bodyLabel];

        if (bodyLabel)
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

      lastBaselineAnchor = [v13 lastBaselineAnchor];

      [v11 hk_onboardingListEdgeInsets];
      [v11 setLayoutMargins:?];
      bubbleContent = [v11 bubbleContent];
      titleLabel = [(HRSpeedBumpViewController *)self titleLabel];
      [bubbleContent hk_alignHorizontalConstraintsWithView:titleLabel insets:{v6, v7, v8, v9}];

      topAnchor = [v11 topAnchor];
      v20 = [topAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v14];
      [v20 setActive:1];

      ++v5;
      bubbleViews4 = [(HRSpeedBumpViewController *)self bubbleViews];
      v22 = [bubbleViews4 count];
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

  stackedButtonView = [(HRSpeedBumpViewController *)self stackedButtonView];
  [stackedButtonView setBlurHidden:0];

  stackedButtonView2 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [stackedButtonView2 setFixedBottomButtonSpacing:1];

  stackedButtonView3 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [stackedButtonView3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setStackedButtonViewAsFooterView
{
  stackedButtonView = [(HRSpeedBumpViewController *)self stackedButtonView];
  HKHealthUIBuddyDirectionalEdgeInsets();
  [(HRSpeedBumpViewController *)self setFooterView:stackedButtonView insets:?];

  stackedButtonView2 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [stackedButtonView2 setClipsToBounds:0];

  stackedButtonView3 = [(HRSpeedBumpViewController *)self stackedButtonView];
  view = [(HRSpeedBumpViewController *)self view];
  [stackedButtonView3 alignBlurViewHorizontalConstraintsWithView:view];

  v7 = objc_alloc(MEMORY[0x277D76220]);
  scrollView = [(HRSpeedBumpViewController *)self scrollView];
  v10 = [v7 initWithScrollView:scrollView edge:4 style:0];

  stackedButtonView4 = [(HRSpeedBumpViewController *)self stackedButtonView];
  [stackedButtonView4 addInteraction:v10];
}

- (void)_updateContentViewBottomConstraintWithAnchor:(id)anchor constant:(double)constant
{
  anchorCopy = anchor;
  contentViewBottomConstraint = [(HRSpeedBumpViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setActive:0];

  [(HRSpeedBumpViewController *)self setContentViewBottomConstraint:0];
  contentView = [(HRSpeedBumpViewController *)self contentView];
  bottomAnchor = [contentView bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:anchorCopy constant:constant];

  [(HRSpeedBumpViewController *)self setContentViewBottomConstraint:v10];
  contentViewBottomConstraint2 = [(HRSpeedBumpViewController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint2 setActive:1];
}

- (void)_scrollBubbleViewToVisible:(id)visible
{
  visibleCopy = visible;
  [(HRSpeedBumpViewController *)self initialContentOffset];
  if (v5 == 1.79769313e308)
  {
    scrollView = [(HRSpeedBumpViewController *)self scrollView];
    [scrollView contentOffset];
    [(HRSpeedBumpViewController *)self setInitialContentOffset:v7];
  }

  scrollView2 = [(HRSpeedBumpViewController *)self scrollView];
  [scrollView2 bounds];
  Height = CGRectGetHeight(v32);
  stackedButtonView = [(HRSpeedBumpViewController *)self stackedButtonView];
  [stackedButtonView bounds];
  v11 = Height - CGRectGetHeight(v33);

  [visibleCopy frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v34.origin.x = v13;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  MaxY = CGRectGetMaxY(v34);
  navigationController = [(HRSpeedBumpViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  v23 = MaxY + CGRectGetHeight(v35);

  v24 = v23 - v11 + 20.0;
  if (v24 > 0.0)
  {
    scrollView3 = [(HRSpeedBumpViewController *)self scrollView];
    [scrollView3 contentOffset];
    v27 = v26;
    [(HRSpeedBumpViewController *)self initialContentOffset];
    v29 = v24 + v28;

    scrollView4 = [(HRSpeedBumpViewController *)self scrollView];
    [scrollView4 setContentOffset:1 animated:{v27, v29}];
  }
}

- (double)_titleLastBaselineToBodyTop
{
  titleFont = [(HRSpeedBumpViewController *)self titleFont];
  [titleFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

@end