@interface SUUIJSApplication
- (BOOL)isRunningTests;
- (BOOL)pageRenderMetricsEnabled;
- (SUUIApplicationController)applicationController;
- (SUUIJSApplication)initWithAppContext:(id)a3 applicationController:(id)a4;
- (void)launchComplete:(id)a3;
- (void)launchFailed;
- (void)sendDocumentMessage:(id)a3 :(id)a4 :(id)a5;
@end

@implementation SUUIJSApplication

- (SUUIJSApplication)initWithAppContext:(id)a3 applicationController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SUUIJSApplication;
  v7 = [(IKJSObject *)&v10 initWithAppContext:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_applicationController, v6);
  }

  return v8;
}

- (BOOL)pageRenderMetricsEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SUUIJSApplication_pageRenderMetricsEnabled__block_invoke;
  v4[3] = &unk_2798F5B48;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(MEMORY[0x277D85CD0], v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__SUUIJSApplication_pageRenderMetricsEnabled__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) applicationController];
  v2 = [v3 options];
  *(*(*(a1 + 40) + 8) + 24) = [v2 pageRenderMetricsEnabled];
}

- (void)launchFailed
{
  v2 = [(SUUIJSApplication *)self applicationController];
  [v2 performSelectorOnMainThread:sel_showErrorViewForLaunchFailure withObject:0 waitUntilDone:0];
}

- (void)launchComplete:(id)a3
{
  v4 = a3;
  v5 = [(SUUIJSApplication *)self applicationController];
  [v5 performSelectorOnMainThread:sel__jsLaunchFinishedWithLaunchMetrics_ withObject:v4 waitUntilDone:0];
}

- (void)sendDocumentMessage:(id)a3 :(id)a4 :(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 appBridge];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SUUIJSApplication_sendDocumentMessage_::__block_invoke;
    block[3] = &unk_2798F5BC0;
    v12 = v10;
    v13 = v7;
    v14 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__SUUIJSApplication_sendDocumentMessage_::__block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = a1[4];
  v3 = a1[5];
  v7[0] = @"SUUIDocumentMessageNameKey";
  v7[1] = @"SUUIDocumentMessagePayloadKey";
  v5 = a1[6];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 postNotificationName:@"SUUIAppDocumentDidSendMessageNotification" object:v4 userInfo:v6];
}

- (BOOL)isRunningTests
{
  v2 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SUUIJSApplication_isRunningTests__block_invoke;
  block[3] = &unk_2798FB038;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__SUUIJSApplication_isRunningTests__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  *(*(*(a1 + 32) + 8) + 24) = [v2 launchedToTest];
}

- (SUUIApplicationController)applicationController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationController);

  return WeakRetained;
}

@end