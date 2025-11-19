@interface FARemoteViewController
+ (id)requestViewControllerWithCompletion:(id)a3;
- (FARemoteViewControllerDelegate)delegate;
- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_notifyPresentationCompletion;
- (void)dismissAlertProxyWithCompletion:(id)a3;
- (void)operationFinishedWithResponse:(id)a3;
- (void)presentAlertProxyWithCompletion:(id)a3;
- (void)presentWithRUIModalPresentationStyle:(unint64_t)a3 completion:(id)a4;
- (void)replaceModalRUIControllerWithStyle:(unint64_t)a3 byController:(unint64_t)a4 completion:(id)a5;
- (void)startFlowWithContext:(id)a3 viewController:(id)a4 completion:(id)a5;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation FARemoteViewController

+ (id)requestViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D08128];
  v6 = *MEMORY[0x277D08120];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__FARemoteViewController_requestViewControllerWithCompletion___block_invoke;
  v10[3] = &unk_2782F3E80;
  v11 = v4;
  v7 = v4;
  v8 = [a1 requestViewController:v5 fromServiceWithBundleIdentifier:v6 connectionHandler:v10];

  return v8;
}

- (void)startFlowWithContext:(id)a3 viewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _Block_copy(a5);
  completion = self->_completion;
  self->_completion = v10;

  objc_storeWeak(&self->_hostViewController, v9);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__FARemoteViewController_startFlowWithContext_viewController_completion___block_invoke;
  aBlock[3] = &unk_2782F29E8;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  presentationCompletion = self->_presentationCompletion;
  self->_presentationCompletion = v12;

  if ([v8 activityIndicatorStyle] == 1)
  {
    [(FARemoteViewController *)self presentWithRUIModalPresentationStyle:0 completion:&__block_literal_global_14];
  }

  v14 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v14 startFlowWithContext:v8];
}

void __73__FARemoteViewController_startFlowWithContext_viewController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerDidStartFlow:*(a1 + 32)];
}

- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = MEMORY[0x277D461D8];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithPresentedViewController:v9 presentingViewController:v8 modalPresentationStyle:self->_ruiPresentationStyle];

  return v10;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  if (([(FARemoteViewController *)self isBeingDismissed]& 1) == 0)
  {
    v5 = [(FARemoteViewController *)self presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  v6 = [objc_alloc(MEMORY[0x277D08230]) initWithLoadSuccess:v4 == 0 error:v4 userInfo:0];

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

- (void)presentWithRUIModalPresentationStyle:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(FARemoteViewController *)self presentingViewController];

  if (!v7)
  {
    self->_ruiPresentationStyle = a3;
    [(FARemoteViewController *)self setModalPresentationStyle:4];
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__FARemoteViewController_presentWithRUIModalPresentationStyle_completion___block_invoke;
    v9[3] = &unk_2782F3088;
    v9[4] = self;
    v10 = v6;
    [WeakRetained presentViewController:self animated:1 completion:v9];
  }
}

uint64_t __74__FARemoteViewController_presentWithRUIModalPresentationStyle_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyPresentationCompletion];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)replaceModalRUIControllerWithStyle:(unint64_t)a3 byController:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__FARemoteViewController_replaceModalRUIControllerWithStyle_byController_completion___block_invoke;
  v9[3] = &unk_2782F3EA8;
  v9[4] = self;
  v10 = v7;
  v11 = a4;
  v8 = v7;
  [(FARemoteViewController *)self dismissViewControllerAnimated:1 completion:v9];
}

uint64_t __85__FARemoteViewController_replaceModalRUIControllerWithStyle_byController_completion___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  return [v2 presentWithRUIModalPresentationStyle:v3 completion:&__block_literal_global_4];
}

- (void)operationFinishedWithResponse:(id)a3
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a3);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)presentAlertProxyWithCompletion:(id)a3
{
  v5 = a3;
  [(FARemoteViewController *)self setModalPresentationStyle:6];
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [WeakRetained presentViewController:self animated:0 completion:0];

  v5[2]();
}

- (void)dismissAlertProxyWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__FARemoteViewController_dismissAlertProxyWithCompletion___block_invoke;
  v6[3] = &unk_2782F3088;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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