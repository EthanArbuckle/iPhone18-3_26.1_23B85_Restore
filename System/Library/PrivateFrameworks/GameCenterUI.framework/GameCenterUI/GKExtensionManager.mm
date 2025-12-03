@interface GKExtensionManager
- (GKExtensionManager)initWithExtensionBundleIdentifer:(id)identifer host:(id)host;
- (int64_t)extensionLoadState;
- (void)extensionDidTerminateWithError:(id)error;
- (void)instantiateViewControllerWithHost:(id)host handler:(id)handler;
- (void)setExtensionLoadState:(int64_t)state;
@end

@implementation GKExtensionManager

- (GKExtensionManager)initWithExtensionBundleIdentifer:(id)identifer host:(id)host
{
  identiferCopy = identifer;
  v9.receiver = self;
  v9.super_class = GKExtensionManager;
  v6 = [(GKExtensionManager *)&v9 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.gamecenter.extension_state_queue", MEMORY[0x277D85CD8]);
    [(GKExtensionManager *)v6 setStateQueue:v7];

    [(GKExtensionManager *)v6 setExtensionIdentifier:identiferCopy];
  }

  return v6;
}

- (void)instantiateViewControllerWithHost:(id)host handler:(id)handler
{
  hostCopy = host;
  handlerCopy = handler;
  [(GKExtensionManager *)self setExtensionLoadState:1];
  v8 = MEMORY[0x277D0C020];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKExtensionManager.m", 57, "-[GKExtensionManager instantiateViewControllerWithHost:handler:]"];
  v10 = [v8 dispatchGroupWithName:v9];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke;
  v20[3] = &unk_279669A20;
  v20[4] = self;
  v11 = v10;
  v21 = v11;
  [v11 perform:v20];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke_3;
  v15[3] = &unk_27966AB18;
  v16 = v11;
  selfCopy = self;
  v18 = hostCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = hostCopy;
  v14 = v11;
  [v14 notifyOnMainQueueWithBlock:v15];
}

void __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCA9C8];
  v5 = [*(a1 + 32) extensionIdentifier];
  v11 = 0;
  v6 = [v4 _gkExtensionWithIdentifier:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    [*(a1 + 40) setError:v7];
    v3[2](v3);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke_2;
    v8[3] = &unk_27966B978;
    v9 = *(a1 + 40);
    v10 = v3;
    [v6 instantiateViewControllerWithInputItems:0 connectionHandler:v8];
  }
}

uint64_t __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 setError:a4];
  [*(a1 + 32) setResult:v7];

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke_3_cold_1(v2, v5);
    }

    v6 = *(a1 + 40);
    v7 = 0;
  }

  else
  {
    v8 = [*v2 result];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [*(a1 + 32) result];
    [*(a1 + 40) setExtensionHostViewController:v9];

    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) extensionHostViewController];
    [v11 setHostViewController:v10];

    v12 = *(a1 + 40);
    v13 = [v12 extensionHostViewController];
    [v13 setDelegate:v12];

    v6 = *(a1 + 40);
    v7 = 2;
  }

  [v6 setExtensionLoadState:v7];
LABEL_10:
  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = [*v2 result];
    v16 = [*v2 error];
    (*(v14 + 16))(v14, v15, v16);
  }
}

- (int64_t)extensionLoadState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  stateQueue = [(GKExtensionManager *)self stateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__GKExtensionManager_extensionLoadState__block_invoke;
  v6[3] = &unk_27966B9A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setExtensionLoadState:(int64_t)state
{
  stateQueue = [(GKExtensionManager *)self stateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__GKExtensionManager_setExtensionLoadState___block_invoke;
  v6[3] = &unk_27966B9C8;
  v6[4] = self;
  v6[5] = state;
  dispatch_barrier_async(stateQueue, v6);
}

- (void)extensionDidTerminateWithError:(id)error
{
  [(GKExtensionManager *)self setExtensionLoadState:0];

  [(GKExtensionManager *)self setExtensionHostViewController:0];
}

void __64__GKExtensionManager_instantiateViewControllerWithHost_handler___block_invoke_3_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 error];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_24DE53000, v3, OS_LOG_TYPE_ERROR, "Error instantiating remote view controller: %@", &v5, 0xCu);
}

@end