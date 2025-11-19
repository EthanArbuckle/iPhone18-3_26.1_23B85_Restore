@interface ICDocCamFilterViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)contentSize;
- (DCSinglePixelHorizontalLineView)horizontalLineView;
- (DCSinglePixelVerticalLineView)verticalLineView;
- (ICDocCamFilterViewController)init;
- (ICDocCamFilterViewDelegate)filterViewDelegate;
- (UIScrollView)scrollView;
- (UIView)backgroundView;
- (id)filterButtonFromLocation:(CGPoint)a3;
- (void)applyToAll:(signed __int16)a3;
- (void)centerContent:(BOOL)a3 isPortrait:(BOOL)a4;
- (void)dealloc;
- (void)filterSelected:(id)a3;
- (void)initializeFilters;
- (void)longPressGesture:(id)a3;
- (void)prepareToAnimateIn:(BOOL)a3;
- (void)setBottomContentInset:(double)a3;
- (void)setCurrentFilterType:(signed __int16)a3;
- (void)setUpScrollView;
- (void)updateConstraints;
- (void)updateConstraintsPad;
- (void)updateConstraintsPhone;
- (void)updateScrollViewContentSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(ICDocCamFilterViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:1];

  v4 = [(ICDocCamFilterViewController *)self view];
  [v4 setAutoresizingMask:18];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(ICDocCamFilterViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(ICDocCamFilterViewController *)self scrollView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(ICDocCamFilterViewController *)self scrollView];
  [v8 setAutoresizingMask:0];

  v9 = [(ICDocCamFilterViewController *)self scrollView];
  [v9 setScrollEnabled:0];

  v10 = [(ICDocCamFilterViewController *)self backgroundView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(ICDocCamFilterViewController *)self initializeFilters];
  v11 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_longPressGesture_];
  [(ICDocCamFilterViewController *)self setLongPressGesture:v11];

  v12 = [(ICDocCamFilterViewController *)self longPressGesture];
  [v12 setDelegate:self];

  v13 = [(ICDocCamFilterViewController *)self view];
  v14 = [(ICDocCamFilterViewController *)self longPressGesture];
  [v13 addGestureRecognizer:v14];

  v15 = [MEMORY[0x277D75348] systemBackgroundColor];
  v16 = [(ICDocCamFilterViewController *)self backgroundView];
  [v16 setBackgroundColor:v15];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ICDocCamFilterViewController;
  [(ICDocCamFilterViewController *)&v3 viewWillAppear:a3];
}

- (void)centerContent:(BOOL)a3 isPortrait:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = [(ICDocCamFilterViewController *)self scrollView];
    [v6 contentSize];
    v8 = v7;
    v10 = v9;

    v11 = [(ICDocCamFilterViewController *)self scrollView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    if (v4)
    {
      if (v8 >= v13)
      {
        v16 = -0.0;
      }

      else
      {
        v16 = (v13 - v8) * -0.5;
      }

      v23 = [(ICDocCamFilterViewController *)self scrollView];
      [v23 setContentOffset:{v16, 0.0}];
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

      v23 = [(ICDocCamFilterViewController *)self navigationController];
      v18 = [v23 navigationBar];
      [v18 bounds];
      MaxY = CGRectGetMaxY(v25);
      [(ICDocCamFilterViewController *)self bottomContentInset];
      v21 = v17 + (MaxY - v20) * -0.5;
      v22 = [(ICDocCamFilterViewController *)self scrollView];
      [v22 setContentOffset:{0.0, v21}];
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
  v5 = [(ICDocCamFilterViewController *)self view];
  [v5 layoutIfNeeded];

  [(ICDocCamFilterViewController *)self centerContent:v3 isPortrait:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = ICDocCamFilterViewController;
  v7 = a4;
  [(ICDocCamFilterViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(ICDocCamFilterViewController *)self setTransitioning:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__ICDocCamFilterViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_278F92D48;
  v8[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_7 completion:v8];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamFilterViewController;
  [(ICDocCamFilterViewController *)&v4 dealloc];
}

- (void)prepareToAnimateIn:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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

- (void)setBottomContentInset:(double)a3
{
  if (self->_bottomContentInset != a3)
  {
    self->_bottomContentInset = a3;
    v4 = [(ICDocCamFilterViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)updateConstraints
{
  v3 = [(ICDocCamFilterViewController *)self layoutConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(ICDocCamFilterViewController *)self layoutConstraints];
    [v4 deactivateConstraints:v5];

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
  v3 = [(ICDocCamFilterViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(ICDocCamFilterViewController *)self scrollView];
  [v6 contentSize];
  v8 = v7;

  v9 = (v5 - v8) * 0.5;
  v10 = [(ICDocCamFilterViewController *)self navigationController];
  v11 = [v10 navigationBar];
  [v11 frame];
  MaxY = CGRectGetMaxY(v54);
  [(ICDocCamFilterViewController *)self bottomContentInset];
  v14 = (MaxY - v13) * 0.5;

  v15 = [(ICDocCamFilterViewController *)self backgroundView];
  v16 = [v15 widthAnchor];
  v17 = [v16 constraintEqualToConstant:128.0];
  [v52 addObject:v17];

  v18 = [(ICDocCamFilterViewController *)self backgroundView];
  v19 = [v18 trailingAnchor];
  v20 = [(ICDocCamFilterViewController *)self view];
  v21 = [v20 trailingAnchor];
  [(ICDocCamFilterViewController *)self horizontalOffset];
  v22 = [v19 constraintEqualToAnchor:v21 constant:?];
  [v52 addObject:v22];

  v23 = [(ICDocCamFilterViewController *)self backgroundView];
  v24 = [v23 topAnchor];
  v25 = [(ICDocCamFilterViewController *)self view];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v52 addObject:v27];

  v28 = [(ICDocCamFilterViewController *)self backgroundView];
  v29 = [v28 bottomAnchor];
  v30 = [(ICDocCamFilterViewController *)self view];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v52 addObject:v32];

  v33 = [(ICDocCamFilterViewController *)self scrollView];
  v34 = [v33 widthAnchor];
  v35 = [v34 constraintEqualToConstant:60.0];
  [v52 addObject:v35];

  v36 = [(ICDocCamFilterViewController *)self scrollView];
  v37 = [v36 trailingAnchor];
  v38 = [(ICDocCamFilterViewController *)self view];
  v39 = [v38 trailingAnchor];
  [(ICDocCamFilterViewController *)self horizontalOffset];
  v41 = [v37 constraintEqualToAnchor:v39 constant:v40 + -34.0];
  [v52 addObject:v41];

  v42 = [(ICDocCamFilterViewController *)self scrollView];
  v43 = [v42 topAnchor];
  v44 = [(ICDocCamFilterViewController *)self view];
  v45 = [v44 topAnchor];
  v46 = [v43 constraintEqualToAnchor:v45 constant:v9 + v14];
  [v52 addObject:v46];

  v47 = [(ICDocCamFilterViewController *)self scrollView];
  v48 = [v47 bottomAnchor];
  v49 = [(ICDocCamFilterViewController *)self view];
  v50 = [v49 bottomAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 constant:v14 - v9];
  [v52 addObject:v51];

  [MEMORY[0x277CCAAD0] activateConstraints:v52];
  [(ICDocCamFilterViewController *)self setLayoutConstraints:v52];
}

- (CGSize)contentSize
{
  v3 = [(ICDocCamFilterViewController *)self view];
  [v3 bounds];
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
    v13 = [(ICDocCamFilterViewController *)self view];
    [v13 dc_directionalSafeAreaInsets];
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
  v5 = [(ICDocCamFilterViewController *)self backgroundView];
  v6 = v5;
  if (v4 > 1)
  {
    v34 = [v5 heightAnchor];
    v35 = [v34 constraintEqualToConstant:100.0];
    [v3 addObject:v35];

    v36 = [(ICDocCamFilterViewController *)self backgroundView];
    v37 = [v36 leadingAnchor];
    v38 = [(ICDocCamFilterViewController *)self view];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v3 addObject:v40];

    v41 = [(ICDocCamFilterViewController *)self backgroundView];
    v42 = [v41 trailingAnchor];
    v43 = [(ICDocCamFilterViewController *)self view];
    v44 = [v43 trailingAnchor];
    v45 = [v42 constraintEqualToAnchor:v44];
    [v3 addObject:v45];

    v46 = [(ICDocCamFilterViewController *)self backgroundView];
    v47 = [v46 bottomAnchor];
    v48 = [(ICDocCamFilterViewController *)self view];
    v49 = [v48 bottomAnchor];
    [(ICDocCamFilterViewController *)self bottomOffset];
    v51 = v50;
    [(ICDocCamFilterViewController *)self bottomContentInset];
    v53 = [v47 constraintEqualToAnchor:v49 constant:v51 - v52];
    [v3 addObject:v53];

    v54 = [(ICDocCamFilterViewController *)self scrollView];
    v55 = [v54 heightAnchor];
    v56 = [v55 constraintEqualToConstant:60.0];
    [v3 addObject:v56];

    v57 = [(ICDocCamFilterViewController *)self scrollView];
    v58 = [v57 leadingAnchor];
    v59 = [(ICDocCamFilterViewController *)self view];
    v60 = [v59 leadingAnchor];
    v61 = [v58 constraintEqualToAnchor:v60];
    [v3 addObject:v61];

    v62 = [(ICDocCamFilterViewController *)self scrollView];
    v63 = [v62 trailingAnchor];
    v64 = [(ICDocCamFilterViewController *)self view];
    v65 = [v64 trailingAnchor];
    v66 = [v63 constraintEqualToAnchor:v65];
    [v3 addObject:v66];

    v67 = [(ICDocCamFilterViewController *)self scrollView];
    v68 = [v67 bottomAnchor];
    v69 = [(ICDocCamFilterViewController *)self view];
    v70 = [v69 bottomAnchor];
    [(ICDocCamFilterViewController *)self bottomOffset];
    v72 = v71;
    [(ICDocCamFilterViewController *)self bottomContentInset];
    v74 = [v68 constraintEqualToAnchor:v70 constant:v72 - (v73 + 28.0)];
    [(ICDocCamFilterViewController *)self setScrollViewBottomConstraint:v74];

    v75 = [(ICDocCamFilterViewController *)self scrollViewBottomConstraint];
    [v3 addObject:v75];
  }

  else
  {
    v7 = [v5 widthAnchor];
    v8 = [(ICDocCamFilterViewController *)self view];
    [v8 dc_directionalSafeAreaInsets];
    v10 = [v7 constraintEqualToConstant:v9 + 92.0];
    [v3 addObject:v10];

    v11 = [(ICDocCamFilterViewController *)self backgroundView];
    v12 = [v11 trailingAnchor];
    v13 = [(ICDocCamFilterViewController *)self view];
    v14 = [v13 trailingAnchor];
    [(ICDocCamFilterViewController *)self horizontalOffset];
    v15 = [v12 constraintEqualToAnchor:v14 constant:?];
    [v3 addObject:v15];

    v16 = [(ICDocCamFilterViewController *)self backgroundView];
    v17 = [v16 topAnchor];
    v18 = [(ICDocCamFilterViewController *)self view];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v3 addObject:v20];

    v21 = [(ICDocCamFilterViewController *)self backgroundView];
    v22 = [v21 bottomAnchor];
    v23 = [(ICDocCamFilterViewController *)self view];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v3 addObject:v25];

    v26 = [(ICDocCamFilterViewController *)self scrollView];
    v27 = [v26 widthAnchor];
    v28 = [v27 constraintEqualToConstant:60.0];
    [v3 addObject:v28];

    v29 = [(ICDocCamFilterViewController *)self view];
    [v29 dc_directionalSafeAreaInsets];
    if (v30 == 0.0)
    {
      v33 = 16.0;
    }

    else
    {
      v31 = [(ICDocCamFilterViewController *)self view];
      [v31 dc_directionalSafeAreaInsets];
      v33 = v32;
    }

    v76 = [(ICDocCamFilterViewController *)self scrollView];
    v77 = [v76 trailingAnchor];
    v78 = [(ICDocCamFilterViewController *)self view];
    v79 = [v78 trailingAnchor];
    [(ICDocCamFilterViewController *)self horizontalOffset];
    v81 = [v77 constraintEqualToAnchor:v79 constant:v80 - v33];
    [v3 addObject:v81];

    v82 = [(ICDocCamFilterViewController *)self scrollView];
    v83 = [v82 topAnchor];
    v84 = [(ICDocCamFilterViewController *)self view];
    v85 = [v84 topAnchor];
    v86 = [v83 constraintEqualToAnchor:v85];
    [v3 addObject:v86];

    v75 = [(ICDocCamFilterViewController *)self scrollView];
    v87 = [v75 bottomAnchor];
    v88 = [(ICDocCamFilterViewController *)self view];
    v89 = [v88 bottomAnchor];
    v90 = [v87 constraintEqualToAnchor:v89];
    [v3 addObject:v90];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  [(ICDocCamFilterViewController *)self setLayoutConstraints:v3];
}

- (void)filterSelected:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICDocCamFilterViewController *)self currentFilterType];
  if (v5 != [v4 filterType])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(ICDocCamFilterViewController *)self filterButtons];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if ([v10 isSelected])
          {
            v7 = v10;
            [v7 setSelected:0];
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [v4 setSelected:1];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v4);
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
  v3 = [(ICDocCamFilterViewController *)self filterButtons];

  if (!v3)
  {
    v4 = [(ICDocCamFilterViewController *)self scrollView];
    [v4 setShowsVerticalScrollIndicator:0];

    v5 = [(ICDocCamFilterViewController *)self scrollView];
    [v5 setShowsHorizontalScrollIndicator:0];

    v6 = [(ICDocCamFilterViewController *)self scrollView];
    [v6 setDelegate:self];

    v7 = [(ICDocCamFilterViewController *)self scrollView];
    [v7 setClipsToBounds:0];

    v8 = [(ICDocCamFilterViewController *)self scrollView];
    [v8 setDelaysContentTouches:0];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = 0; i != 4; ++i)
    {
      v10 = [ICDocCamFilterButton filterButtonWithType:word_249307230[i]];
      [v10 addTarget:self action:sel_filterSelected_ forControlEvents:64];
      [v12 addObject:v10];
      v11 = [(ICDocCamFilterViewController *)self scrollView];
      [v11 addSubview:v10];
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
    v23 = [(ICDocCamFilterViewController *)self filterButtons];
    v24 = [v23 count];

    if (v24)
    {
      v25 = 0;
      do
      {
        v26 = [(ICDocCamFilterViewController *)self filterButtons];
        v27 = [v26 objectAtIndexedSubscript:v25];

        [v27 bounds];
        v29 = v28;
        v30 = [(ICDocCamFilterViewController *)self filterButtons];
        v31 = [v30 count] - 1;

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
        v33 = [(ICDocCamFilterViewController *)self filterButtons];
        v34 = [v33 count];
      }

      while (v34 > v25);
    }
  }

  else
  {
    v3 = 20.0;
    if ((v45 - 3) <= 1)
    {
      v4 = [(ICDocCamFilterViewController *)self view];
      v5 = [v4 safeAreaLayoutGuide];
      [v5 layoutFrame];
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

    v7 = [(ICDocCamFilterViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;

    v12 = [(ICDocCamFilterViewController *)self navigationController];
    v13 = [v12 navigationBar];
    [v13 frame];
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

  v35 = [(ICDocCamFilterViewController *)self filterButtons];
  v36 = [v35 objectAtIndexedSubscript:0];

  if (v44)
  {
    [v36 size];
    v38 = v37;
    v39 = [(ICDocCamFilterViewController *)self scrollView];
  }

  else
  {
    v40 = v45 - 1;
    [v36 size];
    v38 = v41;
    v43 = v42;
    v39 = [(ICDocCamFilterViewController *)self scrollView];
    if (v40 <= 1)
    {
      v38 = v21;
      v22 = v43;
    }
  }

  [v39 setContentSize:{v38, v22}];
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
    v9 = [(ICDocCamFilterViewController *)self view];
    v10 = [v9 safeAreaLayoutGuide];
    [v10 layoutFrame];
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
    v15 = 0;
    v16 = 16.0;
    v17 = v3[1];
    v18 = *v3;
  }

  else
  {
    v19 = [(ICDocCamFilterViewController *)self scrollView];
    [v19 contentSize];
    v21 = v20;
    v23 = v22;

    if ((v50 - 1) > 1)
    {
      v25 = [MEMORY[0x277D74300] systemFontOfSize:11.0];

      v26 = [(ICDocCamFilterViewController *)self filterButtons];
      v24 = [v26 firstObject];

      [v24 setIconSize:v8];
      [v24 bounds];
      v28 = v23 - (v27 - v7);
      v29 = [(ICDocCamFilterViewController *)self filterButtons];
      v17 = v28 / ([v29 count] - 1);

      v15 = 0;
      v16 = 14.0;
      v4 = v25;
      v18 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277D74248] dc_isRTL];
      v24 = [(ICDocCamFilterViewController *)self filterButtons];
      v18 = (v21 - v8) / ([v24 count] - 1);
      v16 = 20.0;
      v17 = v14;
    }
  }

  v30 = [(ICDocCamFilterViewController *)self filterButtons];
  v31 = [v30 count];

  if (v31)
  {
    v32 = 0;
    v33 = -1;
    do
    {
      v34 = [(ICDocCamFilterViewController *)self filterButtons];
      v35 = v34;
      if (v15)
      {
        v36 = [(ICDocCamFilterViewController *)self filterButtons];
        v37 = [v35 objectAtIndexedSubscript:{objc_msgSend(v36, "count") + v33}];
      }

      else
      {
        v37 = [v34 objectAtIndexedSubscript:v32];
      }

      v38 = [v37 filterNameLabel];
      [v38 setFont:v4];

      v39 = [v37 labelVerticalSpacingConstraint];
      [v39 setConstant:v16];

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
      v47 = [(ICDocCamFilterViewController *)self filterButtons];
      v48 = [v47 count];

      --v33;
    }

    while (v48 > v32);
  }
}

- (void)setCurrentFilterType:(signed __int16)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  self->_currentFilterType = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(ICDocCamFilterViewController *)self filterButtons];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setSelected:{objc_msgSend(*(*(&v9 + 1) + 8 * v8), "filterType") == v3}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)filterButtonFromLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(ICDocCamFilterViewController *)self view];
  v6 = [v5 hitTest:0 withEvent:{x, y}];

  if (v6)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [v6 superview];

      v6 = v7;
    }

    while (v7);
  }

  v8 = objc_opt_class();
  v9 = DCDynamicCast(v8, v6);

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamFilterViewController *)self longPressGesture];

  if (v5 == v4)
  {
    v7 = [(ICDocCamFilterViewController *)self view];
    [v4 locationInView:v7];
    v8 = [(ICDocCamFilterViewController *)self filterButtonFromLocation:?];

    v6 = v8 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyToAll:(signed __int16)a3
{
  v3 = a3;
  v5 = [(ICDocCamFilterViewController *)self filterViewDelegate];
  [v5 filterViewControllerApplyToAll:v3];

  [(ICDocCamFilterViewController *)self setCurrentFilterType:v3];
}

- (void)longPressGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(ICDocCamFilterViewController *)self view];
    [v4 locationInView:v5];
    v6 = [(ICDocCamFilterViewController *)self filterButtonFromLocation:?];

    v7 = [v6 filterType];
    v8 = [(ICDocCamFilterViewController *)self filterViewDelegate];
    v9 = [v8 filterViewControllerCanApplyToAll:v7];

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
      v21 = v7;
      v13 = [v11 actionWithTitle:v12 style:0 handler:v20];

      [v10 addAction:v13];
      [v10 setPreferredAction:v13];
      v14 = MEMORY[0x277D750F8];
      v15 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
      v16 = [v14 actionWithTitle:v15 style:1 handler:&__block_literal_global_57];
      [v10 addAction:v16];

      v17 = [v10 popoverPresentationController];
      v18 = [v6 filterIconView];
      [v17 setSourceView:v18];

      v19 = [v6 filterIconView];
      [v19 bounds];
      [v17 setSourceRect:?];

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