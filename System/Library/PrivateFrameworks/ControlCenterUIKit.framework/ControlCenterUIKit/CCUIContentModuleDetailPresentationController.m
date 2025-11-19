@interface CCUIContentModuleDetailPresentationController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CCUIContentModuleDetailPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 anchoringViewController:(id)a5;
- (double)_preferredExpandedContentHeightForViewController:(id)a3;
- (double)_preferredExpandedContentWidthForViewController:(id)a3;
- (void)_handleBackgroundTap:(id)a3;
- (void)containerViewWillLayoutSubviews;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation CCUIContentModuleDetailPresentationController

- (CCUIContentModuleDetailPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 anchoringViewController:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CCUIContentModuleDetailPresentationController;
  v10 = [(CCUIContentModuleDetailPresentationController *)&v13 initWithPresentedViewController:a3 presentingViewController:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_anchoringViewController, a5);
  }

  return v11;
}

- (void)containerViewWillLayoutSubviews
{
  v41.receiver = self;
  v41.super_class = CCUIContentModuleDetailPresentationController;
  [(CCUIContentModuleDetailPresentationController *)&v41 containerViewWillLayoutSubviews];
  v3 = [(UIViewController *)self->_anchoringViewController view];
  v4 = [(CCUIContentModuleDetailPresentationController *)self containerView];
  if (v3 && ([MEMORY[0x1E69DC938] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6))
  {
    v7 = [(UIViewController *)self->_anchoringViewController bs_presentationContextDefiningViewController];
    v8 = [v7 view];

    [v3 bounds];
    [v3 convertRect:v8 toView:?];
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    CGRectGetMidX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    CGRectGetMidY(v43);
  }

  else
  {
    [v4 center];
  }

  v13 = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  [(CCUIContentModuleDetailPresentationController *)self _preferredExpandedContentWidthForViewController:v13];
  [(CCUIContentModuleDetailPresentationController *)self _preferredExpandedContentHeightForViewController:v13];
  UIRectCenteredAboutPoint();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v4 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = CCUIExpandedModuleEdgeInsets();
  v32 = v23 + v31;
  v33 = v25 + v30;
  v35 = v27 - (v31 + v34);
  v37 = v29 - (v30 + v36);
  v44.origin.x = v15;
  v44.origin.y = v17;
  v44.size.width = v19;
  v44.size.height = v21;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = v32;
  v45.origin.y = v33;
  v45.size.width = v35;
  v45.size.height = v37;
  v39 = CGRectGetMinY(v45);
  if (MinY < v39)
  {
    MinY = v39;
  }

  v40 = [(CCUIContentModuleDetailPresentationController *)self presentedView];
  [v40 setFrame:{v15, MinY, v19, v21}];
  [v4 addSubview:v40];
}

- (void)presentationTransitionWillBegin
{
  v5.receiver = self;
  v5.super_class = CCUIContentModuleDetailPresentationController;
  [(CCUIContentModuleDetailPresentationController *)&v5 presentationTransitionWillBegin];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleBackgroundTap_];
  [v3 setDelegate:self];
  v4 = [(CCUIContentModuleDetailPresentationController *)self containerView];
  [v4 addGestureRecognizer:v3];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = CCUIContentModuleDetailPresentationController;
  [(CCUIContentModuleDetailPresentationController *)&v9 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(CCUIContentModuleDetailPresentationController *)self containerView];
  [v4 setNeedsLayout];
  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__CCUIContentModuleDetailPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v7[3] = &unk_1E83EA478;
  v8 = v4;
  v6 = v4;
  [v5 animateWithDuration:v7 animations:0.3];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  v7 = [v6 view];
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  v13 = [v12 view];
  LOBYTE(v6) = [v13 pointInside:0 withEvent:{v9, v11}];

  return v6 ^ 1;
}

- (void)_handleBackgroundTap:(id)a3
{
  v3 = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (double)_preferredExpandedContentWidthForViewController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 preferredExpandedContentWidth];
  }

  else
  {
    v4 = CCUIDefaultExpandedContentModuleWidth();
  }

  v5 = v4;

  return v5;
}

- (double)_preferredExpandedContentHeightForViewController:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 preferredExpandedContentHeight];
    v4 = v5;
  }

  return v4;
}

@end