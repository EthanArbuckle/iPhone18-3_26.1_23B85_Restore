@interface HKAuthorizationPresentationController
- (UIViewController)viewControllerPresenter;
- (void)_dismissViewControllerAnimated:(BOOL)a3;
- (void)_mainQueue_presentWithPresentationRequests:(id)a3 authorizationRequestRecord:(id)a4 completion:(id)a5;
- (void)_makeRemoteViewControllerVisible:(id)a3;
- (void)_requestAndConfigureCarouselAlert:(id)a3 completion:(id)a4;
- (void)_requestAndConfigureHostViewController:(id)a3 completion:(id)a4;
- (void)cancelPresentation;
- (void)dealloc;
- (void)healthPrivacyHostAuthorizationControllerDidFinishWithError:(id)a3;
- (void)presentWithPresentationRequests:(id)a3 authorizationRequestRecord:(id)a4 authorizationViewControllerPresenter:(id)a5 completion:(id)a6;
@end

@implementation HKAuthorizationPresentationController

- (void)dealloc
{
  v3 = [(HKAuthorizationPresentationController *)self requestCancellationInvocation];
  v4 = [v3 invoke];

  v5.receiver = self;
  v5.super_class = HKAuthorizationPresentationController;
  [(HKAuthorizationPresentationController *)&v5 dealloc];
}

- (void)presentWithPresentationRequests:(id)a3 authorizationRequestRecord:(id)a4 authorizationViewControllerPresenter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
  }

  if ([v10 count])
  {
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
    if (v13)
    {
LABEL_5:
      if (!v12)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_6:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
  }

  objc_storeWeak(&self->_viewControllerPresenter, v12);
LABEL_9:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __148__HKAuthorizationPresentationController_presentWithPresentationRequests_authorizationRequestRecord_authorizationViewControllerPresenter_completion___block_invoke;
  v17[3] = &unk_1E81B5FD0;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  v14 = v13;
  v15 = v11;
  v16 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

- (void)cancelPresentation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__HKAuthorizationPresentationController_cancelPresentation__block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__HKAuthorizationPresentationController_cancelPresentation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestCancellationInvocation];
  v3 = [v2 invoke];

  v4 = *(a1 + 32);

  return [v4 _dismissViewControllerAnimated:1];
}

- (void)_requestAndConfigureCarouselAlert:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(HKAuthorizationPresentationController *)self didPresent])
  {
    v7 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Already presenting Carousel alert"];
    v6[2](v6, 0, v7);
  }

  else
  {
    v7 = objc_alloc_init(HKNanoHostAuthorizationController);
    [(HKAuthorizationPresentationController *)self setNanoAuthorizationController:v7];
    [(HKNanoHostAuthorizationController *)v7 setDelegate:self];
    v8[2](v8, v7);
    [(HKNanoHostAuthorizationController *)v7 show];
    [(HKAuthorizationPresentationController *)self setDidPresent:1];
    v6[2](v6, 1, 0);
  }
}

- (void)_requestAndConfigureHostViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HKAuthorizationPresentationController *)self didPresent])
  {
    v8 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Already presenting remote view controller"];
    v7[2](v7, 0, v8);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__HKAuthorizationPresentationController__requestAndConfigureHostViewController_completion___block_invoke;
    aBlock[3] = &unk_1E81B66C0;
    aBlock[4] = self;
    v12 = v6;
    v13 = v7;
    v9 = _Block_copy(aBlock);
    [(HKAuthorizationPresentationController *)self setDidPresent:1];
    v10 = [HKHealthPrivacyHostAuthorizationViewController requestRemoteViewControllerWithConnectionHandler:v9];
    [(HKAuthorizationPresentationController *)self setRequestCancellationInvocation:v10];
  }
}

void __91__HKAuthorizationPresentationController__requestAndConfigureHostViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setRequestCancellationInvocation:0];
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = v5;
    [v7 setHostViewController:v8];
    [v8 setDelegate:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _makeRemoteViewControllerVisible:v8];
    [v8 show];

    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogAuthorization();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __111__HKObjectPickerPresentationController__requestAndConfigureHostViewController_presentationRequests_completion___block_invoke_cold_1(v6, v10);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  v9();
}

- (void)_mainQueue_presentWithPresentationRequests:(id)a3 authorizationRequestRecord:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [MEMORY[0x1E696C608] sharedBehavior];
  v12 = [v11 isAppleWatch];

  if (v12)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __122__HKAuthorizationPresentationController__mainQueue_presentWithPresentationRequests_authorizationRequestRecord_completion___block_invoke;
    v22[3] = &unk_1E81B7528;
    v13 = &v23;
    v14 = &v24;
    v23 = v9;
    v24 = v8;
    v15 = v8;
    v16 = v9;
    [(HKAuthorizationPresentationController *)self _requestAndConfigureCarouselAlert:v22 completion:v10];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __122__HKAuthorizationPresentationController__mainQueue_presentWithPresentationRequests_authorizationRequestRecord_completion___block_invoke_2;
    v19[3] = &unk_1E81B7550;
    v13 = &v20;
    v14 = &v21;
    v20 = v9;
    v21 = v8;
    v17 = v8;
    v18 = v9;
    [(HKAuthorizationPresentationController *)self _requestAndConfigureHostViewController:v19 completion:v10];
  }
}

- (void)_makeRemoteViewControllerVisible:(id)a3
{
  v4 = a3;
  if (_UIApplicationIsExtension() && ([MEMORY[0x1E696C608] sharedBehavior], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isAppleWatch"), v5, (v6 & 1) == 0))
  {
    _HKInitializeLogging();
    v15 = HKLogAuthorization();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [HKObjectPickerPresentationController _makeRemoteViewControllerVisible:v15];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696C608] sharedBehavior];
    v8 = [v7 isiPad];

    if (v8)
    {
      [v4 setModalPresentationStyle:2];
      [v4 setPreferredContentSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    }

    [v4 setModalInPresentation:1];
    v9 = objc_alloc_init(HKAuthorizationViewPresenterProvider);
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);
    v11 = [(HKAuthorizationViewPresenterProvider *)v9 hkAuthorizationViewControllerPresenter:WeakRetained];

    v12 = [v11 presentedViewController];

    if (v12)
    {
      do
      {
        v13 = [v11 presentedViewController];

        v14 = [v13 presentedViewController];

        v11 = v13;
      }

      while (v14);
    }

    else
    {
      v13 = v11;
    }

    [v13 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)_dismissViewControllerAnimated:(BOOL)a3
{
  if (self->_didPresent)
  {
    v13[9] = v3;
    v13[10] = v4;
    v5 = a3;
    v7 = [MEMORY[0x1E696C608] sharedBehavior];
    v8 = [v7 isAppleWatch];

    if (v8)
    {
      [(HKNanoHostAuthorizationController *)self->_nanoAuthorizationController invalidate];
      [(HKNanoHostAuthorizationController *)self->_nanoAuthorizationController setDelegate:0];
      nanoAuthorizationController = self->_nanoAuthorizationController;
      self->_nanoAuthorizationController = 0;

      self->_didPresent = 0;
    }

    else
    {
      v10 = self->_hostViewController;
      [(HKHealthPrivacyHostAuthorizationViewController *)v10 setDelegate:0];
      hostViewController = self->_hostViewController;
      self->_hostViewController = 0;

      v12 = [(HKHealthPrivacyHostAuthorizationViewController *)v10 presentingViewController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __72__HKAuthorizationPresentationController__dismissViewControllerAnimated___block_invoke;
      v13[3] = &unk_1E81B55A8;
      v13[4] = self;
      [v12 dismissViewControllerAnimated:v5 completion:v13];
    }
  }
}

- (void)healthPrivacyHostAuthorizationControllerDidFinishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HKAuthorizationPresentationController *)v4 healthPrivacyHostAuthorizationControllerDidFinishWithError:v5];
    }
  }

  [(HKAuthorizationPresentationController *)self _dismissViewControllerAnimated:1];
}

- (UIViewController)viewControllerPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);

  return WeakRetained;
}

- (void)presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"presentationRequests != nil" object:? file:? lineNumber:? description:?];
}

- (void)presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"presentationRequests.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[authorizationViewControllerPresenter isKindOfClass:[UIViewController class]]" object:? file:? lineNumber:? description:?];
}

- (void)healthPrivacyHostAuthorizationControllerDidFinishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Privacy host controller finished with error: %{public}@", &v2, 0xCu);
}

@end