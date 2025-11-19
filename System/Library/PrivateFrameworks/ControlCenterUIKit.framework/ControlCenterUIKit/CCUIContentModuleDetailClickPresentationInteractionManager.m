@interface CCUIContentModuleDetailClickPresentationInteractionManager
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (CCUIContentModuleDetailClickPresentationInteractionManager)initWithPresentingViewController:(id)a3 delegate:(id)a4;
- (CCUIContentModuleDetailClickPresentationInteractionManagerDelegate)delegate;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setViewForInteraction:(id)a3;
@end

@implementation CCUIContentModuleDetailClickPresentationInteractionManager

- (CCUIContentModuleDetailClickPresentationInteractionManager)initWithPresentingViewController:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CCUIContentModuleDetailClickPresentationInteractionManager;
  v9 = [(CCUIContentModuleDetailClickPresentationInteractionManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentingViewController, a3);
    v11 = [objc_alloc(MEMORY[0x1E69DD3E8]) initWithDelegate:v10];
    clickPresentationInteraction = v10->_clickPresentationInteraction;
    v10->_clickPresentationInteraction = v11;

    [(CCUIContentModuleDetailClickPresentationInteractionManager *)v10 setDelegate:v8];
  }

  return v10;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v7;
  }
}

- (void)setViewForInteraction:(id)a3
{
  v5 = a3;
  viewForInteraction = self->_viewForInteraction;
  if (viewForInteraction != v5)
  {
    v7 = v5;
    [(UIView *)viewForInteraction removeInteraction:self->_clickPresentationInteraction];
    objc_storeStrong(&self->_viewForInteraction, a3);
    viewForInteraction = [(UIView *)self->_viewForInteraction addInteraction:self->_clickPresentationInteraction];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](viewForInteraction, v5);
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  if ((*&self->_delegateFlags & 2) == 0)
  {
    return 1;
  }

  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v4) = [WeakRetained contentModuleDetailClickPresentationInteractionControllerInteractionShouldBegin:v4];

  return v4;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  v5 = (*&self->_delegateFlags & 4) == 0 || !self->_authenticated && (block[0] = MEMORY[0x1E69E9820], block[1] = 3221225472, block[2] = __104__CCUIContentModuleDetailClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke, block[3] = &unk_1E83EA478, block[4] = self, dispatch_async(MEMORY[0x1E69E96A0], block), (*&self->_delegateFlags & 4) == 0) || self->_authenticated;

  return v5;
}

void __104__CCUIContentModuleDetailClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __104__CCUIContentModuleDetailClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke_2;
  v7 = &unk_1E83EA5D0;
  v8 = v3;
  [WeakRetained contentModuleDetailClickPresentationInteractionController:? requestsAuthenticationForPresentationWithCompletionHandler:?];
}

void __104__CCUIContentModuleDetailClickPresentationInteractionManager_clickPresentationInteractionShouldPresent___block_invoke_2(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 32) = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 viewForInteraction];
    v5 = [v4 window];

    if (v5)
    {
      v6 = *(*(a1 + 32) + 8);

      [v6 present];
    }

    else
    {
      v9 = CCUILogUserInterface;
      if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [*(a1 + 32) viewForInteraction];
        v14 = 138543618;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&dword_1D168A000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to present click preview but view is not in window, view = %{public}@", &v14, 0x16u);
      }
    }
  }

  else
  {
    [v3[1] cancelInteraction];
    v7 = *(a1 + 32);
    v8 = v7[1];

    [v7 clickPresentationInteractionEnded:v8 wasCancelled:1];
  }
}

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*&self->_delegateFlags & 1) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_delegate), [WeakRetained presentedViewControllerForContentModuleDetailClickPresentationInteractionController:self], v9 = objc_claimAutoreleasedReturnValue(), WeakRetained, v9))
  {
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_viewForInteraction cancelTouchTracking];
    }

    v10 = [CCUIContentModuleDetailTransitioningDelegate alloc];
    v11 = [v7 parentViewController];
    v12 = [(CCUIContentModuleDetailTransitioningDelegate *)v10 initWithAnchoringViewController:v11];
    detailTransitioningDelegate = self->_detailTransitioningDelegate;
    self->_detailTransitioningDelegate = v12;

    v14 = [(CCUIContentModuleDetailTransitioningDelegate *)self->_detailTransitioningDelegate presentationControllerForPresentedViewController:v9 presentingViewController:v7 sourceViewController:v7];
    presentationController = self->_presentationController;
    self->_presentationController = v14;

    v16 = [(CCUIContentModuleDetailTransitioningDelegate *)self->_detailTransitioningDelegate animationControllerForPresentedController:v9 presentingController:v7 sourceController:v7];
    v17 = objc_opt_class();
    v18 = v16;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = v19;

    v37 = [[CCUIContentModuleDetailClickPresentationTransition alloc] initWithPresentedViewController:v9 animationController:v21];
    v22 = [(CCUIContentModuleDetailTransitioningDelegate *)self->_detailTransitioningDelegate animationControllerForDismissedController:v9];
    v23 = objc_opt_class();
    v24 = v22;
    if (v23)
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = [[CCUIContentModuleDetailClickPresentationTransition alloc] initWithPresentedViewController:v9 animationController:v26];
    v20 = [objc_alloc(MEMORY[0x1E69DD3E0]) initWithPresentedViewController:v9 presentationController:self->_presentationController];
    v28 = [MEMORY[0x1E69DC938] currentDevice];
    v29 = [v28 userInterfaceIdiom];
    v30 = [(UIViewController *)self->_presentingViewController bs_presentationContextDefiningViewController];
    v31 = [v30 view];
    v32 = v31;
    if (v29)
    {
      v33 = [v31 superview];

      v32 = v33;
    }

    [v20 setCustomContainerView:v32];
    if (objc_opt_respondsToSelector())
    {
      v34 = [v9 viewForTouchContinuation];
    }

    else
    {
      v34 = self->_viewForInteraction;
    }

    v35 = v34;
    [v20 setCustomViewForTouchContinuation:v34];
    [v20 setAppearanceTransition:v37];
    [v20 setDisappearanceTransition:v27];
  }

  else
  {
    [v6 cancelInteraction];
    v9 = 0;
    v20 = 0;
  }

  return v20;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  v4 = a4;
  detailTransitioningDelegate = self->_detailTransitioningDelegate;
  self->_detailTransitioningDelegate = 0;

  presentationController = self->_presentationController;
  self->_presentationController = 0;

  self->_authenticated = 0;
  if ((*&self->_delegateFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentModuleDetailClickPresentationInteractionControllerInteractionEnded:self wasCancelled:v4];
  }
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(UIView *)self->_viewForInteraction _isInAWindow:a3])
  {
    v5 = self->_viewForInteraction;
    v6 = [(UIView *)v5 window];
    v7 = CCUILogUserInterface;
    if (os_log_type_enabled(CCUILogUserInterface, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1D168A000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v13, 0x20u);
    }

    v11 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self->_viewForInteraction];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CCUIContentModuleDetailClickPresentationInteractionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end