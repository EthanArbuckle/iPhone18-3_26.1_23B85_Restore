@interface FMServerInteractionController
- (FMServerInteractionController)init;
- (NSURLSessionConfiguration)sessionConfiguration;
- (double)_simulatedLatency;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)cancelAllCommands;
- (void)dealloc;
- (void)invalidate;
- (void)processResponseForCommand:(id)a3 callback:(id)a4;
- (void)sendCommand:(id)a3 completionBlock:(id)a4;
@end

@implementation FMServerInteractionController

- (void)dealloc
{
  dq_inFlightCommands = self->dq_inFlightCommands;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMServerInteractionController_dealloc__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = self;
  dispatch_sync(dq_inFlightCommands, block);
  v4.receiver = self;
  v4.super_class = FMServerInteractionController;
  [(FMServerInteractionController *)&v4 dealloc];
}

void __40__FMServerInteractionController_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (FMServerInteractionController)init
{
  v18.receiver = self;
  v18.super_class = FMServerInteractionController;
  v2 = [(FMServerInteractionController *)&v18 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = dispatch_queue_create("com.apple.icloud.iscommon.FMServerInteractionController", 0);
    dq_inFlightCommands = v2->dq_inFlightCommands;
    v2->dq_inFlightCommands = v3;

    v5 = v2->dq_inFlightCommands;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __37__FMServerInteractionController_init__block_invoke;
    v15 = &unk_278FD96E0;
    objc_copyWeak(&v16, &location);
    dispatch_sync(v5, &v12);
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(FMServerInteractionController *)v2 setQueue:v6, v12, v13, v14, v15];

    v7 = MEMORY[0x277CCAD30];
    v8 = [(FMServerInteractionController *)v2 sessionConfiguration];
    v9 = [(FMServerInteractionController *)v2 queue];
    v10 = [v7 sessionWithConfiguration:v8 delegate:v2 delegateQueue:v9];
    [(FMServerInteractionController *)v2 setSession:v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__FMServerInteractionController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2 = WeakRetained[2];
  WeakRetained[2] = v1;
}

- (double)_simulatedLatency
{
  if (_simulatedLatency_onceToken != -1)
  {
    [FMServerInteractionController _simulatedLatency];
  }

  return *&_simulatedLatency_retValue;
}

void __50__FMServerInteractionController__simulatedLatency__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v0 objectForKey:@"FMSimulateLatency"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
    _simulatedLatency_retValue = v2;
  }
}

- (NSURLSessionConfiguration)sessionConfiguration
{
  sessionConfiguration = self->_sessionConfiguration;
  if (!sessionConfiguration)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];

    v6 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:v5];
    v7 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v8 = self->_sessionConfiguration;
    self->_sessionConfiguration = v7;

    [(NSURLSessionConfiguration *)self->_sessionConfiguration set_appleIDContext:v6];
    sessionConfiguration = self->_sessionConfiguration;
  }

  return sessionConfiguration;
}

- (void)sendCommand:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  dq_inFlightCommands = self->dq_inFlightCommands;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__FMServerInteractionController_sendCommand_completionBlock___block_invoke;
  block[3] = &unk_278FD9B50;
  objc_copyWeak(&v22, &location);
  v9 = v6;
  v21 = v9;
  dispatch_sync(dq_inFlightCommands, block);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __61__FMServerInteractionController_sendCommand_completionBlock___block_invoke_2;
  v15 = &unk_278FD9C80;
  objc_copyWeak(&v18, &location);
  v16 = self;
  objc_copyWeak(&v19, &from);
  v10 = v7;
  v17 = v10;
  [v9 setCompletionBlock:&v12];
  [v9 setServerInteractionController:{self, v12, v13, v14, v15, v16}];
  v11 = [(FMServerInteractionController *)self queue];
  [v11 addOperation:v9];

  [(FMServerInteractionController *)self networkActivityStatus:1];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __61__FMServerInteractionController_sendCommand_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[2] addObject:*(a1 + 32)];
}

void __61__FMServerInteractionController_sendCommand_completionBlock___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] _simulatedLatency];
  if (v3 <= 0.0)
  {
    v6 = objc_loadWeakRetained(a1 + 7);
    [WeakRetained processResponseForCommand:v6 callback:a1[5]];
  }

  else
  {
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__FMServerInteractionController_sendCommand_completionBlock___block_invoke_3;
    block[3] = &unk_278FD9C58;
    block[4] = WeakRetained;
    objc_copyWeak(&v9, a1 + 7);
    v8 = a1[5];
    dispatch_after(v4, v5, block);

    objc_destroyWeak(&v9);
  }
}

void __61__FMServerInteractionController_sendCommand_completionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 processResponseForCommand:WeakRetained callback:*(a1 + 40)];
}

- (void)cancelAllCommands
{
  objc_initWeak(&location, self);
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  dq_inFlightCommands = self->dq_inFlightCommands;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__FMServerInteractionController_cancelAllCommands__block_invoke;
  block[3] = &unk_278FD9CA8;
  objc_copyWeak(&v5, &location);
  block[4] = &v6;
  dispatch_sync(dq_inFlightCommands, block);
  [v7[5] enumerateObjectsWithOptions:1 usingBlock:&__block_literal_global_13];
  objc_destroyWeak(&v5);
  _Block_object_dispose(&v6, 8);

  objc_destroyWeak(&location);
}

void __50__FMServerInteractionController_cancelAllCommands__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained[2] allObjects];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [WeakRetained[2] removeAllObjects];
}

- (void)invalidate
{
  v3 = [(FMServerInteractionController *)self session];
  [v3 invalidateAndCancel];

  [(FMServerInteractionController *)self setSession:0];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = LogCategory_Networking();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_24A2EE000, v7, OS_LOG_TYPE_DEFAULT, "session: [%@] didBecomeInvalidWithError: [%@]", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processResponseForCommand:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (v7)
  {
    v7[2](v7);
    [v6 setCompletionBlock:0];
  }

  dq_inFlightCommands = self->dq_inFlightCommands;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__FMServerInteractionController_processResponseForCommand_callback___block_invoke;
  block[3] = &unk_278FD9B50;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  v9 = v6;
  dispatch_sync(dq_inFlightCommands, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __68__FMServerInteractionController_processResponseForCommand_callback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[2] removeObject:*(a1 + 32)];
  if (![WeakRetained[2] count])
  {
    [WeakRetained networkActivityStatus:0];
  }
}

@end