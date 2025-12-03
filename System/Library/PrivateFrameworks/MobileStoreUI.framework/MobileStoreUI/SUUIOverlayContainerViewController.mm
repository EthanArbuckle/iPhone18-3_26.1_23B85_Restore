@interface SUUIOverlayContainerViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_centeredFrameForViewController:(id)controller inBounds:(CGRect)bounds;
- (CGSize)_overlaySizeForController:(id)controller atBoundsSize:(CGSize)size;
- (NSArray)viewControllers;
- (SUUIOverlayContainerDelegate)delegate;
- (SUUIOverlayContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIColor)dimmingViewColor;
- (UIControl)backstopControl;
- (double)_overlaySpacingForSize:(CGSize)size;
- (id)_selectedViewController;
- (id)_viewControllerForPoint:(CGPoint)point;
- (int64_t)_indexOfViewControllerForPoint:(CGPoint)point;
- (void)_fadeInViewController:(id)controller withCompletionBlock:(id)block;
- (void)_frameAction:(id)action;
- (void)_popViewControllers;
- (void)_positionViewControllersForSize:(CGSize)size traitCollection:(id)collection;
- (void)_pushViewController:(id)controller;
- (void)_removeChildren;
- (void)_slideInViewController:(id)controller withCompletionBlock:(id)block;
- (void)_tapAction:(id)action;
- (void)dealloc;
- (void)dismissWithFadeTransitionCompletionBlock:(id)block;
- (void)dismissWithFlipTransition:(id)transition completionBlock:(id)block;
- (void)loadView;
- (void)popViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)replaceViewController:(id)controller withViewController:(id)viewController;
- (void)showViewController:(id)controller withCompletionBlock:(id)block;
- (void)showViewController:(id)controller withFlipTransition:(id)transition completionBlock:(id)block;
- (void)showViewControllers:(id)controllers;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIOverlayContainerViewController

- (SUUIOverlayContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = SUUIOverlayContainerViewController;
  v4 = [(SUUIOverlayContainerViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_selectedViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    viewControllers = v5->_viewControllers;
    v5->_viewControllers = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(UIControl *)self->_backstopView removeGestureRecognizer:self->_tapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIOverlayContainerViewController;
  [(SUUIOverlayContainerViewController *)&v3 dealloc];
}

- (UIControl)backstopControl
{
  backstopView = self->_backstopView;
  if (!backstopView)
  {
    v4 = objc_alloc_init(SUUIOverlayContainerView);
    v5 = self->_backstopView;
    self->_backstopView = &v4->super;

    v6 = self->_backstopView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIControl *)v6 setBackgroundColor:clearColor];

    [(UIControl *)self->_backstopView addTarget:self action:sel__frameAction_ forControlEvents:4096];
    v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapAction_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v8;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    [(UIControl *)self->_backstopView addGestureRecognizer:self->_tapGestureRecognizer];
    backstopView = self->_backstopView;
  }

  return backstopView;
}

- (void)dismissWithFlipTransition:(id)transition completionBlock:(id)block
{
  blockCopy = block;
  flipSourceView = [transition flipSourceView];
  backstopView = self->_backstopView;
  [flipSourceView frame];
  [(UIControl *)backstopView convertRect:0 fromView:?];
  [flipSourceView setFrame:?];
  v9 = [(NSMutableArray *)self->_viewControllers objectAtIndex:self->_selectedViewControllerIndex];
  view = [v9 view];
  self->_isAdjustingViewsForDismiss = 1;
  v11 = [[SUUIScalingFlipView alloc] initWithFrontView:view backView:flipSourceView];
  [(UIControl *)self->_backstopView addSubview:v11];
  [(SUUIScalingFlipView *)v11 setDirection:1];
  [(SUUIScalingFlipView *)v11 setDuration:0.449999988];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__SUUIOverlayContainerViewController_dismissWithFlipTransition_completionBlock___block_invoke;
  v15[3] = &unk_2798F5BE8;
  v15[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v15 animations:0.449999988];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SUUIOverlayContainerViewController_dismissWithFlipTransition_completionBlock___block_invoke_2;
  v13[3] = &unk_2798FAC80;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [(SUUIScalingFlipView *)v11 performFlipWithCompletionBlock:v13];
  self->_isAdjustingViewsForDismiss = 0;
}

void __80__SUUIOverlayContainerViewController_dismissWithFlipTransition_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 992);
  v2 = [MEMORY[0x277D75348] clearColor];
  [v1 setBackgroundColor:v2];
}

uint64_t __80__SUUIOverlayContainerViewController_dismissWithFlipTransition_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 removeFromSuperview];
  [*(a1 + 32) _removeChildren];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)dismissWithFadeTransitionCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__SUUIOverlayContainerViewController_dismissWithFadeTransitionCompletionBlock___block_invoke;
  v9[3] = &unk_2798F5BE8;
  v9[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SUUIOverlayContainerViewController_dismissWithFadeTransitionCompletionBlock___block_invoke_2;
  v7[3] = &unk_2798F5DD0;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 animateWithDuration:v9 animations:v7 completion:0.449999988];
}

void __79__SUUIOverlayContainerViewController_dismissWithFadeTransitionCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 992);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 1032);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) view];
        [v9 setAlpha:0.0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

uint64_t __79__SUUIOverlayContainerViewController_dismissWithFadeTransitionCompletionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)popViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  selectedViewControllerIndex = self->_selectedViewControllerIndex;
  v9 = selectedViewControllerIndex < 1;
  v10 = selectedViewControllerIndex - 1;
  if (!v9)
  {
    self->_selectedViewControllerIndex = v10;
    if (animated)
    {
      ++self->_popViewControllerCount;
      v11 = MEMORY[0x277D75D18];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__SUUIOverlayContainerViewController_popViewControllerAnimated_completion___block_invoke;
      v20[3] = &unk_2798F5BE8;
      v20[4] = self;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__SUUIOverlayContainerViewController_popViewControllerAnimated_completion___block_invoke_2;
      v18[3] = &unk_2798F94C0;
      v18[4] = self;
      v19 = completionCopy;
      [v11 animateWithDuration:v20 animations:v18 completion:0.349999994];
    }

    else
    {
      view = [(SUUIOverlayContainerViewController *)self view];
      [view bounds];
      v14 = v13;
      v16 = v15;
      traitCollection = [(SUUIOverlayContainerViewController *)self traitCollection];
      [(SUUIOverlayContainerViewController *)self _positionViewControllersForSize:traitCollection traitCollection:v14, v16];

      [(SUUIOverlayContainerViewController *)self _popViewControllers];
    }
  }
}

void __75__SUUIOverlayContainerViewController_popViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [v2 view];
  [v8 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) traitCollection];
  [v2 _positionViewControllersForSize:v7 traitCollection:{v4, v6}];
}

uint64_t __75__SUUIOverlayContainerViewController_popViewControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _popViewControllers];
  --*(*(a1 + 32) + 1008);
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)replaceViewController:(id)controller withViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v7 = [(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:controllerCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    view = [controllerCopy view];
    view2 = [viewControllerCopy view];
    [view frame];
    [view2 setFrame:?];
    [(SUUIOverlayContainerViewController *)self addChildViewController:viewControllerCopy];
    superview = [view superview];
    [superview addSubview:view2];

    [view removeFromSuperview];
    [controllerCopy removeFromParentViewController];
    [(NSMutableArray *)self->_viewControllers replaceObjectAtIndex:v8 withObject:viewControllerCopy];
  }
}

- (void)showViewController:(id)controller withCompletionBlock:(id)block
{
  viewControllers = self->_viewControllers;
  blockCopy = block;
  controllerCopy = controller;
  if ([(NSMutableArray *)viewControllers count])
  {
    [(SUUIOverlayContainerViewController *)self _slideInViewController:controllerCopy withCompletionBlock:blockCopy];
  }

  else
  {
    [(SUUIOverlayContainerViewController *)self _fadeInViewController:controllerCopy withCompletionBlock:blockCopy];
  }
}

- (void)showViewControllers:(id)controllers
{
  v23 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  backstopView = self->_backstopView;
  dimmingViewColor = [(SUUIOverlayContainerViewController *)self dimmingViewColor];
  [(UIControl *)backstopView setBackgroundColor:dimmingViewColor];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = controllersCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SUUIOverlayContainerViewController *)self _pushViewController:*(*(&v18 + 1) + 8 * v11++), v18];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  view = [(SUUIOverlayContainerViewController *)self view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  traitCollection = [(SUUIOverlayContainerViewController *)self traitCollection];
  [(SUUIOverlayContainerViewController *)self _positionViewControllersForSize:traitCollection traitCollection:v14, v16];
}

- (void)showViewController:(id)controller withFlipTransition:(id)transition completionBlock:(id)block
{
  blockCopy = block;
  transitionCopy = transition;
  controllerCopy = controller;
  view = [controllerCopy view];
  [view setAutoresizingMask:45];
  view2 = [(SUUIOverlayContainerViewController *)self view];
  [view2 bounds];
  [(SUUIOverlayContainerViewController *)self _centeredFrameForViewController:controllerCopy inBounds:?];
  [view setFrame:?];

  flipSourceView = [transitionCopy flipSourceView];

  backstopView = self->_backstopView;
  [flipSourceView frame];
  [(UIControl *)backstopView convertRect:0 fromView:?];
  [flipSourceView setFrame:?];
  v15 = [[SUUIScalingFlipView alloc] initWithFrontView:flipSourceView backView:view];
  [(SUUIScalingFlipView *)v15 setDuration:0.449999988];
  [(UIControl *)self->_backstopView addSubview:v15];
  [(SUUIOverlayContainerViewController *)self addChildViewController:controllerCopy];
  [(NSMutableArray *)self->_viewControllers addObject:controllerCopy];

  self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers count]- 1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__SUUIOverlayContainerViewController_showViewController_withFlipTransition_completionBlock___block_invoke;
  v21[3] = &unk_2798F5BE8;
  v21[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v21 animations:0.449999988];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__SUUIOverlayContainerViewController_showViewController_withFlipTransition_completionBlock___block_invoke_2;
  v18[3] = &unk_2798FACA8;
  v18[4] = self;
  v19 = view;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = view;
  [(SUUIScalingFlipView *)v15 performFlipWithCompletionBlock:v18];
}

void __92__SUUIOverlayContainerViewController_showViewController_withFlipTransition_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[124];
  v3 = [v1 dimmingViewColor];
  [v2 setBackgroundColor:v3];
}

uint64_t __92__SUUIOverlayContainerViewController_showViewController_withFlipTransition_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) traitCollection];
  [v3 _positionViewControllersForSize:v10 traitCollection:{v7, v9}];

  [*(*(a1 + 32) + 992) addSubview:*(a1 + 40)];
  [v4 removeFromSuperview];

  result = *(a1 + 48);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (NSArray)viewControllers
{
  if (self->_popViewControllerCount)
  {
    selectedViewControllerIndex = self->_selectedViewControllerIndex;
    v4 = [(NSMutableArray *)self->_viewControllers count];
    if (selectedViewControllerIndex + 1 < v4)
    {
      v5 = selectedViewControllerIndex + 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = [(NSMutableArray *)self->_viewControllers subarrayWithRange:0, v5];
  }

  else
  {
    v6 = self->_viewControllers;
  }

  return v6;
}

- (void)loadView
{
  backstopControl = [(SUUIOverlayContainerViewController *)self backstopControl];
  [(SUUIOverlayContainerViewController *)self setView:backstopControl];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__SUUIOverlayContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2798FACD0;
  v4[4] = self;
  sizeCopy = size;
  [coordinator animateAlongsideTransition:v4 completion:&__block_literal_global_32];
}

void __89__SUUIOverlayContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 traitCollection];
  [v2 _positionViewControllersForSize:v3 traitCollection:{*(a1 + 40), *(a1 + 48)}];
}

- (void)traitCollectionDidChange:(id)change
{
  view = [(SUUIOverlayContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  traitCollection = [(SUUIOverlayContainerViewController *)self traitCollection];
  [(SUUIOverlayContainerViewController *)self _positionViewControllersForSize:traitCollection traitCollection:v5, v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SUUIOverlayContainerViewController;
  [(SUUIOverlayContainerViewController *)&v10 viewWillAppear:appear];
  view = [(SUUIOverlayContainerViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  traitCollection = [(SUUIOverlayContainerViewController *)self traitCollection];
  [(SUUIOverlayContainerViewController *)self _positionViewControllersForSize:traitCollection traitCollection:v6, v8];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _selectedViewController = [(SUUIOverlayContainerViewController *)self _selectedViewController];
  if (_selectedViewController)
  {
    [beginCopy locationInView:self->_backstopView];
    v6 = [(SUUIOverlayContainerViewController *)self _viewControllerForPoint:?];
    if (v6)
    {
      v7 = _selectedViewController == v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_tapAction:(id)action
{
  [action locationInView:self->_backstopView];
  v4 = [(SUUIOverlayContainerViewController *)self _indexOfViewControllerForPoint:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v4 != self->_selectedViewControllerIndex)
  {
    self->_selectedViewControllerIndex = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SUUIOverlayContainerViewController__tapAction___block_invoke;
    v6[3] = &unk_2798F5BE8;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__SUUIOverlayContainerViewController__tapAction___block_invoke_2;
    v5[3] = &unk_2798F5D30;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:0.349999994];
  }
}

void __49__SUUIOverlayContainerViewController__tapAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [v2 view];
  [v8 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) traitCollection];
  [v2 _positionViewControllersForSize:v7 traitCollection:{v4, v6}];
}

- (void)_frameAction:(id)action
{
  view = [(SUUIOverlayContainerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  traitCollection = [(SUUIOverlayContainerViewController *)self traitCollection];
  [(SUUIOverlayContainerViewController *)self _positionViewControllersForSize:traitCollection traitCollection:v5, v7];
}

- (UIColor)dimmingViewColor
{
  view = [(SUUIOverlayContainerViewController *)self view];
  [view bounds];
  v4 = v3;

  if (v4 <= 1024.0)
  {
    [MEMORY[0x277D75348] _dimmingViewColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.7];
  }
  v5 = ;

  return v5;
}

- (void)_fadeInViewController:(id)controller withCompletionBlock:(id)block
{
  blockCopy = block;
  controllerCopy = controller;
  view = [controllerCopy view];
  [(UIControl *)self->_backstopView bounds];
  [(SUUIOverlayContainerViewController *)self _centeredFrameForViewController:controllerCopy inBounds:?];
  [view setFrame:?];
  [view setAlpha:0.0];
  [(SUUIOverlayContainerViewController *)self _pushViewController:controllerCopy];

  v9 = MEMORY[0x277D75D18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__SUUIOverlayContainerViewController__fadeInViewController_withCompletionBlock___block_invoke;
  v14[3] = &unk_2798F5AF8;
  v14[4] = self;
  v15 = view;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__SUUIOverlayContainerViewController__fadeInViewController_withCompletionBlock___block_invoke_2;
  v12[3] = &unk_2798F5DD0;
  v13 = blockCopy;
  v10 = blockCopy;
  v11 = view;
  [v9 animateWithDuration:v14 animations:v12 completion:0.349999994];
}

uint64_t __80__SUUIOverlayContainerViewController__fadeInViewController_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[124];
  v4 = [v2 dimmingViewColor];
  [v3 setBackgroundColor:v4];

  v5 = *(a1 + 40);

  return [v5 setAlpha:1.0];
}

uint64_t __80__SUUIOverlayContainerViewController__fadeInViewController_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGRect)_centeredFrameForViewController:(id)controller inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  controllerCopy = controller;
  view = [controllerCopy view];
  [view frame];

  [(SUUIOverlayContainerViewController *)self _overlaySizeForController:controllerCopy atBoundsSize:width, height];
  v10 = v9;
  v12 = v11;

  v13 = (width - v10) * 0.5;
  v14 = floorf(v13);
  v15 = (height - v12) * 0.5;
  v16 = floorf(v15);
  v17 = v10;
  v18 = v12;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (int64_t)_indexOfViewControllerForPoint:(CGPoint)point
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  viewControllers = self->_viewControllers;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SUUIOverlayContainerViewController__indexOfViewControllerForPoint___block_invoke;
  v6[3] = &unk_2798FAD18;
  pointCopy = point;
  v6[4] = &v8;
  [(NSMutableArray *)viewControllers enumerateObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __69__SUUIOverlayContainerViewController__indexOfViewControllerForPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 isViewLoaded])
  {
    v7 = [v9 view];
    [v7 frame];
    v8 = CGRectContainsPoint(v11, *(a1 + 40));

    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (CGSize)_overlaySizeForController:(id)controller atBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  navigationController = [controller navigationController];
  navigationBar = [navigationController navigationBar];

  if (navigationBar)
  {
    [navigationBar frame];
    v8 = CGRectGetHeight(v15);
  }

  else
  {
    v8 = 0.0;
  }

  if (width >= 1366.0)
  {
    v10 = 784.0;
    v9 = 904.0;
  }

  else
  {
    v9 = 1045.0;
    if (width >= 1024.0 && height >= 1045.0)
    {
      v10 = 784.0;
    }

    else
    {
      v9 = 630.0;
      v10 = 630.0;
    }
  }

  v11 = v8 + v9;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)_overlaySpacingForSize:(CGSize)size
{
  v3 = size.width <= size.height;
  result = 35.0;
  if (!v3)
  {
    return 120.0;
  }

  return result;
}

- (void)_popViewControllers
{
  if (self->_selectedViewControllerIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(NSMutableArray *)self->_viewControllers count];
    if (v3 > self->_selectedViewControllerIndex + 1)
    {
      v4 = v3;
      do
      {
        v5 = [(NSMutableArray *)self->_viewControllers objectAtIndex:--v4];
        [v5 removeFromParentViewController];
        if ([v5 isViewLoaded])
        {
          view = [v5 view];
          [view removeFromSuperview];
        }

        delegate = [(SUUIOverlayContainerViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate overlayContainerViewController:self willPopViewController:v5];
        }

        [(NSMutableArray *)self->_viewControllers removeObjectAtIndex:v4];
      }

      while (v4 > self->_selectedViewControllerIndex + 1);
    }
  }
}

- (void)_positionViewControllersForSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  _selectedViewController = [(SUUIOverlayContainerViewController *)self _selectedViewController];
  if (_selectedViewController)
  {
    [(SUUIOverlayContainerViewController *)self _overlaySpacingForSize:width, height];
    v47 = v7;
    [(SUUIOverlayContainerViewController *)self _centeredFrameForViewController:_selectedViewController inBounds:0.0, 0.0, width, height];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view = [_selectedViewController view];
    [view setFrame:{v9, v11, v13, v15}];

    selectedViewControllerIndex = self->_selectedViewControllerIndex;
    v48 = height;
    if (selectedViewControllerIndex >= 1)
    {
      v18 = selectedViewControllerIndex + 1;
      do
      {
        v19 = [(NSMutableArray *)self->_viewControllers objectAtIndex:v18 - 2];
        [(SUUIOverlayContainerViewController *)self _centeredFrameForViewController:v19 inBounds:0.0, 0.0, width, height];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v50.origin.x = v9;
        v50.origin.y = v11;
        v50.size.width = v13;
        v50.size.height = v15;
        v9 = CGRectGetMinX(v50) - v23 - v47;
        view2 = [v19 view];
        [view2 setFrame:{v9, v21, v23, v25}];

        --v18;
        v15 = v25;
        v13 = v23;
        v11 = v21;
        height = v48;
      }

      while (v18 > 1);
    }

    v27 = [(NSMutableArray *)self->_viewControllers count];
    view3 = [(SUUIOverlayContainerViewController *)self view];
    [view3 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = self->_selectedViewControllerIndex + 1;
    if (v37 < v27)
    {
      do
      {
        v38 = [(NSMutableArray *)self->_viewControllers objectAtIndex:v37];
        [(SUUIOverlayContainerViewController *)self _centeredFrameForViewController:v38 inBounds:0.0, 0.0, width, height];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v51.origin.x = v30;
        v51.origin.y = v32;
        v51.size.width = v34;
        v51.size.height = v36;
        v30 = v47 + CGRectGetMaxX(v51);
        view4 = [v38 view];
        [view4 setFrame:{v30, v40, v42, v44}];

        ++v37;
        v36 = v44;
        height = v48;
        v34 = v42;
        v32 = v40;
      }

      while (v27 != v37);
    }
  }
}

- (void)_pushViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view _setContinuousCornerRadius:8.0];

  view2 = [controllerCopy view];
  [view2 setClipsToBounds:1];

  [(SUUIOverlayContainerViewController *)self addChildViewController:controllerCopy];
  backstopView = self->_backstopView;
  view3 = [controllerCopy view];
  [(UIControl *)backstopView addSubview:view3];

  [controllerCopy didMoveToParentViewController:self];
  [(NSMutableArray *)self->_viewControllers addObject:controllerCopy];

  self->_selectedViewControllerIndex = [(NSMutableArray *)self->_viewControllers count]- 1;
}

- (void)_removeChildren
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_viewControllers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isViewLoaded])
        {
          view = [v7 view];
          [view removeFromSuperview];
        }

        [v7 removeFromParentViewController];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)_selectedViewController
{
  if (self->_selectedViewControllerIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_viewControllers objectAtIndex:v2];
  }

  return v4;
}

- (void)_slideInViewController:(id)controller withCompletionBlock:(id)block
{
  blockCopy = block;
  viewControllers = self->_viewControllers;
  controllerCopy = controller;
  lastObject = [(NSMutableArray *)viewControllers lastObject];
  view = [controllerCopy view];
  view2 = [(SUUIOverlayContainerViewController *)self view];
  [view2 bounds];
  [(SUUIOverlayContainerViewController *)self _centeredFrameForViewController:controllerCopy inBounds:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  view3 = [(SUUIOverlayContainerViewController *)self view];
  [view3 bounds];
  [(SUUIOverlayContainerViewController *)self _overlaySpacingForSize:v19, v20];
  v22 = v21;

  view4 = [lastObject view];
  [view4 frame];
  v24 = v22 + CGRectGetMaxX(v30);

  [view setFrame:{v24, v13, v15, v17}];
  [(SUUIOverlayContainerViewController *)self _pushViewController:controllerCopy];

  v25 = MEMORY[0x277D75D18];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __81__SUUIOverlayContainerViewController__slideInViewController_withCompletionBlock___block_invoke;
  v29[3] = &unk_2798F5BE8;
  v29[4] = self;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__SUUIOverlayContainerViewController__slideInViewController_withCompletionBlock___block_invoke_2;
  v27[3] = &unk_2798F5DD0;
  v28 = blockCopy;
  v26 = blockCopy;
  [v25 animateWithDuration:v29 animations:v27 completion:0.349999994];
}

void __81__SUUIOverlayContainerViewController__slideInViewController_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [v2 view];
  [v8 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) traitCollection];
  [v2 _positionViewControllersForSize:v7 traitCollection:{v4, v6}];
}

uint64_t __81__SUUIOverlayContainerViewController__slideInViewController_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_viewControllerForPoint:(CGPoint)point
{
  v4 = [(SUUIOverlayContainerViewController *)self _indexOfViewControllerForPoint:point.x, point.y];
  if (v4 >= [(NSMutableArray *)self->_viewControllers count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_viewControllers objectAtIndex:v4];
  }

  return v5;
}

- (SUUIOverlayContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end