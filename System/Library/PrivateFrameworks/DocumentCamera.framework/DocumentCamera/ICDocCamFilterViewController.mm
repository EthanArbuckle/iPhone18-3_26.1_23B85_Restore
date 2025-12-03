@interface ICDocCamFilterViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)contentSize;
- (DCSinglePixelHorizontalLineView)horizontalLineView;
- (DCSinglePixelVerticalLineView)verticalLineView;
- (ICDocCamFilterViewController)init;
- (ICDocCamFilterViewDelegate)filterViewDelegate;
- (UIScrollView)scrollView;
- (UIView)backgroundView;
- (id)filterButtonFromLocation:(CGPoint)location;
- (void)applyToAll:(signed __int16)all;
- (void)centerContent:(BOOL)content isPortrait:(BOOL)portrait;
- (void)dealloc;
- (void)filterSelected:(id)selected;
- (void)initializeFilters;
- (void)longPressGesture:(id)gesture;
- (void)prepareToAnimateIn:(BOOL)in;
- (void)setBottomContentInset:(double)inset;
- (void)setCurrentFilterType:(signed __int16)type;
- (void)setUpScrollView;
- (void)updateConstraints;
- (void)updateConstraintsPad;
- (void)updateConstraintsPhone;
- (void)updateScrollViewContentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICDocCamFilterViewController

- (ICDocCamFilterViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6.receiver = self;
  v6.super_class = ICDocCamFilterViewController;
  v4 = [(ICDocCamFilterViewController *)&v6 initWithNibName:@"ICDocCamFilterViewController" bundle:v3];

  return v4;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = ICDocCamFilterViewController;
  [(ICDocCamFilterViewController *)&v17 viewDidLoad];
  view = [(ICDocCamFilterViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  view2 = [(ICDocCamFilterViewController *)self view];
  [view2 setAutoresizingMask:18];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view3 = [(ICDocCamFilterViewController *)self view];
  [view3 setBackgroundColor:clearColor];

  scrollView = [(ICDocCamFilterViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(ICDocCamFilterViewController *)self scrollView];
  [scrollView2 setAutoresizingMask:0];

  scrollView3 = [(ICDocCamFilterViewController *)self scrollView];
  [scrollView3 setScrollEnabled:0];

  backgroundView = [(ICDocCamFilterViewController *)self backgroundView];
  [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(ICDocCamFilterViewController *)self initializeFilters];
  v11 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_longPressGesture_];
  [(ICDocCamFilterViewController *)self setLongPressGesture:v11];

  longPressGesture = [(ICDocCamFilterViewController *)self longPressGesture];
  [longPressGesture setDelegate:self];

  view4 = [(ICDocCamFilterViewController *)self view];
  longPressGesture2 = [(ICDocCamFilterViewController *)self longPressGesture];
  [view4 addGestureRecognizer:longPressGesture2];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  backgroundView2 = [(ICDocCamFilterViewController *)self backgroundView];
  [backgroundView2 setBackgroundColor:systemBackgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ICDocCamFilterViewController;
  [(ICDocCamFilterViewController *)&v3 viewWillAppear:appear];
}

- (void)centerContent:(BOOL)content isPortrait:(BOOL)portrait
{
  if (content)
  {
    portraitCopy = portrait;
    scrollView = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView contentSize];
    v8 = v7;
    v10 = v9;

    scrollView2 = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView2 bounds];
    v13 = v12;
    v15 = v14;

    if (portraitCopy)
    {
      if (v8 >= v13)
      {
        v16 = -0.0;
      }

      else
      {
        v16 = (v13 - v8) * -0.5;
      }

      scrollView3 = [(ICDocCamFilterViewController *)self scrollView];
      [scrollView3 setContentOffset:{v16, 0.0}];
    }

    else
    {
      if (v10 >= v15)
      {
        v17 = -0.0;
      }

      else
      {
        v17 = (v15 - v10) * -0.5;
      }

      scrollView3 = [(ICDocCamFilterViewController *)self navigationController];
      navigationBar = [scrollView3 navigationBar];
      [navigationBar bounds];
      MaxY = CGRectGetMaxY(v25);
      [(ICDocCamFilterViewController *)self bottomContentInset];
      v21 = v17 + (MaxY - v20) * -0.5;
      scrollView4 = [(ICDocCamFilterViewController *)self scrollView];
      [scrollView4 setContentOffset:{0.0, v21}];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICDocCamFilterViewController;
  [(ICDocCamFilterViewController *)&v8 viewDidLayoutSubviews];
  [(ICDocCamFilterViewController *)self updateScrollViewContentSize];
  [(ICDocCamFilterViewController *)self updateConstraints];
  [(ICDocCamFilterViewController *)self setUpScrollView];
  v6 = 0;
  v7 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v7 andEffectiveInterfaceIdiom:&v6];
  v3 = v6 == 0;
  v4 = ([(UIViewController *)self dc_effectiveInterfaceOrientation]- 1) < 2;
  view = [(ICDocCamFilterViewController *)self view];
  [view layoutIfNeeded];

  [(ICDocCamFilterViewController *)self centerContent:v3 isPortrait:v4];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = ICDocCamFilterViewController;
  coordinatorCopy = coordinator;
  [(ICDocCamFilterViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(ICDocCamFilterViewController *)self setTransitioning:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__ICDocCamFilterViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_278F92D48;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_7 completion:v8];
}

uint64_t __83__ICDocCamFilterViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransitioning:0];
  v5 = 0;
  v6 = 0;
  [*(a1 + 32) dc_getEffectiveInterfaceOrientation:&v6 andEffectiveInterfaceIdiom:&v5];
  v2 = v5 == 0;
  v3 = ([*(a1 + 32) dc_effectiveInterfaceOrientation] - 1) < 2;
  [*(a1 + 32) updateConstraints];
  [*(a1 + 32) setUpScrollView];
  return [*(a1 + 32) centerContent:v2 isPortrait:v3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamFilterViewController;
  [(ICDocCamFilterViewController *)&v4 dealloc];
}

- (void)prepareToAnimateIn:(BOOL)in
{
  inCopy = in;
  v17 = 0;
  v18 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v18 andEffectiveInterfaceIdiom:&v17];
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ((v18 - 3) >= 2 ? (v5 = v17 == 1) : (v5 = 1), v5))
  {
    [(ICDocCamFilterViewController *)self contentSize];
    [(ICDocCamFilterViewController *)self setHorizontalOffset:?];
    v7 = 0.0;
  }

  else
  {
    [(ICDocCamFilterViewController *)self setHorizontalOffset:0.0];
    [(ICDocCamFilterViewController *)self contentSize];
    v7 = v6;
  }

  [(ICDocCamFilterViewController *)self setBottomOffset:v7];
  [(ICDocCamFilterViewController *)self updateConstraints];
  v8 = MEMORY[0x277D75D18];
  if (inCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke;
    v16[3] = &unk_278F92C70;
    v16[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v16];
    [(ICDocCamFilterViewController *)self setHorizontalOffset:0.0];
    [(ICDocCamFilterViewController *)self setBottomOffset:0.0];
    [(ICDocCamFilterViewController *)self updateConstraints];
    v8 = MEMORY[0x277D75D18];
    v14[4] = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_2;
    v15[3] = &unk_278F92C70;
    v15[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_3;
    v14[3] = &unk_278F92D20;
    v9 = 0.05;
    v10 = v15;
    v11 = v14;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_4;
    v13[3] = &unk_278F92C70;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_5;
    v12[3] = &unk_278F92D20;
    v12[4] = self;
    v9 = 0.15;
    v10 = v13;
    v11 = v12;
  }

  [v8 animateWithDuration:v10 animations:v11 completion:v9];
}

void __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) horizontalLineView];
  v3 = [v2 layer];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];

  v7 = [*(a1 + 32) verticalLineView];
  v5 = [v7 layer];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];
}

void __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) horizontalLineView];
  v3 = [v2 layer];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];

  v7 = [*(a1 + 32) verticalLineView];
  v5 = [v7 layer];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];
}

void __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) horizontalLineView];
  v3 = [v2 layer];
  [v3 setOpacity:0.0];

  v5 = [*(a1 + 32) verticalLineView];
  v4 = [v5 layer];
  [v4 setOpacity:0.0];
}

void __51__ICDocCamFilterViewController_prepareToAnimateIn___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) horizontalLineView];
  v3 = [v2 layer];
  [v3 setOpacity:0.0];

  v5 = [*(a1 + 32) verticalLineView];
  v4 = [v5 layer];
  [v4 setOpacity:0.0];
}

- (void)setBottomContentInset:(double)inset
{
  if (self->_bottomContentInset != inset)
  {
    self->_bottomContentInset = inset;
    view = [(ICDocCamFilterViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)updateConstraints
{
  layoutConstraints = [(ICDocCamFilterViewController *)self layoutConstraints];

  if (layoutConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(ICDocCamFilterViewController *)self layoutConstraints];
    [v4 deactivateConstraints:layoutConstraints2];

    [(ICDocCamFilterViewController *)self setLayoutConstraints:0];
  }

  [(ICDocCamFilterViewController *)self setScrollViewBottomConstraint:0];
  v6 = 0;
  v7 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v7 andEffectiveInterfaceIdiom:&v6];
  if ((DCDebugInterfaceEnabled() & 1) != 0 || v6 == 1)
  {
    [(ICDocCamFilterViewController *)self updateConstraintsPad];
  }

  else
  {
    [(ICDocCamFilterViewController *)self updateConstraintsPhone];
  }
}

- (void)updateConstraintsPad
{
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  view = [(ICDocCamFilterViewController *)self view];
  [view bounds];
  v5 = v4;

  scrollView = [(ICDocCamFilterViewController *)self scrollView];
  [scrollView contentSize];
  v8 = v7;

  v9 = (v5 - v8) * 0.5;
  navigationController = [(ICDocCamFilterViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  MaxY = CGRectGetMaxY(v54);
  [(ICDocCamFilterViewController *)self bottomContentInset];
  v14 = (MaxY - v13) * 0.5;

  backgroundView = [(ICDocCamFilterViewController *)self backgroundView];
  widthAnchor = [backgroundView widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:128.0];
  [v52 addObject:v17];

  backgroundView2 = [(ICDocCamFilterViewController *)self backgroundView];
  trailingAnchor = [backgroundView2 trailingAnchor];
  view2 = [(ICDocCamFilterViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  [(ICDocCamFilterViewController *)self horizontalOffset];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
  [v52 addObject:v22];

  backgroundView3 = [(ICDocCamFilterViewController *)self backgroundView];
  topAnchor = [backgroundView3 topAnchor];
  view3 = [(ICDocCamFilterViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v52 addObject:v27];

  backgroundView4 = [(ICDocCamFilterViewController *)self backgroundView];
  bottomAnchor = [backgroundView4 bottomAnchor];
  view4 = [(ICDocCamFilterViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v52 addObject:v32];

  scrollView2 = [(ICDocCamFilterViewController *)self scrollView];
  widthAnchor2 = [scrollView2 widthAnchor];
  v35 = [widthAnchor2 constraintEqualToConstant:60.0];
  [v52 addObject:v35];

  scrollView3 = [(ICDocCamFilterViewController *)self scrollView];
  trailingAnchor3 = [scrollView3 trailingAnchor];
  view5 = [(ICDocCamFilterViewController *)self view];
  trailingAnchor4 = [view5 trailingAnchor];
  [(ICDocCamFilterViewController *)self horizontalOffset];
  v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v40 + -34.0];
  [v52 addObject:v41];

  scrollView4 = [(ICDocCamFilterViewController *)self scrollView];
  topAnchor3 = [scrollView4 topAnchor];
  view6 = [(ICDocCamFilterViewController *)self view];
  topAnchor4 = [view6 topAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v9 + v14];
  [v52 addObject:v46];

  scrollView5 = [(ICDocCamFilterViewController *)self scrollView];
  bottomAnchor3 = [scrollView5 bottomAnchor];
  view7 = [(ICDocCamFilterViewController *)self view];
  bottomAnchor4 = [view7 bottomAnchor];
  v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v14 - v9];
  [v52 addObject:v51];

  [MEMORY[0x277CCAAD0] activateConstraints:v52];
  [(ICDocCamFilterViewController *)self setLayoutConstraints:v52];
}

- (CGSize)contentSize
{
  view = [(ICDocCamFilterViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  v17 = 0;
  v18 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v18 andEffectiveInterfaceIdiom:&v17];
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ((v18 - 3) >= 2 ? (v8 = v17 == 1) : (v8 = 1), v8))
  {
    v9 = DCDebugInterfaceEnabled();
    if (v17 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = 34.0;
    if (!v10)
    {
      v11 = 16.0;
    }

    v12 = v11 * 2.0 + 60.0;
    view2 = [(ICDocCamFilterViewController *)self view];
    [view2 dc_directionalSafeAreaInsets];
    v5 = v12 + v14;
  }

  else
  {
    *&v7 = 100.0;
  }

  v15 = v5;
  v16 = *&v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateConstraintsPhone
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = 0;
  v92 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v92 andEffectiveInterfaceIdiom:&v91];
  v4 = v92 - 3;
  backgroundView = [(ICDocCamFilterViewController *)self backgroundView];
  v6 = backgroundView;
  if (v4 > 1)
  {
    heightAnchor = [backgroundView heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:100.0];
    [v3 addObject:v35];

    backgroundView2 = [(ICDocCamFilterViewController *)self backgroundView];
    leadingAnchor = [backgroundView2 leadingAnchor];
    view = [(ICDocCamFilterViewController *)self view];
    leadingAnchor2 = [view leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v3 addObject:v40];

    backgroundView3 = [(ICDocCamFilterViewController *)self backgroundView];
    trailingAnchor = [backgroundView3 trailingAnchor];
    view2 = [(ICDocCamFilterViewController *)self view];
    trailingAnchor2 = [view2 trailingAnchor];
    v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v3 addObject:v45];

    backgroundView4 = [(ICDocCamFilterViewController *)self backgroundView];
    bottomAnchor = [backgroundView4 bottomAnchor];
    view3 = [(ICDocCamFilterViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    [(ICDocCamFilterViewController *)self bottomOffset];
    v51 = v50;
    [(ICDocCamFilterViewController *)self bottomContentInset];
    v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v51 - v52];
    [v3 addObject:v53];

    scrollView = [(ICDocCamFilterViewController *)self scrollView];
    heightAnchor2 = [scrollView heightAnchor];
    v56 = [heightAnchor2 constraintEqualToConstant:60.0];
    [v3 addObject:v56];

    scrollView2 = [(ICDocCamFilterViewController *)self scrollView];
    leadingAnchor3 = [scrollView2 leadingAnchor];
    view4 = [(ICDocCamFilterViewController *)self view];
    leadingAnchor4 = [view4 leadingAnchor];
    v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v3 addObject:v61];

    scrollView3 = [(ICDocCamFilterViewController *)self scrollView];
    trailingAnchor3 = [scrollView3 trailingAnchor];
    view5 = [(ICDocCamFilterViewController *)self view];
    trailingAnchor4 = [view5 trailingAnchor];
    v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v3 addObject:v66];

    scrollView4 = [(ICDocCamFilterViewController *)self scrollView];
    bottomAnchor3 = [scrollView4 bottomAnchor];
    view6 = [(ICDocCamFilterViewController *)self view];
    bottomAnchor4 = [view6 bottomAnchor];
    [(ICDocCamFilterViewController *)self bottomOffset];
    v72 = v71;
    [(ICDocCamFilterViewController *)self bottomContentInset];
    v74 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v72 - (v73 + 28.0)];
    [(ICDocCamFilterViewController *)self setScrollViewBottomConstraint:v74];

    scrollViewBottomConstraint = [(ICDocCamFilterViewController *)self scrollViewBottomConstraint];
    [v3 addObject:scrollViewBottomConstraint];
  }

  else
  {
    widthAnchor = [backgroundView widthAnchor];
    view7 = [(ICDocCamFilterViewController *)self view];
    [view7 dc_directionalSafeAreaInsets];
    v10 = [widthAnchor constraintEqualToConstant:v9 + 92.0];
    [v3 addObject:v10];

    backgroundView5 = [(ICDocCamFilterViewController *)self backgroundView];
    trailingAnchor5 = [backgroundView5 trailingAnchor];
    view8 = [(ICDocCamFilterViewController *)self view];
    trailingAnchor6 = [view8 trailingAnchor];
    [(ICDocCamFilterViewController *)self horizontalOffset];
    v15 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:?];
    [v3 addObject:v15];

    backgroundView6 = [(ICDocCamFilterViewController *)self backgroundView];
    topAnchor = [backgroundView6 topAnchor];
    view9 = [(ICDocCamFilterViewController *)self view];
    topAnchor2 = [view9 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v3 addObject:v20];

    backgroundView7 = [(ICDocCamFilterViewController *)self backgroundView];
    bottomAnchor5 = [backgroundView7 bottomAnchor];
    view10 = [(ICDocCamFilterViewController *)self view];
    bottomAnchor6 = [view10 bottomAnchor];
    v25 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v3 addObject:v25];

    scrollView5 = [(ICDocCamFilterViewController *)self scrollView];
    widthAnchor2 = [scrollView5 widthAnchor];
    v28 = [widthAnchor2 constraintEqualToConstant:60.0];
    [v3 addObject:v28];

    view11 = [(ICDocCamFilterViewController *)self view];
    [view11 dc_directionalSafeAreaInsets];
    if (v30 == 0.0)
    {
      v33 = 16.0;
    }

    else
    {
      view12 = [(ICDocCamFilterViewController *)self view];
      [view12 dc_directionalSafeAreaInsets];
      v33 = v32;
    }

    scrollView6 = [(ICDocCamFilterViewController *)self scrollView];
    trailingAnchor7 = [scrollView6 trailingAnchor];
    view13 = [(ICDocCamFilterViewController *)self view];
    trailingAnchor8 = [view13 trailingAnchor];
    [(ICDocCamFilterViewController *)self horizontalOffset];
    v81 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:v80 - v33];
    [v3 addObject:v81];

    scrollView7 = [(ICDocCamFilterViewController *)self scrollView];
    topAnchor3 = [scrollView7 topAnchor];
    view14 = [(ICDocCamFilterViewController *)self view];
    topAnchor4 = [view14 topAnchor];
    v86 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v3 addObject:v86];

    scrollViewBottomConstraint = [(ICDocCamFilterViewController *)self scrollView];
    bottomAnchor7 = [scrollViewBottomConstraint bottomAnchor];
    view15 = [(ICDocCamFilterViewController *)self view];
    bottomAnchor8 = [view15 bottomAnchor];
    v90 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    [v3 addObject:v90];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  [(ICDocCamFilterViewController *)self setLayoutConstraints:v3];
}

- (void)filterSelected:(id)selected
{
  v24 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  currentFilterType = [(ICDocCamFilterViewController *)self currentFilterType];
  if (currentFilterType != [selectedCopy filterType])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    filterButtons = [(ICDocCamFilterViewController *)self filterButtons];
    v7 = [filterButtons countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(filterButtons);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if ([v10 isSelected])
          {
            v7 = v10;
            [v7 setSelected:0];
            goto LABEL_12;
          }
        }

        v7 = [filterButtons countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [selectedCopy setSelected:1];
    objc_initWeak(&location, self);
    objc_initWeak(&from, selectedCopy);
    objc_initWeak(&v16, v7);
    v11 = dispatch_time(0, 50000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__ICDocCamFilterViewController_filterSelected___block_invoke;
    v12[3] = &unk_278F935C8;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    objc_copyWeak(&v15, &v16);
    dispatch_after(v11, MEMORY[0x277D85CD0], v12);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __47__ICDocCamFilterViewController_filterSelected___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = [WeakRetained filterViewDelegate];
  v4 = objc_loadWeakRetained(a1 + 5);
  v5 = [v3 filterViewControllerDidSelectFilter:{objc_msgSend(v4, "filterType")}];

  v6 = objc_loadWeakRetained(a1 + 5);
  v9 = v6;
  if (v5)
  {
    v7 = [v6 filterType];
    v8 = objc_loadWeakRetained(a1 + 4);
    [v8 setCurrentFilterType:v7];
  }

  else
  {
    [v6 setSelected:0];

    v9 = objc_loadWeakRetained(a1 + 6);
    [v9 setSelected:1];
  }
}

- (void)initializeFilters
{
  filterButtons = [(ICDocCamFilterViewController *)self filterButtons];

  if (!filterButtons)
  {
    scrollView = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView setShowsVerticalScrollIndicator:0];

    scrollView2 = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView2 setShowsHorizontalScrollIndicator:0];

    scrollView3 = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView3 setDelegate:self];

    scrollView4 = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView4 setClipsToBounds:0];

    scrollView5 = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView5 setDelaysContentTouches:0];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; i != 4; ++i)
    {
      v10 = [ICDocCamFilterButton filterButtonWithType:word_249307230[i]];
      [v10 addTarget:self action:sel_filterSelected_ forControlEvents:64];
      [v12 addObject:v10];
      scrollView6 = [(ICDocCamFilterViewController *)self scrollView];
      [scrollView6 addSubview:v10];
    }

    [(ICDocCamFilterViewController *)self setFilterButtons:v12];
    [(ICDocCamFilterViewController *)self setCurrentFilterType:[(ICDocCamFilterViewController *)self currentFilterType]];
  }
}

- (void)updateScrollViewContentSize
{
  v44 = 0;
  v45 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v45 andEffectiveInterfaceIdiom:&v44];
  if ((DCDebugInterfaceEnabled() & 1) != 0 || v44 == 1)
  {
    v21 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);
    filterButtons = [(ICDocCamFilterViewController *)self filterButtons];
    v24 = [filterButtons count];

    if (v24)
    {
      v25 = 0;
      do
      {
        filterButtons2 = [(ICDocCamFilterViewController *)self filterButtons];
        v27 = [filterButtons2 objectAtIndexedSubscript:v25];

        [v27 bounds];
        v29 = v28;
        filterButtons3 = [(ICDocCamFilterViewController *)self filterButtons];
        v31 = [filterButtons3 count] - 1;

        if (v31 <= v25)
        {
          v32 = v29;
        }

        else
        {
          v32 = 101.0;
        }

        v22 = v22 + v32;

        ++v25;
        filterButtons4 = [(ICDocCamFilterViewController *)self filterButtons];
        v34 = [filterButtons4 count];
      }

      while (v34 > v25);
    }
  }

  else
  {
    v3 = 20.0;
    if ((v45 - 3) <= 1)
    {
      view = [(ICDocCamFilterViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      [safeAreaLayoutGuide layoutFrame];
      Height = CGRectGetHeight(v46);

      if (Height > 322.0)
      {
        v3 = 20.0;
      }

      else
      {
        v3 = 8.0;
      }
    }

    view2 = [(ICDocCamFilterViewController *)self view];
    [view2 bounds];
    v9 = v8;
    v11 = v10;

    navigationController = [(ICDocCamFilterViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v14 = CGRectGetMaxY(v47) + v3 * 2.0;
    [(ICDocCamFilterViewController *)self bottomContentInset];
    v16 = v14 + v15;

    [(ICDocCamFilterViewController *)self bottomContentInset];
    v18 = v11 > 256.0 && v17 == 0.0;
    v19 = v16 + 8.0;
    if (!v18)
    {
      v19 = v16;
    }

    v20 = -20.0;
    if (v9 == 320.0)
    {
      v20 = -8.0;
    }

    v21 = v9 + v20 * 2.0;
    v22 = v11 - v19;
  }

  filterButtons5 = [(ICDocCamFilterViewController *)self filterButtons];
  v36 = [filterButtons5 objectAtIndexedSubscript:0];

  if (v44)
  {
    [v36 size];
    v38 = v37;
    scrollView = [(ICDocCamFilterViewController *)self scrollView];
  }

  else
  {
    v40 = v45 - 1;
    [v36 size];
    v38 = v41;
    v43 = v42;
    scrollView = [(ICDocCamFilterViewController *)self scrollView];
    if (v40 <= 1)
    {
      v38 = v21;
      v22 = v43;
    }
  }

  [scrollView setContentSize:{v38, v22}];
}

- (void)setUpScrollView
{
  v49 = 0;
  v50 = 0;
  [(UIViewController *)self dc_getEffectiveInterfaceOrientation:&v50 andEffectiveInterfaceIdiom:&v49];
  v3 = MEMORY[0x277CBF3A8];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v5 = v49;
  if ((v50 - 3) <= 1 && v49 == 0)
  {
    view = [(ICDocCamFilterViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    Height = CGRectGetHeight(v51);

    v12 = Height > 322.0;
    if (Height > 322.0)
    {
      v8 = 44.0;
    }

    else
    {
      v8 = 40.0;
    }

    v5 = v49;
    if (v12)
    {
      v7 = 22.0;
    }

    else
    {
      v7 = 26.0;
    }
  }

  else
  {
    v7 = 8.0;
    v8 = 60.0;
  }

  v13 = *v3;
  v14 = v3[1];
  if (v5)
  {
    dc_isRTL = 0;
    v16 = 16.0;
    v17 = v3[1];
    v18 = *v3;
  }

  else
  {
    scrollView = [(ICDocCamFilterViewController *)self scrollView];
    [scrollView contentSize];
    v21 = v20;
    v23 = v22;

    if ((v50 - 1) > 1)
    {
      v25 = [MEMORY[0x277D74300] systemFontOfSize:11.0];

      filterButtons = [(ICDocCamFilterViewController *)self filterButtons];
      firstObject = [filterButtons firstObject];

      [firstObject setIconSize:v8];
      [firstObject bounds];
      v28 = v23 - (v27 - v7);
      filterButtons2 = [(ICDocCamFilterViewController *)self filterButtons];
      v17 = v28 / ([filterButtons2 count] - 1);

      dc_isRTL = 0;
      v16 = 14.0;
      v4 = v25;
      v18 = v13;
    }

    else
    {
      dc_isRTL = [MEMORY[0x277D74248] dc_isRTL];
      firstObject = [(ICDocCamFilterViewController *)self filterButtons];
      v18 = (v21 - v8) / ([firstObject count] - 1);
      v16 = 20.0;
      v17 = v14;
    }
  }

  filterButtons3 = [(ICDocCamFilterViewController *)self filterButtons];
  v31 = [filterButtons3 count];

  if (v31)
  {
    v32 = 0;
    v33 = -1;
    do
    {
      filterButtons4 = [(ICDocCamFilterViewController *)self filterButtons];
      v35 = filterButtons4;
      if (dc_isRTL)
      {
        filterButtons5 = [(ICDocCamFilterViewController *)self filterButtons];
        v37 = [v35 objectAtIndexedSubscript:{objc_msgSend(filterButtons5, "count") + v33}];
      }

      else
      {
        v37 = [filterButtons4 objectAtIndexedSubscript:v32];
      }

      filterNameLabel = [v37 filterNameLabel];
      [filterNameLabel setFont:v4];

      labelVerticalSpacingConstraint = [v37 labelVerticalSpacingConstraint];
      [labelVerticalSpacingConstraint setConstant:v16];

      [v37 setIconSize:v8];
      [v37 bounds];
      v42 = 0.0;
      if (!v49)
      {
        if ((v50 - 1) <= 1)
        {
          if (v40 > 60.0)
          {
            v40 = 60.0;
          }

          v43 = 0.0;
          v42 = v13;
          goto LABEL_32;
        }

        if (v40 <= 60.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = (60.0 - v40) * 0.5;
        }
      }

      v43 = v14;
LABEL_32:
      v52 = CGRectIntegral(*&v42);
      [v37 setFrame:{v52.origin.x, v52.origin.y, v52.size.width, v52.size.height}];
      v44 = DCDebugInterfaceEnabled();
      if (v49 == 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        v46 = v8 + 41.0;
      }

      else
      {
        v46 = v17;
      }

      if (!v45)
      {
        v13 = v18 + v13;
      }

      v14 = v14 + v46;

      ++v32;
      filterButtons6 = [(ICDocCamFilterViewController *)self filterButtons];
      v48 = [filterButtons6 count];

      --v33;
    }

    while (v48 > v32);
  }
}

- (void)setCurrentFilterType:(signed __int16)type
{
  typeCopy = type;
  v14 = *MEMORY[0x277D85DE8];
  self->_currentFilterType = type;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  filterButtons = [(ICDocCamFilterViewController *)self filterButtons];
  v5 = [filterButtons countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(filterButtons);
        }

        [*(*(&v9 + 1) + 8 * v8) setSelected:{objc_msgSend(*(*(&v9 + 1) + 8 * v8), "filterType") == typeCopy}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [filterButtons countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)filterButtonFromLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(ICDocCamFilterViewController *)self view];
  v6 = [view hitTest:0 withEvent:{x, y}];

  if (v6)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v6 superview];

      v6 = superview;
    }

    while (superview);
  }

  v8 = objc_opt_class();
  v9 = DCDynamicCast(v8, v6);

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  longPressGesture = [(ICDocCamFilterViewController *)self longPressGesture];

  if (longPressGesture == beginCopy)
  {
    view = [(ICDocCamFilterViewController *)self view];
    [beginCopy locationInView:view];
    v8 = [(ICDocCamFilterViewController *)self filterButtonFromLocation:?];

    v6 = v8 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyToAll:(signed __int16)all
{
  allCopy = all;
  filterViewDelegate = [(ICDocCamFilterViewController *)self filterViewDelegate];
  [filterViewDelegate filterViewControllerApplyToAll:allCopy];

  [(ICDocCamFilterViewController *)self setCurrentFilterType:allCopy];
}

- (void)longPressGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    view = [(ICDocCamFilterViewController *)self view];
    [gestureCopy locationInView:view];
    v6 = [(ICDocCamFilterViewController *)self filterButtonFromLocation:?];

    filterType = [v6 filterType];
    filterViewDelegate = [(ICDocCamFilterViewController *)self filterViewDelegate];
    v9 = [filterViewDelegate filterViewControllerCanApplyToAll:filterType];

    if (v9)
    {
      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v11 = MEMORY[0x277D750F8];
      v12 = [DCLocalization localizedStringForKey:@"Apply Filter to All Scans" value:@"Apply Filter to All Scans" table:@"Localizable"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __49__ICDocCamFilterViewController_longPressGesture___block_invoke;
      v20[3] = &unk_278F935F0;
      v20[4] = self;
      v21 = filterType;
      v13 = [v11 actionWithTitle:v12 style:0 handler:v20];

      [v10 addAction:v13];
      [v10 setPreferredAction:v13];
      v14 = MEMORY[0x277D750F8];
      v15 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
      v16 = [v14 actionWithTitle:v15 style:1 handler:&__block_literal_global_57];
      [v10 addAction:v16];

      popoverPresentationController = [v10 popoverPresentationController];
      filterIconView = [v6 filterIconView];
      [popoverPresentationController setSourceView:filterIconView];

      filterIconView2 = [v6 filterIconView];
      [filterIconView2 bounds];
      [popoverPresentationController setSourceRect:?];

      [(ICDocCamFilterViewController *)self presentViewController:v10 animated:1 completion:0];
    }
  }
}

- (ICDocCamFilterViewDelegate)filterViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_filterViewDelegate);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (DCSinglePixelVerticalLineView)verticalLineView
{
  WeakRetained = objc_loadWeakRetained(&self->_verticalLineView);

  return WeakRetained;
}

- (DCSinglePixelHorizontalLineView)horizontalLineView
{
  WeakRetained = objc_loadWeakRetained(&self->_horizontalLineView);

  return WeakRetained;
}

@end