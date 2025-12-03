@interface HKObjectPickerPresentationController
- (UIViewController)viewControllerPresenter;
- (void)_dismissViewControllerAnimated:(BOOL)animated;
- (void)_makeRemoteViewControllerVisible:(id)visible;
- (void)_presentWithPromptSession:(id)session presentationRequests:(id)requests completion:(id)completion;
- (void)_requestAndConfigureHostViewController:(id)controller presentationRequests:(id)requests completion:(id)completion;
- (void)cancelPresentation;
- (void)dealloc;
- (void)healthPrivacyHostObjectPickerViewController:(id)controller didFinishWithError:(id)error;
- (void)presentWithSession:(id)session presentationRequests:(id)requests authorizationViewControllerPresenter:(id)presenter completion:(id)completion;
@end

@implementation HKObjectPickerPresentationController

- (void)dealloc
{
  invoke = [(_UIAsyncInvocation *)self->_requestCancellationInvocation invoke];
  [(HKHealthPrivacyHostObjectPickerViewController *)self->_hostViewController setDelegate:0];
  v4.receiver = self;
  v4.super_class = HKObjectPickerPresentationController;
  [(HKObjectPickerPresentationController *)&v4 dealloc];
}

- (void)presentWithSession:(id)session presentationRequests:(id)requests authorizationViewControllerPresenter:(id)presenter completion:(id)completion
{
  sessionCopy = session;
  requestsCopy = requests;
  presenterCopy = presenter;
  completionCopy = completion;
  if (presenterCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKObjectPickerPresentationController presentWithSession:presentationRequests:authorizationViewControllerPresenter:completion:];
    }

    objc_storeWeak(&self->_viewControllerPresenter, presenterCopy);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __128__HKObjectPickerPresentationController_presentWithSession_presentationRequests_authorizationViewControllerPresenter_completion___block_invoke;
  v17[3] = &unk_1E81B5FD0;
  v17[4] = self;
  v18 = sessionCopy;
  v19 = requestsCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = requestsCopy;
  v16 = sessionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

void __128__HKObjectPickerPresentationController_presentWithSession_presentationRequests_authorizationViewControllerPresenter_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __128__HKObjectPickerPresentationController_presentWithSession_presentationRequests_authorizationViewControllerPresenter_completion___block_invoke_2;
  v4[3] = &unk_1E81B6698;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _presentWithPromptSession:v2 presentationRequests:v3 completion:v4];
}

uint64_t __128__HKObjectPickerPresentationController_presentWithSession_presentationRequests_authorizationViewControllerPresenter_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cancelPresentation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HKObjectPickerPresentationController_cancelPresentation__block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __58__HKObjectPickerPresentationController_cancelPresentation__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) invoke];
  v3 = *(a1 + 32);

  return [v3 _dismissViewControllerAnimated:1];
}

- (void)_requestAndConfigureHostViewController:(id)controller presentationRequests:(id)requests completion:(id)completion
{
  controllerCopy = controller;
  requestsCopy = requests;
  completionCopy = completion;
  v11 = completionCopy;
  if (controllerCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKObjectPickerPresentationController _requestAndConfigureHostViewController:presentationRequests:completion:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [HKObjectPickerPresentationController _requestAndConfigureHostViewController:presentationRequests:completion:];
LABEL_3:
  if (self->_didPresent)
  {
    v12 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Already presenting remote view controller"];
    (v11)[2](v11, 0, v12);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__HKObjectPickerPresentationController__requestAndConfigureHostViewController_presentationRequests_completion___block_invoke;
    aBlock[3] = &unk_1E81B66C0;
    aBlock[4] = self;
    v17 = controllerCopy;
    v18 = v11;
    v13 = _Block_copy(aBlock);
    self->_didPresent = 1;
    v14 = [HKHealthPrivacyHostObjectPickerViewController requestRemoteViewControllerWithConnectionHandler:v13];
    requestCancellationInvocation = self->_requestCancellationInvocation;
    self->_requestCancellationInvocation = v14;
  }
}

void __111__HKObjectPickerPresentationController__requestAndConfigureHostViewController_presentationRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
    [*(*(a1 + 32) + 24) setDelegate:?];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _makeRemoteViewControllerVisible:v6];
    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogAuthorization();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __111__HKObjectPickerPresentationController__requestAndConfigureHostViewController_presentationRequests_completion___block_invoke_cold_1(v7, v11);
    }

    v10 = *(*(a1 + 48) + 16);
  }

  v10();
}

- (void)_presentWithPromptSession:(id)session presentationRequests:(id)requests completion:(id)completion
{
  sessionCopy = session;
  requestsCopy = requests;
  completionCopy = completion;
  if (!sessionCopy)
  {
    [HKObjectPickerPresentationController _presentWithPromptSession:presentationRequests:completion:];
  }

  sessionIdentifier = [sessionCopy sessionIdentifier];

  if (!sessionIdentifier)
  {
    [HKObjectPickerPresentationController _presentWithPromptSession:presentationRequests:completion:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__HKObjectPickerPresentationController__presentWithPromptSession_presentationRequests_completion___block_invoke;
  v14[3] = &unk_1E81B66E8;
  v15 = sessionCopy;
  v16 = requestsCopy;
  v12 = requestsCopy;
  v13 = sessionCopy;
  [(HKObjectPickerPresentationController *)self _requestAndConfigureHostViewController:v14 presentationRequests:v12 completion:completionCopy];
}

- (void)_makeRemoteViewControllerVisible:(id)visible
{
  visibleCopy = visible;
  if (_UIApplicationIsExtension())
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [HKObjectPickerPresentationController _makeRemoteViewControllerVisible:v5];
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
    v8 = objc_alloc_init(HKAuthorizationViewPresenterProvider);
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);
    v10 = [(HKAuthorizationViewPresenterProvider *)v8 hkAuthorizationViewControllerPresenter:WeakRetained];

    presentedViewController = [v10 presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [v10 presentedViewController];

        v12PresentedViewController = [presentedViewController2 presentedViewController];

        v10 = presentedViewController2;
      }

      while (v12PresentedViewController);
    }

    else
    {
      presentedViewController2 = v10;
    }

    [presentedViewController2 presentViewController:visibleCopy animated:1 completion:0];
  }
}

- (void)_dismissViewControllerAnimated:(BOOL)animated
{
  if (self->_didPresent)
  {
    v10[9] = v3;
    v10[10] = v4;
    animatedCopy = animated;
    v7 = self->_hostViewController;
    [(HKHealthPrivacyHostObjectPickerViewController *)v7 setDelegate:0];
    hostViewController = self->_hostViewController;
    self->_hostViewController = 0;

    presentingViewController = [(HKHealthPrivacyHostObjectPickerViewController *)v7 presentingViewController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__HKObjectPickerPresentationController__dismissViewControllerAnimated___block_invoke;
    v10[3] = &unk_1E81B55A8;
    v10[4] = self;
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v10];
  }
}

- (void)healthPrivacyHostObjectPickerViewController:(id)controller didFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKObjectPickerPresentationController healthPrivacyHostObjectPickerViewController:errorCopy didFinishWithError:v6];
    }
  }

  [(HKObjectPickerPresentationController *)self _dismissViewControllerAnimated:1];
}

- (UIViewController)viewControllerPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);

  return WeakRetained;
}

- (void)presentWithSession:presentationRequests:authorizationViewControllerPresenter:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"[authorizationViewControllerPresenter isKindOfClass:[UIViewController class]]" object:? file:? lineNumber:? description:?];
}

- (void)_requestAndConfigureHostViewController:presentationRequests:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"configurationHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)_requestAndConfigureHostViewController:presentationRequests:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

void __111__HKObjectPickerPresentationController__requestAndConfigureHostViewController_presentationRequests_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote view controller: %{public}@", &v2, 0xCu);
}

- (void)_presentWithPromptSession:presentationRequests:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"session != nil" object:? file:? lineNumber:? description:?];
}

- (void)_presentWithPromptSession:presentationRequests:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"session.sessionIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)healthPrivacyHostObjectPickerViewController:(uint64_t)a1 didFinishWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Privacy host view controller finished with error: %{public}@", &v2, 0xCu);
}

@end