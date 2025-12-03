@interface CKBrowserFullscreenRevealPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)presentingSnapshotFrame;
- (CKBrowserFullscreenRevealDimmingView)dimmingView;
- (CKBrowserFullscreenRevealPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (id)_viewsToApplyCornerRadius;
- (id)_viewsToApplyTransform;
- (void)_cleanupPresentation;
- (void)_configureViewsForDismissedState;
- (void)_configureViewsForPresentedState;
- (void)_prepareViewHierarchyForPresentation;
- (void)_willChangeStatusBarFrame:(id)frame;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dimmingViewTapped:(id)tapped;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation CKBrowserFullscreenRevealPresentationController

- (CKBrowserFullscreenRevealPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v15.receiver = self;
  v15.super_class = CKBrowserFullscreenRevealPresentationController;
  v4 = [(CKBrowserFullscreenRevealPresentationController *)&v15 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_dimmingViewTapped_];
    dimmingView = [(CKBrowserFullscreenRevealPresentationController *)v4 dimmingView];
    [dimmingView addGestureRecognizer:v5];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    statusBar = [mEMORY[0x1E69DC668] statusBar];
    statusBar = v4->_statusBar;
    v4->_statusBar = statusBar;

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    statusBarWindow = [mEMORY[0x1E69DC668]2 statusBarWindow];
    statusBarWindow = v4->_statusBarWindow;
    v4->_statusBarWindow = statusBarWindow;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__willChangeStatusBarFrame_ name:*MEMORY[0x1E69DDBB0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v4 dealloc];
}

- (void)presentationTransitionWillBegin
{
  [(CKBrowserFullscreenRevealPresentationController *)self setPresenting:1];
  v6.receiver = self;
  v6.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v6 presentationTransitionWillBegin];
  [(CKBrowserFullscreenRevealPresentationController *)self _prepareViewHierarchyForPresentation];
  presentedViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CKBrowserFullscreenRevealPresentationController_presentationTransitionWillBegin__block_invoke;
  v5[3] = &unk_1E72EC3E8;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  [(CKBrowserFullscreenRevealPresentationController *)self setPresenting:0];
  v5.receiver = self;
  v5.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v5 presentationTransitionDidEnd:endCopy];
  if (!endCopy)
  {
    [(CKBrowserFullscreenRevealPresentationController *)self _cleanupPresentation];
  }
}

- (void)dismissalTransitionWillBegin
{
  [(CKBrowserFullscreenRevealPresentationController *)self setDismissing:1];
  v26.receiver = self;
  v26.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v26 dismissalTransitionWillBegin];
  [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  presentingViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  [view frame];
  v28.origin.x = v13;
  v28.origin.y = v14;
  v28.size.width = v15;
  v28.size.height = v16;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v17 = CGRectEqualToRect(v27, v28);

  if (!v17)
  {
    containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
    presentingViewController2 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
    view2 = [presentingViewController2 view];
    presentingSnapshotView = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
    [containerView insertSubview:view2 belowSubview:presentingSnapshotView];

    presentingSnapshotView2 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
    [presentingSnapshotView2 removeFromSuperview];
  }

  presentedViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__CKBrowserFullscreenRevealPresentationController_dismissalTransitionWillBegin__block_invoke;
  v25[3] = &unk_1E72EC3E8;
  v25[4] = self;
  [transitionCoordinator animateAlongsideTransition:v25 completion:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  [(CKBrowserFullscreenRevealPresentationController *)self setDismissing:0];
  v31.receiver = self;
  v31.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v31 dismissalTransitionDidEnd:endCopy];
  if (endCopy)
  {
    [(CKBrowserFullscreenRevealPresentationController *)self _cleanupPresentation];
  }

  else
  {
    [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    presentingViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
    view = [presentingViewController view];
    [view frame];
    v33.origin.x = v15;
    v33.origin.y = v16;
    v33.size.width = v17;
    v33.size.height = v18;
    v32.origin.x = v6;
    v32.origin.y = v8;
    v32.size.width = v10;
    v32.size.height = v12;
    v19 = CGRectEqualToRect(v32, v33);

    if (!v19)
    {
      presentingViewController2 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      view2 = [presentingViewController2 view];
      v22 = [view2 snapshotViewAfterScreenUpdates:0];
      [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotView:v22];

      presentingViewController3 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      view3 = [presentingViewController3 view];
      [view3 frame];
      [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotFrame:?];

      containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
      presentingSnapshotView = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
      presentingViewController4 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      view4 = [presentingViewController4 view];
      [containerView insertSubview:presentingSnapshotView aboveSubview:view4];

      presentingViewController5 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      view5 = [presentingViewController5 view];
      [view5 removeFromSuperview];
    }

    [(CKBrowserFullscreenRevealPresentationController *)self _configureViewsForPresentedState];
  }
}

- (void)containerViewWillLayoutSubviews
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v28 containerViewWillLayoutSubviews];
  if (![(CKBrowserFullscreenRevealPresentationController *)self isDismissing]&& ![(CKBrowserFullscreenRevealPresentationController *)self isPresenting])
  {
    [(CKBrowserFullscreenRevealPresentationController *)self frameOfPresentedViewInContainerView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    presentedViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
    view = [presentedViewController view];
    [view setFrame:{v4, v6, v8, v10}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    _viewsToApplyTransform = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyTransform];
    v14 = [_viewsToApplyTransform countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      v21 = *(MEMORY[0x1E695EFD0] + 16);
      v22 = *MEMORY[0x1E695EFD0];
      v20 = *(MEMORY[0x1E695EFD0] + 32);
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(_viewsToApplyTransform);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v23[0] = v22;
          v23[1] = v21;
          v23[2] = v20;
          [v18 setTransform:{v23, v20, v21, v22}];
          containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
          [containerView bounds];
          [v18 setFrame:?];

          ++v17;
        }

        while (v15 != v17);
        v15 = [_viewsToApplyTransform countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }
  }
}

- (void)containerViewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v13 containerViewDidLayoutSubviews];
  if (![(CKBrowserFullscreenRevealPresentationController *)self isDismissing]&& ![(CKBrowserFullscreenRevealPresentationController *)self isPresenting])
  {
    [(CKBrowserFullscreenRevealPresentationController *)self _configureViewsForPresentedState];
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] statusBarFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  statusBar = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  [statusBar setFrame:{v5, v7, v9, v11}];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [containerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] statusBarFrame];
  v13 = v12;

  if (v13 >= 20.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 20.0;
  }

  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v16 = CGRectGetHeight(v21) - v14 + -8.0;
  v17 = 0.0;
  v18 = v14 + 8.0;
  v19 = Width;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)dimmingViewTapped:(id)tapped
{
  dismissHandler = [(CKBrowserFullscreenRevealPresentationController *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(CKBrowserFullscreenRevealPresentationController *)self dismissHandler];
    (dismissHandler2)[2](dismissHandler2, self);

    [(CKBrowserFullscreenRevealPresentationController *)self setDismissHandler:0];
  }

  else
  {
    presentedViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_willChangeStatusBarFrame:(id)frame
{
  containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [containerView setNeedsLayout];
}

- (CKBrowserFullscreenRevealDimmingView)dimmingView
{
  dimmingView = self->_dimmingView;
  if (!dimmingView)
  {
    v4 = [CKBrowserFullscreenRevealDimmingView alloc];
    v5 = [(CKBrowserFullscreenRevealDimmingView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_dimmingView;
    self->_dimmingView = v5;

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
    [(CKBrowserFullscreenRevealDimmingView *)self->_dimmingView setBackgroundColor:v7];

    [(CKBrowserFullscreenRevealDimmingView *)self->_dimmingView setAlpha:0.0];
    [(CKBrowserFullscreenRevealDimmingView *)self->_dimmingView setAutoresizingMask:18];
    dimmingView = self->_dimmingView;
  }

  return dimmingView;
}

- (id)_viewsToApplyTransform
{
  array = [MEMORY[0x1E695DF70] array];
  presentingSnapshotView = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [array addObject:presentingSnapshotView];

  presentingViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  [array addObject:view];

  v7 = [array copy];

  return v7;
}

- (id)_viewsToApplyCornerRadius
{
  array = [MEMORY[0x1E695DF70] array];
  presentingSnapshotView = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [array addObject:presentingSnapshotView];

  presentedViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [array addObject:view];

  v7 = [array copy];

  return v7;
}

- (void)_configureViewsForPresentedState
{
  v52 = *MEMORY[0x1E69E9840];
  containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  dimmingView = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [dimmingView setAlpha:1.0];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] statusBarFrame];
  v15 = v14;

  if (v15 < 20.0)
  {
    v15 = 20.0;
  }

  v53.origin.x = v5;
  v53.origin.y = v7;
  v53.size.width = v9;
  v53.size.height = v11;
  memset(&v49.c, 0, 32);
  if (CGRectGetHeight(v53) < 1024.0)
  {
    v16 = v15 + -13.0;
  }

  else
  {
    v16 = 0.0;
  }

  *&v49.a = 0uLL;
  v54.origin.x = v5;
  v54.origin.y = v7;
  v54.size.width = v9;
  v54.size.height = v11;
  Height = CGRectGetHeight(v54);
  CGAffineTransformMakeTranslation(&v49, 0.0, floor(v16 * (667.0 / Height)));
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeScale(&v48, 0.959999979, 0.959999979);
  t1 = v49;
  memset(&v47, 0, sizeof(v47));
  t2 = v48;
  CGAffineTransformConcat(&v47, &t1, &t2);
  statusBar = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  superview = [statusBar superview];
  statusBarWindow = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];

  if (superview != statusBarWindow)
  {
    [MEMORY[0x1E69DD2E8] _synchronizeDrawing];
    statusBarWindow2 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];
    statusBar2 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
    [statusBarWindow2 addSubview:statusBar2];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  _viewsToApplyTransform = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyTransform];
  v24 = [_viewsToApplyTransform countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(_viewsToApplyTransform);
        }

        v28 = *(*(&v41 + 1) + 8 * i);
        t1 = v47;
        [v28 setTransform:&t1];
      }

      v25 = [_viewsToApplyTransform countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v25);
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668]2 _setBackgroundStyle:5];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  _viewsToApplyCornerRadius = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyCornerRadius];
  v31 = [_viewsToApplyCornerRadius countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(_viewsToApplyCornerRadius);
        }

        v35 = *(*(&v37 + 1) + 8 * j);
        layer = [v35 layer];
        [layer setMaskedCorners:3];

        [v35 _setContinuousCornerRadius:8.0];
      }

      v32 = [_viewsToApplyCornerRadius countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v32);
  }
}

- (void)_configureViewsForDismissedState
{
  v35 = *MEMORY[0x1E69E9840];
  dimmingView = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [dimmingView setAlpha:0.0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  _viewsToApplyTransform = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyTransform];
  v5 = [_viewsToApplyTransform countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v22 = *(MEMORY[0x1E695EFD0] + 16);
    v23 = *MEMORY[0x1E695EFD0];
    v21 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(_viewsToApplyTransform);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v28[0] = v23;
        v28[1] = v22;
        v28[2] = v21;
        [v9 setTransform:{v28, v21, v22, v23}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [_viewsToApplyTransform countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  _viewsToApplyCornerRadius = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyCornerRadius];
  v11 = [_viewsToApplyCornerRadius countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(_viewsToApplyCornerRadius);
        }

        [*(*(&v24 + 1) + 8 * v14++) _setContinuousCornerRadius:0.0];
      }

      while (v12 != v14);
      v12 = [_viewsToApplyCornerRadius countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  statusBar = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  superview = [statusBar superview];
  statusBarWindow = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];

  if (superview != statusBarWindow)
  {
    [MEMORY[0x1E69DD2E8] _synchronizeDrawing];
    statusBarWindow2 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];
    statusBar2 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
    [statusBarWindow2 addSubview:statusBar2];
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setBackgroundStyle:0];
}

- (void)_prepareViewHierarchyForPresentation
{
  presentingViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  v5 = [view snapshotViewAfterScreenUpdates:0];
  [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotView:v5];

  presentingViewController2 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view2 = [presentingViewController2 view];
  [view2 frame];
  [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotFrame:?];

  containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  presentingSnapshotView = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  presentingViewController3 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view3 = [presentingViewController3 view];
  [containerView insertSubview:presentingSnapshotView aboveSubview:view3];

  presentingViewController4 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view4 = [presentingViewController4 view];
  [view4 removeFromSuperview];

  containerView2 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  dimmingView = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  presentingSnapshotView2 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [containerView2 insertSubview:dimmingView aboveSubview:presentingSnapshotView2];

  containerView3 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [containerView3 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  dimmingView2 = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [dimmingView2 setFrame:{v19, v21, v23, v25}];

  presentedViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  view5 = [presentedViewController view];
  [view5 setClipsToBounds:1];

  presentingSnapshotView3 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [presentingSnapshotView3 setClipsToBounds:1];

  statusBar = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  -[CKBrowserFullscreenRevealPresentationController setStatusBarResizeMask:](self, "setStatusBarResizeMask:", [statusBar autoresizingMask]);

  statusBar2 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  [statusBar2 setAutoresizingMask:0];
}

- (void)_cleanupPresentation
{
  [(CKBrowserFullscreenRevealPresentationController *)self _configureViewsForDismissedState];
  dimmingView = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [dimmingView removeFromSuperview];

  containerView = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  presentingViewController = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  view = [presentingViewController view];
  presentingSnapshotView = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [containerView insertSubview:view belowSubview:presentingSnapshotView];

  presentingSnapshotView2 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [presentingSnapshotView2 removeFromSuperview];

  statusBarResizeMask = [(CKBrowserFullscreenRevealPresentationController *)self statusBarResizeMask];
  statusBar = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  [statusBar setAutoresizingMask:statusBarResizeMask];
}

- (CGRect)presentingSnapshotFrame
{
  x = self->_presentingSnapshotFrame.origin.x;
  y = self->_presentingSnapshotFrame.origin.y;
  width = self->_presentingSnapshotFrame.size.width;
  height = self->_presentingSnapshotFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end