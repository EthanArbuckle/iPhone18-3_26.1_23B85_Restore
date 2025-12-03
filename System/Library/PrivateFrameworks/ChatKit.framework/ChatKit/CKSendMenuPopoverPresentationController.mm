@interface CKSendMenuPopoverPresentationController
- (CGPoint)_anchorViewCenterInContainer;
- (CGRect)frameOfPresentedViewInContainerView;
- (CKSendMenuPopoverPresentationController)initWithConfiguration:(id)configuration popoverViewController:(id)controller presentingViewController:(id)viewController;
- (CKSendMenuPopoverPresentationControllerDelegate)delegate;
- (id)newPopoverLayoutMetrics;
- (id)presentedView;
- (void)_appCardContentViewControllerPresentationTransitionWillBegin;
- (void)_didComputePopoverLayoutMetrics:(id)metrics;
- (void)_sendMenuViewControllerPresentationTransitionWillBegin;
- (void)anchorViewDidMove;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentCardWithContentViewController:(id)controller style:(unint64_t)style completion:(id)completion;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)sendMenuPopoverPresentationDimmingViewDidReceiveTap:(id)tap;
- (void)setDelegate:(id)delegate;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKSendMenuPopoverPresentationController

- (CKSendMenuPopoverPresentationController)initWithConfiguration:(id)configuration popoverViewController:(id)controller presentingViewController:(id)viewController
{
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = CKSendMenuPopoverPresentationController;
  v10 = [(CKSendMenuPopoverPresentationController *)&v21 initWithPresentedViewController:controller presentingViewController:viewController];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_configuration, configuration);
    v12 = +[CKUIBehavior sharedBehaviors];
    newSendMenuPopoverLayoutConfiguration = [v12 newSendMenuPopoverLayoutConfiguration];

    v14 = [[CKPopoverViewLayout alloc] initWithConfiguration:newSendMenuPopoverLayoutConfiguration];
    popoverLayout = v11->_popoverLayout;
    v11->_popoverLayout = v14;

    v11->_presentationState = 0;
    layoutMetricsCommunicatedToDelegate = v11->_layoutMetricsCommunicatedToDelegate;
    v11->_layoutMetricsCommunicatedToDelegate = 0;

    traitOverrides = [(CKSendMenuPopoverPresentationController *)v11 traitOverrides];
    v18 = objc_opt_self();
    [traitOverrides setNSIntegerValue:3 forTrait:v18];

    traitOverrides2 = [(CKSendMenuPopoverPresentationController *)v11 traitOverrides];
    [traitOverrides2 setHorizontalSizeClass:1];
  }

  return v11;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v3 setDelegate:delegate];
}

- (CKSendMenuPopoverPresentationControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = CKSendMenuPopoverPresentationController;
  delegate = [(CKSendMenuPopoverPresentationController *)&v4 delegate];

  return delegate;
}

- (void)_didComputePopoverLayoutMetrics:(id)metrics
{
  metricsCopy = metrics;
  delegate = [(CKSendMenuPopoverPresentationController *)self delegate];

  if (delegate)
  {
    layoutMetricsCommunicatedToDelegate = self->_layoutMetricsCommunicatedToDelegate;
    if (!layoutMetricsCommunicatedToDelegate || (-[CKPopoverViewLayoutMetrics frame](layoutMetricsCommunicatedToDelegate, "frame"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, [metricsCopy frame], v15 = v14, v17 = v16, v19 = v18, v21 = v20, v35 = v9, v38.origin.x = v7, v38.origin.y = v9, v38.size.width = v11, v38.size.height = v13, Width = CGRectGetWidth(v38), v39.origin.x = v15, v39.origin.y = v17, v39.size.width = v19, v39.size.height = v21, v23 = CGRectGetWidth(v39), !CKFloatApproximatelyEqualToFloatWithTolerance(Width, v23, 0.00000999999975)) || (v40.origin.y = v35, v40.origin.x = v7, v40.size.width = v11, v40.size.height = v13, Height = CGRectGetHeight(v40), v41.origin.x = v15, v41.origin.y = v17, v41.size.width = v19, v41.size.height = v21, v25 = CGRectGetHeight(v41), !CKFloatApproximatelyEqualToFloatWithTolerance(Height, v25, 0.00000999999975)) || (v42.origin.y = v35, v42.origin.x = v7, v42.size.width = v11, v42.size.height = v13, MinX = CGRectGetMinX(v42), v43.origin.x = v15, v43.origin.y = v17, v43.size.width = v19, v43.size.height = v21, v27 = CGRectGetMinX(v43), !CKFloatApproximatelyEqualToFloatWithTolerance(MinX, v27, 0.00000999999975)) || (v44.origin.y = v35, v44.origin.x = v7, v44.size.width = v11, v44.size.height = v13, MinY = CGRectGetMinY(v44), v45.origin.x = v15, v45.origin.y = v17, v45.size.width = v19, v45.size.height = v21, v29 = CGRectGetMinY(v45), !CKFloatApproximatelyEqualToFloatWithTolerance(MinY, v29, 0.00000999999975)))
    {
      v30 = self->_layoutMetricsCommunicatedToDelegate;
      v31 = metricsCopy;
      v32 = self->_layoutMetricsCommunicatedToDelegate;
      self->_layoutMetricsCommunicatedToDelegate = v31;
      v33 = v30;

      delegate2 = [(CKSendMenuPopoverPresentationController *)self delegate];
      [delegate2 sendMenuPresentationController:self didChangePopoverLayoutMetrics:v33];
    }
  }
}

- (void)presentationTransitionWillBegin
{
  popoverView = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [popoverView setLayoutSubviewsEnabled:1];

  v28.receiver = self;
  v28.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v28 presentationTransitionWillBegin];
  sendMenuViewController = [(CKSendMenuPopoverPresentationController *)self sendMenuViewController];

  if (sendMenuViewController)
  {
    [(CKSendMenuPopoverPresentationController *)self _sendMenuViewControllerPresentationTransitionWillBegin];
  }

  else
  {
    [(CKSendMenuPopoverPresentationController *)self _appCardContentViewControllerPresentationTransitionWillBegin];
  }

  anchorItem = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  anchorView = [anchorItem anchorView];
  [anchorView setAlpha:0.0];

  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  anchorItem2 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  anchorView2 = [anchorItem2 anchorView];

  [anchorView2 bounds];
  [containerView convertRect:anchorView2 fromView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  presentedViewController = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  popoverView2 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [popoverView2 setFrame:{v11, v13, v15, v17}];

  v20 = objc_alloc_init(CKSendMenuPopoverPresentationDimmingView);
  dimmingView = self->_dimmingView;
  self->_dimmingView = v20;

  [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView setDelegate:self];
  [containerView addSubview:self->_dimmingView];
  [containerView bounds];
  [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView setFrame:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CKSendMenuPopoverPresentationController_presentationTransitionWillBegin__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v22 = _Block_copy(aBlock);
  transitionCoordinator = [presentedViewController transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [presentedViewController transitionCoordinator];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__CKSendMenuPopoverPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v25[3] = &unk_1E72F0100;
    v26 = v22;
    [transitionCoordinator2 animateAlongsideTransition:v25 completion:0];
  }

  else
  {
    v22[2](v22);
  }
}

void __74__CKSendMenuPopoverPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setActive:1];
}

- (void)_appCardContentViewControllerPresentationTransitionWillBegin
{
  popoverLayout = [(CKSendMenuPopoverPresentationController *)self popoverLayout];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __103__CKSendMenuPopoverPresentationController__appCardContentViewControllerPresentationTransitionWillBegin__block_invoke;
  v29[3] = &unk_1E72EBA18;
  v29[4] = self;
  [popoverLayout updateProperties:v29];

  popoverLayout = self->_popoverLayout;
  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  v6 = [(CKPopoverViewLayout *)popoverLayout newLayoutMetricsWithCoordinateSpace:containerView];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  presentedViewController = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  [presentedViewController setPreferredContentSize:{v8, v10}];

  [v6 frame];
  v13 = v12;
  v15 = v14;
  [v6 frame];
  v17 = v16;
  v19 = v18;
  appCardContentViewController = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  [appCardContentViewController setPreferredContentSize:{v17, v19}];

  appCardContentViewController2 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  view = [appCardContentViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  appCardContentViewController3 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  view2 = [appCardContentViewController3 view];
  [view2 setAutoresizingMask:0];

  appCardContentViewController4 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  view3 = [appCardContentViewController4 view];
  [view3 setFrame:{0.0, 0.0, v13, v15}];

  popoverViewController = [(CKSendMenuPopoverPresentationController *)self popoverViewController];
  view4 = [popoverViewController view];
  [view4 setFrame:{0.0, 0.0, v13, v15}];

  self->_presentationState = 4;
}

void __103__CKSendMenuPopoverPresentationController__appCardContentViewControllerPresentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appCardPresentationStyle];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_190DD0708[v2];
  }

  v4 = [*(a1 + 32) popoverLayout];
  [v4 setState:v3];

  [*(a1 + 32) _anchorViewCenterInContainer];
  v6 = v5;
  v8 = v7;
  v9 = [*(a1 + 32) popoverLayout];
  [v9 setAnchorCenter:{v6, v8}];

  v10 = [*(a1 + 32) anchorItem];
  [v10 anchorRect];
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) popoverLayout];
  [v15 setAnchorSize:{v12, v14}];

  v21 = [*(a1 + 32) containerView];
  [v21 bounds];
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) popoverLayout];
  [v20 setContainerSize:{v17, v19}];
}

- (void)_sendMenuViewControllerPresentationTransitionWillBegin
{
  configuration = [(CKSendMenuPopoverPresentationController *)self configuration];
  sendMenuViewController = [configuration sendMenuViewController];
  [sendMenuViewController preferredContentSize];
  v6 = v5;
  v8 = v7;
  presentedViewController = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  [presentedViewController setPreferredContentSize:{v6, v8}];

  self->_presentationState = 1;
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  popoverView = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [popoverView setLayoutSubviewsEnabled:1];

  v7.receiver = self;
  v7.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v7 presentationTransitionDidEnd:endCopy];
  if (endCopy)
  {
    self->_presentationState = 2;
  }

  else
  {
    self->_presentationState = 0;
    [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }
}

- (void)dismissalTransitionWillBegin
{
  popoverView = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [popoverView setLayoutSubviewsEnabled:0];

  v11.receiver = self;
  v11.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v11 dismissalTransitionWillBegin];
  self->_presentationState = 3;
  presentedViewController = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CKSendMenuPopoverPresentationController_dismissalTransitionWillBegin__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  delegate = [(CKSendMenuPopoverPresentationController *)self delegate];
  [delegate sendMenuPresentationControllerWillDismiss:self];

  if (transitionCoordinator)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__CKSendMenuPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_2;
    v8[3] = &unk_1E72F0100;
    v9 = v6;
    [transitionCoordinator animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    v6[2](v6);
  }
}

void __71__CKSendMenuPopoverPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setActive:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v12.receiver = self;
  v12.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v12 dismissalTransitionDidEnd:?];
  if (endCopy)
  {
    self->_presentationState = 0;
    [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }

  anchorItem = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  anchorView = [anchorItem anchorView];
  [anchorView setAlpha:1.0];

  popoverView = [(CKSendMenuPopoverPresentationController *)self popoverView];
  sendMenuView = [popoverView sendMenuView];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v11[0] = *MEMORY[0x1E695EFD0];
  v11[1] = v10;
  v11[2] = *(MEMORY[0x1E695EFD0] + 32);
  [sendMenuView setTransform:v11];
}

- (id)presentedView
{
  v4.receiver = self;
  v4.super_class = CKSendMenuPopoverPresentationController;
  presentedView = [(CKSendMenuPopoverPresentationController *)&v4 presentedView];

  return presentedView;
}

- (void)containerViewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v17 containerViewWillLayoutSubviews];
  anchorItem = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  isPresenting = [(CKSendMenuPopoverPresentationController *)self isPresenting];
  [(CKSendMenuPopoverPresentationController *)self frameOfPresentedViewInContainerView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  popoverView = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [popoverView setFrame:{v6, v8, v10, v12}];

  if (isPresenting)
  {
    popoverView2 = [(CKSendMenuPopoverPresentationController *)self popoverView];
    [popoverView2 setNeedsLayout];

    popoverView3 = [(CKSendMenuPopoverPresentationController *)self popoverView];
    [popoverView3 layoutIfNeeded];
  }

  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  [containerView bounds];
  [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CKSendMenuPopoverPresentationController;
  coordinatorCopy = coordinator;
  [(CKSendMenuPopoverPresentationController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CKSendMenuPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72EC3E8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __94__CKSendMenuPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setNeedsLayout];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  anchorItem = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  popoverLayout = self->_popoverLayout;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __78__CKSendMenuPopoverPresentationController_frameOfPresentedViewInContainerView__block_invoke;
  v24 = &unk_1E72EB8D0;
  selfCopy = self;
  v26 = anchorItem;
  v5 = anchorItem;
  [(CKPopoverViewLayout *)popoverLayout updateProperties:&v21];
  v6 = self->_popoverLayout;
  v7 = [(CKSendMenuPopoverPresentationController *)self containerView:v21];
  v8 = [(CKPopoverViewLayout *)v6 newLayoutMetricsWithCoordinateSpace:v7];

  [(CKSendMenuPopoverPresentationController *)self _didComputePopoverLayoutMetrics:v8];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

void __78__CKSendMenuPopoverPresentationController_frameOfPresentedViewInContainerView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  [v2 preferredContentSize];
  [*(*(a1 + 32) + 384) setPreferredContentSize:?];

  [*(a1 + 32) _anchorViewCenterInContainer];
  [*(*(a1 + 32) + 384) setAnchorCenter:?];
  [*(a1 + 40) anchorRect];
  [*(*(a1 + 32) + 384) setAnchorSize:{v3, v4}];
  v7 = [*(a1 + 32) containerView];
  [v7 bounds];
  [*(*(a1 + 32) + 384) setContainerSize:{v5, v6}];
}

- (void)sendMenuPopoverPresentationDimmingViewDidReceiveTap:(id)tap
{
  delegate = [(CKSendMenuPopoverPresentationController *)self delegate];
  [delegate sendMenuPresentationControllerWantsToBeDismissed:self];
}

- (void)presentCardWithContentViewController:(id)controller style:(unint64_t)style completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  popoverView = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [popoverView setLayoutSubviewsEnabled:0];

  self->_presentationState = 4;
  presentedViewController = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  popoverLayout = [(CKSendMenuPopoverPresentationController *)self popoverLayout];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke;
  v40[3] = &unk_1E72ED810;
  v40[4] = self;
  v40[5] = style;
  [popoverLayout updateProperties:v40];

  popoverLayout = self->_popoverLayout;
  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  v15 = [(CKPopoverViewLayout *)popoverLayout newLayoutMetricsWithCoordinateSpace:containerView];

  [(CKSendMenuPopoverPresentationController *)self _didComputePopoverLayoutMetrics:v15];
  [v15 frame];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v21 = MinX + CGRectGetWidth(v42) * 0.5;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v23 = CGRectGetHeight(v44);
  v24 = MEMORY[0x1E69DD250];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke_2;
  v32[3] = &unk_1E72F0128;
  v25 = MinY + v23 * 0.5;
  v33 = presentedViewController;
  v34 = controllerCopy;
  v36 = 0;
  v37 = 0;
  v38 = width;
  v39 = height;
  selfCopy = self;
  v26 = controllerCopy;
  v27 = presentedViewController;
  [v24 performWithoutAnimation:v32];
  v28 = [v27 animationForTransitioningToAppContainerViewControllerWithFinalBounds:0.0 finalCenter:{0.0, width, height, v21, v25}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke_3;
  v30[3] = &unk_1E72ED1C8;
  v30[4] = self;
  v31 = completionCopy;
  v29 = completionCopy;
  [v28 setCompletion:v30];
  [v28 startAnimation];
}

void __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_190DD0708[v1];
  }

  v3 = [*(a1 + 32) popoverLayout];
  [v3 setState:v2];
}

void __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAppContainerViewController:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = [*(a1 + 40) view];
  [v6 setBounds:{v2, v3, v4, v5}];

  v7 = [*(a1 + 48) popoverView];
  v8 = [v7 sendMenuView];
  [v8 center];
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 40) view];
  [v13 setCenter:{v10, v12}];

  v14 = [*(a1 + 40) view];
  [v14 setNeedsLayout];

  v15 = [*(a1 + 40) view];
  [v15 layoutIfNeeded];

  v16 = [*(a1 + 40) view];
  [v16 setAlpha:0.0];
}

uint64_t __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) popoverView];
  [v2 setLayoutSubviewsEnabled:1];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)anchorViewDidMove
{
  popoverLayout = self->_popoverLayout;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__CKSendMenuPopoverPresentationController_anchorViewDidMove__block_invoke;
  v5[3] = &unk_1E72EBA18;
  v5[4] = self;
  [(CKPopoverViewLayout *)popoverLayout updateProperties:v5];
  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  [containerView setNeedsLayout];
}

uint64_t __60__CKSendMenuPopoverPresentationController_anchorViewDidMove__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _anchorViewCenterInContainer];
  v2 = *(*(a1 + 32) + 384);

  return [v2 setAnchorCenter:?];
}

- (CGPoint)_anchorViewCenterInContainer
{
  anchorItem = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  anchorView = [anchorItem anchorView];
  [anchorView center];
  v7 = v6;
  v9 = v8;
  anchorView2 = [anchorItem anchorView];
  superview = [anchorView2 superview];
  [containerView convertPoint:superview fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)newPopoverLayoutMetrics
{
  popoverLayout = self->_popoverLayout;
  containerView = [(CKSendMenuPopoverPresentationController *)self containerView];
  v4 = [(CKPopoverViewLayout *)popoverLayout newLayoutMetricsWithCoordinateSpace:containerView];

  return v4;
}

@end