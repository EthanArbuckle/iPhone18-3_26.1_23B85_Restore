@interface HKRecalibrateEstimatesPresentationController
- (UIViewController)viewControllerPresenter;
- (void)_dismissViewControllerAnimated:(BOOL)animated;
- (void)_makeRemoteViewControllerVisible:(id)visible;
- (void)_requestAndConfigureHostViewController:(id)controller completion:(id)completion;
- (void)dealloc;
- (void)healthPrivacyHostRecalibrateEstimatesControllerDidFinishWithError:(id)error;
- (void)presentWithRequestRecord:(id)record authorizationViewControllerPresenter:(id)presenter completion:(id)completion;
@end

@implementation HKRecalibrateEstimatesPresentationController

- (void)dealloc
{
  requestCancellationInvocation = [(HKRecalibrateEstimatesPresentationController *)self requestCancellationInvocation];
  invoke = [requestCancellationInvocation invoke];

  v5.receiver = self;
  v5.super_class = HKRecalibrateEstimatesPresentationController;
  [(HKRecalibrateEstimatesPresentationController *)&v5 dealloc];
}

- (void)presentWithRequestRecord:(id)record authorizationViewControllerPresenter:(id)presenter completion:(id)completion
{
  recordCopy = record;
  presenterCopy = presenter;
  completionCopy = completion;
  v12 = completionCopy;
  if (recordCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKRecalibrateEstimatesPresentationController presentWithRequestRecord:a2 authorizationViewControllerPresenter:self completion:?];
    if (v12)
    {
LABEL_3:
      if (!presenterCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  [HKRecalibrateEstimatesPresentationController presentWithRequestRecord:a2 authorizationViewControllerPresenter:self completion:?];
  if (!presenterCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRecalibrateEstimatesPresentationController presentWithRequestRecord:a2 authorizationViewControllerPresenter:self completion:?];
  }

  objc_storeWeak(&self->_viewControllerPresenter, presenterCopy);
LABEL_7:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__HKRecalibrateEstimatesPresentationController_presentWithRequestRecord_authorizationViewControllerPresenter_completion___block_invoke;
  block[3] = &unk_1E81B5A60;
  block[4] = self;
  v16 = recordCopy;
  v17 = v12;
  v13 = v12;
  v14 = recordCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __121__HKRecalibrateEstimatesPresentationController_presentWithRequestRecord_authorizationViewControllerPresenter_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __121__HKRecalibrateEstimatesPresentationController_presentWithRequestRecord_authorizationViewControllerPresenter_completion___block_invoke_2;
  v3[3] = &unk_1E81B9260;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _requestAndConfigureHostViewController:v3 completion:*(a1 + 48)];
}

- (void)_requestAndConfigureHostViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if ([(HKRecalibrateEstimatesPresentationController *)self didPresent])
  {
    v8 = [MEMORY[0x1E696ABC0] hk_error:3 description:@"Already presenting recalibrate estimates remote view controller."];
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__HKRecalibrateEstimatesPresentationController__requestAndConfigureHostViewController_completion___block_invoke;
    aBlock[3] = &unk_1E81B66C0;
    aBlock[4] = self;
    v18 = controllerCopy;
    v9 = completionCopy;
    v19 = v9;
    v10 = _Block_copy(aBlock);
    [(HKRecalibrateEstimatesPresentationController *)self setDidPresent:1];
    v11 = [HKHealthPrivacyHostRecalibrateEstimatesViewController requestRemoteViewControllerWithConnectionHandler:v10];
    [(HKRecalibrateEstimatesPresentationController *)self setRequestCancellationInvocation:v11];

    objc_initWeak(&location, self);
    v12 = dispatch_time(0, 10000000000);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __98__HKRecalibrateEstimatesPresentationController__requestAndConfigureHostViewController_completion___block_invoke_316;
    v13[3] = &unk_1E81B9288;
    objc_copyWeak(&v15, &location);
    v14 = v9;
    dispatch_after(v12, MEMORY[0x1E69E96A0], v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __98__HKRecalibrateEstimatesPresentationController__requestAndConfigureHostViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) requestCancellationInvocation];

  if (v7)
  {
    [*(a1 + 32) setRequestCancellationInvocation:0];
    if (v5)
    {
      v8 = *(a1 + 32);
      v9 = v5;
      [v8 setHostViewController:v9];
      [v9 setDelegate:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) _makeRemoteViewControllerVisible:v9];

      v10 = *(*(a1 + 48) + 16);
    }

    else
    {
      _HKInitializeLogging();
      v11 = HKLogAuthorization();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __98__HKRecalibrateEstimatesPresentationController__requestAndConfigureHostViewController_completion___block_invoke_cold_1(v6, v11);
      }

      v10 = *(*(a1 + 48) + 16);
    }

    v10();
  }
}

void __98__HKRecalibrateEstimatesPresentationController__requestAndConfigureHostViewController_completion___block_invoke_316(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained requestCancellationInvocation];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 requestCancellationInvocation];
    v6 = [v5 invoke];

    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 setRequestCancellationInvocation:0];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] hk_error:103 description:@"Timed out connecting to recalibrate estimates remote view service."];
    (*(v8 + 16))(v8, 0, v9);
  }
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
      [visibleCopy setModalPresentationStyle:5];
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
    [(HKHealthPrivacyHostRecalibrateEstimatesViewController *)v7 setDelegate:0];
    hostViewController = self->_hostViewController;
    self->_hostViewController = 0;

    presentingViewController = [(HKHealthPrivacyHostRecalibrateEstimatesViewController *)v7 presentingViewController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__HKRecalibrateEstimatesPresentationController__dismissViewControllerAnimated___block_invoke;
    v10[3] = &unk_1E81B55A8;
    v10[4] = self;
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v10];
  }
}

- (void)healthPrivacyHostRecalibrateEstimatesControllerDidFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HKRecalibrateEstimatesPresentationController *)errorCopy healthPrivacyHostRecalibrateEstimatesControllerDidFinishWithError:v5];
    }
  }

  [(HKRecalibrateEstimatesPresentationController *)self _dismissViewControllerAnimated:1];
}

- (UIViewController)viewControllerPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);

  return WeakRetained;
}

- (void)presentWithRequestRecord:(uint64_t)a1 authorizationViewControllerPresenter:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKRecalibrateEstimatesPresentationController.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"requestRecord != nil"}];
}

- (void)presentWithRequestRecord:(uint64_t)a1 authorizationViewControllerPresenter:(uint64_t)a2 completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKRecalibrateEstimatesPresentationController.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

- (void)presentWithRequestRecord:(uint64_t)a1 authorizationViewControllerPresenter:(uint64_t)a2 completion:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKRecalibrateEstimatesPresentationController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"[authorizationViewControllerPresenter isKindOfClass:[UIViewController class]]"}];
}

void __98__HKRecalibrateEstimatesPresentationController__requestAndConfigureHostViewController_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to get recalibrate estimates remote view controller: %{public}@", &v2, 0xCu);
}

- (void)healthPrivacyHostRecalibrateEstimatesControllerDidFinishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Privacy host recalibrate estimates controller finished with error: %{public}@", &v2, 0xCu);
}

@end