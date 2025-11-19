@interface LACUIHostedSceneActionClientToHost
- (LACUIHostedSceneActionClientToHost)initWithAction:(id)a3 completion:(id)a4;
- (void)performActionForSceneController:(id)a3;
@end

@implementation LACUIHostedSceneActionClientToHost

- (LACUIHostedSceneActionClientToHost)initWithAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = BSSettingsFromHostedSceneAction(a3);
  v8 = MEMORY[0x277CF0B60];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__LACUIHostedSceneActionClientToHost_initWithAction_completion___block_invoke;
  v14[3] = &unk_27981E798;
  v15 = v6;
  v9 = v6;
  v10 = [v8 responderWithHandler:v14];
  v13.receiver = self;
  v13.super_class = LACUIHostedSceneActionClientToHost;
  v11 = [(LACUIHostedSceneActionClientToHost *)&v13 initWithInfo:v7 responder:v10];

  return v11;
}

void __64__LACUIHostedSceneActionClientToHost_initWithAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

- (void)performActionForSceneController:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(LACUIHostedSceneActionClientToHost *)self info];
    *buf = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "performActionForSceneController %@ info: %@", buf, 0x16u);
  }

  v7 = [v4 delegate];
  v8 = [(LACUIHostedSceneActionClientToHost *)self info];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__LACUIHostedSceneActionClientToHost_performActionForSceneController___block_invoke;
  v11[3] = &unk_27981E7C0;
  v12 = v4;
  v13 = self;
  v9 = v4;
  BSActionResponseForHandlerAndSettings(v7, v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __70__LACUIHostedSceneActionClientToHost_performActionForSceneController___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) info];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_DEFAULT, "performActionForSceneController %@ info: %@ finished with response: %@", &v8, 0x20u);
  }

  if ([*(a1 + 40) canSendResponse])
  {
    [*(a1 + 40) sendResponse:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end