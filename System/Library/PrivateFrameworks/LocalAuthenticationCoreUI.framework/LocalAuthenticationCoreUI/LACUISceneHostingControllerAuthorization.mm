@interface LACUISceneHostingControllerAuthorization
- (LACUIAuthenticatorUIDelegate)delegate;
- (LACUISceneHostingControllerAuthorization)init;
- (void)authenticatorServiceDidFinishWithError:(id)error;
- (void)authenticatorServiceDidObtainAuthenticationWithReply:(id)reply;
- (void)handleAction:(id)action completion:(id)completion;
- (void)sceneHostingControllerDidReconnect:(id)reconnect;
- (void)startWithConfiguration:(id)configuration reply:(id)reply;
- (void)stopWithReply:(id)reply;
@end

@implementation LACUISceneHostingControllerAuthorization

- (LACUISceneHostingControllerAuthorization)init
{
  v3 = objc_alloc(MEMORY[0x277D23FF0]);
  v4 = [v3 initWithAngelIdentifier:@"com.apple.LocalAuthenticationUIService" sceneIdentifier:*MEMORY[0x277D23E08]];
  v8.receiver = self;
  v8.super_class = LACUISceneHostingControllerAuthorization;
  v5 = [(LACUISceneHostingController *)&v8 initWithConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    [(LACUISceneHostingController *)v5 setSceneConnectionDelegate:v5];
  }

  return v6;
}

- (void)sceneHostingControllerDidReconnect:(id)reconnect
{
  v4 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E90] debugDescription:@"Hosted scene was invalidated"];
  [(LACUISceneHostingControllerAuthorization *)self authenticatorServiceDidFinishWithError:v4];
}

- (void)authenticatorServiceDidFinishWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__LACUISceneHostingControllerAuthorization_authenticatorServiceDidFinishWithError___block_invoke;
  v6[3] = &unk_27981E870;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __83__LACUISceneHostingControllerAuthorization_authenticatorServiceDidFinishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sheetDidFinishWithError:*(a1 + 40)];
}

- (void)authenticatorServiceDidObtainAuthenticationWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__LACUISceneHostingControllerAuthorization_authenticatorServiceDidObtainAuthenticationWithReply___block_invoke;
  v6[3] = &unk_27981EB00;
  v6[4] = self;
  v7 = replyCopy;
  v5 = replyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __97__LACUISceneHostingControllerAuthorization_authenticatorServiceDidObtainAuthenticationWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didProvideAuthorizationRequirementWithReply:*(a1 + 40)];
}

- (void)startWithConfiguration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  configurationCopy = configuration;
  v8 = [[LACUIAuthorizationAction alloc] initWithIdentifier:1 value:configurationCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__LACUISceneHostingControllerAuthorization_startWithConfiguration_reply___block_invoke;
  v10[3] = &unk_27981E770;
  v11 = replyCopy;
  v9 = replyCopy;
  [(LACUISceneHostingController *)self sendAction:v8 completion:v10];
}

- (void)stopWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [[LACUIAuthorizationAction alloc] initWithIdentifier:2 value:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__LACUISceneHostingControllerAuthorization_stopWithReply___block_invoke;
  v7[3] = &unk_27981E770;
  v8 = replyCopy;
  v6 = replyCopy;
  [(LACUISceneHostingController *)self sendAction:v5 completion:v7];
}

- (void)handleAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  actionCopy = action;
  v8 = [[LACUIAuthorizationAction alloc] initWithAction:actionCopy];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__LACUISceneHostingControllerAuthorization_handleAction_completion___block_invoke;
  aBlock[3] = &unk_27981E690;
  aBlock[4] = self;
  v9 = v8;
  v18 = v9;
  v10 = completionCopy;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  identifier = [(LACUIAuthorizationAction *)v9 identifier];
  if (identifier == 4)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__LACUISceneHostingControllerAuthorization_handleAction_completion___block_invoke_9;
    v15[3] = &unk_27981E770;
    v16 = v11;
    [(LACUISceneHostingControllerAuthorization *)self authenticatorServiceDidObtainAuthenticationWithReply:v15];
    v14 = v16;
  }

  else
  {
    if (identifier == 3)
    {
      v13 = [(LACUIHostedSceneAction *)v9 valueDecodedForClass:objc_opt_class()];
      [(LACUISceneHostingControllerAuthorization *)self authenticatorServiceDidFinishWithError:v13];

      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:@"Cannot handle action"];
    }

    (*(v11 + 2))(v11, v14);
  }
}

void __68__LACUISceneHostingControllerAuthorization_handleAction_completion___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogUI();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__LACUISceneHostingControllerEmbeddedPasscode_handleAction_completion___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "%@ handled action: %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (LACUIAuthenticatorUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end