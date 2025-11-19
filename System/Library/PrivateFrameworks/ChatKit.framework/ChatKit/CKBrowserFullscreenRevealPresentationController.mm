@interface CKBrowserFullscreenRevealPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)presentingSnapshotFrame;
- (CKBrowserFullscreenRevealDimmingView)dimmingView;
- (CKBrowserFullscreenRevealPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (id)_viewsToApplyCornerRadius;
- (id)_viewsToApplyTransform;
- (void)_cleanupPresentation;
- (void)_configureViewsForDismissedState;
- (void)_configureViewsForPresentedState;
- (void)_prepareViewHierarchyForPresentation;
- (void)_willChangeStatusBarFrame:(id)a3;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dimmingViewTapped:(id)a3;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation CKBrowserFullscreenRevealPresentationController

- (CKBrowserFullscreenRevealPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v15.receiver = self;
  v15.super_class = CKBrowserFullscreenRevealPresentationController;
  v4 = [(CKBrowserFullscreenRevealPresentationController *)&v15 initWithPresentedViewController:a3 presentingViewController:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_dimmingViewTapped_];
    v6 = [(CKBrowserFullscreenRevealPresentationController *)v4 dimmingView];
    [v6 addGestureRecognizer:v5];

    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v7 statusBar];
    statusBar = v4->_statusBar;
    v4->_statusBar = v8;

    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 statusBarWindow];
    statusBarWindow = v4->_statusBarWindow;
    v4->_statusBarWindow = v11;

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v4 selector:sel__willChangeStatusBarFrame_ name:*MEMORY[0x1E69DDBB0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CKBrowserFullscreenRevealPresentationController_presentationTransitionWillBegin__block_invoke;
  v5[3] = &unk_1E72EC3E8;
  v5[4] = self;
  [v4 animateAlongsideTransition:v5 completion:0];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  [(CKBrowserFullscreenRevealPresentationController *)self setPresenting:0];
  v5.receiver = self;
  v5.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v5 presentationTransitionDidEnd:v3];
  if (!v3)
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
  v11 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v12 = [v11 view];
  [v12 frame];
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
    v18 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
    v19 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
    v20 = [v19 view];
    v21 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
    [v18 insertSubview:v20 belowSubview:v21];

    v22 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
    [v22 removeFromSuperview];
  }

  v23 = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  v24 = [v23 transitionCoordinator];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__CKBrowserFullscreenRevealPresentationController_dismissalTransitionWillBegin__block_invoke;
  v25[3] = &unk_1E72EC3E8;
  v25[4] = self;
  [v24 animateAlongsideTransition:v25 completion:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  [(CKBrowserFullscreenRevealPresentationController *)self setDismissing:0];
  v31.receiver = self;
  v31.super_class = CKBrowserFullscreenRevealPresentationController;
  [(CKBrowserFullscreenRevealPresentationController *)&v31 dismissalTransitionDidEnd:v3];
  if (v3)
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
    v13 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
    v14 = [v13 view];
    [v14 frame];
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
      v20 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      v21 = [v20 view];
      v22 = [v21 snapshotViewAfterScreenUpdates:0];
      [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotView:v22];

      v23 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      v24 = [v23 view];
      [v24 frame];
      [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotFrame:?];

      v25 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
      v26 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
      v27 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      v28 = [v27 view];
      [v25 insertSubview:v26 aboveSubview:v28];

      v29 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
      v30 = [v29 view];
      [v30 removeFromSuperview];
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
    v11 = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
    v12 = [v11 view];
    [v12 setFrame:{v4, v6, v8, v10}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyTransform];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v23[0] = v22;
          v23[1] = v21;
          v23[2] = v20;
          [v18 setTransform:{v23, v20, v21, v22}];
          v19 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
          [v19 bounds];
          [v18 setFrame:?];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
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

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 statusBarFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  [v11 statusBarFrame];
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

- (void)dimmingViewTapped:(id)a3
{
  v4 = [(CKBrowserFullscreenRevealPresentationController *)self dismissHandler];

  if (v4)
  {
    v5 = [(CKBrowserFullscreenRevealPresentationController *)self dismissHandler];
    (v5)[2](v5, self);

    [(CKBrowserFullscreenRevealPresentationController *)self setDismissHandler:0];
  }

  else
  {
    v6 = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_willChangeStatusBarFrame:(id)a3
{
  v3 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [v3 setNeedsLayout];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [v3 addObject:v4];

  v5 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v6 = [v5 view];
  [v3 addObject:v6];

  v7 = [v3 copy];

  return v7;
}

- (id)_viewsToApplyCornerRadius
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [v3 addObject:v4];

  v5 = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  v6 = [v5 view];
  [v3 addObject:v6];

  v7 = [v3 copy];

  return v7;
}

- (void)_configureViewsForPresentedState
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [v12 setAlpha:1.0];

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  [v13 statusBarFrame];
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
  v18 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  v19 = [v18 superview];
  v20 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];

  if (v19 != v20)
  {
    [MEMORY[0x1E69DD2E8] _synchronizeDrawing];
    v21 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];
    v22 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
    [v21 addSubview:v22];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyTransform];
  v24 = [v23 countByEnumeratingWithState:&v41 objects:v51 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v41 + 1) + 8 * i);
        t1 = v47;
        [v28 setTransform:&t1];
      }

      v25 = [v23 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v25);
  }

  v29 = [MEMORY[0x1E69DC668] sharedApplication];
  [v29 _setBackgroundStyle:5];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyCornerRadius];
  v31 = [v30 countByEnumeratingWithState:&v37 objects:v50 count:16];
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
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v37 + 1) + 8 * j);
        v36 = [v35 layer];
        [v36 setMaskedCorners:3];

        [v35 _setContinuousCornerRadius:8.0];
      }

      v32 = [v30 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v32);
  }
}

- (void)_configureViewsForDismissedState
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [v3 setAlpha:0.0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyTransform];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v28[0] = v23;
        v28[1] = v22;
        v28[2] = v21;
        [v9 setTransform:{v28, v21, v22, v23}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(CKBrowserFullscreenRevealPresentationController *)self _viewsToApplyCornerRadius];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14++) _setContinuousCornerRadius:0.0];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v15 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  v16 = [v15 superview];
  v17 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];

  if (v16 != v17)
  {
    [MEMORY[0x1E69DD2E8] _synchronizeDrawing];
    v18 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarWindow];
    v19 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
    [v18 addSubview:v19];
  }

  v20 = [MEMORY[0x1E69DC668] sharedApplication];
  [v20 _setBackgroundStyle:0];
}

- (void)_prepareViewHierarchyForPresentation
{
  v3 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v4 = [v3 view];
  v5 = [v4 snapshotViewAfterScreenUpdates:0];
  [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotView:v5];

  v6 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v7 = [v6 view];
  [v7 frame];
  [(CKBrowserFullscreenRevealPresentationController *)self setPresentingSnapshotFrame:?];

  v8 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  v9 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  v10 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v11 = [v10 view];
  [v8 insertSubview:v9 aboveSubview:v11];

  v12 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v13 = [v12 view];
  [v13 removeFromSuperview];

  v14 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  v15 = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  v16 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [v14 insertSubview:v15 aboveSubview:v16];

  v17 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [v26 setFrame:{v19, v21, v23, v25}];

  v27 = [(CKBrowserFullscreenRevealPresentationController *)self presentedViewController];
  v28 = [v27 view];
  [v28 setClipsToBounds:1];

  v29 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [v29 setClipsToBounds:1];

  v30 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  -[CKBrowserFullscreenRevealPresentationController setStatusBarResizeMask:](self, "setStatusBarResizeMask:", [v30 autoresizingMask]);

  v31 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  [v31 setAutoresizingMask:0];
}

- (void)_cleanupPresentation
{
  [(CKBrowserFullscreenRevealPresentationController *)self _configureViewsForDismissedState];
  v3 = [(CKBrowserFullscreenRevealPresentationController *)self dimmingView];
  [v3 removeFromSuperview];

  v4 = [(CKBrowserFullscreenRevealPresentationController *)self containerView];
  v5 = [(CKBrowserFullscreenRevealPresentationController *)self presentingViewController];
  v6 = [v5 view];
  v7 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [v4 insertSubview:v6 belowSubview:v7];

  v8 = [(CKBrowserFullscreenRevealPresentationController *)self presentingSnapshotView];
  [v8 removeFromSuperview];

  v9 = [(CKBrowserFullscreenRevealPresentationController *)self statusBarResizeMask];
  v10 = [(CKBrowserFullscreenRevealPresentationController *)self statusBar];
  [v10 setAutoresizingMask:v9];
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