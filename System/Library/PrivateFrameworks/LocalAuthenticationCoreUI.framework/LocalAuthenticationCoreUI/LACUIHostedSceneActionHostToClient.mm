@interface LACUIHostedSceneActionHostToClient
- (LACUIHostedSceneActionHostToClient)initWithAction:(id)action completion:(id)completion;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation LACUIHostedSceneActionHostToClient

- (LACUIHostedSceneActionHostToClient)initWithAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  v7 = BSSettingsFromHostedSceneAction(action);
  v8 = MEMORY[0x277CF0B60];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__LACUIHostedSceneActionHostToClient_initWithAction_completion___block_invoke;
  v14[3] = &unk_27981E798;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = [v8 responderWithHandler:v14];
  v13.receiver = self;
  v13.super_class = LACUIHostedSceneActionHostToClient;
  v11 = [(LACUIHostedSceneActionHostToClient *)&v13 initWithInfo:v7 responder:v10];

  return v11;
}

void __64__LACUIHostedSceneActionHostToClient_initWithAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

- (void)performActionForHostedWindowScene:(id)scene
{
  v17 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    info = [(LACUIHostedSceneActionHostToClient *)self info];
    *buf = 138412546;
    v14 = sceneCopy;
    v15 = 2112;
    v16 = info;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "performActionForHostedWindowScene %@ info: %@", buf, 0x16u);
  }

  info2 = [(LACUIHostedSceneActionHostToClient *)self info];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__LACUIHostedSceneActionHostToClient_performActionForHostedWindowScene___block_invoke;
  v10[3] = &unk_27981E7C0;
  v11 = sceneCopy;
  selfCopy = self;
  v8 = sceneCopy;
  BSActionResponseForHandlerAndSettings(v8, info2, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __72__LACUIHostedSceneActionHostToClient_performActionForHostedWindowScene___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_DEFAULT, "performActionForHostedWindowScene %@ info: %@ finished with response: %@", &v8, 0x20u);
  }

  if ([*(a1 + 40) canSendResponse])
  {
    [*(a1 + 40) sendResponse:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end