@interface CCUIContentModuleDetailPresentationController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CCUIContentModuleDetailPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController anchoringViewController:(id)anchoringViewController;
- (double)_preferredExpandedContentHeightForViewController:(id)controller;
- (double)_preferredExpandedContentWidthForViewController:(id)controller;
- (void)_handleBackgroundTap:(id)tap;
- (void)containerViewWillLayoutSubviews;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionWillBegin;
@end

@implementation CCUIContentModuleDetailPresentationController

- (CCUIContentModuleDetailPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController anchoringViewController:(id)anchoringViewController
{
  anchoringViewControllerCopy = anchoringViewController;
  v13.receiver = self;
  v13.super_class = CCUIContentModuleDetailPresentationController;
  v10 = [(CCUIContentModuleDetailPresentationController *)&v13 initWithPresentedViewController:controller presentingViewController:viewController];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_anchoringViewController, anchoringViewController);
  }

  return v11;
}

- (void)containerViewWillLayoutSubviews
{
  v41.receiver = self;
  v41.super_class = CCUIContentModuleDetailPresentationController;
  [(CCUIContentModuleDetailPresentationController *)&v41 containerViewWillLayoutSubviews];
  view = [(UIViewController *)self->_anchoringViewController view];
  containerView = [(CCUIContentModuleDetailPresentationController *)self containerView];
  if (view && ([MEMORY[0x1E69DC938] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6))
  {
    bs_presentationContextDefiningViewController = [(UIViewController *)self->_anchoringViewController bs_presentationContextDefiningViewController];
    view2 = [bs_presentationContextDefiningViewController view];

    [view bounds];
    [view convertRect:view2 toView:?];
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
    [containerView center];
  }

  presentedViewController = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  [(CCUIContentModuleDetailPresentationController *)self _preferredExpandedContentWidthForViewController:presentedViewController];
  [(CCUIContentModuleDetailPresentationController *)self _preferredExpandedContentHeightForViewController:presentedViewController];
  UIRectCenteredAboutPoint();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [containerView bounds];
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

  presentedView = [(CCUIContentModuleDetailPresentationController *)self presentedView];
  [presentedView setFrame:{v15, MinY, v19, v21}];
  [containerView addSubview:presentedView];
}

- (void)presentationTransitionWillBegin
{
  v5.receiver = self;
  v5.super_class = CCUIContentModuleDetailPresentationController;
  [(CCUIContentModuleDetailPresentationController *)&v5 presentationTransitionWillBegin];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleBackgroundTap_];
  [v3 setDelegate:self];
  containerView = [(CCUIContentModuleDetailPresentationController *)self containerView];
  [containerView addGestureRecognizer:v3];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = CCUIContentModuleDetailPresentationController;
  [(CCUIContentModuleDetailPresentationController *)&v9 preferredContentSizeDidChangeForChildContentContainer:container];
  containerView = [(CCUIContentModuleDetailPresentationController *)self containerView];
  [containerView setNeedsLayout];
  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__CCUIContentModuleDetailPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v7[3] = &unk_1E83EA478;
  v8 = containerView;
  v6 = containerView;
  [v5 animateWithDuration:v7 animations:0.3];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  presentedViewController = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [touchCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  presentedViewController2 = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  view2 = [presentedViewController2 view];
  LOBYTE(presentedViewController) = [view2 pointInside:0 withEvent:{v9, v11}];

  return presentedViewController ^ 1;
}

- (void)_handleBackgroundTap:(id)tap
{
  presentedViewController = [(CCUIContentModuleDetailPresentationController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (double)_preferredExpandedContentWidthForViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy preferredExpandedContentWidth];
  }

  else
  {
    v4 = CCUIDefaultExpandedContentModuleWidth();
  }

  v5 = v4;

  return v5;
}

- (double)_preferredExpandedContentHeightForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy preferredExpandedContentHeight];
    v4 = v5;
  }

  return v4;
}

@end