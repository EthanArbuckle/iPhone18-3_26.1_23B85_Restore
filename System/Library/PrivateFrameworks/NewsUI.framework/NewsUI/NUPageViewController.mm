@interface NUPageViewController
- (BOOL)_assistiveTechnologyIsRunning;
- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)view;
- (BOOL)canSwitchToNextViewController;
- (BOOL)canSwitchToPreviousViewController;
- (BOOL)pagingEnabled;
- (CGPoint)centerForIndex:(unint64_t)index;
- (CGSize)pageSize;
- (CGSize)transitioningSize;
- (NUPageViewController)initWithCoder:(id)coder;
- (NUPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NUPageViewControllerDataSource)dataSource;
- (NUPageViewControllerDelegate)delegate;
- (void)_keyboardSwitchGoingRight:(BOOL)right;
- (void)callLastViewAppearanceMethods;
- (void)commonInit;
- (void)handleScrollEnd;
- (void)handleScrollStart;
- (void)managePreviousAndNextViewController;
- (void)performWhenIdle:(id)idle;
- (void)reindexViewControllers;
- (void)removeViewController:(id)controller;
- (void)repositionPages;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setPossibleNextViewController:(id)controller;
- (void)setVisibleViewController:(id)controller;
- (void)switchToNextViewController;
- (void)switchToPreviousViewController;
- (void)transitionToSize:(CGSize)size;
- (void)updateContentOffset;
- (void)updateContentSize;
- (void)updatePositionForViewController:(id)controller;
- (void)updateScrollView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NUPageViewController

- (NUPageViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NUPageViewController;
  v3 = [(NUPageViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NUPageViewController *)v3 commonInit];
  }

  return v4;
}

- (NUPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = NUPageViewController;
  v4 = [(NUPageViewController *)&v7 initWithNibName:name bundle:bundle];
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
  view = [(NUPageViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  scrollView = [(NUPageViewController *)self scrollView];
  view2 = [(NUPageViewController *)self view];
  [view2 bounds];
  v15 = CGRectInset(v14, -2.0, 0.0);
  [scrollView setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];

  scrollView2 = [(NUPageViewController *)self scrollView];
  [scrollView2 setAutoresizingMask:18];

  view3 = [(NUPageViewController *)self view];
  scrollView3 = [(NUPageViewController *)self scrollView];
  [view3 addSubview:scrollView3];

  view4 = [(NUPageViewController *)self view];
  [view4 bounds];
  [(NUPageViewController *)self transitionToSize:v11, v12];

  [(NUPageViewController *)self updateContentSize];
  [(NUPageViewController *)self updateContentOffset];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = NUPageViewController;
  [(NUPageViewController *)&v17 viewWillLayoutSubviews];
  scrollView = [(NUPageViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;
  view = [(NUPageViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    view2 = [(NUPageViewController *)self view];
    [view2 bounds];
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

- (void)performWhenIdle:(id)idle
{
  idleCopy = idle;
  idleDispatchGroup = [(NUPageViewController *)self idleDispatchGroup];
  dispatch_group_notify(idleDispatchGroup, MEMORY[0x277D85CD0], idleCopy);
}

- (void)setVisibleViewController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  visibleViewController = [(NUPageViewController *)self visibleViewController];

  if (visibleViewController != controllerCopy)
  {
    visibleViewController2 = [(NUPageViewController *)self visibleViewController];
    visibleViewController3 = [(NUPageViewController *)self visibleViewController];

    if (visibleViewController3)
    {
      visibleViewController4 = [(NUPageViewController *)self visibleViewController];
      [(NUPageViewController *)self removeViewController:visibleViewController4];
    }

    [(NUPageViewController *)self addViewController:controllerCopy fromScroll:0];
    objc_storeStrong(&self->_visibleViewController, controller);
    [(NUPageViewController *)self reindexViewControllers];
    replayViewTransitions = [(NUPageViewController *)self replayViewTransitions];

    if (replayViewTransitions)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      replayViewTransitions2 = [(NUPageViewController *)self replayViewTransitions];
      v12 = [replayViewTransitions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(replayViewTransitions2);
            }

            (*(*(*(&v20 + 1) + 8 * v15++) + 16))();
          }

          while (v13 != v15);
          v13 = [replayViewTransitions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      [(NUPageViewController *)self setReplayViewTransitions:0];
    }

    [(NUPageViewController *)self updateContentOffset];
    delegate = [(NUPageViewController *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate2 = [(NUPageViewController *)self delegate];
      [delegate2 pageViewController:self didChangeVisibleViewControllerFromViewController:visibleViewController2 direction:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (CGSize)pageSize
{
  view = [(NUPageViewController *)self view];
  [view bounds];
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
  scrollView = [(NUPageViewController *)self scrollView];
  isScrollEnabled = [scrollView isScrollEnabled];

  return isScrollEnabled;
}

- (void)updateScrollView
{
  [(NUPageViewController *)self updateContentSize];

  [(NUPageViewController *)self updateContentOffset];
}

- (void)updateContentSize
{
  nextViewController = [(NUPageViewController *)self nextViewController];

  if (nextViewController)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  previousViewController = [(NUPageViewController *)self previousViewController];

  if (previousViewController)
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
  scrollView = [(NUPageViewController *)self scrollView];
  [scrollView setContentSize:{v8, v10}];

  [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)updateContentOffset
{
  visibleViewController = [(NUPageViewController *)self visibleViewController];
  view = [visibleViewController view];
  [view center];
  v6 = v5;
  visibleViewController2 = [(NUPageViewController *)self visibleViewController];
  view2 = [visibleViewController2 view];
  [view2 bounds];
  v9 = v6 + CGRectGetWidth(v12) * -0.5 + -2.0;

  [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
  scrollView = [(NUPageViewController *)self scrollView];
  [scrollView setContentOffset:{v9, 0.0}];

  [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (void)setPossibleNextViewController:(id)controller
{
  controllerCopy = controller;
  possibleNextViewController = self->_possibleNextViewController;
  if (possibleNextViewController != controllerCopy)
  {
    if ([(UIViewController *)possibleNextViewController isViewLoaded])
    {
      view = [(UIViewController *)self->_possibleNextViewController view];
      [view setUserInteractionEnabled:1];
    }

    objc_storeStrong(&self->_possibleNextViewController, controller);
  }

  MEMORY[0x2821F96F8]();
}

- (CGPoint)centerForIndex:(unint64_t)index
{
  [(NUPageViewController *)self pageSize];
  v6 = (4 * index) + v5 * (index + 0.5) + 2.0;
  [(NUPageViewController *)self pageSize];
  v8 = v7 * 0.5;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)repositionPages
{
  nextViewController = [(NUPageViewController *)self nextViewController];
  [(NUPageViewController *)self updatePositionForViewController:nextViewController];

  visibleViewController = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self updatePositionForViewController:visibleViewController];

  previousViewController = [(NUPageViewController *)self previousViewController];
  [(NUPageViewController *)self updatePositionForViewController:previousViewController];
}

- (void)managePreviousAndNextViewController
{
  managedForViewController = [(NUPageViewController *)self managedForViewController];
  visibleViewController = [(NUPageViewController *)self visibleViewController];

  if (managedForViewController != visibleViewController)
  {
    previousViewController = [(NUPageViewController *)self previousViewController];

    if (!previousViewController)
    {
      dataSource = [(NUPageViewController *)self dataSource];
      visibleViewController2 = [(NUPageViewController *)self visibleViewController];
      v8 = [dataSource pageViewController:self viewControllerBeforeViewController:visibleViewController2];
      [(NUPageViewController *)self setPreviousViewController:v8];
    }

    previousViewController2 = [(NUPageViewController *)self previousViewController];

    if (previousViewController2)
    {
      view = [(NUPageViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v32);
      view2 = [(NUPageViewController *)self view];
      [view2 bounds];
      Height = CGRectGetHeight(v33);
      previousViewController3 = [(NUPageViewController *)self previousViewController];
      view3 = [previousViewController3 view];
      [view3 setBounds:{0.0, 0.0, Width, Height}];

      previousViewController4 = [(NUPageViewController *)self previousViewController];
      [(NUPageViewController *)self updatePositionForViewController:previousViewController4];
    }

    nextViewController = [(NUPageViewController *)self nextViewController];

    if (!nextViewController)
    {
      dataSource2 = [(NUPageViewController *)self dataSource];
      visibleViewController3 = [(NUPageViewController *)self visibleViewController];
      v20 = [dataSource2 pageViewController:self viewControllerAfterViewController:visibleViewController3];
      [(NUPageViewController *)self setNextViewController:v20];
    }

    nextViewController2 = [(NUPageViewController *)self nextViewController];

    if (nextViewController2)
    {
      view4 = [(NUPageViewController *)self view];
      [view4 bounds];
      v23 = CGRectGetWidth(v34);
      view5 = [(NUPageViewController *)self view];
      [view5 bounds];
      v25 = CGRectGetHeight(v35);
      nextViewController3 = [(NUPageViewController *)self nextViewController];
      view6 = [nextViewController3 view];
      [view6 setBounds:{0.0, 0.0, v23, v25}];

      nextViewController4 = [(NUPageViewController *)self nextViewController];
      [(NUPageViewController *)self updatePositionForViewController:nextViewController4];
    }

    visibleViewController4 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self updatePositionForViewController:visibleViewController4];

    [(NUPageViewController *)self updateContentSize];
    visibleViewController5 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setManagedForViewController:visibleViewController5];
  }
}

- (void)updatePositionForViewController:(id)controller
{
  controllerCopy = controller;
  visibleViewController = [(NUPageViewController *)self visibleViewController];

  previousViewController = [(NUPageViewController *)self previousViewController];
  if (visibleViewController == controllerCopy)
  {
    v7 = previousViewController != 0;
  }

  else
  {

    if (previousViewController == controllerCopy || ([(NUPageViewController *)self nextViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != controllerCopy))
    {
      v7 = 0;
      goto LABEL_10;
    }

    previousViewController = [(NUPageViewController *)self previousViewController];
    if (previousViewController)
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
  view = [controllerCopy view];
  [view setCenter:{v9, v11}];
}

- (void)removeViewController:(id)controller
{
  controllerCopy = controller;
  appearingViewController = [(NUPageViewController *)self appearingViewController];

  if (appearingViewController == controllerCopy)
  {
    [controllerCopy beginAppearanceTransition:0 animated:0];
    [(NUPageViewController *)self setAppearingViewController:0];
  }

  [controllerCopy endAppearanceTransition];
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
  delegate = [(NUPageViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(NUPageViewController *)self delegate];
    [delegate2 pageViewController:self didHideViewController:controllerCopy];
  }
}

- (void)reindexViewControllers
{
  [(NUPageViewController *)self setNextViewController:0];
  [(NUPageViewController *)self setPreviousViewController:0];
  [(NUPageViewController *)self setManagedForViewController:0];

  [(NUPageViewController *)self managePreviousAndNextViewController];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  visibleViewController = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setOriginalVisibleViewController:visibleViewController];

  originalVisibleViewController = [(NUPageViewController *)self originalVisibleViewController];
  view = [originalVisibleViewController view];
  [view setUserInteractionEnabled:0];

  [(NUPageViewController *)self handleScrollStart];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(NUPageViewController *)self handleScrollEnd];
  }
}

- (void)handleScrollStart
{
  if (![(NUPageViewController *)self scrollViewStartedScrolling])
  {
    idleDispatchGroup = [(NUPageViewController *)self idleDispatchGroup];
    dispatch_group_enter(idleDispatchGroup);

    self->_scrollViewStartedScrolling = 1;
  }
}

- (void)handleScrollEnd
{
  if ([(NUPageViewController *)self scrollViewStartedScrolling])
  {
    idleDispatchGroup = [(NUPageViewController *)self idleDispatchGroup];
    dispatch_group_leave(idleDispatchGroup);

    self->_scrollViewStartedScrolling = 0;
  }

  [(NUPageViewController *)self callLastViewAppearanceMethods];
}

- (void)callLastViewAppearanceMethods
{
  originalVisibleViewController = [(NUPageViewController *)self originalVisibleViewController];
  view = [originalVisibleViewController view];
  [view setUserInteractionEnabled:1];

  if (![(NUPageViewController *)self scrollViewStartedScrolling])
  {
    visibleViewController = [(NUPageViewController *)self visibleViewController];
    disappearingViewController = [(NUPageViewController *)self disappearingViewController];

    if (visibleViewController == disappearingViewController)
    {
      disappearingViewController2 = [(NUPageViewController *)self disappearingViewController];
      [disappearingViewController2 beginAppearanceTransition:1 animated:0];

      disappearingViewController3 = [(NUPageViewController *)self disappearingViewController];
      [disappearingViewController3 endAppearanceTransition];
    }

    visibleViewController2 = [(NUPageViewController *)self visibleViewController];
    appearingViewController = [(NUPageViewController *)self appearingViewController];

    if (visibleViewController2 != appearingViewController)
    {
      appearingViewController2 = [(NUPageViewController *)self appearingViewController];
      [appearingViewController2 beginAppearanceTransition:0 animated:0];

      appearingViewController3 = [(NUPageViewController *)self appearingViewController];
      [appearingViewController3 endAppearanceTransition];
    }

    visibleViewController3 = [(NUPageViewController *)self visibleViewController];
    appearingViewController4 = [(NUPageViewController *)self appearingViewController];

    if (visibleViewController3 == appearingViewController4)
    {
      appearingViewController5 = [(NUPageViewController *)self appearingViewController];
      [appearingViewController5 endAppearanceTransition];
    }

    [(NUPageViewController *)self setAppearingViewController:0];

    [(NUPageViewController *)self setDisappearingViewController:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (![(NUPageViewController *)self cancelScrollViewDidScroll]&& ![(NUPageViewController *)self _shouldIgnoreDidScrollWithScrollView:scrollCopy])
  {
    [scrollCopy contentOffset];
    v5 = v4;
    [scrollCopy contentOffset];
    v7 = v6;
    visibleViewController = [(NUPageViewController *)self visibleViewController];
    view = [visibleViewController view];
    [view center];
    v11 = v10;
    [scrollCopy bounds];
    v13 = v7 - (v11 + v12 * -0.5);

    if (v13 >= 0.0)
    {
      if (v13 <= 0.0)
      {
        v15 = 0;
        goto LABEL_9;
      }

      nextViewController = [(NUPageViewController *)self nextViewController];
    }

    else
    {
      nextViewController = [(NUPageViewController *)self previousViewController];
    }

    v15 = nextViewController;
LABEL_9:
    possibleNextViewController = [(NUPageViewController *)self possibleNextViewController];

    if (!possibleNextViewController && v15)
    {
      [(NUPageViewController *)self setPossibleNextViewController:v15];
      [(NUPageViewController *)self addViewController:v15 fromScroll:1];
LABEL_15:
      possibleNextViewController2 = [(NUPageViewController *)self possibleNextViewController];
      [possibleNextViewController2 beginAppearanceTransition:1 animated:0];

      goto LABEL_16;
    }

    possibleNextViewController3 = [(NUPageViewController *)self possibleNextViewController];

    if (v15)
    {
      if (possibleNextViewController3 != v15)
      {
        possibleNextViewController4 = [(NUPageViewController *)self possibleNextViewController];
        [(NUPageViewController *)self removeViewController:possibleNextViewController4];

        [(NUPageViewController *)self setPossibleNextViewController:v15];
        possibleNextViewController5 = [(NUPageViewController *)self possibleNextViewController];
        [(NUPageViewController *)self addViewController:possibleNextViewController5 fromScroll:1];

        goto LABEL_15;
      }
    }

    else if (possibleNextViewController3)
    {
      possibleNextViewController6 = [(NUPageViewController *)self possibleNextViewController];
      [(NUPageViewController *)self removeViewController:possibleNextViewController6];

      [(NUPageViewController *)self setPossibleNextViewController:0];
    }

LABEL_16:
    possibleNextViewController7 = [(NUPageViewController *)self possibleNextViewController];
    view2 = [possibleNextViewController7 view];
    [view2 setUserInteractionEnabled:0];

    delegate = [(NUPageViewController *)self delegate];
    LOBYTE(view2) = objc_opt_respondsToSelector();

    if (view2)
    {
      visibleViewController2 = [(NUPageViewController *)self visibleViewController];
      view3 = [visibleViewController2 view];
      [view3 frame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      view4 = [(NUPageViewController *)self view];
      [view4 bounds];
      v36 = v35;
      view5 = [(NUPageViewController *)self view];
      [view5 bounds];
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

      view6 = [(NUPageViewController *)self view];
      [view6 bounds];
      v42 = width / v41;

      delegate2 = [(NUPageViewController *)self delegate];
      visibleViewController3 = [(NUPageViewController *)self visibleViewController];
      [delegate2 pageViewController:self viewController:visibleViewController3 changedVisibilityFactor:v42];

      possibleNextViewController8 = [(NUPageViewController *)self possibleNextViewController];

      if (possibleNextViewController8)
      {
        possibleNextViewController9 = [(NUPageViewController *)self possibleNextViewController];
        view7 = [possibleNextViewController9 view];
        [view7 frame];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
        view8 = [(NUPageViewController *)self view];
        [view8 bounds];
        v58 = v57;
        view9 = [(NUPageViewController *)self view];
        [view9 bounds];
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

        view10 = [(NUPageViewController *)self view];
        [view10 bounds];
        v64 = v61 / v63;

        delegate3 = [(NUPageViewController *)self delegate];
        possibleNextViewController10 = [(NUPageViewController *)self possibleNextViewController];
        [delegate3 pageViewController:self viewController:possibleNextViewController10 changedVisibilityFactor:v64];
      }
    }

    visibleViewController4 = [(NUPageViewController *)self visibleViewController];
    view11 = [visibleViewController4 view];
    [view11 center];
    v70 = v69;
    scrollView = [(NUPageViewController *)self scrollView];
    [scrollView bounds];
    v73 = v70 + v72 * -1.5;

    visibleViewController5 = [(NUPageViewController *)self visibleViewController];
    view12 = [visibleViewController5 view];
    [view12 center];
    v77 = v76;
    scrollView2 = [(NUPageViewController *)self scrollView];
    [scrollView2 bounds];
    v80 = v79;

    visibleViewController6 = [(NUPageViewController *)self visibleViewController];
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

    [(NUPageViewController *)self removeViewController:visibleViewController6];
    [(NUPageViewController *)self setPossibleNextViewController:0];
    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)_shouldIgnoreDidScrollWithScrollView:(id)view
{
  viewCopy = view;
  if ([viewCopy isDragging])
  {
    [(NUPageViewController *)self _assistiveTechnologyIsRunning];
    LOBYTE(v5) = 0;
  }

  else
  {
    isDecelerating = [viewCopy isDecelerating];
    _assistiveTechnologyIsRunning = [(NUPageViewController *)self _assistiveTechnologyIsRunning];
    LOBYTE(v5) = 0;
    if ((isDecelerating & 1) == 0 && !_assistiveTechnologyIsRunning)
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
  scrollView = [(NUPageViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;

  nextViewController = [(NUPageViewController *)self nextViewController];

  if (!nextViewController)
  {
    return;
  }

  nextViewController2 = [(NUPageViewController *)self nextViewController];
  visibleViewController = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setNextViewController:0];
  visibleViewController2 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setPreviousViewController:visibleViewController2];

  visibleViewController = self->_visibleViewController;
  self->_visibleViewController = nextViewController2;
  v10 = nextViewController2;

  visibleViewController3 = [(NUPageViewController *)self visibleViewController];
  [(NUPageViewController *)self setOriginalVisibleViewController:visibleViewController3];

  originalVisibleViewController = [(NUPageViewController *)self originalVisibleViewController];
  view = [originalVisibleViewController view];
  [view setUserInteractionEnabled:0];

  delegate = [(NUPageViewController *)self delegate];
  LOBYTE(view) = objc_opt_respondsToSelector();

  if (view)
  {
    delegate2 = [(NUPageViewController *)self delegate];
    [delegate2 pageViewController:self didChangeVisibleViewControllerFromViewController:visibleViewController direction:2];
  }

  [(NUPageViewController *)self managePreviousAndNextViewController];
  scrollView2 = [(NUPageViewController *)self scrollView];
  [scrollView2 contentOffset];
  v18 = v17;

  [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
  nextViewController3 = [(NUPageViewController *)self nextViewController];

  if (!nextViewController3)
  {
    v31 = v5 * 0.5;
    v32 = v5 * 0.5 + v18;
    previousViewController = [(NUPageViewController *)self previousViewController];

    scrollView3 = [(NUPageViewController *)self scrollView];
    [scrollView3 contentOffset];
    v24 = v35;

    if (previousViewController)
    {
      v30 = v32 - v31;
    }

    else
    {
      v30 = v32 - v5 - v31;
    }

    goto LABEL_11;
  }

  scrollView4 = [(NUPageViewController *)self scrollView];
  [scrollView4 contentOffset];
  v22 = v21;
  v24 = v23;

  scrollView5 = [(NUPageViewController *)self scrollView];
  [scrollView5 bounds];
  v27 = v26 + v26;

  if (v22 >= v27)
  {
    scrollView6 = [(NUPageViewController *)self scrollView];
    [scrollView6 bounds];
    v30 = v22 - v29;

LABEL_11:
    scrollView7 = [(NUPageViewController *)self scrollView];
    [scrollView7 setContentOffset:{v30, v24}];
  }

  [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
}

- (BOOL)canSwitchToPreviousViewController
{
  previousViewController = [(NUPageViewController *)self previousViewController];
  v3 = previousViewController != 0;

  return v3;
}

- (BOOL)canSwitchToNextViewController
{
  nextViewController = [(NUPageViewController *)self nextViewController];
  v3 = nextViewController != 0;

  return v3;
}

- (void)_keyboardSwitchGoingRight:(BOOL)right
{
  rightCopy = right;
  if (![(NUPageViewController *)self scrollViewStartedScrolling])
  {
    canSwitchToNextViewController = [(NUPageViewController *)self canSwitchToNextViewController];
    canSwitchToPreviousViewController = [(NUPageViewController *)self canSwitchToPreviousViewController];
    if (rightCopy ? canSwitchToNextViewController : canSwitchToPreviousViewController)
    {
      visibleViewController = [(NUPageViewController *)self visibleViewController];
      [(NUPageViewController *)self setOriginalVisibleViewController:visibleViewController];

      scrollView = [(NUPageViewController *)self scrollView];
      [scrollView bounds];
      Width = CGRectGetWidth(v21);
      if (rightCopy)
      {
        v10 = Width;
      }

      else
      {
        v10 = -Width;
      }

      [scrollView contentOffset];
      v12 = fmax(v10 + v11, 0.0);
      [scrollView contentSize];
      v14 = v13 - Width;
      if (v12 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      [scrollView contentOffset];
      v17 = v16;
      [(NUPageViewController *)self handleScrollStart];
      scrollView2 = [(NUPageViewController *)self scrollView];
      [scrollView2 setContentOffset:1 animated:{v15, v17}];
    }
  }
}

- (void)switchToPreviousViewController
{
  scrollView = [(NUPageViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;

  scrollView2 = [(NUPageViewController *)self scrollView];
  [scrollView2 contentOffset];
  v8 = v7;

  previousViewController = [(NUPageViewController *)self previousViewController];

  if (previousViewController)
  {
    previousViewController2 = [(NUPageViewController *)self previousViewController];
    visibleViewController = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setPreviousViewController:0];
    visibleViewController2 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setNextViewController:visibleViewController2];

    visibleViewController = self->_visibleViewController;
    self->_visibleViewController = previousViewController2;
    v13 = previousViewController2;

    visibleViewController3 = [(NUPageViewController *)self visibleViewController];
    [(NUPageViewController *)self setOriginalVisibleViewController:visibleViewController3];

    originalVisibleViewController = [(NUPageViewController *)self originalVisibleViewController];
    view = [originalVisibleViewController view];
    [view setUserInteractionEnabled:0];

    delegate = [(NUPageViewController *)self delegate];
    LOBYTE(view) = objc_opt_respondsToSelector();

    if (view)
    {
      delegate2 = [(NUPageViewController *)self delegate];
      [delegate2 pageViewController:self didChangeVisibleViewControllerFromViewController:visibleViewController direction:1];
    }

    [(NUPageViewController *)self managePreviousAndNextViewController];
    [(NUPageViewController *)self setCancelScrollViewDidScroll:1];
    previousViewController3 = [(NUPageViewController *)self previousViewController];

    scrollView3 = [(NUPageViewController *)self scrollView];
    [scrollView3 contentOffset];
    v23 = v22;
    if (previousViewController3)
    {
      v24 = v21;

      scrollView4 = [(NUPageViewController *)self scrollView];
      [scrollView4 bounds];
      v27 = v24 + v26;
    }

    else
    {

      v27 = v5 * 0.5 + v8 - v5 * 0.5;
    }

    scrollView5 = [(NUPageViewController *)self scrollView];
    [scrollView5 setContentOffset:{v27, v23}];

    [(NUPageViewController *)self setCancelScrollViewDidScroll:0];
  }
}

- (void)transitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v32 = *MEMORY[0x277D85DE8];
  scrollView = [(NUPageViewController *)self scrollView];
  [scrollView bounds];
  v8 = v7;
  v10 = v9;

  scrollView2 = [(NUPageViewController *)self scrollView];
  [scrollView2 setBounds:{v8, v10, width + 4.0, height}];

  childViewControllers = [(NUPageViewController *)self childViewControllers];
  v13 = [childViewControllers count];

  if (v13)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    childViewControllers2 = [(NUPageViewController *)self childViewControllers];
    v15 = [childViewControllers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(childViewControllers2);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          view = [v19 view];
          [view bounds];
          v22 = v21;
          v24 = v23;

          view2 = [v19 view];
          [view2 setBounds:{v22, v24, width, height}];
        }

        v16 = [childViewControllers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);
    }

    [(NUPageViewController *)self repositionPages];
    [(NUPageViewController *)self updateContentSize];
    [(NUPageViewController *)self updateContentOffset];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v21.receiver = self;
  v21.super_class = NUPageViewController;
  coordinatorCopy = coordinator;
  [(NUPageViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  scrollView = [(NUPageViewController *)self scrollView];
  if ([scrollView isDecelerating])
  {

LABEL_4:
    visibleViewController = [(NUPageViewController *)self visibleViewController];
    view = [visibleViewController view];
    [view center];
    v14 = v13;
    visibleViewController2 = [(NUPageViewController *)self visibleViewController];
    view2 = [visibleViewController2 view];
    [view2 bounds];
    v17 = v14 + CGRectGetWidth(v22) * -0.5 + -2.0;

    scrollView2 = [(NUPageViewController *)self scrollView];
    [scrollView2 setContentOffset:0 animated:{v17, 0.0}];

    goto LABEL_5;
  }

  scrollView3 = [(NUPageViewController *)self scrollView];
  isDragging = [scrollView3 isDragging];

  if (isDragging)
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
  [coordinatorCopy animateAlongsideTransition:v19 completion:0];
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