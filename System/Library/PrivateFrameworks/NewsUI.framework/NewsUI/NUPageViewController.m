@interface NUPageViewController
- (BOOL)_assistiveTechnologyIsRunning;
- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)a3;
- (BOOL)canSwitchToNextViewController;
- (BOOL)canSwitchToPreviousViewController;
- (BOOL)pagingEnabled;
- (CGPoint)centerForIndex:(unint64_t)a3;
- (CGSize)pageSize;
- (CGSize)transitioningSize;
- (NUPageViewController)initWithCoder:(id)a3;
- (NUPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NUPageViewControllerDataSource)dataSource;
- (NUPageViewControllerDelegate)delegate;
- (void)_keyboardSwitchGoingRight:(BOOL)a3;
- (void)callLastViewAppearanceMethods;
- (void)commonInit;
- (void)handleScrollEnd;
- (void)handleScrollStart;
- (void)managePreviousAndNextViewController;
- (void)performWhenIdle:(id)a3;
- (void)reindexViewControllers;
- (void)removeViewController:(id)a3;
- (void)repositionPages;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setPossibleNextViewController:(id)a3;
- (void)setVisibleViewController:(id)a3;
- (void)switchToNextViewController;
- (void)switchToPreviousViewController;
- (void)transitionToSize:(CGSize)a3;
- (void)updateContentOffset;
- (void)updateContentSize;
- (void)updatePositionForViewController:(id)a3;
- (void)updateScrollView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NUPageViewController

- (NUPageViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NUPageViewController;
  v3 = [(NUPageViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(NUPageViewController *)v3 commonInit];
  }

  return v4;
}

- (NUPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = NUPageViewController;
  v4 = [(NUPageViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(NUPageViewController *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_alloc_init(NUPageViewControllerScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(NUPageViewControllerScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(NUPageViewControllerScrollView *)self->_scrollView setAutoresizesSubviews:0];
  [(NUPageViewControllerScrollView *)self->_scrollView setPagingEnabled:1];
  [(NUPageViewControllerScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(NUPageViewControllerScrollView *)self->_scrollView setAlwaysBounceVertical:0];
  [(NUPageViewControllerScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(NUPageViewControllerScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(NUPageViewControllerScrollView *)self->_scrollView setCanCancelContentTouches:1];
  [(NUPageViewControllerScrollView *)self->_scrollView setDelaysContentTouches:0];
  [(NUPageViewControllerScrollView *)self->_scrollView setDelegate:self];
  [(NUPageViewControllerScrollView *)self->_scrollView setAccessibilityDelegate:self];
  [(NUPageViewControllerScrollView *)self->_scrollView setDirectionalLockEnabled:1];
  [(NUPageViewControllerScrollView *)self->_scrollView _setPocketsEnabled:0];
  v5 = dispatch_group_create();
  idleDispatchGroup = self->_idleDispatchGroup;
  self->_idleDispatchGroup = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  replayViewTransitions = self->_replayViewTransitions;
  self->_replayViewTransitions = v7;

  MEMORY[0x2821F96F8]();
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = NUPageViewController;
  [(NUPageViewController *)&v13 viewDidLoad];
  v3 = [(NUPageViewController *)self view];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [(NUPageViewController *)self scrollView];
  v6 = [(NUPageViewController *)self view];
  [v6 bounds];
  v15 = CGRectInset(v14, -2.0, 0.0);
  [v5 setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];

  v7 = [(NUPageViewController *)self scrollView];
  [v7 setAutoresizingMask:18];

  v8 = [(NUPageViewController *)self view];
  v9 = [(NUPageViewController *)self scrollView];
  [v8 addSubview:v9];

  v10 = [(NUPageViewController *)self view];
  [v10 bounds];
  [(NUPageViewController *)self transitionToSize:v11, v12];

  [(NUPageViewController *)self updateContentSize];
  [(NUPageViewController *)self updateContentOffset];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = NUPageViewController;
  [(NUPageViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(NUPageViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(NUPageViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    v14 = [(NUPageViewController *)self view];
    [v14 bounds];
    [(NUPageViewController *)self transitionToSize:v15, v16];
  }

  [(NUPageViewController *)self managePreviousAndNextViewController];
  [(NUPageViewController *)self updateContentOffset];
}

void __39__NUPageViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 beginAppearanceTransition:1 animated:0];
}

void __38__NUPageViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 endAppearanceTransition];
}

void __42__NUPageViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 beginAppearanceTransition:0 animated:0];
}

void __41__NUPageViewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained visibleViewController];
  [v1 endAppearanceTransition];
}

- (void)performWhenIdle:(id)a3
{
  v4 = a3;
  v5 = [(NUPageViewController *)self idleDispatchGroup];
  dispatch_group_notify(v5, MEMORY[0x277D85CD0], v4);
}

- (void)setVisibleViewController:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NUPageViewController *)self visibleViewController];

  if (v6 != v5)
  {
    v7 = [(NUPageViewController *)self visibleViewController];
    v8 = [(NUPageViewController *)self visibleViewController];

    if (v8)
    {
      v9 = [(NUPageViewController *)self visibleViewController];
      [(NUPageViewController *)self removeViewController:v9];
    }

    [(NUPageViewController *)self addViewController:v5 fromScroll:0];
    objc_storeStrong(&self->_visibleViewController, a3);
    [(NUPageViewController *)self reindexViewControllers];
    v10 = [(NUPageViewController *)self replayViewTransitions];

    if (v10)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [(NUPageViewController *)self replayViewTransitions];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            (*(*(*(&v20 + 1) + 8 * v15++) + 16))();
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      [(NUPageViewController *)self setReplayViewTransitions:0];
    }

    [(NUPageViewController *)self updateContentOffset];
    v16 = [(NUPageViewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(NUPageViewController *)self delegate];
      [v18 pageViewController:self didChangeVisibleViewControllerFromViewController:v7 direction:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (CGSize)pageSize
{
  v3 = [(NUPageViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if ([(NUPageViewController *)self isTransitioning])
  {

    [(NUPageViewController *)self transitioningSize];
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)pagingEnabled
{
  v2 = [(NUPageViewController *)self scrollView];
  v3 = [v2 isScrollEnabled];

  return v3;
}

- (void)updateScrollView
{
  [(NUPageViewController *)self updateContentSize];

  [(NUPageViewController *)self updateContentOffset];
}

- (void)updateContentSize
{
  v3 = [(NUPageViewController *)self nextViewController];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(NUPageViewController *)self previousViewController];

  if (v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4;
  }

  [(NUPageViewController *)self pageSize];
  v8 = (4 * v6) + v7 * v6;
  [(NUPageViewController *)self pageSize];
  v10 = v9;
  [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
  v11 = [(NUPageViewController *)self scrollView];
  [v11 setContentSize:{v8, v10}];

  [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)updateContentOffset
{
  v3 = [(NUPageViewController *)self visibleViewController];
  v4 = [v3 view];
  [v4 center];
  v6 = v5;
  v7 = [(NUPageViewController *)self visibleViewController];
  v8 = [v7 view];
  [v8 bounds];
  v9 = v6 + CGRectGetWidth(v12) * -0.5 + -2.0;

  [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
  v10 = [(NUPageViewController *)self scrollView];
  [v10 setContentOffset:{v9, 0.0}];

  [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)setPossibleNextViewController:(id)a3
{
  v5 = a3;
  possibleNextViewController = self->_possibleNextViewController;
  if (possibleNextViewController != v5)
  {
    if ([(UIViewController *)possibleNextViewController isViewLoaded])
    {
      v7 = [(UIViewController *)self->_possibleNextViewController view];
      [v7 setUserInteractionEnabled:1];
    }

    objc_storeStrong(&self->_possibleNextViewController, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (CGPoint)centerForIndex:(unint64_t)a3
{
  [(NUPageViewController *)self pageSize];
  v6 = (4 * a3) + v5 * (a3 + 0.5) + 2.0;
  [(NUPageViewController *)self pageSize];
  v8 = v7 * 0.5;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)repositionPages
{
  v3 = [(NUPageViewController *)self nextViewController];
  [(NUPageViewController *)self updatePositionForViewController:v3];

  v4 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self updatePositionForViewController:v4];

  v5 = [(NUPageViewController *)self previousViewController];
  [(NUPageViewController *)self updatePositionForViewController:v5];
}

- (void)managePreviousAndNextViewController
{
  v3 = [(NUPageViewController *)self managedForViewController];
  v4 = [(NUPageViewController *)self visibleViewController];

  if (v3 != v4)
  {
    v5 = [(NUPageViewController *)self previousViewController];

    if (!v5)
    {
      v6 = [(NUPageViewController *)self dataSource];
      v7 = [(NUPageViewController *)self visibleViewController];
      v8 = [v6 pageViewController:self viewControllerBeforeViewController:v7];
      [(NUPageViewController *)self setPreviousViewController:v8];
    }

    v9 = [(NUPageViewController *)self previousViewController];

    if (v9)
    {
      v10 = [(NUPageViewController *)self view];
      [v10 bounds];
      Width = CGRectGetWidth(v32);
      v12 = [(NUPageViewController *)self view];
      [v12 bounds];
      Height = CGRectGetHeight(v33);
      v14 = [(NUPageViewController *)self previousViewController];
      v15 = [v14 view];
      [v15 setBounds:{0.0, 0.0, Width, Height}];

      v16 = [(NUPageViewController *)self previousViewController];
      [(NUPageViewController *)self updatePositionForViewController:v16];
    }

    v17 = [(NUPageViewController *)self nextViewController];

    if (!v17)
    {
      v18 = [(NUPageViewController *)self dataSource];
      v19 = [(NUPageViewController *)self visibleViewController];
      v20 = [v18 pageViewController:self viewControllerAfterViewController:v19];
      [(NUPageViewController *)self setNextViewController:v20];
    }

    v21 = [(NUPageViewController *)self nextViewController];

    if (v21)
    {
      v22 = [(NUPageViewController *)self view];
      [v22 bounds];
      v23 = CGRectGetWidth(v34);
      v24 = [(NUPageViewController *)self view];
      [v24 bounds];
      v25 = CGRectGetHeight(v35);
      v26 = [(NUPageViewController *)self nextViewController];
      v27 = [v26 view];
      [v27 setBounds:{0.0, 0.0, v23, v25}];

      v28 = [(NUPageViewController *)self nextViewController];
      [(NUPageViewController *)self updatePositionForViewController:v28];
    }

    v29 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self updatePositionForViewController:v29];

    [(NUPageViewController *)self updateContentSize];
    v30 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setManagedForViewController:v30];
  }
}

- (void)updatePositionForViewController:(id)a3
{
  v13 = a3;
  v4 = [(NUPageViewController *)self visibleViewController];

  v5 = [(NUPageViewController *)self previousViewController];
  if (v4 == v13)
  {
    v7 = v5 != 0;
  }

  else
  {

    if (v5 == v13 || ([(NUPageViewController *)self nextViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v13))
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = [(NUPageViewController *)self previousViewController];
    if (v5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

LABEL_10:
  [(NUPageViewController *)self centerForIndex:v7];
  v9 = v8;
  v11 = v10;
  v12 = [v13 view];
  [v12 setCenter:{v9, v11}];
}

- (void)removeViewController:(id)a3
{
  v9 = a3;
  v4 = [(NUPageViewController *)self appearingViewController];

  if (v4 == v9)
  {
    [v9 beginAppearanceTransition:0 animated:0];
    [(NUPageViewController *)self setAppearingViewController:0];
  }

  [v9 endAppearanceTransition];
  [v9 willMoveToParentViewController:0];
  v5 = [v9 view];
  [v5 removeFromSuperview];

  [v9 removeFromParentViewController];
  v6 = [(NUPageViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NUPageViewController *)self delegate];
    [v8 pageViewController:self didHideViewController:v9];
  }
}

- (void)reindexViewControllers
{
  [(NUPageViewController *)self setNextViewController:0];
  [(NUPageViewController *)self setPreviousViewController:0];
  [(NUPageViewController *)self setManagedForViewController:0];

  [(NUPageViewController *)self managePreviousAndNextViewController];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setOriginalVisibleViewController:v4];

  v5 = [(NUPageViewController *)self originalVisibleViewController];
  v6 = [v5 view];
  [v6 setUserInteractionEnabled:0];

  [(NUPageViewController *)self handleScrollStart];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(NUPageViewController *)self handleScrollEnd];
  }
}

- (void)handleScrollStart
{
  if (![(NUPageViewController *)self scrollViewStartedScrolling])
  {
    v3 = [(NUPageViewController *)self idleDispatchGroup];
    dispatch_group_enter(v3);

    self->_scrollViewStartedScrolling = 1;
  }
}

- (void)handleScrollEnd
{
  if ([(NUPageViewController *)self scrollViewStartedScrolling])
  {
    v3 = [(NUPageViewController *)self idleDispatchGroup];
    dispatch_group_leave(v3);

    self->_scrollViewStartedScrolling = 0;
  }

  [(NUPageViewController *)self callLastViewAppearanceMethods];
}

- (void)callLastViewAppearanceMethods
{
  v3 = [(NUPageViewController *)self originalVisibleViewController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:1];

  if (![(NUPageViewController *)self scrollViewStartedScrolling])
  {
    v5 = [(NUPageViewController *)self visibleViewController];
    v6 = [(NUPageViewController *)self disappearingViewController];

    if (v5 == v6)
    {
      v7 = [(NUPageViewController *)self disappearingViewController];
      [v7 beginAppearanceTransition:1 animated:0];

      v8 = [(NUPageViewController *)self disappearingViewController];
      [v8 endAppearanceTransition];
    }

    v9 = [(NUPageViewController *)self visibleViewController];
    v10 = [(NUPageViewController *)self appearingViewController];

    if (v9 != v10)
    {
      v11 = [(NUPageViewController *)self appearingViewController];
      [v11 beginAppearanceTransition:0 animated:0];

      v12 = [(NUPageViewController *)self appearingViewController];
      [v12 endAppearanceTransition];
    }

    v13 = [(NUPageViewController *)self visibleViewController];
    v14 = [(NUPageViewController *)self appearingViewController];

    if (v13 == v14)
    {
      v15 = [(NUPageViewController *)self appearingViewController];
      [v15 endAppearanceTransition];
    }

    [(NUPageViewController *)self setAppearingViewController:0];

    [(NUPageViewController *)self setDisappearingViewController:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v83 = a3;
  if (![(NUPageViewController *)self cancelScrollViewDidScroll]&& ![(NUPageViewController *)self _shouldIgnoreDidScrollWithScrollView:v83])
  {
    [v83 contentOffset];
    v5 = v4;
    [v83 contentOffset];
    v7 = v6;
    v8 = [(NUPageViewController *)self visibleViewController];
    v9 = [v8 view];
    [v9 center];
    v11 = v10;
    [v83 bounds];
    v13 = v7 - (v11 + v12 * -0.5);

    if (v13 >= 0.0)
    {
      if (v13 <= 0.0)
      {
        v15 = 0;
        goto LABEL_9;
      }

      v14 = [(NUPageViewController *)self nextViewController];
    }

    else
    {
      v14 = [(NUPageViewController *)self previousViewController];
    }

    v15 = v14;
LABEL_9:
    v16 = [(NUPageViewController *)self possibleNextViewController];

    if (!v16 && v15)
    {
      [(NUPageViewController *)self setPossibleNextViewController:v15];
      [(NUPageViewController *)self addViewController:v15 fromScroll:1];
LABEL_15:
      v20 = [(NUPageViewController *)self possibleNextViewController];
      [v20 beginAppearanceTransition:1 animated:0];

      goto LABEL_16;
    }

    v17 = [(NUPageViewController *)self possibleNextViewController];

    if (v15)
    {
      if (v17 != v15)
      {
        v18 = [(NUPageViewController *)self possibleNextViewController];
        [(NUPageViewController *)self removeViewController:v18];

        [(NUPageViewController *)self setPossibleNextViewController:v15];
        v19 = [(NUPageViewController *)self possibleNextViewController];
        [(NUPageViewController *)self addViewController:v19 fromScroll:1];

        goto LABEL_15;
      }
    }

    else if (v17)
    {
      v82 = [(NUPageViewController *)self possibleNextViewController];
      [(NUPageViewController *)self removeViewController:v82];

      [(NUPageViewController *)self setPossibleNextViewController:0];
    }

LABEL_16:
    v21 = [(NUPageViewController *)self possibleNextViewController];
    v22 = [v21 view];
    [v22 setUserInteractionEnabled:0];

    v23 = [(NUPageViewController *)self delegate];
    LOBYTE(v22) = objc_opt_respondsToSelector();

    if (v22)
    {
      v24 = [(NUPageViewController *)self visibleViewController];
      v25 = [v24 view];
      [v25 frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = [(NUPageViewController *)self view];
      [v34 bounds];
      v36 = v35;
      v37 = [(NUPageViewController *)self view];
      [v37 bounds];
      v89.size.height = v38;
      v89.origin.y = 0.0;
      v85.origin.x = v27;
      v85.origin.y = v29;
      v85.size.width = v31;
      v85.size.height = v33;
      v89.origin.x = v5;
      v89.size.width = v36;
      v86 = CGRectIntersection(v85, v89);
      width = v86.size.width;

      v40 = [(NUPageViewController *)self view];
      [v40 bounds];
      v42 = width / v41;

      v43 = [(NUPageViewController *)self delegate];
      v44 = [(NUPageViewController *)self visibleViewController];
      [v43 pageViewController:self viewController:v44 changedVisibilityFactor:v42];

      v45 = [(NUPageViewController *)self possibleNextViewController];

      if (v45)
      {
        v46 = [(NUPageViewController *)self possibleNextViewController];
        v47 = [v46 view];
        [v47 frame];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v56 = [(NUPageViewController *)self view];
        [v56 bounds];
        v58 = v57;
        v59 = [(NUPageViewController *)self view];
        [v59 bounds];
        v90.size.height = v60;
        v90.origin.y = 0.0;
        v87.origin.x = v49;
        v87.origin.y = v51;
        v87.size.width = v53;
        v87.size.height = v55;
        v90.origin.x = v5;
        v90.size.width = v58;
        v88 = CGRectIntersection(v87, v90);
        v61 = v88.size.width;

        v62 = [(NUPageViewController *)self view];
        [v62 bounds];
        v64 = v61 / v63;

        v65 = [(NUPageViewController *)self delegate];
        v66 = [(NUPageViewController *)self possibleNextViewController];
        [v65 pageViewController:self viewController:v66 changedVisibilityFactor:v64];
      }
    }

    v67 = [(NUPageViewController *)self visibleViewController];
    v68 = [v67 view];
    [v68 center];
    v70 = v69;
    v71 = [(NUPageViewController *)self scrollView];
    [v71 bounds];
    v73 = v70 + v72 * -1.5;

    v74 = [(NUPageViewController *)self visibleViewController];
    v75 = [v74 view];
    [v75 center];
    v77 = v76;
    v78 = [(NUPageViewController *)self scrollView];
    [v78 bounds];
    v80 = v79;

    v81 = [(NUPageViewController *)self visibleViewController];
    if (v5 <= v73)
    {
      [(NUPageViewController *)self switchToPreviousViewController];
    }

    else
    {
      if (v5 < v77 + v80 * 0.5)
      {
LABEL_24:

        goto LABEL_25;
      }

      [(NUPageViewController *)self switchToNextViewController];
    }

    [(NUPageViewController *)self removeViewController:v81];
    [(NUPageViewController *)self setPossibleNextViewController:0];
    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)a3
{
  v4 = a3;
  if ([v4 isDragging])
  {
    [(NUPageViewController *)self _assistiveTechnologyIsRunning];
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [v4 isDecelerating];
    v7 = [(NUPageViewController *)self _assistiveTechnologyIsRunning];
    LOBYTE(v5) = 0;
    if ((v6 & 1) == 0 && !v7)
    {
      v5 = ![(NUPageViewController *)self scrollViewStartedScrolling];
    }
  }

  return v5;
}

- (BOOL)_assistiveTechnologyIsRunning
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

- (void)switchToNextViewController
{
  v3 = [(NUPageViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;

  v6 = [(NUPageViewController *)self nextViewController];

  if (!v6)
  {
    return;
  }

  v7 = [(NUPageViewController *)self nextViewController];
  v37 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setNextViewController:0];
  v8 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setPreviousViewController:v8];

  visibleViewController = self->_visibleViewController;
  self->_visibleViewController = v7;
  v10 = v7;

  v11 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setOriginalVisibleViewController:v11];

  v12 = [(NUPageViewController *)self originalVisibleViewController];
  v13 = [v12 view];
  [v13 setUserInteractionEnabled:0];

  v14 = [(NUPageViewController *)self delegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  if (v13)
  {
    v15 = [(NUPageViewController *)self delegate];
    [v15 pageViewController:self didChangeVisibleViewControllerFromViewController:v37 direction:2];
  }

  [(NUPageViewController *)self managePreviousAndNextViewController];
  v16 = [(NUPageViewController *)self scrollView];
  [v16 contentOffset];
  v18 = v17;

  [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
  v19 = [(NUPageViewController *)self nextViewController];

  if (!v19)
  {
    v31 = v5 * 0.5;
    v32 = v5 * 0.5 + v18;
    v33 = [(NUPageViewController *)self previousViewController];

    v34 = [(NUPageViewController *)self scrollView];
    [v34 contentOffset];
    v24 = v35;

    if (v33)
    {
      v30 = v32 - v31;
    }

    else
    {
      v30 = v32 - v5 - v31;
    }

    goto LABEL_11;
  }

  v20 = [(NUPageViewController *)self scrollView];
  [v20 contentOffset];
  v22 = v21;
  v24 = v23;

  v25 = [(NUPageViewController *)self scrollView];
  [v25 bounds];
  v27 = v26 + v26;

  if (v22 >= v27)
  {
    v28 = [(NUPageViewController *)self scrollView];
    [v28 bounds];
    v30 = v22 - v29;

LABEL_11:
    v36 = [(NUPageViewController *)self scrollView];
    [v36 setContentOffset:{v30, v24}];
  }

  [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (BOOL)canSwitchToPreviousViewController
{
  v2 = [(NUPageViewController *)self previousViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canSwitchToNextViewController
{
  v2 = [(NUPageViewController *)self nextViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)_keyboardSwitchGoingRight:(BOOL)a3
{
  v3 = a3;
  if (![(NUPageViewController *)self scrollViewStartedScrolling])
  {
    v5 = [(NUPageViewController *)self canSwitchToNextViewController];
    v6 = [(NUPageViewController *)self canSwitchToPreviousViewController];
    if (v3 ? v5 : v6)
    {
      v8 = [(NUPageViewController *)self visibleViewController];
      [(NUPageViewController *)self setOriginalVisibleViewController:v8];

      v19 = [(NUPageViewController *)self scrollView];
      [v19 bounds];
      Width = CGRectGetWidth(v21);
      if (v3)
      {
        v10 = Width;
      }

      else
      {
        v10 = -Width;
      }

      [v19 contentOffset];
      v12 = fmax(v10 + v11, 0.0);
      [v19 contentSize];
      v14 = v13 - Width;
      if (v12 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      [v19 contentOffset];
      v17 = v16;
      [(NUPageViewController *)self handleScrollStart];
      v18 = [(NUPageViewController *)self scrollView];
      [v18 setContentOffset:1 animated:{v15, v17}];
    }
  }
}

- (void)switchToPreviousViewController
{
  v3 = [(NUPageViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;

  v6 = [(NUPageViewController *)self scrollView];
  [v6 contentOffset];
  v8 = v7;

  v9 = [(NUPageViewController *)self previousViewController];

  if (v9)
  {
    v10 = [(NUPageViewController *)self previousViewController];
    v29 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setPreviousViewController:0];
    v11 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setNextViewController:v11];

    visibleViewController = self->_visibleViewController;
    self->_visibleViewController = v10;
    v13 = v10;

    v14 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setOriginalVisibleViewController:v14];

    v15 = [(NUPageViewController *)self originalVisibleViewController];
    v16 = [v15 view];
    [v16 setUserInteractionEnabled:0];

    v17 = [(NUPageViewController *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v18 = [(NUPageViewController *)self delegate];
      [v18 pageViewController:self didChangeVisibleViewControllerFromViewController:v29 direction:1];
    }

    [(NUPageViewController *)self managePreviousAndNextViewController];
    [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
    v19 = [(NUPageViewController *)self previousViewController];

    v20 = [(NUPageViewController *)self scrollView];
    [v20 contentOffset];
    v23 = v22;
    if (v19)
    {
      v24 = v21;

      v25 = [(NUPageViewController *)self scrollView];
      [v25 bounds];
      v27 = v24 + v26;
    }

    else
    {

      v27 = v5 * 0.5 + v8 - v5 * 0.5;
    }

    v28 = [(NUPageViewController *)self scrollView];
    [v28 setContentOffset:{v27, v23}];

    [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
  }
}

- (void)transitionToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v32 = *MEMORY[0x277D85DE8];
  v6 = [(NUPageViewController *)self scrollView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(NUPageViewController *)self scrollView];
  [v11 setBounds:{v8, v10, width + 4.0, height}];

  v12 = [(NUPageViewController *)self childViewControllers];
  v13 = [v12 count];

  if (v13)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [(NUPageViewController *)self childViewControllers];
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v19 view];
          [v20 bounds];
          v22 = v21;
          v24 = v23;

          v25 = [v19 view];
          [v25 setBounds:{v22, v24, width, height}];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);
    }

    [(NUPageViewController *)self repositionPages];
    [(NUPageViewController *)self updateContentSize];
    [(NUPageViewController *)self updateContentOffset];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v21.receiver = self;
  v21.super_class = NUPageViewController;
  v7 = a4;
  [(NUPageViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(NUPageViewController *)self scrollView];
  if ([v8 isDecelerating])
  {

LABEL_4:
    v11 = [(NUPageViewController *)self visibleViewController];
    v12 = [v11 view];
    [v12 center];
    v14 = v13;
    v15 = [(NUPageViewController *)self visibleViewController];
    v16 = [v15 view];
    [v16 bounds];
    v17 = v14 + CGRectGetWidth(v22) * -0.5 + -2.0;

    v18 = [(NUPageViewController *)self scrollView];
    [v18 setContentOffset:0 animated:{v17, 0.0}];

    goto LABEL_5;
  }

  v9 = [(NUPageViewController *)self scrollView];
  v10 = [v9 isDragging];

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  self->_isTransitioning = 1;
  self->_transitioningSize.width = width;
  self->_transitioningSize.height = height;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__NUPageViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v20[3] = &unk_2799A3F58;
  v20[4] = self;
  *&v20[5] = width;
  *&v20[6] = height;
  v19 = MEMORY[0x25F883F30](v20);
  [v7 animateAlongsideTransition:v19 completion:0];
}

uint64_t __75__NUPageViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) transitionToSize:{*(a1 + 40), *(a1 + 48)}];
  *(*(a1 + 32) + 993) = 0;
  return result;
}

- (NUPageViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NUPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)transitioningSize
{
  width = self->_transitioningSize.width;
  height = self->_transitioningSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end