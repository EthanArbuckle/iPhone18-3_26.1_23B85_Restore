@interface ENUIPresentationController
- (void)_dismissRemoteViewController;
- (void)_mainQueue_presentWithPresentationRequest:(id)request completion:(id)completion;
- (void)_makeRemoteViewControllerKeyAndVisible:(id)visible;
- (void)_requestAndConfigureHostViewController:(id)controller completion:(id)completion;
- (void)cancelPresentation;
- (void)dealloc;
- (void)hostViewControllerDidFinishWithError:(id)error;
- (void)presentWithPresentationRequest:(id)request completion:(id)completion;
@end

@implementation ENUIPresentationController

- (void)dealloc
{
  requestCancellationInvocation = [(ENUIPresentationController *)self requestCancellationInvocation];
  invoke = [requestCancellationInvocation invoke];

  v5.receiver = self;
  v5.super_class = ENUIPresentationController;
  [(ENUIPresentationController *)&v5 dealloc];
}

- (void)presentWithPresentationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9 = completionCopy;
  if (!requestCopy)
  {
    [ENUIPresentationController presentWithPresentationRequest:a2 completion:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [ENUIPresentationController presentWithPresentationRequest:a2 completion:self];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ENUIPresentationController_presentWithPresentationRequest_completion___block_invoke;
  block[3] = &unk_2796C3060;
  block[4] = self;
  v13 = requestCopy;
  v14 = v9;
  v10 = v9;
  v11 = requestCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelPresentation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ENUIPresentationController_cancelPresentation__block_invoke;
  block[3] = &unk_2796C3088;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__ENUIPresentationController_cancelPresentation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestCancellationInvocation];
  v3 = [v2 invoke];

  v4 = *(a1 + 32);

  return [v4 _dismissRemoteViewController];
}

- (void)_requestAndConfigureHostViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if ([(ENUIPresentationController *)self didPresent])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__ENUIPresentationController__requestAndConfigureHostViewController_completion___block_invoke;
    aBlock[3] = &unk_2796C30B0;
    aBlock[4] = self;
    v11 = controllerCopy;
    v12 = completionCopy;
    v8 = _Block_copy(aBlock);
    [(ENUIPresentationController *)self setDidPresent:1];
    v9 = [ENUIHostViewController requestRemoteViewControllerWithConnectionHandler:v8];
    [(ENUIPresentationController *)self setRequestCancellationInvocation:v9];
  }
}

void __80__ENUIPresentationController__requestAndConfigureHostViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) setRequestCancellationInvocation:0];
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = v8;
    [v6 setHostViewController:v7];
    [v7 setDelegate:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _makeRemoteViewControllerKeyAndVisible:v7];
    [v7 show];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_mainQueue_presentWithPresentationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__ENUIPresentationController__mainQueue_presentWithPresentationRequest_completion___block_invoke;
  v9[3] = &unk_2796C30D8;
  v10 = requestCopy;
  v8 = requestCopy;
  [(ENUIPresentationController *)self _requestAndConfigureHostViewController:v9 completion:completionCopy];
}

- (void)_makeRemoteViewControllerKeyAndVisible:(id)visible
{
  v4 = MEMORY[0x277D75128];
  visibleCopy = visible;
  sharedApplication = [v4 sharedApplication];
  keyWindow = [sharedApplication keyWindow];
  [(ENUIPresentationController *)self setSavedKeyWindow:keyWindow];

  v8 = objc_alloc(MEMORY[0x277D75DA0]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v12 = [v8 initWithFrame:?];

  [v12 setWindowLevel:*MEMORY[0x277D772B8] + -1.0];
  savedKeyWindow = [(ENUIPresentationController *)self savedKeyWindow];
  windowScene = [savedKeyWindow windowScene];
  [v12 setWindowScene:windowScene];

  [v12 setRootViewController:visibleCopy];
  [v12 makeKeyAndVisible];
  [(ENUIPresentationController *)self setWindow:v12];
}

- (void)_dismissRemoteViewController
{
  if ([(ENUIPresentationController *)self didPresent])
  {
    window = [(ENUIPresentationController *)self window];
    [window setWindowScene:0];

    [(ENUIPresentationController *)self setWindow:0];
    savedKeyWindow = [(ENUIPresentationController *)self savedKeyWindow];
    [savedKeyWindow makeKeyWindow];

    [(ENUIPresentationController *)self setSavedKeyWindow:0];
    hostViewController = [(ENUIPresentationController *)self hostViewController];
    [hostViewController setDelegate:0];

    [(ENUIPresentationController *)self setHostViewController:0];
    self->_didPresent = 0;
  }
}

- (void)hostViewControllerDidFinishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = ENUILogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ENUIPresentationController *)errorCopy hostViewControllerDidFinishWithError:v5];
    }
  }

  [(ENUIPresentationController *)self _dismissRemoteViewController];
}

- (void)presentWithPresentationRequest:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENUIPresentationController.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"presentationRequest != nil"}];
}

- (void)presentWithPresentationRequest:(uint64_t)a1 completion:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENUIPresentationController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

- (void)hostViewControllerDidFinishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25167E000, a2, OS_LOG_TYPE_ERROR, "Privacy host controller finished with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end