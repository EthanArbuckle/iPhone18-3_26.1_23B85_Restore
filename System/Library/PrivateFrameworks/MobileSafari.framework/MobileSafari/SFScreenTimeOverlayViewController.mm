@interface SFScreenTimeOverlayViewController
- (id)showBlockingViewControllerForURL:(id)l withPolicy:(int64_t)policy animated:(BOOL)animated;
- (void)_updateCurrentLockViewControllerInsetsHorizontalForSizeClass:(int64_t)class;
- (void)hideBlockingViewControllerWithCompletionHandler:(id)handler;
- (void)setAdditionalVerticalSafeAreaMargin:(double)margin;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SFScreenTimeOverlayViewController

- (id)showBlockingViewControllerForURL:(id)l withPolicy:(int64_t)policy animated:(BOOL)animated
{
  animatedCopy = animated;
  lCopy = l;
  self->_blockingViewControllerShouldBeVisible = 1;
  blockingViewController = self->_blockingViewController;
  if (!blockingViewController)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v10 = getSTBlockingViewControllerClass_softClass;
    v35 = getSTBlockingViewControllerClass_softClass;
    if (!getSTBlockingViewControllerClass_softClass)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __getSTBlockingViewControllerClass_block_invoke;
      v31[3] = &unk_1E721C5D0;
      v31[4] = &v32;
      __getSTBlockingViewControllerClass_block_invoke(v31);
      v10 = v33[3];
    }

    v11 = v10;
    _Block_object_dispose(&v32, 8);
    newTranslucentBlockingViewController = [v10 newTranslucentBlockingViewController];
    v13 = self->_blockingViewController;
    self->_blockingViewController = newTranslucentBlockingViewController;

    view = [(STBlockingViewController *)self->_blockingViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    blockingViewController = self->_blockingViewController;
  }

  [(STBlockingViewController *)blockingViewController updateAppearanceUsingPolicy:policy forWebpageURL:lCopy];
  childViewControllers = [(SFScreenTimeOverlayViewController *)self childViewControllers];
  v16 = [childViewControllers containsObject:self->_blockingViewController];

  if ((v16 & 1) == 0)
  {
    [(STBlockingViewController *)self->_blockingViewController beginAppearanceTransition:1 animated:animatedCopy];
    [(SFScreenTimeOverlayViewController *)self addChildViewController:self->_blockingViewController];
    view2 = [(SFScreenTimeOverlayViewController *)self view];
    view3 = [(STBlockingViewController *)self->_blockingViewController view];
    [view2 addSubview:view3];
    _NSDictionaryOfVariableBindings(&cfstr_Blockingview.isa, view3, 0);
    v19 = v30 = lCopy;
    v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[blockingView]|" options:0 metrics:0 views:v19];
    v21 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[blockingView]|" options:0 metrics:0 views:v19];
    v22 = MEMORY[0x1E696ACD8];
    v23 = [v20 arrayByAddingObjectsFromArray:v21];
    [v22 activateConstraints:v23];

    [(STBlockingViewController *)self->_blockingViewController didMoveToParentViewController:self];
    [(STBlockingViewController *)self->_blockingViewController endAppearanceTransition];
    [(STBlockingViewController *)self->_blockingViewController showWithAnimation:animatedCopy completionHandler:0];

    lCopy = v30;
  }

  view4 = [(STBlockingViewController *)self->_blockingViewController view];
  [view4 bounds];
  Width = CGRectGetWidth(v36);
  v26 = _SFSizeClassForWidth(Width);

  [(SFScreenTimeOverlayViewController *)self _updateCurrentLockViewControllerInsetsHorizontalForSizeClass:v26];
  v27 = self->_blockingViewController;
  v28 = v27;

  return v27;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v6.receiver = self;
  v6.super_class = SFScreenTimeOverlayViewController;
  [(SFScreenTimeOverlayViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(SFScreenTimeOverlayViewController *)self _updateCurrentLockViewControllerInsetsHorizontalForSizeClass:_SFSizeClassForWidth(width)];
}

- (void)_updateCurrentLockViewControllerInsetsHorizontalForSizeClass:(int64_t)class
{
  blockingViewController = self->_blockingViewController;
  if (blockingViewController)
  {
    additionalVerticalSafeAreaMargin = self->_additionalVerticalSafeAreaMargin;
    v6 = additionalVerticalSafeAreaMargin + 46.0;
    if (class == 1)
    {
      v7 = additionalVerticalSafeAreaMargin + 46.0;
    }

    else
    {
      v7 = additionalVerticalSafeAreaMargin + 94.0;
    }

    if (class != 1)
    {
      v6 = 0.0;
    }

    [(STBlockingViewController *)blockingViewController setAdditionalSafeAreaInsets:v7, 0.0, v6, 0.0];
  }
}

- (void)hideBlockingViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  self->_blockingViewControllerShouldBeVisible = 0;
  [(STBlockingViewController *)self->_blockingViewController beginAppearanceTransition:0 animated:1];
  blockingViewController = self->_blockingViewController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__SFScreenTimeOverlayViewController_hideBlockingViewControllerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E721BA48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(STBlockingViewController *)blockingViewController hideWithAnimation:1 completionHandler:v7];
}

void __85__SFScreenTimeOverlayViewController_hideBlockingViewControllerWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __85__SFScreenTimeOverlayViewController_hideBlockingViewControllerWithCompletionHandler___block_invoke_2;
  v10 = &unk_1E721BA48;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = _Block_copy(&v7);
  v4 = *(a1 + 32);
  v5 = *(v4 + 1000);
  if (*(v4 + 1008) == 1)
  {
    [v5 showWithAnimation:0 completionHandler:{v3, v7, v8, v9, v10, v11}];
  }

  else
  {
    [v5 willMoveToParentViewController:{0, v7, v8, v9, v10, v11}];
    v6 = [*(*(a1 + 32) + 1000) view];
    [v6 removeFromSuperview];

    [*(*(a1 + 32) + 1000) removeFromParentViewController];
    v3[2](v3);
  }
}

uint64_t __85__SFScreenTimeOverlayViewController_hideBlockingViewControllerWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) endAppearanceTransition];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setAdditionalVerticalSafeAreaMargin:(double)margin
{
  if (self->_additionalVerticalSafeAreaMargin != margin)
  {
    self->_additionalVerticalSafeAreaMargin = margin;
    view = [(STBlockingViewController *)self->_blockingViewController view];
    [view bounds];
    Width = CGRectGetWidth(v8);
    v7 = _SFSizeClassForWidth(Width);

    [(SFScreenTimeOverlayViewController *)self _updateCurrentLockViewControllerInsetsHorizontalForSizeClass:v7];
  }
}

@end