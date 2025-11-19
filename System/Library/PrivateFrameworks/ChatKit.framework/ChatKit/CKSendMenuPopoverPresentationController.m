@interface CKSendMenuPopoverPresentationController
- (CGPoint)_anchorViewCenterInContainer;
- (CGRect)frameOfPresentedViewInContainerView;
- (CKSendMenuPopoverPresentationController)initWithConfiguration:(id)a3 popoverViewController:(id)a4 presentingViewController:(id)a5;
- (CKSendMenuPopoverPresentationControllerDelegate)delegate;
- (id)newPopoverLayoutMetrics;
- (id)presentedView;
- (void)_appCardContentViewControllerPresentationTransitionWillBegin;
- (void)_didComputePopoverLayoutMetrics:(id)a3;
- (void)_sendMenuViewControllerPresentationTransitionWillBegin;
- (void)anchorViewDidMove;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentCardWithContentViewController:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)sendMenuPopoverPresentationDimmingViewDidReceiveTap:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKSendMenuPopoverPresentationController

- (CKSendMenuPopoverPresentationController)initWithConfiguration:(id)a3 popoverViewController:(id)a4 presentingViewController:(id)a5
{
  v9 = a3;
  v21.receiver = self;
  v21.super_class = CKSendMenuPopoverPresentationController;
  v10 = [(CKSendMenuPopoverPresentationController *)&v21 initWithPresentedViewController:a4 presentingViewController:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_configuration, a3);
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 newSendMenuPopoverLayoutConfiguration];

    v14 = [[CKPopoverViewLayout alloc] initWithConfiguration:v13];
    popoverLayout = v11->_popoverLayout;
    v11->_popoverLayout = v14;

    v11->_presentationState = 0;
    layoutMetricsCommunicatedToDelegate = v11->_layoutMetricsCommunicatedToDelegate;
    v11->_layoutMetricsCommunicatedToDelegate = 0;

    v17 = [(CKSendMenuPopoverPresentationController *)v11 traitOverrides];
    v18 = objc_opt_self();
    [v17 setNSIntegerValue:3 forTrait:v18];

    v19 = [(CKSendMenuPopoverPresentationController *)v11 traitOverrides];
    [v19 setHorizontalSizeClass:1];
  }

  return v11;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v3 setDelegate:a3];
}

- (CKSendMenuPopoverPresentationControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = CKSendMenuPopoverPresentationController;
  v2 = [(CKSendMenuPopoverPresentationController *)&v4 delegate];

  return v2;
}

- (void)_didComputePopoverLayoutMetrics:(id)a3
{
  v36 = a3;
  v4 = [(CKSendMenuPopoverPresentationController *)self delegate];

  if (v4)
  {
    layoutMetricsCommunicatedToDelegate = self->_layoutMetricsCommunicatedToDelegate;
    if (!layoutMetricsCommunicatedToDelegate || (-[CKPopoverViewLayoutMetrics frame](layoutMetricsCommunicatedToDelegate, "frame"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, [v36 frame], v15 = v14, v17 = v16, v19 = v18, v21 = v20, v35 = v9, v38.origin.x = v7, v38.origin.y = v9, v38.size.width = v11, v38.size.height = v13, Width = CGRectGetWidth(v38), v39.origin.x = v15, v39.origin.y = v17, v39.size.width = v19, v39.size.height = v21, v23 = CGRectGetWidth(v39), !CKFloatApproximatelyEqualToFloatWithTolerance(Width, v23, 0.00000999999975)) || (v40.origin.y = v35, v40.origin.x = v7, v40.size.width = v11, v40.size.height = v13, Height = CGRectGetHeight(v40), v41.origin.x = v15, v41.origin.y = v17, v41.size.width = v19, v41.size.height = v21, v25 = CGRectGetHeight(v41), !CKFloatApproximatelyEqualToFloatWithTolerance(Height, v25, 0.00000999999975)) || (v42.origin.y = v35, v42.origin.x = v7, v42.size.width = v11, v42.size.height = v13, MinX = CGRectGetMinX(v42), v43.origin.x = v15, v43.origin.y = v17, v43.size.width = v19, v43.size.height = v21, v27 = CGRectGetMinX(v43), !CKFloatApproximatelyEqualToFloatWithTolerance(MinX, v27, 0.00000999999975)) || (v44.origin.y = v35, v44.origin.x = v7, v44.size.width = v11, v44.size.height = v13, MinY = CGRectGetMinY(v44), v45.origin.x = v15, v45.origin.y = v17, v45.size.width = v19, v45.size.height = v21, v29 = CGRectGetMinY(v45), !CKFloatApproximatelyEqualToFloatWithTolerance(MinY, v29, 0.00000999999975)))
    {
      v30 = self->_layoutMetricsCommunicatedToDelegate;
      v31 = v36;
      v32 = self->_layoutMetricsCommunicatedToDelegate;
      self->_layoutMetricsCommunicatedToDelegate = v31;
      v33 = v30;

      v34 = [(CKSendMenuPopoverPresentationController *)self delegate];
      [v34 sendMenuPresentationController:self didChangePopoverLayoutMetrics:v33];
    }
  }
}

- (void)presentationTransitionWillBegin
{
  v3 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [v3 setLayoutSubviewsEnabled:1];

  v28.receiver = self;
  v28.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v28 presentationTransitionWillBegin];
  v4 = [(CKSendMenuPopoverPresentationController *)self sendMenuViewController];

  if (v4)
  {
    [(CKSendMenuPopoverPresentationController *)self _sendMenuViewControllerPresentationTransitionWillBegin];
  }

  else
  {
    [(CKSendMenuPopoverPresentationController *)self _appCardContentViewControllerPresentationTransitionWillBegin];
  }

  v5 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  v6 = [v5 anchorView];
  [v6 setAlpha:0.0];

  v7 = [(CKSendMenuPopoverPresentationController *)self containerView];
  v8 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  v9 = [v8 anchorView];

  [v9 bounds];
  [v7 convertRect:v9 fromView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  v19 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [v19 setFrame:{v11, v13, v15, v17}];

  v20 = objc_alloc_init(CKSendMenuPopoverPresentationDimmingView);
  dimmingView = self->_dimmingView;
  self->_dimmingView = v20;

  [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView setDelegate:self];
  [v7 addSubview:self->_dimmingView];
  [v7 bounds];
  [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView setFrame:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CKSendMenuPopoverPresentationController_presentationTransitionWillBegin__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v22 = _Block_copy(aBlock);
  v23 = [v18 transitionCoordinator];

  if (v23)
  {
    v24 = [v18 transitionCoordinator];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__CKSendMenuPopoverPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v25[3] = &unk_1E72F0100;
    v26 = v22;
    [v24 animateAlongsideTransition:v25 completion:0];
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
  v3 = [(CKSendMenuPopoverPresentationController *)self popoverLayout];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __103__CKSendMenuPopoverPresentationController__appCardContentViewControllerPresentationTransitionWillBegin__block_invoke;
  v29[3] = &unk_1E72EBA18;
  v29[4] = self;
  [v3 updateProperties:v29];

  popoverLayout = self->_popoverLayout;
  v5 = [(CKSendMenuPopoverPresentationController *)self containerView];
  v6 = [(CKPopoverViewLayout *)popoverLayout newLayoutMetricsWithCoordinateSpace:v5];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v11 = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  [v11 setPreferredContentSize:{v8, v10}];

  [v6 frame];
  v13 = v12;
  v15 = v14;
  [v6 frame];
  v17 = v16;
  v19 = v18;
  v20 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  [v20 setPreferredContentSize:{v17, v19}];

  v21 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  v22 = [v21 view];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:1];

  v23 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  v24 = [v23 view];
  [v24 setAutoresizingMask:0];

  v25 = [(CKSendMenuPopoverPresentationController *)self appCardContentViewController];
  v26 = [v25 view];
  [v26 setFrame:{0.0, 0.0, v13, v15}];

  v27 = [(CKSendMenuPopoverPresentationController *)self popoverViewController];
  v28 = [v27 view];
  [v28 setFrame:{0.0, 0.0, v13, v15}];

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
  v3 = [(CKSendMenuPopoverPresentationController *)self configuration];
  v4 = [v3 sendMenuViewController];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;
  v9 = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  [v9 setPreferredContentSize:{v6, v8}];

  self->_presentationState = 1;
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [v5 setLayoutSubviewsEnabled:1];

  v7.receiver = self;
  v7.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v7 presentationTransitionDidEnd:v3];
  if (v3)
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
  v3 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [v3 setLayoutSubviewsEnabled:0];

  v11.receiver = self;
  v11.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v11 dismissalTransitionWillBegin];
  self->_presentationState = 3;
  v4 = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  v5 = [v4 transitionCoordinator];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CKSendMenuPopoverPresentationController_dismissalTransitionWillBegin__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(CKSendMenuPopoverPresentationController *)self delegate];
  [v7 sendMenuPresentationControllerWillDismiss:self];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__CKSendMenuPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_2;
    v8[3] = &unk_1E72F0100;
    v9 = v6;
    [v5 animateAlongsideTransition:v8 completion:0];
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

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v12 dismissalTransitionDidEnd:?];
  if (v3)
  {
    self->_presentationState = 0;
    [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView removeFromSuperview];
    dimmingView = self->_dimmingView;
    self->_dimmingView = 0;
  }

  v6 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  v7 = [v6 anchorView];
  [v7 setAlpha:1.0];

  v8 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  v9 = [v8 sendMenuView];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v11[0] = *MEMORY[0x1E695EFD0];
  v11[1] = v10;
  v11[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v9 setTransform:v11];
}

- (id)presentedView
{
  v4.receiver = self;
  v4.super_class = CKSendMenuPopoverPresentationController;
  v2 = [(CKSendMenuPopoverPresentationController *)&v4 presentedView];

  return v2;
}

- (void)containerViewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKSendMenuPopoverPresentationController;
  [(CKSendMenuPopoverPresentationController *)&v17 containerViewWillLayoutSubviews];
  v3 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  v4 = [(CKSendMenuPopoverPresentationController *)self isPresenting];
  [(CKSendMenuPopoverPresentationController *)self frameOfPresentedViewInContainerView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [v13 setFrame:{v6, v8, v10, v12}];

  if (v4)
  {
    v14 = [(CKSendMenuPopoverPresentationController *)self popoverView];
    [v14 setNeedsLayout];

    v15 = [(CKSendMenuPopoverPresentationController *)self popoverView];
    [v15 layoutIfNeeded];
  }

  v16 = [(CKSendMenuPopoverPresentationController *)self containerView];
  [v16 bounds];
  [(CKSendMenuPopoverPresentationDimmingView *)self->_dimmingView setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CKSendMenuPopoverPresentationController;
  v7 = a4;
  [(CKSendMenuPopoverPresentationController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CKSendMenuPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E72EC3E8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

void __94__CKSendMenuPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setNeedsLayout];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  popoverLayout = self->_popoverLayout;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __78__CKSendMenuPopoverPresentationController_frameOfPresentedViewInContainerView__block_invoke;
  v24 = &unk_1E72EB8D0;
  v25 = self;
  v26 = v3;
  v5 = v3;
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

- (void)sendMenuPopoverPresentationDimmingViewDidReceiveTap:(id)a3
{
  v4 = [(CKSendMenuPopoverPresentationController *)self delegate];
  [v4 sendMenuPresentationControllerWantsToBeDismissed:self];
}

- (void)presentCardWithContentViewController:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CKSendMenuPopoverPresentationController *)self popoverView];
  [v10 setLayoutSubviewsEnabled:0];

  self->_presentationState = 4;
  v11 = [(CKSendMenuPopoverPresentationController *)self presentedViewController];
  v12 = [(CKSendMenuPopoverPresentationController *)self popoverLayout];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke;
  v40[3] = &unk_1E72ED810;
  v40[4] = self;
  v40[5] = a4;
  [v12 updateProperties:v40];

  popoverLayout = self->_popoverLayout;
  v14 = [(CKSendMenuPopoverPresentationController *)self containerView];
  v15 = [(CKPopoverViewLayout *)popoverLayout newLayoutMetricsWithCoordinateSpace:v14];

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
  v33 = v11;
  v34 = v8;
  v36 = 0;
  v37 = 0;
  v38 = width;
  v39 = height;
  v35 = self;
  v26 = v8;
  v27 = v11;
  [v24 performWithoutAnimation:v32];
  v28 = [v27 animationForTransitioningToAppContainerViewControllerWithFinalBounds:0.0 finalCenter:{0.0, width, height, v21, v25}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__CKSendMenuPopoverPresentationController_presentCardWithContentViewController_style_completion___block_invoke_3;
  v30[3] = &unk_1E72ED1C8;
  v30[4] = self;
  v31 = v9;
  v29 = v9;
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
  v4 = [(CKSendMenuPopoverPresentationController *)self containerView];
  [v4 setNeedsLayout];
}

uint64_t __60__CKSendMenuPopoverPresentationController_anchorViewDidMove__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _anchorViewCenterInContainer];
  v2 = *(*(a1 + 32) + 384);

  return [v2 setAnchorCenter:?];
}

- (CGPoint)_anchorViewCenterInContainer
{
  v3 = [(CKSendMenuPopoverPresentationController *)self anchorItem];
  v4 = [(CKSendMenuPopoverPresentationController *)self containerView];
  v5 = [v3 anchorView];
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [v3 anchorView];
  v11 = [v10 superview];
  [v4 convertPoint:v11 fromView:{v7, v9}];
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
  v3 = [(CKSendMenuPopoverPresentationController *)self containerView];
  v4 = [(CKPopoverViewLayout *)popoverLayout newLayoutMetricsWithCoordinateSpace:v3];

  return v4;
}

@end