@interface MTRPluginServer
+ (id)serverWorkQueue;
+ (id)sharedInstance;
- (BOOL)_deliverMessageToDelegate:(id)a3 homeUUID:(id)a4 timeout:(double)a5;
- (BOOL)addClientConnection:(id)a3;
- (BOOL)handleIncomingMessage:(id)a3;
- (BOOL)removeClientConnection:(id)a3;
- (BOOL)startWithDelegate:(id)a3 queue:(id)a4;
- (BOOL)stop;
- (MTRPluginServer)init;
- (NSSet)clientConnections;
- (int64_t)_safeQueryRunningModeFromDelegateForHomeUUID:(id)a3;
- (int64_t)_unsafeQueryRunningModeFromDelegateForHomeUUID:(id)a3;
- (void)_processStateUpdated:(id)a3;
- (void)_registerForResidentChangedNotifications;
- (void)_updateProcessMonitor;
- (void)dealloc;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)runningModeForHomeUUID:(id)a3 runningModeChanged:(int64_t)a4;
@end

@implementation MTRPluginServer

+ (id)sharedInstance
{
  if (sharedInstance_creation_1 != -1)
  {
    +[MTRPluginServer sharedInstance];
  }

  v3 = sharedInstance_sInstance_1;

  return v3;
}

uint64_t __33__MTRPluginServer_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_1 = objc_alloc_init(MTRPluginServer);

  return MEMORY[0x2821F96F8]();
}

+ (id)serverWorkQueue
{
  if (serverWorkQueue_predicateNAME != -1)
  {
    +[MTRPluginServer serverWorkQueue];
  }

  v3 = serverWorkQueue_sSingleWorkerQueue;

  return v3;
}

void __34__MTRPluginServer_serverWorkQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MTRPluginServerQueue", v2);
  v1 = serverWorkQueue_sSingleWorkerQueue;
  serverWorkQueue_sSingleWorkerQueue = v0;
}

- (MTRPluginServer)init
{
  v9.receiver = self;
  v9.super_class = MTRPluginServer;
  v2 = [(MTRPluginServer *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D46F80] monitor];
    [(MTRPluginServer *)v2 setProcessMonitor:v3];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginServer *)v2 setPidToStatusMap:v4];

    v5 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginServer *)v2 set_clientConnections:v5];

    v6 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginServer *)v2 setHomesWithPrimaryResidentUpdated:v6];

    [(MTRPluginServer *)v2 _registerForResidentChangedNotifications];
    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(MTRPluginServer *)self primaryResidentUpdatedSource];

  if (v3)
  {
    v4 = [(MTRPluginServer *)self primaryResidentUpdatedSource];
    dispatch_source_cancel(v4);

    [(MTRPluginServer *)self setPrimaryResidentUpdatedSource:0];
  }

  v5.receiver = self;
  v5.super_class = MTRPluginServer;
  [(MTRPluginServer *)&v5 dealloc];
}

- (void)_registerForResidentChangedNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];
}

- (BOOL)startWithDelegate:(id)a3 queue:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = self;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "Starting MTRPluginServer: %p", &v15, 0xCu);
  }

  [(MTRPluginServer *)self setDelegate:v6];
  [(MTRPluginServer *)self setDelegateQueue:v7];
  [(MTRPluginServer *)self setRunning:1];
  v9 = [(MTRPluginServer *)self delegate];
  if (v9)
  {
    v10 = v9;
    v11 = [(MTRPluginServer *)self delegateQueue];

    if (v11)
    {
      v12 = [(MTRPluginServer *)self delegateQueue];
      dispatch_async(v12, &__block_literal_global_38);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __43__MTRPluginServer_startWithDelegate_queue___block_invoke()
{
  v0 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  [v0 _updateRunningModeForAllControllers];
}

- (BOOL)stop
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping MTRPluginServer: %p", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MTRPluginServer *)self _clientConnections];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(MTRPluginServer *)self setRunning:0];
  [(MTRPluginServer *)self setDelegate:0];
  [(MTRPluginServer *)self setDelegateQueue:0];
  v9 = [MEMORY[0x277CBEB58] set];
  [(MTRPluginServer *)self set_clientConnections:v9];

  [(MTRPluginServer *)self _updateProcessMonitor];
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NSSet)clientConnections
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(MTRPluginServer *)self _clientConnections];
  v4 = [v2 setWithSet:v3];

  return v4;
}

- (void)runningModeForHomeUUID:(id)a3 runningModeChanged:(int64_t)a4
{
  v6 = a3;
  v7 = [(MTRPluginServer *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(MTRPluginServer *)self delegateQueue];

    if (v9)
    {
      v10 = [(MTRPluginServer *)self delegateQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__MTRPluginServer_runningModeForHomeUUID_runningModeChanged___block_invoke;
      v11[3] = &unk_279893DC8;
      v13 = a4;
      v12 = v6;
      dispatch_async(v10, v11);
    }
  }
}

void __61__MTRPluginServer_runningModeForHomeUUID_runningModeChanged___block_invoke(uint64_t a1)
{
  v2 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  [v2 _updateRunningMode:*(a1 + 40) forceUpdateControllerConfiguration:0 forHomeUUID:*(a1 + 32)];
}

- (int64_t)_unsafeQueryRunningModeFromDelegateForHomeUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MTRPluginServer *)self isRunning])
  {
    v5 = MTRIsPotentiallyPairing();
    v6 = matterPluginLog_default;
    v7 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Overriding running mode for home %@ to local since we are in potentially pairing window", &v18, 0x16u);
      }

      v8 = 2;
    }

    else
    {
      if (v7)
      {
        v12 = v6;
        v13 = [(MTRPluginServer *)self delegate];
        v18 = 138412802;
        v19 = self;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ => Querying delegate: %@ running mode for homeUUID: %@", &v18, 0x20u);
      }

      v14 = [(MTRPluginServer *)self delegate];
      v8 = [v14 runningModeForHomeUUID:v4];

      v15 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = MTRPluginHomeRunnningModeAsString(v8);
        v18 = 138412802;
        v19 = self;
        v20 = 2048;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Running mode response was: %ld (%@)", &v18, 0x20u);
      }
    }
  }

  else
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginServer *)self _unsafeQueryRunningModeFromDelegateForHomeUUID:v9];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)_safeQueryRunningModeFromDelegateForHomeUUID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(MTRPluginServer *)self delegate];
  if (v5 && ([(MTRPluginServer *)self delegateQueue], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(MTRPluginServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MTRPluginServer__safeQueryRunningModeFromDelegateForHomeUUID___block_invoke;
    block[3] = &unk_279893DF0;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v7, block);

    v8 = v14[3];
  }

  else
  {
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __64__MTRPluginServer__safeQueryRunningModeFromDelegateForHomeUUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _unsafeQueryRunningModeFromDelegateForHomeUUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)addClientConnection:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "Adding client connection: %@", &v12, 0xCu);
    }

    v6 = [(MTRPluginServer *)self _clientConnections];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, " => Ignoring, already added", &v12, 2u);
      }
    }

    else
    {
      v9 = [(MTRPluginServer *)self _clientConnections];
      [v9 addObject:v4];
    }

    [(MTRPluginServer *)self _updateProcessMonitor];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (BOOL)removeClientConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "Removing client connection: %@", &v15, 0xCu);
    }

    v6 = [(MTRPluginServer *)self _clientConnections];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = [(MTRPluginServer *)self _clientConnections];
      [v8 removeObject:v4];
    }

    else
    {
      v9 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, " => Ignoring, not present", &v15, 2u);
      }
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "pid")}];
    if (v10)
    {
      v11 = [(MTRPluginServer *)self pidToStatusMap];
      [v11 removeObjectForKey:v10];
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "Failed to remove pid from process map, pid was missing from connection", &v15, 2u);
      }
    }

    [(MTRPluginServer *)self _updateProcessMonitor];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (BOOL)_deliverMessageToDelegate:(id)a3 homeUUID:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (![(MTRPluginServer *)self isRunning])
  {
    goto LABEL_7;
  }

  v10 = [(MTRPluginServer *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    v16 = [(MTRPluginServer *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v12 = [(MTRPluginServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_46;
      block[3] = &unk_279893D48;
      block[4] = self;
      v13 = &v21;
      v21 = v8;
      v14 = &v22;
      v22 = v9;
      v15 = block;
      goto LABEL_6;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v12 = [(MTRPluginServer *)self delegateQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke;
  v23[3] = &unk_279893E18;
  v23[4] = self;
  v13 = &v24;
  v24 = v8;
  *&v25[1] = a5;
  v14 = v25;
  v25[0] = v9;
  v15 = v23;
LABEL_6:
  dispatch_async(v12, v15);

  v18 = 1;
LABEL_8:

  return v18;
}

void __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = MTRPluginHMFMessageDescription(v3);
    v7 = [*(a1 + 32) delegate];
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    *buf = 138413314;
    v22 = v4;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ => Delivering message: %@ to delegate: %@ timeout: %f homeUUID: %@", buf, 0x34u);
  }

  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v12 = [v11 delegate];
  v13 = v10[1];
  v14 = v10[2];
  v15 = *(v10 + 3);
  v20 = 0;
  v16 = [v12 sendMessage:v13 homeUUID:v14 timeout:&v20 error:v15];
  v17 = v20;

  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (!v18 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_cold_1(v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_46(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = MTRPluginHMFMessageDescription(v3);
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 48);
    *buf = 138413058;
    v20 = v4;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ => Delivering message: %@ to delegate: %@ homeUUID: %@", buf, 0x2Au);
  }

  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v11 = [v10 delegate];
  v12 = v9[1];
  v13 = v9[2];
  v18 = 0;
  v14 = [v11 sendMessage:v12 homeUUID:v13 error:&v18];
  v15 = v18;

  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (!v16 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_cold_1(v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleIncomingMessage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ => Received incoming HMFMessage %@", &v10, 0x16u);
  }

  v7 = +[MTRPluginProtobufOverModernTransport sharedInstance];
  [v7 dispatchIncomingMessage:v4];

  objc_autoreleasePoolPop(v5);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ Received resident update notification %@", buf, 0x16u);
  }

  v6 = [(MTRPluginServer *)self delegate];
  if (!v6 || (v7 = v6, [(MTRPluginServer *)self delegateQueue], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v15 = matterPluginLog_default;
    if (!os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    v16 = "%@ Ignoring notification %@ since delegate / delegateQueue is nil";
LABEL_13:
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
    goto LABEL_14;
  }

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v11 = [v4 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

  if (!v12)
  {
LABEL_11:
    v15 = matterPluginLog_default;
    if (!os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    v16 = "%@ Ignoring notification %@ since homeUUID is nil";
    goto LABEL_13;
  }

  v13 = [(MTRPluginServer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke;
  block[3] = &unk_279893D48;
  block[4] = self;
  v19 = v12;
  v20 = v4;
  v14 = v12;
  dispatch_async(v13, block);

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

void __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homesWithPrimaryResidentUpdated];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) primaryResidentUpdatedSource];
  v4 = [*(a1 + 32) delegateQueue];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke_2;
  v9 = &unk_279893AC8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v5 = MTRBufferedExecutionBlock(v3, v4, &v6, 10.0);
  [*(a1 + 32) setPrimaryResidentUpdatedSource:{v5, v6, v7, v8, v9, v10}];
}

void __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) homesWithPrimaryResidentUpdated];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412802;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          *buf = v15;
          v21 = v10;
          v22 = 2112;
          v23 = v8;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ Updating running mode for home %@ since primary resident updated with notification %@", buf, 0x20u);
        }

        v12 = +[MTRPluginDeviceControllerRegistry sharedInstance];
        [v12 _updateRunningModeOfAllClientsForHome:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 32) homesWithPrimaryResidentUpdated];
  [v13 removeAllObjects];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_processStateUpdated:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 process];
  v6 = [v4 previousState];
  v7 = [v4 state];
  v8 = [v5 pid];
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v20 = 67109632;
    v21 = v8;
    v22 = 1024;
    v23 = [v6 taskState];
    v24 = 1024;
    v25 = [v7 taskState];
    _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "Updating process state updated: %d   from: %d  to: %d", &v20, 0x14u);
  }

  v11 = [(MTRPluginServer *)self pidToStatusMap];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  [v11 setObject:v4 forKey:v12];

  v13 = [v7 taskState];
  v14 = matterPluginLog_default;
  v15 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 != 1)
      {
LABEL_22:
        if (v15)
        {
          v17 = v14;
          v18 = [v7 taskState];
          v20 = 67109376;
          v21 = v8;
          v22 = 1024;
          v23 = v18;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, " => pid %d unhandled state: %d", &v20, 0xEu);
        }

        goto LABEL_24;
      }

      if (!v15)
      {
        goto LABEL_24;
      }

      v20 = 67109120;
      v21 = v8;
      v16 = " => pid %d No state";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_24;
      }

      v20 = 67109120;
      v21 = v8;
      v16 = " => pid %d unknown state";
    }

LABEL_21:
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, v16, &v20, 8u);
    goto LABEL_24;
  }

  if (v13 == 2)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    v20 = 67109120;
    v21 = v8;
    v16 = " => pid %d unknown running state";
    goto LABEL_21;
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      if (v15)
      {
        v20 = 67109120;
        v21 = v8;
        _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, " => pid %d running", &v20, 8u);
      }

      [(MTRPluginServer *)self _pidResumed:v8];
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    v20 = 67109120;
    v21 = v8;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, " => pid %d suspended", &v20, 8u);
  }

  [(MTRPluginServer *)self _pidSuspended:v8];
LABEL_24:

  v19 = *MEMORY[0x277D85DE8];
}

void __33__MTRPluginServer__pidSuspended___block_invoke(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pidToStatusMap];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(v1 + 40)];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 state];
  v6 = v5;
  if (v5 && [v5 taskState] == 4)
  {
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v1 + 40);
      *buf = 67109376;
      *v47 = v8;
      *&v47[4] = 1024;
      *&v47[6] = 30;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "pid: %d is still running after %d seconds, not invalidating connection", buf, 0xEu);
    }

    goto LABEL_34;
  }

  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v1 + 40);
    *buf = 67109376;
    *v47 = v10;
    *&v47[4] = 1024;
    *&v47[6] = 30;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "pid: %d is still suspended after %d seconds, checking connection", buf, 0xEu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = [*(v1 + 32) clientConnections];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (!v13)
  {
    v15 = v12;
LABEL_33:

    goto LABEL_34;
  }

  v14 = v13;
  v38 = v6;
  v39 = v4;
  v15 = 0;
  v16 = *v43;
  v17 = v12;
  v40 = *v43;
  do
  {
    v18 = 0;
    v41 = v14;
    do
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v42 + 1) + 8 * v18);
      v20 = [v19 connection];
      if ([v20 processIdentifier] == *(v1 + 40))
      {
        v21 = MTRGetClientTypeForXPCConnection(v20);
        v22 = matterPluginLog_default;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v17;
          v24 = v1;
          v25 = v15;
          if (v21 >= 0xA)
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v21];
          }

          else
          {
            v26 = off_279893EB0[v21];
          }

          v27 = v26;
          v28 = [v20 processIdentifier];
          *buf = 138412802;
          *v47 = v20;
          *&v47[8] = 2112;
          v48 = v26;
          v49 = 1024;
          v50 = v28;
          _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "Checking connection: %@   clientType: %@   pid: %d", buf, 0x1Cu);

          v15 = v25;
          v1 = v24;
          v17 = v23;
          v16 = v40;
        }

        if (v21 <= 7 && ((1 << v21) & 0x94) != 0)
        {
          v30 = matterPluginLog_default;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = off_279893F00[v21 - 2];
            v32 = *(v1 + 40);
            *buf = 138412546;
            *v47 = v31;
            *&v47[8] = 1024;
            LODWORD(v48) = v32;
            _os_log_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEFAULT, " => %@ client type found pid: %d", buf, 0x12u);
          }

          v33 = v19;
          v15 = v33;
        }

        v14 = v41;
      }

      ++v18;
    }

    while (v14 != v18);
    v14 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
  }

  while (v14);

  v6 = v38;
  v4 = v39;
  if (v15)
  {
    v34 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v47 = v15;
      _os_log_impl(&dword_25830F000, v34, OS_LOG_TYPE_DEFAULT, " => Found matching connection: %@, removing all delegates", buf, 0xCu);
    }

    v35 = [v15 sessionID];
    v36 = [MEMORY[0x277CBEAC0] dictionary];
    [v15 deviceController:v35 updateControllerConfiguration:v36];

    goto LABEL_33;
  }

LABEL_34:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_updateProcessMonitor
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self;
  v4 = [(MTRPluginServer *)self clientConnections];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v22 + 1) + 8 * v9) connection];
        v11 = MEMORY[0x277D46F50];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "processIdentifier")}];
        v13 = [v11 identifierForIdentifier:v12];
        [v3 addObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v3;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "Updating process monitor, with pids to monitor: %@", buf, 0xCu);
  }

  v15 = [(MTRPluginServer *)v18 processMonitor];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__MTRPluginServer__updateProcessMonitor__block_invoke;
  v19[3] = &unk_279893E90;
  v20 = v3;
  v21 = v18;
  v16 = v3;
  [v15 updateConfiguration:v19];

  v17 = *MEMORY[0x277D85DE8];
}

void __40__MTRPluginServer__updateProcessMonitor__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "Updating process monitor config: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277D46FA0] predicateMatchingIdentifiers:*(a1 + 32)];
  if ([*(a1 + 32) count])
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    [v3 setPredicates:v6];

    v7 = [MEMORY[0x277D46FB0] descriptor];
    [v3 setStateDescriptor:v7];
  }

  else
  {
    [v3 setPredicates:0];
    [v3 setStateDescriptor:0];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MTRPluginServer__updateProcessMonitor__block_invoke_57;
  v9[3] = &unk_279893E68;
  v9[4] = *(a1 + 40);
  [v3 setUpdateHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __40__MTRPluginServer__updateProcessMonitor__block_invoke_57(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 67109120;
    v19 = [v6 pid];
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "Process monitor update handler invoked for PID: %d", buf, 8u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MTRPluginServer__updateProcessMonitor__block_invoke_58;
  block[3] = &unk_279893D48;
  v10 = *(a1 + 32);
  v15 = v6;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __40__MTRPluginServer__updateProcessMonitor__block_invoke_58(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7[0] = 67109120;
    v7[1] = [v3 pid];
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, " => (Main Queue) Process monitor update handler invoked for PID: %d", v7, 8u);
  }

  result = [*(a1 + 40) _processStateUpdated:*(a1 + 48)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_unsafeQueryRunningModeFromDelegateForHomeUUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Not querying running mode, we are not running", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25830F000, v2, v3, "%@ *** Failed to sendMessage with error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end