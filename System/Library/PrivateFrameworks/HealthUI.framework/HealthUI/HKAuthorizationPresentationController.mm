@interface HKAuthorizationPresentationController
- (UIViewController)viewControllerPresenter;
- (void)_dismissViewControllerAnimated:(BOOL)animated;
- (void)_mainQueue_presentWithPresentationRequests:(id)requests authorizationRequestRecord:(id)record completion:(id)completion;
- (void)_makeRemoteViewControllerVisible:(id)visible;
- (void)_requestAndConfigureCarouselAlert:(id)alert completion:(id)completion;
- (void)_requestAndConfigureHostViewController:(id)controller completion:(id)completion;
- (void)cancelPresentation;
- (void)dealloc;
- (void)healthPrivacyHostAuthorizationControllerDidFinishWithError:(id)error;
- (void)presentWithPresentationRequests:(id)requests authorizationRequestRecord:(id)record authorizationViewControllerPresenter:(id)presenter completion:(id)completion;
@end

@implementation HKAuthorizationPresentationController

- (void)dealloc
{
  requestCancellationInvocation = [(HKAuthorizationPresentationController *)self requestCancellationInvocation];
  invoke = [requestCancellationInvocation invoke];

  v5.receiver = self;
  v5.super_class = HKAuthorizationPresentationController;
  [(HKAuthorizationPresentationController *)&v5 dealloc];
}

- (void)presentWithPresentationRequests:(id)requests authorizationRequestRecord:(id)record authorizationViewControllerPresenter:(id)presenter completion:(id)completion
{
  requestsCopy = requests;
  recordCopy = record;
  presenterCopy = presenter;
  completionCopy = completion;
  if (!requestsCopy)
  {
    [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
  }

  if ([requestsCopy count])
  {
    if (completionCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
    if (completionCopy)
    {
LABEL_5:
      if (!presenterCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
  if (!presenterCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKAuthorizationPresentationController presentWithPresentationRequests:authorizationRequestRecord:authorizationViewControllerPresenter:completion:];
  }

  objc_storeWeak(&self->_viewControllerPresenter, presenterCopy);
LABEL_9:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __148__HKAuthorizationPresentationController_presentWithPresentationRequests_authorizationRequestRecord_authorizationViewControllerPresenter_completion___block_invoke;
  v17[3] = &unk_1E81B5FD0;
  v17[4] = self;
  v18 = requestsCopy;
  v19 = recordCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = recordCopy;
  v16 = requestsCopy;
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

- (void)_requestAndConfigureCarouselAlert:(id)alert completion:(id)completion
{
  alertCopy = alert;
  completionCopy = completion;
  if ([(HKAuthorizationPresentationController *)self didPresent])
  {
    v7 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Already presenting Carousel alert"];
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    v7 = objc_alloc_init(HKNanoHostAuthorizationController);
    [(HKAuthorizationPresentationController *)self setNanoAuthorizationController:v7];
    [(HKNanoHostAuthorizationController *)v7 setDelegate:self];
    alertCopy[2](alertCopy, v7);
    [(HKNanoHostAuthorizationController *)v7 show];
    [(HKAuthorizationPresentationController *)self setDidPresent:1];
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_requestAndConfigureHostViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if ([(HKAuthorizationPresentationController *)self didPresent])
  {
    v8 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Already presenting remote view controller"];
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__HKAuthorizationPresentationController__requestAndConfigureHostViewController_completion___block_invoke;
    aBlock[3] = &unk_1E81B66C0;
    aBlock[4] = self;
    v12 = controllerCopy;
    v13 = completionCopy;
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

- (void)_mainQueue_presentWithPresentationRequests:(id)requests authorizationRequestRecord:(id)record completion:(id)completion
{
  requestsCopy = requests;
  recordCopy = record;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isAppleWatch = [mEMORY[0x1E696C608] isAppleWatch];

  if (isAppleWatch)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __122__HKAuthorizationPresentationController__mainQueue_presentWithPresentationRequests_authorizationRequestRecord_completion___block_invoke;
    v22[3] = &unk_1E81B7528;
    v13 = &v23;
    v14 = &v24;
    v23 = recordCopy;
    v24 = requestsCopy;
    v15 = requestsCopy;
    v16 = recordCopy;
    [(HKAuthorizationPresentationController *)self _requestAndConfigureCarouselAlert:v22 completion:completionCopy];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __122__HKAuthorizationPresentationController__mainQueue_presentWithPresentationRequests_authorizationRequestRecord_completion___block_invoke_2;
    v19[3] = &unk_1E81B7550;
    v13 = &v20;
    v14 = &v21;
    v20 = recordCopy;
    v21 = requestsCopy;
    v17 = requestsCopy;
    v18 = recordCopy;
    [(HKAuthorizationPresentationController *)self _requestAndConfigureHostViewController:v19 completion:completionCopy];
  }
}

- (void)_makeRemoteViewControllerVisible:(id)visible
{
  visibleCopy = visible;
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
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    isiPad = [mEMORY[0x1E696C608] isiPad];

    if (isiPad)
    {
      [visibleCopy setModalPresentationStyle:2];
      [visibleCopy setPreferredContentSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    }

    [visibleCopy setModalInPresentation:1];
    v9 = objc_alloc_init(HKAuthorizationViewPresenterProvider);
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);
    v11 = [(HKAuthorizationViewPresenterProvider *)v9 hkAuthorizationViewControllerPresenter:WeakRetained];

    presentedViewController = [v11 presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [v11 presentedViewController];

        v13PresentedViewController = [presentedViewController2 presentedViewController];

        v11 = presentedViewController2;
      }

      while (v13PresentedViewController);
    }

    else
    {
      presentedViewController2 = v11;
    }

    [presentedViewController2 presentViewController:visibleCopy animated:1 completion:0];
  }
}

- (void)_dismissViewControllerAnimated:(BOOL)animated
{
  if (self->_didPresent)
  {
    v13[9] = v3;
    v13[10] = v4;
    animatedCopy = animated;
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    isAppleWatch = [mEMORY[0x1E696C608] isAppleWatch];

    if (isAppleWatch)
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

      presentingViewController = [(HKHealthPrivacyHostAuthorizationViewController *)v10 presentingViewController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __72__HKAuthorizationPresentationController__dismissViewControllerAnimated___block_invoke;
      v13[3] = &unk_1E81B55A8;
      v13[4] = self;
      [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v13];
    }
  }
}

- (void)healthPrivacyHostAuthorizationControllerDidFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HKAuthorizationPresentationController *)errorCopy healthPrivacyHostAuthorizationControllerDidFinishWithError:v5];
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