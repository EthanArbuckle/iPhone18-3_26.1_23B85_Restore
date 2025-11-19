@interface CKSendMenuPopoverAnimationController
- (CKSendMenuPopoverAnimationController)initWithConfiguration:(id)a3 presenting:(BOOL)a4;
- (CKSendMenuPopoverPresentationControllerAnchorItem)anchorItem;
- (void)animateDismissTransitionUsingContext:(id)a3 containerView:(id)a4 popoverViewController:(id)a5;
- (void)animatePresentTransitionUsingContext:(id)a3 containerView:(id)a4 popoverViewController:(id)a5;
- (void)animateTransition:(id)a3;
@end

@implementation CKSendMenuPopoverAnimationController

- (CKSendMenuPopoverPresentationControllerAnchorItem)anchorItem
{
  v2 = [(CKSendMenuPopoverAnimationController *)self configuration];
  v3 = [v2 anchorItem];

  return v3;
}

- (CKSendMenuPopoverAnimationController)initWithConfiguration:(id)a3 presenting:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKSendMenuPopoverAnimationController;
  v8 = [(CKSendMenuPopoverAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_presenting = a4;
    objc_storeStrong(&v8->_configuration, a3);
  }

  return v9;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  if (self->_presenting)
  {
    v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
    v7 = [v6 popoverView];
    v8 = [(CKSendMenuPopoverAnimationController *)self configuration];
    v9 = [v8 initialViewController];

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3010000000;
    v29 = 0;
    v30 = 0;
    v28[3] = &unk_190F92BB2;
    [v9 preferredContentSize];
    v29 = v10;
    v30 = v11;
    v12 = MEMORY[0x1E69DD250];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__CKSendMenuPopoverAnimationController_animateTransition___block_invoke;
    v22[3] = &unk_1E72ECC60;
    v27 = v28;
    v13 = v6;
    v23 = v13;
    v14 = v7;
    v24 = v14;
    v25 = self;
    v15 = v5;
    v26 = v15;
    [v12 performWithoutAnimation:v22];
    v16 = [(CKSendMenuPopoverAnimationController *)self configuration];
    v17 = [v16 sendMenuViewController];

    if (v17)
    {
      [v13 setSendMenuViewController:v9];
    }

    else
    {
      [v13 setAppContainerViewController:v9];
    }

    v19 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__CKSendMenuPopoverAnimationController_animateTransition___block_invoke_2;
    v20[3] = &unk_1E72EBA18;
    v18 = v14;
    v21 = v18;
    [v19 performWithoutAnimation:v20];
    [(CKSendMenuPopoverAnimationController *)self animatePresentTransitionUsingContext:v4 containerView:v15 popoverViewController:v13];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v13 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
    v18 = [v13 popoverView];
    [(CKSendMenuPopoverAnimationController *)self animateDismissTransitionUsingContext:v4 containerView:v5 popoverViewController:v13];
  }
}

void __58__CKSendMenuPopoverAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 32);
  if (v3 <= 300.0 || (v4 = *(v2 + 40), v4 <= 300.0))
  {
    *(v2 + 32) = vdupq_n_s64(0x4072C00000000000uLL);
    v5 = *(*(a1 + 64) + 8);
    v3 = *(v5 + 32);
    v4 = *(v5 + 40);
  }

  [*(a1 + 32) setPreferredContentSize:{v3, v4}];
  v6 = [*(a1 + 32) view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:1];

  v7 = [*(a1 + 32) view];
  [v7 setAutoresizingMask:0];

  v8 = [*(a1 + 32) view];
  [v8 setBounds:{0.0, 0.0, v3, v4}];

  v9 = [*(a1 + 32) view];
  [v9 setNeedsLayout];

  v10 = [*(a1 + 32) view];
  [v10 layoutIfNeeded];

  v11 = [*(a1 + 40) blurBackgroundView];
  [v11 setBounds:{0.0, 0.0, v3, v4}];

  v12 = [*(a1 + 40) backdropView];
  [v12 setBounds:{0.0, 0.0, v3, v4}];

  v13 = [*(a1 + 40) blurContentsView];
  [v13 setBounds:{0.0, 0.0, v3, v4}];

  v14 = [*(a1 + 48) configuration];
  v24 = [v14 anchorItem];

  v15 = [v24 anchorView];
  [v24 anchorRect];
  [v15 convertRect:*(a1 + 56) toView:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [*(a1 + 56) addSubview:*(a1 + 40)];
  [*(a1 + 40) setFrame:{v17, v19, v21, v23}];
}

void __58__CKSendMenuPopoverAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) prepareForPresentation];
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) blurBackgroundView];
  [v10 setFrame:{v3, v5, v7, v9}];

  [*(a1 + 32) bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 32) backdropView];
  [v19 setFrame:{v12, v14, v16, v18}];

  [*(a1 + 32) bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [*(a1 + 32) blurContentsView];
  [v28 setFrame:{v21, v23, v25, v27}];
}

- (void)animatePresentTransitionUsingContext:(id)a3 containerView:(id)a4 popoverViewController:(id)a5
{
  v6 = a3;
  v7 = a5;
  [v6 finalFrameForViewController:v7];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v13 = MinX + CGRectGetWidth(v20) * 0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinY = CGRectGetMinY(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = [v7 animationForPresentingInitialViewControllerWithFinalBounds:0.0 finalCenter:{0.0, width, height, v13, MinY + CGRectGetHeight(v22) * 0.5}];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __113__CKSendMenuPopoverAnimationController_animatePresentTransitionUsingContext_containerView_popoverViewController___block_invoke;
  v17[3] = &unk_1E72EBA18;
  v18 = v6;
  v16 = v6;
  [v15 setCompletion:v17];
  [v15 startAnimation];
}

- (void)animateDismissTransitionUsingContext:(id)a3 containerView:(id)a4 popoverViewController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(CKSendMenuPopoverAnimationController *)self anchorItem];
  v12 = [v11 anchorView];
  [v11 anchorRect];
  [v10 convertRect:v12 fromView:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  MinX = CGRectGetMinX(v35);
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  Width = CGRectGetWidth(v36);
  v37.origin.x = v14;
  v37.origin.y = v16;
  v37.size.width = v18;
  v37.size.height = v20;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  Height = CGRectGetHeight(v38);
  v25 = [(CKSendMenuPopoverAnimationController *)self configuration];
  v26 = [v25 sendMenuViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v28 = 1.0;
  if (isKindOfClass)
  {
    v29 = [(CKSendMenuPopoverAnimationController *)self configuration];
    v30 = [v29 sendMenuViewController];

    LODWORD(v29) = [v30 isPresentingAudioRecordingQuickSend];
    if (v29)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = 1.0;
    }
  }

  v31 = [v9 animationForDismissingWithFinalBounds:0.0 finalCenter:0.0 finalAlpha:{v18, v20, MinX + Width * 0.5, MinY + Height * 0.5, v28}];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __113__CKSendMenuPopoverAnimationController_animateDismissTransitionUsingContext_containerView_popoverViewController___block_invoke;
  v33[3] = &unk_1E72EBA18;
  v34 = v8;
  v32 = v8;
  [v31 setCompletion:v33];
  [v31 startAnimation];
}

@end