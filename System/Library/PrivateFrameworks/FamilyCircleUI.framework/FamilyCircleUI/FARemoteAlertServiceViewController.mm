@interface FARemoteAlertServiceViewController
- (id)_account;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissAndExit;
- (void)_handleSignedOutAcceptInvitation;
- (void)_invalidateLookupConnection;
- (void)_main_dismissAndExit;
- (void)_setupRemoteProxy;
- (void)_showFamilyFlow;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)handleButtonActions:(id)actions;
- (void)viewDidLoad;
@end

@implementation FARemoteAlertServiceViewController

- (void)viewDidLoad
{
  v2 = MEMORY[0x277CBEAF8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  v5 = [v2 characterDirectionForLanguage:languageCode];

  if (v5 == 2)
  {
    appearance = [MEMORY[0x277D75D18] appearance];
    [appearance setSemanticContentAttribute:4];
  }
}

- (void)_setupRemoteProxy
{
  _remoteViewControllerProxy = [(FARemoteAlertServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setShouldDisableFadeInAnimation:1];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
}

- (id)_account
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (void)_handleSignedOutAcceptInvitation
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__FARemoteAlertServiceViewController__handleSignedOutAcceptInvitation__block_invoke;
  aBlock[3] = &unk_2782F3568;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  v3 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1004];
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FAMILY_ACCEPT_INVITE_SIGNEDOUT_ALERT_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FAMILY_ACCEPT_INVITE_SIGNEDOUT_ALERT_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_ACCEPT_INVITE_SIGNEDOUT_ALERT_NOT_NOW" value:&stru_282D9AA68 table:@"Localizable"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__FARemoteAlertServiceViewController__handleSignedOutAcceptInvitation__block_invoke_2;
  v24[3] = &unk_2782F3590;
  v13 = v20;
  v25 = v3;
  v26 = v13;
  v21 = v3;
  v14 = [v10 actionWithTitle:v12 style:1 handler:v24];

  [v9 addAction:v14];
  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"FAMILY_ACCEPT_INVITE_SIGNEDOUT_ALERT_SIGN_IN" value:&stru_282D9AA68 table:@"Localizable"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__FARemoteAlertServiceViewController__handleSignedOutAcceptInvitation__block_invoke_3;
  v22[3] = &unk_2782F35B8;
  v23 = v13;
  v18 = v13;
  v19 = [v15 actionWithTitle:v17 style:0 handler:v22];

  [v9 addAction:v19];
  [v9 setPreferredAction:v19];
  [(FARemoteAlertServiceViewController *)self presentViewController:v9 animated:1 completion:0];
}

void __70__FARemoteAlertServiceViewController__handleSignedOutAcceptInvitation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D08230];
  v6 = a3;
  v7 = [[v5 alloc] initWithLoadSuccess:a2 error:v6 userInfo:0];

  [*(*(a1 + 32) + 1016) operationFinishedWithResponse:v7];
  [*(a1 + 32) _dismissAndExit];
}

void __70__FARemoteAlertServiceViewController__handleSignedOutAcceptInvitation__block_invoke_3(uint64_t a1)
{
  v5 = 0;
  v2 = [MEMORY[0x277D08358] urlDestinationTo:0 error:&v5];
  v3 = v5;
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openSensitiveURL:v2 withOptions:0];

  (*(*(a1 + 32) + 16))();
}

- (void)_showFamilyFlow
{
  _account = [(FARemoteAlertServiceViewController *)self _account];
  if (_account)
  {

LABEL_7:
    v6 = [[FACircleStateController alloc] initWithPresenter:self];
    circleContext = self->_circleContext;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__FARemoteAlertServiceViewController__showFamilyFlow__block_invoke;
    v9[3] = &unk_2782F35E0;
    v9[4] = self;
    v10 = v6;
    v8 = v6;
    [(FACircleStateController *)v8 _performOperationWithContext:circleContext viewController:self completion:v9];

    return;
  }

  eventType = [(FACircleContext *)self->_circleContext eventType];
  v5 = [eventType isEqualToString:@"FACircleEventTypeAcceptInvitation"];

  if (!v5)
  {
    goto LABEL_7;
  }

  [(FARemoteAlertServiceViewController *)self _handleSignedOutAcceptInvitation];
}

uint64_t __53__FARemoteAlertServiceViewController__showFamilyFlow__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 1016) operationFinishedWithResponse:a2];
  v3 = *(a1 + 32);

  return [v3 _dismissAndExit];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Configuring remote view service", buf, 2u);
  }

  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"FARemoteAlertServiceUserInfoContextData"];

  if (v10)
  {
    v11 = [FACircleContext contextWithData:v10];
  }

  else
  {
    v11 = 0;
  }

  circleContext = self->_circleContext;
  self->_circleContext = v11;

  v13 = objc_opt_new();
  xpcEndpoint = [contextCopy xpcEndpoint];
  [v13 _setEndpoint:xpcEndpoint];

  v15 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v13];
  xPCInterface = [MEMORY[0x277D08278] XPCInterface];
  [v15 setRemoteObjectInterface:xPCInterface];

  [v15 resume];
  objc_storeStrong(&self->_lookupConnection, v15);
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__FARemoteAlertServiceViewController_configureWithContext_completion___block_invoke;
  v19[3] = &unk_2782F3608;
  objc_copyWeak(&v20, buf);
  v17 = [v15 remoteObjectProxyWithErrorHandler:v19];
  hostProxy = self->_hostProxy;
  self->_hostProxy = v17;

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __70__FARemoteAlertServiceViewController_configureWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__FARemoteAlertServiceViewController_configureWithContext_completion___block_invoke_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndExit];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  [(FARemoteAlertServiceViewController *)self _invalidateLookupConnection];
  v5.receiver = self;
  v5.super_class = FARemoteAlertServiceViewController;
  [(SBUIRemoteAlertServiceViewController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_dismissAndExit
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FARemoteAlertServiceViewController__dismissAndExit__block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_main_dismissAndExit
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(FARemoteAlertServiceViewController *)self dismissViewControllerAnimated:0 completion:0];
  _remoteViewControllerProxy = [(FARemoteAlertServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy invalidate];
}

- (void)_invalidateLookupConnection
{
  [(NSXPCConnection *)self->_lookupConnection invalidate];
  lookupConnection = self->_lookupConnection;
  self->_lookupConnection = 0;
}

- (void)handleButtonActions:(id)actions
{
  v15 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v10 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(FARemoteAlertServiceViewController *)self _dismissAndExit];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__FARemoteAlertServiceViewController_configureWithContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "listener lookup connection error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end