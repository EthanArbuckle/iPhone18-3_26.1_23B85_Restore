@interface HKObjectPickerPresentationController
- (UIViewController)viewControllerPresenter;
- (void)_dismissViewControllerAnimated:(BOOL)a3;
- (void)_makeRemoteViewControllerVisible:(id)a3;
- (void)_presentWithPromptSession:(id)a3 presentationRequests:(id)a4 completion:(id)a5;
- (void)_requestAndConfigureHostViewController:(id)a3 presentationRequests:(id)a4 completion:(id)a5;
- (void)cancelPresentation;
- (void)dealloc;
- (void)healthPrivacyHostObjectPickerViewController:(id)a3 didFinishWithError:(id)a4;
- (void)presentWithSession:(id)a3 presentationRequests:(id)a4 authorizationViewControllerPresenter:(id)a5 completion:(id)a6;
@end

@implementation HKObjectPickerPresentationController

- (void)dealloc
{
  v3 = [(_UIAsyncInvocation *)self->_requestCancellationInvocation invoke];
  [(HKHealthPrivacyHostObjectPickerViewController *)self->_hostViewController setDelegate:0];
  v4.receiver = self;
  v4.super_class = HKObjectPickerPresentationController;
  [(HKObjectPickerPresentationController *)&v4 dealloc];
}

- (void)presentWithSession:(id)a3 presentationRequests:(id)a4 authorizationViewControllerPresenter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKObjectPickerPresentationController presentWithSession:presentationRequests:authorizationViewControllerPresenter:completion:];
    }

    objc_storeWeak(&self->_viewControllerPresenter, v12);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __128__HKObjectPickerPresentationController_presentWithSession_presentationRequests_authorizationViewControllerPresenter_completion___block_invoke;
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

- (void)_requestAndConfigureHostViewController:(id)a3 presentationRequests:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v10)
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
    v17 = v8;
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

- (void)_presentWithPromptSession:(id)a3 presentationRequests:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [HKObjectPickerPresentationController _presentWithPromptSession:presentationRequests:completion:];
  }

  v11 = [v8 sessionIdentifier];

  if (!v11)
  {
    [HKObjectPickerPresentationController _presentWithPromptSession:presentationRequests:completion:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__HKObjectPickerPresentationController__presentWithPromptSession_presentationRequests_completion___block_invoke;
  v14[3] = &unk_1E81B66E8;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(HKObjectPickerPresentationController *)self _requestAndConfigureHostViewController:v14 presentationRequests:v12 completion:v10];
}

- (void)_makeRemoteViewControllerVisible:(id)a3
{
  v4 = a3;
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
    v6 = [MEMORY[0x1E696C608] sharedBehavior];
    v7 = [v6 isiPad];

    if (v7)
    {
      [v4 setModalPresentationStyle:2];
      [v4 setPreferredContentSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    }

    [v4 setModalInPresentation:1];
    v8 = objc_alloc_init(HKAuthorizationViewPresenterProvider);
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);
    v10 = [(HKAuthorizationViewPresenterProvider *)v8 hkAuthorizationViewControllerPresenter:WeakRetained];

    v11 = [v10 presentedViewController];

    if (v11)
    {
      do
      {
        v12 = [v10 presentedViewController];

        v13 = [v12 presentedViewController];

        v10 = v12;
      }

      while (v13);
    }

    else
    {
      v12 = v10;
    }

    [v12 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)_dismissViewControllerAnimated:(BOOL)a3
{
  if (self->_didPresent)
  {
    v10[9] = v3;
    v10[10] = v4;
    v5 = a3;
    v7 = self->_hostViewController;
    [(HKHealthPrivacyHostObjectPickerViewController *)v7 setDelegate:0];
    hostViewController = self->_hostViewController;
    self->_hostViewController = 0;

    v9 = [(HKHealthPrivacyHostObjectPickerViewController *)v7 presentingViewController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__HKObjectPickerPresentationController__dismissViewControllerAnimated___block_invoke;
    v10[3] = &unk_1E81B55A8;
    v10[4] = self;
    [v9 dismissViewControllerAnimated:v5 completion:v10];
  }
}

- (void)healthPrivacyHostObjectPickerViewController:(id)a3 didFinishWithError:(id)a4
{
  v5 = a4;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKObjectPickerPresentationController healthPrivacyHostObjectPickerViewController:v5 didFinishWithError:v6];
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