@interface FARemoteViewController
+ (id)requestViewControllerWithCompletion:(id)completion;
- (FARemoteViewControllerDelegate)delegate;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)_notifyPresentationCompletion;
- (void)dismissAlertProxyWithCompletion:(id)completion;
- (void)operationFinishedWithResponse:(id)response;
- (void)presentAlertProxyWithCompletion:(id)completion;
- (void)presentWithRUIModalPresentationStyle:(unint64_t)style completion:(id)completion;
- (void)replaceModalRUIControllerWithStyle:(unint64_t)style byController:(unint64_t)controller completion:(id)completion;
- (void)startFlowWithContext:(id)context viewController:(id)controller completion:(id)completion;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation FARemoteViewController

+ (id)requestViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = *MEMORY[0x277D08128];
  v6 = *MEMORY[0x277D08120];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__FARemoteViewController_requestViewControllerWithCompletion___block_invoke;
  v10[3] = &unk_2782F3E80;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = [self requestViewController:v5 fromServiceWithBundleIdentifier:v6 connectionHandler:v10];

  return v8;
}

- (void)startFlowWithContext:(id)context viewController:(id)controller completion:(id)completion
{
  contextCopy = context;
  controllerCopy = controller;
  v10 = _Block_copy(completion);
  completion = self->_completion;
  self->_completion = v10;

  objc_storeWeak(&self->_hostViewController, controllerCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__FARemoteViewController_startFlowWithContext_viewController_completion___block_invoke;
  aBlock[3] = &unk_2782F29E8;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  presentationCompletion = self->_presentationCompletion;
  self->_presentationCompletion = v12;

  if ([contextCopy activityIndicatorStyle] == 1)
  {
    [(FARemoteViewController *)self presentWithRUIModalPresentationStyle:0 completion:&__block_literal_global_14];
  }

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy startFlowWithContext:contextCopy];
}

void __73__FARemoteViewController_startFlowWithContext_viewController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerDidStartFlow:*(a1 + 32)];
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v7 = MEMORY[0x277D461D8];
  presentingControllerCopy = presentingController;
  controllerCopy = controller;
  v10 = [[v7 alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy modalPresentationStyle:self->_ruiPresentationStyle];

  return v10;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  if (([(FARemoteViewController *)self isBeingDismissed]& 1) == 0)
  {
    presentingViewController = [(FARemoteViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  v6 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:errorCopy == 0 error:errorCopy userInfo:0];

  [(FARemoteViewController *)self operationFinishedWithResponse:v6];
  presentationCompletion = self->_presentationCompletion;
  self->_presentationCompletion = 0;
}

- (void)_notifyPresentationCompletion
{
  presentationCompletion = self->_presentationCompletion;
  if (presentationCompletion)
  {
    presentationCompletion[2](presentationCompletion, a2);
    v4 = self->_presentationCompletion;
    self->_presentationCompletion = 0;
  }
}

- (void)presentWithRUIModalPresentationStyle:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(FARemoteViewController *)self presentingViewController];

  if (!presentingViewController)
  {
    self->_ruiPresentationStyle = style;
    [(FARemoteViewController *)self setModalPresentationStyle:4];
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__FARemoteViewController_presentWithRUIModalPresentationStyle_completion___block_invoke;
    v9[3] = &unk_2782F3088;
    v9[4] = self;
    v10 = completionCopy;
    [WeakRetained presentViewController:self animated:1 completion:v9];
  }
}

uint64_t __74__FARemoteViewController_presentWithRUIModalPresentationStyle_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyPresentationCompletion];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)replaceModalRUIControllerWithStyle:(unint64_t)style byController:(unint64_t)controller completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__FARemoteViewController_replaceModalRUIControllerWithStyle_byController_completion___block_invoke;
  v9[3] = &unk_2782F3EA8;
  v9[4] = self;
  v10 = completionCopy;
  controllerCopy = controller;
  v8 = completionCopy;
  [(FARemoteViewController *)self dismissViewControllerAnimated:1 completion:v9];
}

uint64_t __85__FARemoteViewController_replaceModalRUIControllerWithStyle_byController_completion___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  return [v2 presentWithRUIModalPresentationStyle:v3 completion:&__block_literal_global_4];
}

- (void)operationFinishedWithResponse:(id)response
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, response);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)presentAlertProxyWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FARemoteViewController *)self setModalPresentationStyle:6];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained presentViewController:self animated:0 completion:0];

  completionCopy[2]();
}

- (void)dismissAlertProxyWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__FARemoteViewController_dismissAlertProxyWithCompletion___block_invoke;
  v6[3] = &unk_2782F3088;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(FARemoteViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

uint64_t __58__FARemoteViewController_dismissAlertProxyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:1 error:0 userInfo:0];
  [v2 operationFinishedWithResponse:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (FARemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end