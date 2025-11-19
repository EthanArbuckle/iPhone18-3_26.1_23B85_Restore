@interface ENUIPresentationController
- (void)_dismissRemoteViewController;
- (void)_mainQueue_presentWithPresentationRequest:(id)a3 completion:(id)a4;
- (void)_makeRemoteViewControllerKeyAndVisible:(id)a3;
- (void)_requestAndConfigureHostViewController:(id)a3 completion:(id)a4;
- (void)cancelPresentation;
- (void)dealloc;
- (void)hostViewControllerDidFinishWithError:(id)a3;
- (void)presentWithPresentationRequest:(id)a3 completion:(id)a4;
@end

@implementation ENUIPresentationController

- (void)dealloc
{
  v3 = [(ENUIPresentationController *)self requestCancellationInvocation];
  v4 = [v3 invoke];

  v5.receiver = self;
  v5.super_class = ENUIPresentationController;
  [(ENUIPresentationController *)&v5 dealloc];
}

- (void)presentWithPresentationRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
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

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ENUIPresentationController_presentWithPresentationRequest_completion___block_invoke;
  block[3] = &unk_2796C3060;
  block[4] = self;
  v13 = v7;
  v14 = v9;
  v10 = v9;
  v11 = v7;
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

- (void)_requestAndConfigureHostViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ENUIPresentationController *)self didPresent])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__ENUIPresentationController__requestAndConfigureHostViewController_completion___block_invoke;
    aBlock[3] = &unk_2796C30B0;
    aBlock[4] = self;
    v11 = v6;
    v12 = v7;
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

- (void)_mainQueue_presentWithPresentationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__ENUIPresentationController__mainQueue_presentWithPresentationRequest_completion___block_invoke;
  v9[3] = &unk_2796C30D8;
  v10 = v6;
  v8 = v6;
  [(ENUIPresentationController *)self _requestAndConfigureHostViewController:v9 completion:v7];
}

- (void)_makeRemoteViewControllerKeyAndVisible:(id)a3
{
  v4 = MEMORY[0x277D75128];
  v5 = a3;
  v6 = [v4 sharedApplication];
  v7 = [v6 keyWindow];
  [(ENUIPresentationController *)self setSavedKeyWindow:v7];

  v8 = objc_alloc(MEMORY[0x277D75DA0]);
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 bounds];
  v12 = [v8 initWithFrame:?];

  [v12 setWindowLevel:*MEMORY[0x277D772B8] + -1.0];
  v10 = [(ENUIPresentationController *)self savedKeyWindow];
  v11 = [v10 windowScene];
  [v12 setWindowScene:v11];

  [v12 setRootViewController:v5];
  [v12 makeKeyAndVisible];
  [(ENUIPresentationController *)self setWindow:v12];
}

- (void)_dismissRemoteViewController
{
  if ([(ENUIPresentationController *)self didPresent])
  {
    v3 = [(ENUIPresentationController *)self window];
    [v3 setWindowScene:0];

    [(ENUIPresentationController *)self setWindow:0];
    v4 = [(ENUIPresentationController *)self savedKeyWindow];
    [v4 makeKeyWindow];

    [(ENUIPresentationController *)self setSavedKeyWindow:0];
    v5 = [(ENUIPresentationController *)self hostViewController];
    [v5 setDelegate:0];

    [(ENUIPresentationController *)self setHostViewController:0];
    self->_didPresent = 0;
  }
}

- (void)hostViewControllerDidFinishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = ENUILogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ENUIPresentationController *)v4 hostViewControllerDidFinishWithError:v5];
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