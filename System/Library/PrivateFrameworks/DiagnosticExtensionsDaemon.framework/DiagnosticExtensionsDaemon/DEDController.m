@interface DEDController
+ (id)archivedClasses;
- (BOOL)hasCompletionBlockWithIdentifier:(id)a3;
- (BOOL)hasDevice:(id)a3;
- (BOOL)hasRecentlyFinishedSessionWithIdentifier:(id)a3;
- (BOOL)induceTimeOutIfNeededAndReturnCanProceedWithDevice:(id)a3 sessionId:(id)a4;
- (DEDClientProtocol)clientDelegate;
- (DEDController)init;
- (DEDPairingProtocol)pairingDelegate;
- (DEDWorkerProtocol)workerDelegate;
- (OS_dispatch_queue)bugSessionCallbackQueue;
- (id)_allKnownDevicesWithIdentifier:(id)a3;
- (id)_deviceForIncomingDevice:(id)a3 needsReady:(BOOL)a4;
- (id)_sharingDeviceForIncomingDevice:(id)a3;
- (id)connector:(id)a3 needsXPCInboundForPid:(id)a4;
- (id)idsConnection;
- (id)knownSessions;
- (id)popDidStartSessionCompletionWithIdentifier:(id)a3;
- (id)popSessionStartCompletionWithIdentifier:(id)a3;
- (id)sessionForIdentifier:(id)a3;
- (id)sharingConnection;
- (void)_didAbortSessionWithID:(id)a3;
- (void)_timeOutSessionStartBlockWithIdentifier:(id)a3 targetDevice:(id)a4 timeout:(double)a5;
- (void)abortSession:(id)a3;
- (void)abortSession:(id)a3 withCompletion:(id)a4;
- (void)addDevice:(id)a3;
- (void)addDidStartSessionCompletion:(id)a3 withIdentifier:(id)a4;
- (void)addSessionStartCompletion:(id)a3 withIdentifier:(id)a4 configuration:(id)a5 targetDevice:(id)a6;
- (void)configureForDaemon;
- (void)configureForSharing:(BOOL)a3;
- (void)connector:(id)a3 didLooseConnectionToProcessWithPid:(int)a4;
- (void)didFinishSessionWithIdentifier:(id)a3;
- (void)didStartBugSessionWithInfo:(id)a3;
- (void)discoverDevicesWithCompletion:(id)a3;
- (void)forceRemoveNotificationOfType:(int64_t)a3 identifier:(id)a4 hostIdentifier:(id)a5;
- (void)hasActiveSessionForIdentifier:(id)a3 completion:(id)a4;
- (void)idsInbound_devicesChanged:(id)a3 completion:(id)a4;
- (void)insertNewSession:(id)a3;
- (void)listXPCConnections:(id)a3;
- (void)logDeviceCounts;
- (void)pingDaemonWithCompletion:(id)a3;
- (void)purgeStaleSessions:(id)a3 completion:(id)a4;
- (void)removeSessionWithIdentifier:(id)a3;
- (void)reset;
- (void)sharingInbound_promptPINForDevice:(id)a3 fromInbound:(id)a4;
- (void)sharingInbound_successPINForDevice:(id)a3 fromInbound:(id)a4;
- (void)start;
- (void)startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 caller:(id)a5 target:(id)a6 fromInbound:(id)a7;
- (void)startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 target:(id)a5 completion:(id)a6;
- (void)startPairSetupForDevice:(id)a3;
- (void)stopDiscovery;
- (void)tryPIN:(id)a3 forDevice:(id)a4;
- (void)upgradeToClassCDataProtectionIfNeeded;
- (void)xpcInbound_didDiscoverDevices:(id)a3;
- (void)xpcInbound_discoverAllAvailableDevices:(id)a3;
- (void)xpcInbound_forceRemoveNotificationOfType:(int64_t)a3 identifier:(id)a4 hostIdentifier:(id)a5;
- (void)xpcInbound_gotDeviceUpdate:(id)a3;
- (void)xpcInbound_hasActiveSession:(id)a3 fromInbound:(id)a4;
- (void)xpcInbound_hasActiveSessionReply:(id)a3 isActive:(BOOL)a4;
- (void)xpcInbound_listClientXPCConnectionsReply:(id)a3;
- (void)xpcInbound_ping:(id)a3;
- (void)xpcInbound_pong;
- (void)xpcInbound_promptPINForDevice:(id)a3;
- (void)xpcInbound_startPairSetupForDevice:(id)a3 fromInbound:(id)a4;
- (void)xpcInbound_stopDeviceDiscovery:(id)a3;
- (void)xpcInbound_successPINForDevice:(id)a3;
- (void)xpcInbound_tryPIN:(id)a3 forDevice:(id)a4 fromInbound:(id)a5;
- (void)xpc_listClientXPCConnectionsFromInbound:(id)a3;
@end

@implementation DEDController

- (DEDController)init
{
  v20.receiver = self;
  v20.super_class = DEDController;
  v2 = [(DEDController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    sessions = v2->_sessions;
    v2->_sessions = MEMORY[0x277CBEC10];

    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    devices = v3->_devices;
    v3->_devices = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    sessionStartBlocks = v3->_sessionStartBlocks;
    v3->_sessionStartBlocks = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    sessionDidStartBlocks = v3->_sessionDidStartBlocks;
    v3->_sessionDidStartBlocks = v9;

    v3->_isDaemon = 0;
    xpcConnector = v3->_xpcConnector;
    v3->_xpcConnector = 0;

    v12 = +[DEDConfiguration sharedInstance];
    v13 = [v12 connectionType];

    if (v13 == 1)
    {
      v14 = dispatch_queue_create("com.apple.diagnosticextensionsd.embedded-work-queue", 0);
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
      v15 = MEMORY[0x277D85CD0];
    }

    replyQueue = v3->_replyQueue;
    v3->_replyQueue = v14;

    v17 = dispatch_queue_create("com.apple.diagnosticextensionsd.work-queue", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v17;

    objc_storeWeak(&v3->_clientDelegate, 0);
    objc_storeWeak(&v3->_workerDelegate, 0);
    *&v3->_started = 0;
  }

  return v3;
}

- (OS_dispatch_queue)bugSessionCallbackQueue
{
  p_bugSessionCallbackQueue = &self->_bugSessionCallbackQueue;
  bugSessionCallbackQueue = self->_bugSessionCallbackQueue;
  if (!bugSessionCallbackQueue)
  {
    objc_storeStrong(p_bugSessionCallbackQueue, MEMORY[0x277D85CD0]);
    bugSessionCallbackQueue = *p_bugSessionCallbackQueue;
  }

  return bugSessionCallbackQueue;
}

- (void)configureForDaemon
{
  [(DEDController *)self setIsDaemon:1];
  [(DEDController *)self setUseSharing:0];
  [(DEDController *)self setUseIDS:1];
  v3 = +[DEDConfiguration sharedInstance];
  if ([v3 connectionType] == 1)
  {
  }

  else
  {
    v4 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v4 environment];
    v6 = [v5 objectForKeyedSubscript:@"USE-DEBUG-SERVICE"];

    if (!v6)
    {
      return;
    }
  }

  [(DEDController *)self setUseIDS:0];
}

- (void)configureForSharing:(BOOL)a3
{
  if (a3)
  {
    v4 = [(DEDController *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [DEDController configureForSharing:];
    }
  }

  [(DEDController *)self setUseSharing:0];
}

- (void)start
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__DEDController_start__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = [v8 identifier];
        [v10 removeSessionWithIdentifier:v11];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_INFO, "checking for pending operations", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [*(a1 + 32) sessions];
  v14 = [v13 allValues];

  v15 = [v14 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) resumePendingOperations];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v16);
  }

  [*(a1 + 32) upgradeToClassCDataProtectionIfNeeded];
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (void)pingDaemonWithCompletion:(id)a3
{
  v4 = a3;
  [(DEDController *)self setPongBlock:v4];
  objc_initWeak(&location, self);
  v5 = [(DEDController *)self replyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DEDController_pingDaemonWithCompletion___block_invoke;
  v6[3] = &unk_278F65830;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__DEDController_pingDaemonWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_ping];
}

- (void)discoverDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "started device discovery", buf, 2u);
  }

  [(DEDController *)self setDevicesCompletion:v4];
  objc_initWeak(buf, self);
  v6 = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DEDController_discoverDevicesWithCompletion___block_invoke;
  block[3] = &unk_278F65830;
  objc_copyWeak(&v8, buf);
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __47__DEDController_discoverDevicesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_discoverAllAvailableDevices];
}

- (void)stopDiscovery
{
  v3 = [(DEDController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "stopped device discovery", buf, 2u);
  }

  [(DEDController *)self setDevicesCompletion:0];
  objc_initWeak(buf, self);
  v4 = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DEDController_stopDiscovery__block_invoke;
  block[3] = &unk_278F65830;
  objc_copyWeak(&v6, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __30__DEDController_stopDiscovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_stopDeviceDiscovery];
}

- (id)_allKnownDevicesWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DEDController *)v5 devices];
  v7 = [v6 allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__DEDController__allKnownDevicesWithIdentifier___block_invoke;
  v11[3] = &unk_278F65858;
  v8 = v4;
  v12 = v8;
  v9 = [v7 ded_selectItemsPassingTest:v11];

  objc_sync_exit(v5);

  return v9;
}

uint64_t __48__DEDController__allKnownDevicesWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 status];
  if (v4)
  {
    if (v5 == 4)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 identifier];
      v7 = [v6 isEqualToString:*(a1 + 32)];
    }
  }

  else
  {
    v7 = v5 != 4;
  }

  return v7;
}

- (void)startPairSetupForDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 publicLogDescription];
    *buf = 136446466;
    v15 = "[DEDController startPairSetupForDevice:]";
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  v7 = [(DEDController *)self _sharingDeviceForIncomingDevice:v4];
  if ([v7 transport] == 2)
  {
    objc_initWeak(buf, self);
    v8 = [(DEDController *)self replyQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__DEDController_startPairSetupForDevice___block_invoke;
    v11[3] = &unk_278F65880;
    objc_copyWeak(&v13, buf);
    v12 = v7;
    dispatch_async(v8, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = [(DEDController *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDController startPairSetupForDevice:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __41__DEDController_startPairSetupForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_startPairSetupForDevice:*(a1 + 32)];
}

- (void)tryPIN:(id)a3 forDevice:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 publicLogDescription];
    *buf = 136446466;
    v19 = "[DEDController tryPIN:forDevice:]";
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  v10 = [(DEDController *)self _sharingDeviceForIncomingDevice:v7];
  if ([v10 transport] == 2)
  {
    objc_initWeak(buf, self);
    v11 = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__DEDController_tryPIN_forDevice___block_invoke;
    block[3] = &unk_278F658A8;
    objc_copyWeak(&v17, buf);
    v15 = v6;
    v16 = v10;
    dispatch_async(v11, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = [(DEDController *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEDController tryPIN:forDevice:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __34__DEDController_tryPIN_forDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_tryPIN:*(a1 + 32) forDevice:*(a1 + 40)];
}

- (id)_sharingDeviceForIncomingDevice:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self _deviceForIncomingDevice:v4 needsReady:0];
  v6 = [(DEDController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DEDController *)v4 _sharingDeviceForIncomingDevice:v5, v6];
  }

  return v5;
}

- (id)_deviceForIncomingDevice:(id)a3 needsReady:(BOOL)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(DEDController *)v7 devices];
  v9 = [v6 hashingKey];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [(DEDController *)v7 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "could not match device by transport-identifier, trying address", buf, 2u);
    }

    v12 = [(DEDController *)v7 devices];
    v13 = [v12 allValues];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __53__DEDController__deviceForIncomingDevice_needsReady___block_invoke;
    v25 = &unk_278F658D0;
    v14 = v6;
    v26 = v14;
    v27 = a4;
    v10 = [v13 ded_findWithBlock:&v22];

    if (v10)
    {
      v15 = [(DEDController *)v7 log:v22];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 description];
        *buf = 138543362;
        v29 = v16;
        _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEFAULT, "matched device by address on [%{public}@]", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(v7);

  v17 = [(DEDController *)v7 log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v6 publicLogSafeIdentifier];
    v19 = [v10 publicLogSafeIdentifier];
    *buf = 138543618;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_INFO, "device for incoming device %{public}@ -> %{public}@", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __53__DEDController__deviceForIncomingDevice_needsReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteTransport];
  if (v4 == [*(a1 + 32) remoteTransport])
  {
    v5 = [v3 address];
    v6 = [*(a1 + 32) address];
    v7 = [v5 isEqualToString:v6];

    v8 = *(a1 + 40) ^ 1;
    v9 = v8 & v7;
    if (v8 & 1) == 0 && (v7)
    {
      v9 = [v3 status] == 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)hasDevice:(id)a3
{
  v3 = [(DEDController *)self _deviceForIncomingDevice:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 target:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(DEDController *)self logDeviceCounts];
  v14 = +[DEDDevice currentDevice];
  v15 = DEDSessionStartLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v14 name];
    v18 = [v12 name];
    v19 = [v12 address];
    v20 = 136316162;
    v21 = "[DEDController startBugSessionWithIdentifier:configuration:target:completion:]";
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    _os_log_debug_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEBUG, "%s %@:%@ -> %@ (%@)", &v20, 0x34u);
  }

  if (v10 && v13)
  {
    [(DEDController *)self addSessionStartCompletion:v13 withIdentifier:v10 configuration:v11 targetDevice:v12];
    [(DEDController *)self startBugSessionWithIdentifier:v10 configuration:v11 caller:v14 target:v12 fromInbound:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)sessionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DEDController *)v5 sessions];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)insertNewSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DEDController *)v4 insertNewSession:v5];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = [(DEDController *)v6 sessions];
  v9 = [v7 initWithDictionary:v8];

  v10 = [v4 identifier];
  [v9 setObject:v4 forKeyedSubscript:v10];

  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v9];
  [(DEDController *)v6 setSessions:v11];

  objc_sync_exit(v6);
}

- (void)removeSessionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDController removeSessionWithIdentifier:];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = [(DEDController *)v6 sessions];
  v9 = [v7 initWithDictionary:v8];

  [v9 removeObjectForKey:v4];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  [(DEDController *)v6 setSessions:v10];

  objc_sync_exit(v6);
}

- (id)knownSessions
{
  v2 = [(DEDController *)self sessions];
  v3 = [v2 allKeys];

  return v3;
}

- (void)reset
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(DEDController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[DEDController reset]";
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(DEDController *)self sessions];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DEDController *)self abortSession:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)listXPCConnections:(id)a3
{
  v4 = a3;
  [(DEDController *)self setXpcConnectionsCompletion:v4];
  objc_initWeak(&location, self);
  v5 = [(DEDController *)self replyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__DEDController_listXPCConnections___block_invoke;
  v6[3] = &unk_278F65830;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __36__DEDController_listXPCConnections___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_listClientXPCConnections];
}

- (void)abortSession:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(DEDController *)v8 abortSession:v9 withCompletion:v10];
  }

  if (v7)
  {
    v11 = [(DEDController *)self didCancelCompletion];

    if (v11)
    {
      v12 = [(DEDController *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "will overwrite previous DEDDidCancelSessionCompletion block", v17, 2u);
      }
    }

    [(DEDController *)self setDidCancelCompletion:v7];
  }

  v13 = [v6 identifier];
  if (v13)
  {
    v14 = [(DEDController *)self sessions];
    v15 = [v14 objectForKey:v13];

    if (!v15)
    {
      v16 = [(DEDController *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DEDController abortSession:withCompletion:];
      }
    }

    [v15 cancel];
  }
}

- (void)abortSession:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Aborting session %@", &v8, 0xCu);
  }

  [(DEDController *)self abortSession:v4 withCompletion:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_didAbortSessionWithID:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self didCancelCompletion];

  if (v5)
  {
    v6 = [(DEDController *)self didCancelCompletion];
    v7 = [(DEDController *)self replyQueue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __40__DEDController__didAbortSessionWithID___block_invoke;
    v12 = &unk_278F653F8;
    v14 = v6;
    v13 = v4;
    v8 = v6;
    dispatch_async(v7, &v9);

    [(DEDController *)self setDidCancelCompletion:0, v9, v10, v11, v12];
  }
}

- (void)hasActiveSessionForIdentifier:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(DEDController *)self setSessionExistsCompletion:v7];
  v8 = [(DEDController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Retrieving active session: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(DEDController *)self replyQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__DEDController_hasActiveSessionForIdentifier_completion___block_invoke;
  v12[3] = &unk_278F65880;
  objc_copyWeak(&v14, buf);
  v13 = v6;
  v10 = v6;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__DEDController_hasActiveSessionForIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_hasActiveSession:*(a1 + 32)];
}

- (BOOL)hasRecentlyFinishedSessionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self recentlyFinishedSessions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__DEDController_hasRecentlyFinishedSessionWithIdentifier___block_invoke;
  v10[3] = &unk_278F658F8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 ded_findWithBlock:v10];
  v8 = v7 != 0;

  return v8;
}

- (void)forceRemoveNotificationOfType:(int64_t)a3 identifier:(id)a4 hostIdentifier:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(DEDController *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v11 = "Unknown";
    }

    else
    {
      v11 = off_278F65B40[a3];
    }

    *buf = 136446722;
    v21 = v11;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Force removing notification of type [%{public}s] identifier [%{public}@] app [%{public}@]", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v12 = [(DEDController *)self replyQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__DEDController_forceRemoveNotificationOfType_identifier_hostIdentifier___block_invoke;
  v16[3] = &unk_278F65920;
  objc_copyWeak(v19, buf);
  v19[1] = a3;
  v17 = v8;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
  v15 = *MEMORY[0x277D85DE8];
}

void __73__DEDController_forceRemoveNotificationOfType_identifier_hostIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_forceRemoveNotificationOfType:*(a1 + 56) identifier:*(a1 + 32) hostIdentifier:*(a1 + 40)];
}

- (void)connector:(id)a3 didLooseConnectionToProcessWithPid:(int)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(DEDController *)self isDaemon];
  v7 = [(DEDController *)self log];
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDController connector:didLooseConnectionToProcessWithPid:];
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = a4;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Daemon DED Controller lost connection to app with pid [%i]", v11, 8u);
  }

  if ([(DEDController *)self useSharing])
  {
    v9 = [(DEDController *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Daemon DED Controller will stop discovery", v11, 2u);
    }

    v8 = [(DEDController *)self sharingConnection];
    [v8 stopDiscovery];
LABEL_10:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)connector:(id)a3 needsXPCInboundForPid:(id)a4
{
  v5 = a4;
  v6 = [[DEDXPCInbound alloc] initWithDelegate:self senderPid:v5];

  return v6;
}

- (void)xpcInbound_forceRemoveNotificationOfType:(int64_t)a3 identifier:(id)a4 hostIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 2)
  {
    v11 = DEDFollowUpNotifier;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v11 = DEDUserNotificationNotifier;
LABEL_9:
    [(__objc2_class *)v11 forceRemoveNotificationWithIdentifier:v8 hostIdentifier:v9];
    goto LABEL_13;
  }

  if (a3)
  {
    v12 = [(DEDController *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [DEDController xpcInbound_forceRemoveNotificationOfType:a3 identifier:v12 hostIdentifier:?];
    }
  }

  else
  {
    v10 = [(DEDController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_forceRemoveNotificationOfType:identifier:hostIdentifier:];
    }
  }

LABEL_13:
}

- (void)xpcInbound_ping:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DEDController_xpcInbound_ping___block_invoke;
  block[3] = &unk_278F65880;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__DEDController_xpcInbound_ping___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_pong];
}

- (void)xpcInbound_pong
{
  objc_initWeak(&location, self);
  v3 = [(DEDController *)self replyQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__DEDController_xpcInbound_pong__block_invoke;
  v4[3] = &unk_278F65830;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__DEDController_xpcInbound_pong__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pongBlock];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 pongBlock];
    v4[2]();
  }
}

- (void)xpcInbound_discoverAllAvailableDevices:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  v6 = [(DEDController *)self log];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "'Will start device discovery", buf, 2u);
  }

  v7 = [(DEDController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke(id *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained log];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Starting device discovery", buf, 2u);
  }

  group = dispatch_group_create();
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = [v3 useIDS];

  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    v6 = [v5 idsConnection];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_42;
    v58[3] = &unk_278F65948;
    objc_copyWeak(&v60, a1 + 6);
    v59 = a1[4];
    [v6 setDeviceCallback:v58];

    dispatch_group_enter(group);
    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 idsConnection];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_3;
    v55[3] = &unk_278F65970;
    objc_copyWeak(&v57, a1 + 6);
    v56 = group;
    [v8 discoverDevicesWithCompletion:v55];

    objc_destroyWeak(&v57);
    objc_destroyWeak(&v60);
  }

  v9 = objc_loadWeakRetained(a1 + 6);
  v10 = [v9 useSharing];

  if (v10)
  {
    v11 = objc_loadWeakRetained(a1 + 6);
    v12 = [v11 sharingConnection];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_4;
    v52[3] = &unk_278F65948;
    objc_copyWeak(&v54, a1 + 6);
    v53 = a1[4];
    [v12 setDeviceDiscoveryCallback:v52];

    v13 = objc_loadWeakRetained(a1 + 6);
    v14 = [v13 log];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_INFO, "Starting sharing...", buf, 2u);
    }

    dispatch_group_enter(group);
    v15 = objc_loadWeakRetained(a1 + 6);
    v16 = [v15 sharingConnection];
    v17 = a1[4];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_44;
    v49[3] = &unk_278F65970;
    objc_copyWeak(&v51, a1 + 6);
    v50 = group;
    [v16 discoverDevicesFromInbound:v17 withCompletion:v49];

    objc_destroyWeak(&v51);
    objc_destroyWeak(&v54);
  }

  v18 = dispatch_time(0, 0xDF8476000);
  dispatch_group_wait(group, v18);
  obj = a1[5];
  objc_sync_enter(obj);
  v19 = objc_loadWeakRetained(a1 + 6);
  v20 = [v19 log];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_loadWeakRetained(a1 + 6);
    v22 = [v21 devices];
    v23 = [v22 allKeys];
    v24 = [v23 count];
    *buf = 134217984;
    *v62 = v24;
    _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "discovered devices [%lu]", buf, 0xCu);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v25 = objc_loadWeakRetained(a1 + 6);
  v26 = [v25 devices];
  v27 = [v26 allValues];

  v28 = [v27 countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v28)
  {
    v29 = *v46;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v45 + 1) + 8 * i);
        v32 = objc_loadWeakRetained(a1 + 6);
        v33 = [v32 log];

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v31 transport];
          v35 = [v31 publicLogSafeIdentifier];
          *buf = 67109378;
          *v62 = v34;
          *&v62[4] = 2114;
          *&v62[6] = v35;
          _os_log_impl(&dword_248AD7000, v33, OS_LOG_TYPE_DEFAULT, "discovered [%i-%{public}@]", buf, 0x12u);
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v28);
  }

  objc_sync_exit(obj);
  v36 = objc_loadWeakRetained(a1 + 6);
  v37 = [v36 replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_45;
  block[3] = &unk_278F65880;
  objc_copyWeak(&v44, a1 + 6);
  v43 = a1[4];
  dispatch_async(v37, block);

  objc_destroyWeak(&v44);
  v38 = *MEMORY[0x277D85DE8];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addDevice:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_2;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_gotDeviceUpdate:*(a1 + 40)];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained addDevice:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addDevice:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_5;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_gotDeviceUpdate:*(a1 + 40)];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_44(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained addDevice:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 allKnownDevices];
  [v3 xpc_didDiscoverDevices:v5];
}

- (void)xpcInbound_gotDeviceUpdate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2048;
    v14 = [v4 status];
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Update: %@ status %ld", buf, 0x16u);
  }

  [(DEDController *)self addDevice:v4];
  objc_initWeak(buf, self);
  v7 = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DEDController_xpcInbound_gotDeviceUpdate___block_invoke;
  block[3] = &unk_278F65830;
  objc_copyWeak(&v10, buf);
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __44__DEDController_xpcInbound_gotDeviceUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained devicesCompletion];

  v4 = objc_loadWeakRetained((a1 + 32));
  v9 = v4;
  if (v3)
  {
    v5 = [v4 devicesCompletion];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 allKnownDevices];
    (v5)[2](v5, v7);
  }

  else
  {
    v8 = [v4 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "discovered devices, no completion block registered", buf, 2u);
    }
  }
}

- (void)xpcInbound_didDiscoverDevices:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(DEDController *)self addDevice:*(*(&v13 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  objc_initWeak(&location, self);
  v8 = [(DEDController *)self replyQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__DEDController_xpcInbound_didDiscoverDevices___block_invoke;
  v10[3] = &unk_278F65830;
  objc_copyWeak(&v11, &location);
  dispatch_async(v8, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x277D85DE8];
}

void __47__DEDController_xpcInbound_didDiscoverDevices___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained devicesCompletion];

  v4 = objc_loadWeakRetained((a1 + 32));
  v9 = v4;
  if (v3)
  {
    v5 = [v4 devicesCompletion];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 allKnownDevices];
    (v5)[2](v5, v7);
  }

  else
  {
    v8 = [v4 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "discovered devices, no completion block registered", buf, 2u);
    }
  }
}

- (void)xpcInbound_stopDeviceDiscovery:(id)a3
{
  if ([(DEDController *)self useSharing])
  {
    v4 = [(DEDController *)self sharingConnection];
    [v4 stopDiscovery];
  }
}

- (void)xpcInbound_hasActiveSession:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDController *)self sessions];
  v9 = [v8 objectForKeyedSubscript:v6];

  objc_initWeak(&location, self);
  v10 = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DEDController_xpcInbound_hasActiveSession_fromInbound___block_invoke;
  block[3] = &unk_278F65998;
  objc_copyWeak(&v16, &location);
  v14 = v7;
  v15 = v6;
  v17 = v9 != 0;
  v11 = v6;
  v12 = v7;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __57__DEDController_xpcInbound_hasActiveSession_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_hasActiveSessionReply:*(a1 + 40) isActive:*(a1 + 56)];
}

- (void)xpcInbound_hasActiveSessionReply:(id)a3 isActive:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DEDController *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"No";
    if (v4)
    {
      v8 = @"Yes";
    }

    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Session %{public}@ is active %{public}@", buf, 0x16u);
  }

  v9 = [(DEDController *)self sessionExistsCompletion];

  if (v9)
  {
    objc_initWeak(buf, self);
    v10 = [(DEDController *)self replyQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__DEDController_xpcInbound_hasActiveSessionReply_isActive___block_invoke;
    v12[3] = &unk_278F659C0;
    objc_copyWeak(&v13, buf);
    v14 = v4;
    dispatch_async(v10, v12);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__DEDController_xpcInbound_hasActiveSessionReply_isActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained sessionExistsCompletion];
  v3[2](v3, *(a1 + 40));

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setSessionExistsCompletion:0];
}

- (void)xpc_listClientXPCConnectionsFromInbound:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self xpcConnector];
  v6 = [v5 clientConnections];

  objc_initWeak(&location, self);
  v7 = [(DEDController *)self replyQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__DEDController_xpc_listClientXPCConnectionsFromInbound___block_invoke;
  v10[3] = &unk_278F658A8;
  objc_copyWeak(&v13, &location);
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __57__DEDController_xpc_listClientXPCConnectionsFromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_listClientXPCConnectionsReply:*(a1 + 40)];
}

- (void)xpcInbound_listClientXPCConnectionsReply:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self xpcConnectionsCompletion];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__DEDController_xpcInbound_listClientXPCConnectionsReply___block_invoke;
    block[3] = &unk_278F65880;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(v6, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __58__DEDController_xpcInbound_listClientXPCConnectionsReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained xpcConnectionsCompletion];
  v3[2](v3, *(a1 + 32));

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setXpcConnectionsCompletion:0];
}

- (void)xpcInbound_startPairSetupForDevice:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDController *)self _sharingDeviceForIncomingDevice:v6];
  if ([v8 transport] == 3)
  {
    v9 = [(DEDController *)self sharingConnection];
    [v9 sharing_startPairSetupForDevice:v8 fromInbound:v7];
  }

  else
  {
    v9 = [(DEDController *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_startPairSetupForDevice:fromInbound:];
    }
  }
}

- (void)xpcInbound_promptPINForDevice:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self pairingDelegate];

  if (v5)
  {
    v6 = [(DEDController *)self _sharingDeviceForIncomingDevice:v4];
    if ([v6 transport]== 2)
    {
      objc_initWeak(&location, self);
      v7 = [(DEDController *)self replyQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__DEDController_xpcInbound_promptPINForDevice___block_invoke;
      block[3] = &unk_278F65880;
      objc_copyWeak(&v11, &location);
      v6 = v6;
      v10 = v6;
      dispatch_async(v7, block);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = [(DEDController *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [DEDController xpcInbound_promptPINForDevice:];
      }
    }
  }

  else
  {
    v6 = [(DEDController *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_promptPINForDevice:];
    }
  }
}

void __47__DEDController_xpcInbound_promptPINForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pairingDelegate];
  [v2 promptPINForDevice:*(a1 + 32)];
}

- (void)xpcInbound_tryPIN:(id)a3 forDevice:(id)a4 fromInbound:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DEDController *)self _sharingDeviceForIncomingDevice:v9];
  if ([v11 transport] == 3)
  {
    v12 = [(DEDController *)self sharingConnection];
    [v12 sharing_tryPIN:v8 forDevice:v9 fromInbound:v10];
  }

  else
  {
    v12 = [(DEDController *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_tryPIN:forDevice:fromInbound:];
    }
  }
}

- (void)xpcInbound_successPINForDevice:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self _sharingDeviceForIncomingDevice:v4];
  if ([v5 transport] == 2)
  {
    objc_initWeak(&location, self);
    v6 = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__DEDController_xpcInbound_successPINForDevice___block_invoke;
    block[3] = &unk_278F65880;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(DEDController *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_successPINForDevice:];
    }
  }
}

void __48__DEDController_xpcInbound_successPINForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pairingDelegate];
  [v2 successPINForDevice:*(a1 + 32)];
}

- (void)sharingInbound_promptPINForDevice:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDController *)self _sharingDeviceForIncomingDevice:v6];
  if ([v8 transport] == 3)
  {
    objc_initWeak(&location, self);
    v9 = [(DEDController *)self replyQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__DEDController_sharingInbound_promptPINForDevice_fromInbound___block_invoke;
    v11[3] = &unk_278F658A8;
    objc_copyWeak(&v14, &location);
    v12 = v7;
    v13 = v8;
    dispatch_async(v9, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(DEDController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDController sharingInbound_promptPINForDevice:fromInbound:];
    }
  }
}

void __63__DEDController_sharingInbound_promptPINForDevice_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_promptPINForDevice:*(a1 + 40)];
}

- (void)sharingInbound_successPINForDevice:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DEDController *)self _sharingDeviceForIncomingDevice:v6];
  if ([v8 transport] == 3)
  {
    objc_initWeak(&location, self);
    v9 = [(DEDController *)self replyQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__DEDController_sharingInbound_successPINForDevice_fromInbound___block_invoke;
    v11[3] = &unk_278F658A8;
    objc_copyWeak(&v14, &location);
    v12 = v7;
    v13 = v8;
    dispatch_async(v9, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(DEDController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDController sharingInbound_successPINForDevice:fromInbound:];
    }
  }
}

void __64__DEDController_sharingInbound_successPINForDevice_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_successPINForDevice:*(a1 + 40)];
}

- (void)idsInbound_devicesChanged:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DEDController_idsInbound_devicesChanged_completion___block_invoke;
  block[3] = &unk_278F659E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __54__DEDController_idsInbound_devicesChanged_completion___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v30 = *(a1 + 32);
  objc_sync_enter(v30);
  v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [*(a1 + 32) devices];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v4)
  {
    v33 = *v40;
    obj = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        if ([v6 remoteTransport] == 4)
        {
          v8 = *(a1 + 40);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_53;
          v38[3] = &unk_278F65858;
          v38[4] = v6;
          v9 = [v8 ded_findWithBlock:v38];
          if (v9)
          {
            v10 = [v6 name];
            v11 = [v9 name];
            v12 = [v10 isEqualToString:v11];

            if ((v12 & 1) == 0)
            {
              v13 = [*(a1 + 32) log];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = [v6 hashingKey];
                v15 = [v6 name];
                v16 = [v9 name];
                *buf = 138543875;
                v45 = v14;
                v46 = 2113;
                v47 = v15;
                v48 = 2113;
                v49 = v16;
                _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "idsInbound_devicesChanged: Device [%{public}@], change [%{private}@] -> [%{private}@]", buf, 0x20u);
              }

              v17 = [v9 name];
              [v6 setName:v17];
            }
          }

          else
          {
            v19 = [*(a1 + 32) log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v6 hashingKey];
              *buf = 138543362;
              v45 = v20;
              _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_DEFAULT, "idsInbound_devicesChanged: Will remove device [%{public}@]", buf, 0xCu);
            }

            [v31 addObject:v6];
          }
        }

        else
        {
          v9 = [*(a1 + 32) log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v6 hashingKey];
            __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_cold_1(v18, v50, &v51, v9);
          }
        }

        objc_autoreleasePoolPop(v7);
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v4);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v31;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v22)
  {
    v23 = *v35;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = [*(a1 + 32) devices];
        v27 = [v25 hashingKey];
        [v26 removeObjectForKey:v27];
      }

      v22 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v22);
  }

  objc_sync_exit(v30);
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 caller:(id)a5 target:(id)a6 fromInbound:(id)a7
{
  v146 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v90 = a5;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  if (![(DEDController *)self induceTimeOutIfNeededAndReturnCanProceedWithDevice:v14 sessionId:v12])
  {
    goto LABEL_67;
  }

  [(DEDController *)self logDeviceCounts];
  if (!v14)
  {
    v23 = DEDSessionStartLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
    }

    goto LABEL_12;
  }

  v16 = [(DEDController *)self _deviceForIncomingDevice:v14 needsReady:1];
  if (!v16)
  {
    v23 = DEDSessionStartLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v14 hashingKey];
      [DEDController startBugSessionWithIdentifier:v24 configuration:buf caller:v23 target:? fromInbound:?];
    }

LABEL_12:

    v25 = DEDSessionStartLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
    }

    v26 = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke;
    block[3] = &unk_278F658A8;
    objc_copyWeak(&v135, &location);
    v133 = v12;
    v134 = 0;
    dispatch_async(v26, block);

    objc_destroyWeak(&v135);
    goto LABEL_67;
  }

  v17 = [v13 requestedCapabilities];
  v18 = [v14 hasCapabilities:v17];

  if (v18)
  {
    v19 = DEDSessionStartLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v14 identifier];
      v21 = [v14 transport];
      if (v21 > 4)
      {
        v22 = "Unknown";
      }

      else
      {
        v22 = off_278F65C08[v21];
      }

      *buf = 138543874;
      *&buf[4] = v20;
      *&buf[12] = 2082;
      *&buf[14] = v22;
      *&buf[22] = 2114;
      v144 = v12;
      _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_DEFAULT, "inTarget device: [%{public}@] - [%{public}s] - [%{public}@]", buf, 0x20u);
    }

    v30 = DEDSessionStartLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v16 identifier];
      v32 = [v16 transport];
      if (v32 > 4)
      {
        v33 = "Unknown";
      }

      else
      {
        v33 = off_278F65C08[v32];
      }

      *buf = 138543874;
      *&buf[4] = v31;
      *&buf[12] = 2082;
      *&buf[14] = v33;
      *&buf[22] = 2114;
      v144 = v12;
      _os_log_impl(&dword_248AD7000, v30, OS_LOG_TYPE_DEFAULT, "target device: [%{public}@] - [%{public}s] - [%{public}@]", buf, 0x20u);
    }

    v34 = DEDSessionStartLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v79 = [v90 name];
      v80 = [v16 name];
      v81 = [v16 address];
      *buf = 136316162;
      *&buf[4] = "[DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:]";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v144 = v79;
      *v145 = 2112;
      *&v145[2] = v80;
      *&v145[10] = 2112;
      *&v145[12] = v81;
      _os_log_debug_impl(&dword_248AD7000, v34, OS_LOG_TYPE_DEBUG, "%s %@:%@ -> %@ (%@)", buf, 0x34u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v144 = __Block_byref_object_copy__0;
    *v145 = __Block_byref_object_dispose__0;
    *&v145[8] = 0;
    v35 = [(DEDController *)self sessions];
    v36 = [v35 objectForKeyedSubscript:v12];

    if (v36)
    {
      v37 = DEDSessionStartLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 138543362;
        v138 = v12;
        _os_log_impl(&dword_248AD7000, v37, OS_LOG_TYPE_DEFAULT, "found existing session [%{public}@]", v137, 0xCu);
      }

      v38 = [(DEDController *)self sessions];
      v39 = [v38 objectForKeyedSubscript:v12];
      v40 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v39;

      if ([*(*&buf[8] + 40) hasCapability:@"mutable-bug-session"])
      {
        [*(*&buf[8] + 40) setConfig:v13];
      }
    }

    else
    {
      v41 = DEDSessionStartLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 138543362;
        v138 = v12;
        _os_log_impl(&dword_248AD7000, v41, OS_LOG_TYPE_DEFAULT, "creating new session [%{public}@]", v137, 0xCu);
      }

      v42 = [[DEDBugSession alloc] initWithConfiguration:v13];
      v43 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v42;

      [*(*&buf[8] + 40) setIdentifier:v12];
      v44 = [v16 identifier];
      [*(*&buf[8] + 40) setDeviceIdentifier:v44];
    }

    v45 = [(DEDController *)self bugSessionCallbackQueue];
    [*(*&buf[8] + 40) setCallbackQueue:v45];

    [*(*&buf[8] + 40) didStart];
    v141[0] = @"DEDExtensionIdentifierManager";
    v46 = [*(*&buf[8] + 40) identifierManager];
    v47 = [v46 JSONRepresentation];
    v141[1] = @"identifier";
    v142[0] = v47;
    v142[1] = v12;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];

    v49 = DEDSessionStartLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [*(*&buf[8] + 40) identifier];
      *v137 = 138543618;
      v138 = v50;
      v139 = 2114;
      v140 = v48;
      _os_log_impl(&dword_248AD7000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting with sessionSyncData [%{public}@]", v137, 0x16u);
    }

    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78;
    v119[3] = &unk_278F65A38;
    v126 = buf;
    v120 = @"DEDExtensionIdentifierManager";
    v51 = v12;
    v121 = v51;
    objc_copyWeak(&v127, &location);
    v52 = v90;
    v122 = v52;
    v89 = v16;
    v123 = v89;
    v85 = v15;
    v124 = v85;
    v87 = v48;
    v125 = v87;
    v88 = MEMORY[0x24C1E5320](v119);
    [(DEDController *)self addDidStartSessionCompletion:v88 withIdentifier:v51];
    if ([v52 transport] == 1)
    {
      v53 = objc_alloc_init(DEDLocalTransport);
      v54 = [(DEDController *)self clientDelegate];
      [(DEDLocalTransport *)v53 setClientDelegate:v54];

      [*(*&buf[8] + 40) setClient:v53];
    }

    else if ([v52 transport] == 2)
    {
      v55 = [DEDXPCOutbound alloc];
      v53 = [(DEDController *)self xpcConnector];
      v56 = [(DEDLocalTransport *)v53 clientXPCInterfaceFromInbound:v85];
      v57 = [(DEDXPCOutbound *)v55 initWithRemoteObject:v56];
      [*(*&buf[8] + 40) setClient:v57];
    }

    else if ([v52 transport] == 4)
    {
      v53 = [v52 address];
      v58 = [(DEDController *)self idsConnection];
      v59 = [DEDIDSOutbound outboundWithSessionID:v51 withDeviceAtAddress:v53 connection:v58];
      [*(*&buf[8] + 40) setClient:v59];
    }

    else if ([v52 transport] == 3)
    {
      v60 = [(DEDController *)self sharingConnection];
      v61 = [v60 sharingOutboundForBugSessionIdentifier:v51 device:v52 fromInbound:v85];
      [*(*&buf[8] + 40) setClient:v61];

      v62 = [*(*&buf[8] + 40) client];
      v63 = v62 == 0;

      if (!v63)
      {
LABEL_50:
        v86 = +[DEDDevice currentDevice];
        if ([v89 transport] == 1)
        {
          v64 = objc_alloc_init(DEDLocalTransport);
          v65 = [(DEDController *)self workerDelegate];
          [(DEDLocalTransport *)v64 setWorkerDelegate:v65];

          [*(*&buf[8] + 40) setWorker:v64];
          v66 = [(DEDController *)self replyQueue];
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84;
          v115[3] = &unk_278F658A8;
          objc_copyWeak(&v118, &location);
          v116 = v51;
          v117 = v87;
          dispatch_async(v66, v115);

          objc_destroyWeak(&v118);
        }

        else if ([v89 transport] == 2)
        {
          v67 = [(DEDController *)self replyQueue];
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_85;
          v108[3] = &unk_278F65A60;
          objc_copyWeak(&v114, &location);
          v113 = buf;
          v109 = v51;
          v110 = v13;
          v111 = v86;
          v112 = v89;
          dispatch_async(v67, v108);

          objc_destroyWeak(&v114);
        }

        else if ([v89 transport] == 4)
        {
          v68 = [v89 address];
          v69 = [(DEDController *)self idsConnection];
          v70 = [DEDIDSOutbound outboundWithSessionID:v51 withDeviceAtAddress:v68 connection:v69];
          [*(*&buf[8] + 40) setWorker:v70];

          v71 = [(DEDController *)self replyQueue];
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2_86;
          v102[3] = &unk_278F65A88;
          objc_copyWeak(&v107, &location);
          v103 = v51;
          v104 = v13;
          v105 = v86;
          v106 = v89;
          dispatch_async(v71, v102);

          objc_destroyWeak(&v107);
        }

        else if ([v89 transport] == 3)
        {
          v72 = [(DEDController *)self sharingConnection];
          v84 = [v72 sharingOutboundForBugSessionIdentifier:v51 device:v89 fromInbound:v85];

          if (v84)
          {
            [*(*&buf[8] + 40) setWorker:?];
            v73 = [(DEDController *)self replyQueue];
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3_87;
            v95[3] = &unk_278F65AB0;
            v74 = &v101;
            objc_copyWeak(&v101, &location);
            v96 = v51;
            v97 = v13;
            v98 = v86;
            v99 = v89;
            v100 = v85;
            dispatch_async(v73, v95);

            v75 = &v96;
            v76 = &v97;
            v77 = v98;
          }

          else
          {
            v82 = DEDSessionStartLog();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *v137 = 0;
              _os_log_impl(&dword_248AD7000, v82, OS_LOG_TYPE_DEFAULT, "Bug session start failed. Could not find sharing outbound on worker", v137, 2u);
            }

            v77 = [(DEDController *)self replyQueue];
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_88;
            v91[3] = &unk_278F658A8;
            v74 = &v94;
            objc_copyWeak(&v94, &location);
            v75 = &v92;
            v92 = v51;
            v76 = &v93;
            v93 = v89;
            dispatch_async(v77, v91);
          }

          objc_destroyWeak(v74);
        }

        else
        {
          v78 = [(DEDController *)self log];
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
          }
        }

        objc_destroyWeak(&v127);
        _Block_object_dispose(buf, 8);

        goto LABEL_67;
      }

      v53 = DEDSessionStartLog();
      if (os_log_type_enabled(&v53->super, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 0;
        _os_log_impl(&dword_248AD7000, &v53->super, OS_LOG_TYPE_DEFAULT, "Bug session start failed. Could not find sharing outbound on client", v137, 2u);
      }
    }

    else
    {
      v53 = [(DEDController *)self log];
      if (os_log_type_enabled(&v53->super, OS_LOG_TYPE_ERROR))
      {
        [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
      }
    }

    goto LABEL_50;
  }

  v27 = DEDSessionStartLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
  }

  v28 = [(DEDController *)self replyQueue];
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_63;
  v128[3] = &unk_278F658A8;
  objc_copyWeak(&v131, &location);
  v129 = v12;
  v130 = v16;
  v29 = v16;
  dispatch_async(v28, v128);

  objc_destroyWeak(&v131);
LABEL_67:
  objc_destroyWeak(&location);

  v83 = *MEMORY[0x277D85DE8];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = +[DEDConfiguration sharedInstance];
    v6 = [v5 errorDomain];
    v11 = [v4 errorWithDomain:v6 code:102 userInfo:&unk_285B89D90];

    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    (v8)[2](v8, 0, v11);

    v9 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v9, [*(a1 + 40) isRemote], 0, 102);
  }

  else
  {
    v10 = DEDSessionStartLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1();
    }
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = +[DEDConfiguration sharedInstance];
    v6 = [v5 errorDomain];
    v11 = [v4 errorWithDomain:v6 code:103 userInfo:&unk_285B89DB8];

    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    (v8)[2](v8, 0, v11);

    v9 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v9, [*(a1 + 40) isRemote], 0, 103);
  }

  else
  {
    v10 = DEDSessionStartLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1();
    }
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [DEDAnalytics didCreateBugSessionForApp:0];
  v4 = DEDSessionStartLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) identifier];
    *buf = 138543618;
    v47 = v5;
    v48 = 2114;
    v49 = v3;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] in DEDDidStartSessionCompletion with sessionInfo [%{public}@]", buf, 0x16u);
  }

  v6 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v7 = DEDSessionStartLog();
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v47 = v9;
      _os_log_impl(&dword_248AD7000, &v7->super, OS_LOG_TYPE_DEFAULT, "Synchronizing extension identifiers [%{public}@]", buf, 0xCu);
    }

    v7 = [[DEDExtensionIdentifierManager alloc] initWithJSONString:v6];
    [*(*(*(a1 + 80) + 8) + 40) setIdentifierManager:v7];
  }

  else if (v8)
  {
    v10 = *(a1 + 40);
    *buf = 138543362;
    v47 = v10;
    _os_log_impl(&dword_248AD7000, &v7->super, OS_LOG_TYPE_DEFAULT, "DEDExtensionIdentifierManager not found in info dictionary for [%{public}@]. Cannot synchronize extension identifiers", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained insertNewSession:*(*(*(a1 + 80) + 8) + 40)];

  v12 = objc_loadWeakRetained((a1 + 88));
  v13 = [v12 isDaemon];

  if (v13)
  {
    [*(*(*(a1 + 80) + 8) + 40) save];
  }

  if ([*(a1 + 48) transport] == 1)
  {
    v14 = objc_loadWeakRetained((a1 + 88));
    v15 = [v14 replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_80;
    block[3] = &unk_278F65A10;
    objc_copyWeak(&v45, (a1 + 88));
    v16 = *(a1 + 40);
    v17 = *(a1 + 80);
    v42 = v16;
    v44 = v17;
    v43 = *(a1 + 56);
    dispatch_async(v15, block);

    v18 = &v45;
LABEL_20:
    objc_destroyWeak(v18);
    goto LABEL_21;
  }

  if ([*(a1 + 48) transport] == 2)
  {
    v19 = objc_loadWeakRetained((a1 + 88));
    v20 = [v19 replyQueue];
    v21 = v37;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_81;
    v37[3] = &unk_278F658A8;
    objc_copyWeak(&v40, (a1 + 88));
    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    dispatch_async(v20, v37);

    v22 = v38;
LABEL_19:

    v18 = (v21 + 6);
    goto LABEL_20;
  }

  if ([*(a1 + 48) transport] == 4)
  {
    v23 = objc_loadWeakRetained((a1 + 88));
    v24 = [v23 replyQueue];
    v21 = v33;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2;
    v33[3] = &unk_278F658A8;
    objc_copyWeak(&v36, (a1 + 88));
    v34 = *(a1 + 72);
    v35 = *(a1 + 48);
    dispatch_async(v24, v33);

    v22 = v34;
    goto LABEL_19;
  }

  if ([*(a1 + 48) transport] == 3)
  {
    v25 = objc_loadWeakRetained((a1 + 88));
    v26 = [v25 replyQueue];
    v21 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3;
    v29[3] = &unk_278F658A8;
    objc_copyWeak(&v32, (a1 + 88));
    v30 = *(a1 + 72);
    v31 = *(a1 + 48);
    dispatch_async(v26, v29);

    v22 = v30;
    goto LABEL_19;
  }

  v28 = DEDSessionStartLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78_cold_1(a1);
  }

LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_80(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = [v4 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    v5[2](v5, *(*(*(a1 + 48) + 8) + 40), 0);

    v10 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v10, [*(a1 + 40) isRemote], 1, 0);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = DEDSessionStartLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session start returned but we have no completion block", buf, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_didStartBugSessionWithInfo:*(a1 + 40)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained idsConnection];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) address];
  [v2 ids_didStartBugSessionWithInfo:v3 forID:v4];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained sharingConnection];
  [v2 sharing_didStartBugSessionWithInfo:*(a1 + 32) forCaller:*(a1 + 40)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = (a1 + 32);
  v4 = [WeakRetained popDidStartSessionCompletionWithIdentifier:*(a1 + 32)];

  v5 = DEDSessionStartLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Replying with sessionSyncData [%{public}@]", &v9, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, *(a1 + 40));
  }

  else
  {
    v7 = DEDSessionStartLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84_cold_1(v3);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained xpcConnector];
  v5 = [v3 diagnosticextensionsdXPCInterface];

  v4 = [[DEDXPCOutbound alloc] initWithRemoteObject:v5];
  [*(*(*(a1 + 64) + 8) + 40) setWorker:v4];
  [v5 xpc_startBugSessionWithIdentifier:*(a1 + 32) configuration:*(a1 + 40) caller:*(a1 + 48) target:*(a1 + 56)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained idsConnection];
  [v2 ids_startBugSessionWithIdentifier:*(a1 + 32) configuration:*(a1 + 40) caller:*(a1 + 48) target:*(a1 + 56)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained sharingConnection];
  [v2 sharing_startBugSessionWithIdentifier:*(a1 + 32) configuration:*(a1 + 40) caller:*(a1 + 48) target:*(a1 + 56) fromInbound:*(a1 + 64)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    v6 = MEMORY[0x277CCA9B8];
    v7 = +[DEDConfiguration sharedInstance];
    v8 = [v7 errorDomain];
    v9 = [v6 errorWithDomain:v8 code:101 userInfo:0];
    (v5)[2](v5, 0, v9);

    v11 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v11, [*(a1 + 40) isRemote], 0, 101);
  }

  else
  {
    v10 = DEDSessionStartLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Session start failed, no completion block", buf, 2u);
    }
  }
}

- (void)didStartBugSessionWithInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(DEDController *)self replyQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__DEDController_didStartBugSessionWithInfo___block_invoke;
    v8[3] = &unk_278F658A8;
    objc_copyWeak(&v11, &location);
    v9 = v5;
    v10 = v4;
    dispatch_async(v6, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = DEDSessionStartLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDController didStartBugSessionWithInfo:];
    }
  }
}

void __44__DEDController_didStartBugSessionWithInfo___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained popDidStartSessionCompletionWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v3[2](v3, *(a1 + 40));
  }

  else
  {
    v4 = DEDSessionStartLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "started session, no completion block registered for session [%{public}@]", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didFinishSessionWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDController *)self recentlyFinishedSessions];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:5];
    [(DEDController *)self setRecentlyFinishedSessions:v6];
  }

  v7 = [(DEDController *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Did finish session [%{public}@]", &v10, 0xCu);
  }

  v8 = [(DEDController *)self recentlyFinishedSessions];
  [v8 addObject:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)induceTimeOutIfNeededAndReturnCanProceedWithDevice:(id)a3 sessionId:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (+[DEDUtils isInternalInstall](DEDUtils, "isInternalInstall") && (+[DEDPersistence sharedInstance](DEDPersistence, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 canProceedWithDevice:v6], v8, (v9 & 1) == 0))
  {
    v11 = [(DEDController *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 hashingKey];
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Inducing device timeout for device [%{public}@]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v13 = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__DEDController_induceTimeOutIfNeededAndReturnCanProceedWithDevice_sessionId___block_invoke;
    block[3] = &unk_278F658A8;
    objc_copyWeak(&v19, buf);
    v17 = v7;
    v18 = v6;
    dispatch_async(v13, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

void __78__DEDController_induceTimeOutIfNeededAndReturnCanProceedWithDevice_sessionId___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = +[DEDConfiguration sharedInstance];
    v6 = [v5 errorDomain];
    v16 = @"Error reason";
    v7 = MEMORY[0x277CCACA8];
    v8 = [*(a1 + 40) hashingKey];
    v9 = [v7 stringWithFormat:@"induced timeout for device [%@]", v8];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v4 errorWithDomain:v6 code:100 userInfo:v10];

    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = [v12 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    (v13)[2](v13, 0, v11);

    v14 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v14, [*(a1 + 40) isRemote], 0, 100);
  }

  else
  {
    v11 = DEDSessionStartLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)upgradeToClassCDataProtectionIfNeeded
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DEDUpgradedToClassC"];

  if (v3)
  {
    v4 = DEDSessionCleanupLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [DEDController upgradeToClassCDataProtectionIfNeeded];
    }
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = +[DEDConfiguration sharedInstance];
    v7 = [v6 identifier];
    v11 = [v5 stringWithFormat:@"%@.c-data-class-upgrade", v7];

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = v11;
    v10 = dispatch_queue_create([v11 UTF8String], v8);
    dispatch_async(v10, &__block_literal_global_102);
  }
}

void __54__DEDController_upgradeToClassCDataProtectionIfNeeded__block_invoke()
{
  v32 = *MEMORY[0x277D85DE8];
  v0 = DEDSessionCleanupLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEFAULT, "upgradeToClassCDataProtectionIfNeeded start", buf, 2u);
  }

  v1 = +[DEDConfiguration sharedInstance];
  v2 = [v1 dedDirectory];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v2;
  obj = [MEMORY[0x277D051E0] findAllItems:v2 includeDirs:1];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = *MEMORY[0x277CBE7F8];
    v7 = *MEMORY[0x277CBE7F0];
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = DEDSessionCleanupLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v9 lastPathComponent];
          *buf = 138543362;
          v30 = v12;
          _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Upgrading: [%{public}@]", buf, 0xCu);
        }

        v27 = v6;
        v28 = v7;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v21 = 0;
        [v9 setResourceValues:v13 error:&v21];
        v14 = v21;

        if (v14)
        {
          v15 = DEDSessionCleanupLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __54__DEDController_upgradeToClassCDataProtectionIfNeeded__block_invoke_cold_1(v26, v14);
          }
        }

        objc_autoreleasePoolPop(v10);
        v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v16 setBool:1 forKey:@"DEDUpgradedToClassC"];

        v17 = DEDSessionCleanupLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_DEFAULT, "upgradeToClassCDataProtectionIfNeeded end", buf, 2u);
        }

        ++v8;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)purgeStaleSessions:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = +[DEDConfiguration sharedInstance];
  v9 = [v8 identifier];
  v10 = [v7 stringWithFormat:@"%@.purge", v9];

  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v12 = dispatch_queue_create([v10 UTF8String], v11);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DEDController_purgeStaleSessions_completion___block_invoke;
  block[3] = &unk_278F65B20;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  dispatch_async(v12, block);
}

void __47__DEDController_purgeStaleSessions_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v3 = +[DEDConfiguration sharedInstance];
  v4 = [v3 identifier];
  v5 = [v4 stringByAppendingString:@"-cleanup"];

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[DEDActivity sharedInstance];
  v8 = [v7 newCleanupActivity];

  v9 = DEDSessionCleanupLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) count];
    *buf = 134217984;
    v20 = v10;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "[%lu] persisted sessions", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__DEDController_purgeStaleSessions_completion___block_invoke_112;
  v14[3] = &unk_278F65AF8;
  v15 = v6;
  v16 = *(a1 + 32);
  v17 = v2;
  v18 = *(a1 + 40);
  v11 = v2;
  v12 = v6;
  os_activity_apply(v8, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __47__DEDController_purgeStaleSessions_completion___block_invoke_112(id *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = DEDSessionCleanupLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v1, OS_LOG_TYPE_DEFAULT, "purge stale sessions begin", buf, 2u);
  }

  v2 = +[DEDConfiguration sharedInstance];
  v3 = [v2 dedDirectory];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v50 = [MEMORY[0x277D051E0] getDirectorySize:v3];
    v52 = v3;
    v7 = [MEMORY[0x277D051E0] lsDir:v3];
    v8 = [v7 ded_mapWithBlock:&__block_literal_global_116];

    v9 = DEDSessionCleanupLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 134217984;
      v68 = v10;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Found [%lu] session directories", buf, 0xCu);
    }

    v51 = v8;
    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v8];
    v54 = objc_alloc_init(DEDAttachmentHandler);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v12 = a1[5];
    v13 = [v12 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v64;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v64 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v63 + 1) + 8 * i);
          v18 = [v17 identifier];
          v19 = [(DEDAttachmentHandler *)v54 directoryForBugSessionIdentifier:v18];

          [v11 removeObject:v19];
          v20 = [v17 state];
          v21 = DEDSessionCleanupLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v17 identifier];
            v23 = v22;
            v24 = "Unknown";
            if ((v20 + 1) <= 9)
            {
              v24 = off_278F65B60[v20 + 1];
            }

            *buf = 138543618;
            v68 = v22;
            v69 = 2082;
            v70 = v24;
            _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] state: [%{public}s]", buf, 0x16u);
          }

          if (v20 == -1)
          {
            [DEDAnalytics didCompleteBugSessionWithState:2];
            [v17 cleanup];
            [a1[6] addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v14);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v60;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v60 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v59 + 1) + 8 * j);
          v31 = DEDSessionCleanupLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v30 lastPathComponent];
            *buf = 138543362;
            v68 = v32;
            _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_INFO, "will remove orphan session directory [%{public}@]", buf, 0xCu);
          }

          v33 = [MEMORY[0x277CCAA00] defaultManager];
          v58 = 0;
          [v33 removeItemAtURL:v30 error:&v58];
          v34 = v58;

          v35 = DEDSessionCleanupLog();
          v36 = v35;
          if (v34)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              __47__DEDController_purgeStaleSessions_completion___block_invoke_112_cold_1(v73, v30);
            }
          }

          else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v30 lastPathComponent];
            *buf = 138543362;
            v68 = v37;
            _os_log_impl(&dword_248AD7000, v36, OS_LOG_TYPE_DEFAULT, "did remove orphan session directory [%{public}@]", buf, 0xCu);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v27);
    }

    v3 = v52;
    v38 = [MEMORY[0x277D051E0] getDirectorySize:v52];
    v39 = v50 - v38;
    if (v50 != v38)
    {
      v40 = v38;
      v41 = DEDSessionCleanupLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [MEMORY[0x277CCA8E8] stringFromByteCount:v50 countStyle:0];
        v43 = [MEMORY[0x277CCA8E8] stringFromByteCount:v40 countStyle:0];
        v44 = [MEMORY[0x277CCA8E8] stringFromByteCount:v39 countStyle:0];
        *buf = 138543874;
        v68 = v42;
        v69 = 2114;
        v70 = v43;
        v71 = 2114;
        v72 = v44;
        _os_log_impl(&dword_248AD7000, v41, OS_LOG_TYPE_DEFAULT, "ded dir size before cleanup [%{public}@] after [%{public}@] diff [%{public}@]", buf, 0x20u);
      }

      v45 = DEDSessionCleanupLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [a1[6] count];
        v47 = [v25 count];
        *buf = 134218240;
        v68 = v46;
        v69 = 2048;
        v70 = v47;
        _os_log_impl(&dword_248AD7000, v45, OS_LOG_TYPE_DEFAULT, "Removed [%lu] sessions [%lu] orphan directories", buf, 0x16u);
      }
    }
  }

  v48 = DEDSessionCleanupLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v48, OS_LOG_TYPE_DEFAULT, "purge stale sessions end", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DEDController_purgeStaleSessions_completion___block_invoke_119;
  block[3] = &unk_278F653F8;
  v57 = a1[7];
  v56 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);

  v49 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 platform];
  v6 = [v5 isEqualToString:@"xros"];

  if (v6)
  {
    [v4 setPlatform:@"visionos"];
  }

  v7 = self;
  objc_sync_enter(v7);
  if ([v4 status] == 1)
  {
    v8 = [(DEDController *)v7 log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v67 = [v4 identifier];
      v65 = [v4 idsIdentifier];
      v63 = [v4 address];
      v62 = [v4 model];
      v61 = [v4 name];
      v60 = [v4 platform];
      v9 = [v4 deviceType];
      if ((v9 - 1) > 6)
      {
        v10 = "Unknown";
      }

      else
      {
        v10 = off_278F65BB0[v9 - 1];
      }

      v57 = v10;
      v59 = [v4 build];
      v21 = [v4 remoteTransport];
      if (v21 > 4)
      {
        v22 = "Unknown";
      }

      else
      {
        v22 = off_278F65C08[v21];
      }

      v56 = v22;
      v25 = [v4 transport];
      if (v25 > 4)
      {
        v26 = "Unknown";
      }

      else
      {
        v26 = off_278F65C08[v25];
      }

      v55 = v26;
      v27 = [v4 status];
      if ((v27 - 1) > 3)
      {
        v28 = "Unknown";
      }

      else
      {
        v28 = off_278F65BE8[v27 - 1];
      }

      v54 = v28;
      v58 = [v4 deviceClass];
      v29 = [v4 productType];
      v30 = [v4 color];
      v31 = [v4 enclosureColor];
      v32 = [v4 homeButtonType];
      v33 = [v4 isHomeKitResident];
      v34 = [v4 mediaSystemRole];
      v35 = [v4 capabilities];
      *buf = 138547971;
      *v72 = v67;
      *&v72[8] = 2114;
      *&v72[10] = v65;
      *&v72[18] = 2113;
      *&v72[20] = v63;
      v73 = 2114;
      v74 = v62;
      v75 = 2113;
      v76 = v61;
      v77 = 2114;
      v78 = v60;
      v79 = 2082;
      v80 = v57;
      v81 = 2114;
      v82 = v59;
      v83 = 2082;
      v84 = v56;
      v85 = 2082;
      v86 = v55;
      v87 = 2082;
      v88 = v54;
      v89 = 2114;
      v90 = v58;
      v91 = 2114;
      v92 = v29;
      v93 = 2114;
      v94 = v30;
      v95 = 2114;
      v96 = v31;
      v97 = 2048;
      v98 = v32;
      v99 = 1024;
      v100 = v33;
      v101 = 2048;
      v102 = v34;
      v103 = 2114;
      v104 = v35;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Device ready:\nidentifier: %{public}@\nidsIdentifier: %{public}@\naddress: %{private}@\nmodel: %{public}@\nname: %{private}@\nplatform: %{public}@\ndeviceType: %{public}s\nbuild: %{public}@\nremoteTransport: %{public}s\ntransport: %{public}s\nstatus: %{public}s\ndeviceClass: %{public}@\nproductType: %{public}@\ncolor: %{public}@\nenclosureColor: %{public}@\nhomeButtonType: %li\nisHomeKitResident: %d\nmediaSystemRole: %li\ncapabilities: %{public}@\n", buf, 0xBCu);
    }
  }

  else
  {
    v8 = [(DEDController *)v7 log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v68 = [v4 name];
      v11 = [v4 deviceType];
      if ((v11 - 1) > 6)
      {
        v12 = "Unknown";
      }

      else
      {
        v12 = off_278F65BB0[v11 - 1];
      }

      v64 = v12;
      v66 = [v4 build];
      v13 = [v4 productType];
      v14 = [v4 status] - 1;
      if (v14 > 3)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_278F65BE8[v14];
      }

      v16 = [v4 transport];
      if (v16 > 4)
      {
        v17 = "Unknown";
      }

      else
      {
        v17 = off_278F65C08[v16];
      }

      v18 = [v4 publicLogSafeIdentifier];
      v19 = [v4 remoteTransport];
      if (v19 > 4)
      {
        v20 = "Unknown";
      }

      else
      {
        v20 = off_278F65C08[v19];
      }

      v23 = [v4 address];
      v24 = [v4 idsIdentifier];
      *buf = 138480131;
      *v72 = v68;
      *&v72[8] = 2082;
      *&v72[10] = v64;
      *&v72[18] = 2114;
      *&v72[20] = v66;
      v73 = 2114;
      v74 = v13;
      v75 = 2082;
      v76 = v15;
      v77 = 2082;
      v78 = v17;
      v79 = 2114;
      v80 = v18;
      v81 = 2082;
      v82 = v20;
      v83 = 2113;
      v84 = v23;
      v85 = 2114;
      v86 = v24;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Will try to add device:\n%{private}@ - %{public}s %{public}@ (%{public}@) -- %{public}s \n%{public}s (%{public}@) \n%{public}s Remote: (%{private}@ - %{public}@)", buf, 0x66u);
    }
  }

  v36 = [v4 hashingKeyForTempDevice];
  v37 = [(DEDController *)v7 devices];
  v38 = [v37 objectForKeyedSubscript:v36];

  if (v38)
  {
    v39 = [(DEDController *)v7 log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [v38 publicLogSafeIdentifier];
      *buf = 138543619;
      *v72 = v40;
      *&v72[8] = 2113;
      *&v72[10] = v36;
      _os_log_impl(&dword_248AD7000, v39, OS_LOG_TYPE_INFO, "found temp device [%{public}@] for key [%{private}@]", buf, 0x16u);
    }

    v41 = [(DEDController *)v7 devices];
    [v41 removeObjectForKey:v36];
  }

  if ([v4 isTemporaryDevice])
  {
    v42 = [(DEDController *)v7 devices];
    v43 = [v42 allValues];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __27__DEDController_addDevice___block_invoke;
    v69[3] = &unk_278F65858;
    v70 = v4;
    v44 = [v43 ded_findWithBlock:v69];
  }

  else
  {
    v44 = 0;
  }

  v45 = [v4 hashingKey];
  if (v44)
  {
    v46 = [(DEDController *)v7 log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = [v4 transport];
      v48 = [v4 publicLogSafeIdentifier];
      v49 = [v44 description];
      *buf = 67109634;
      *v72 = v47;
      *&v72[4] = 2114;
      *&v72[6] = v48;
      *&v72[14] = 2114;
      *&v72[16] = v49;
      _os_log_impl(&dword_248AD7000, v46, OS_LOG_TYPE_INFO, "Not adding temp device [%i-%{public}@], already have [%{public}@]", buf, 0x1Cu);
    }
  }

  else
  {
    v50 = [(DEDController *)v7 devices];
    [v50 setObject:v4 forKeyedSubscript:v45];

    v46 = [(DEDController *)v7 log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v4 transport];
      v52 = [v4 publicLogSafeIdentifier];
      *buf = 67109378;
      *v72 = v51;
      *&v72[4] = 2114;
      *&v72[6] = v52;
      _os_log_impl(&dword_248AD7000, v46, OS_LOG_TYPE_DEFAULT, "Did add device [%i-%{public}@]", buf, 0x12u);
    }
  }

  [(DEDController *)v7 logDeviceCounts];
  objc_sync_exit(v7);

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t __27__DEDController_addDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteTransport];
  if (v4 == [*(a1 + 32) remoteTransport])
  {
    v5 = [v3 address];
    v6 = [*(a1 + 32) address];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)logDeviceCounts
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DEDController *)v2 devices];
  v4 = [v3 allValues];

  objc_sync_exit(v2);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = [v5 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) status];
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            ++v7;
          }

          else if (v13 == 4)
          {
            ++v6;
          }
        }

        else if (v13 == 1)
        {
          ++v9;
        }

        else if (v13 == 2)
        {
          ++v8;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v5 countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v10);
  }

  v14 = [(DEDController *)v2 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v21 = v9;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v6;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Devices: ready [%lu] needs pairing [%lu] waiting [%lu] not available [%lu]", buf, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)idsConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DEDController_idsConnection__block_invoke;
  block[3] = &unk_278F653D0;
  block[4] = self;
  if (idsConnection_onceToken != -1)
  {
    dispatch_once(&idsConnection_onceToken, block);
  }

  return idsConnection__idsConnection;
}

void __30__DEDController_idsConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Creating IDS connection", v5, 2u);
  }

  v3 = [[DEDIDSConnection alloc] initWithController:*(a1 + 32)];
  v4 = idsConnection__idsConnection;
  idsConnection__idsConnection = v3;
}

- (id)sharingConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DEDController_sharingConnection__block_invoke;
  block[3] = &unk_278F653D0;
  block[4] = self;
  if (sharingConnection_onceToken != -1)
  {
    dispatch_once(&sharingConnection_onceToken, block);
  }

  return sharingConnection__sharingConnection;
}

void __34__DEDController_sharingConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Creating Sharing connection", v5, 2u);
  }

  v3 = [[DEDSharingConnection alloc] initWithController:*(a1 + 32)];
  v4 = sharingConnection__sharingConnection;
  sharingConnection__sharingConnection = v3;
}

- (DEDClientProtocol)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);

  return WeakRetained;
}

- (DEDWorkerProtocol)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

- (DEDPairingProtocol)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

- (void)addDidStartSessionCompletion:(id)a3 withIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(v7);
  v8 = [(DEDController *)self sessionDidStartBlocks];
  v9 = MEMORY[0x24C1E5320](v10);
  [v8 setObject:v9 forKey:v6];

  objc_sync_exit(v7);
}

- (id)popDidStartSessionCompletionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(v5);
  v6 = [(DEDController *)self sessionDidStartBlocks];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(DEDController *)self sessionDidStartBlocks];
    [v8 removeObjectForKey:v4];
  }

  else
  {
    v8 = DEDSessionStartLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "tried to pop a nil session did start block", v11, 2u);
    }
  }

  objc_sync_exit(v5);
  v9 = MEMORY[0x24C1E5320](v7);

  return v9;
}

- (void)addSessionStartCompletion:(id)a3 withIdentifier:(id)a4 configuration:(id)a5 targetDevice:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(v13);
  v14 = [(DEDController *)self sessionStartBlocks];
  v15 = MEMORY[0x24C1E5320](v16);
  [v14 setObject:v15 forKey:v10];

  [v11 bugSessionStartTimeout];
  [(DEDController *)self _timeOutSessionStartBlockWithIdentifier:v10 targetDevice:v12 timeout:?];
  objc_sync_exit(v13);
}

- (id)popSessionStartCompletionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(v5);
  v6 = [(DEDController *)self sessionStartBlocks];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(DEDController *)self sessionStartBlocks];
    [v8 removeObjectForKey:v4];
  }

  else
  {
    v8 = DEDSessionStartLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "tried to pop a nil session start block", v11, 2u);
    }
  }

  objc_sync_exit(v5);
  v9 = MEMORY[0x24C1E5320](v7);

  return v9;
}

- (BOOL)hasCompletionBlockWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDController *)self sessionStartBlocks];
  objc_sync_enter(v5);
  v6 = [(DEDController *)self sessionStartBlocks];
  v7 = [v6 objectForKey:v4];
  v8 = v7 != 0;

  objc_sync_exit(v5);
  return v8;
}

- (void)_timeOutSessionStartBlockWithIdentifier:(id)a3 targetDevice:(id)a4 timeout:(double)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(DEDController *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = v8;
    v23 = 2048;
    v24 = a5;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Session [%{public}@] will timeout after [%.1lf] seconds", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11 = dispatch_time(0, (a5 * 1000000000.0));
  WeakRetained = objc_loadWeakRetained(buf);
  v13 = [WeakRetained replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v20, buf);
  v18 = v8;
  v19 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_after(v11, v13, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained sessionStartBlocks];

  objc_sync_enter(v3);
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v3);

  if (v7)
  {
    v8 = DEDSessionStartLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke_cold_1((a1 + 32), v8);
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = +[DEDConfiguration sharedInstance];
    v11 = [v10 errorDomain];
    v12 = [v9 errorWithDomain:v11 code:100 userInfo:0];

    (v7)[2](v7, 0, v12);
    v13 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v13, [*(a1 + 40) remoteTransport] != 1, 0, 100);
  }
}

- (void)startPairSetupForDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tryPIN:forDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sharingDeviceForIncomingDevice:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[DEDController _sharingDeviceForIncomingDevice:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "%s%@ -> %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)insertNewSession:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, a2, v4, "Inserting bug session [%{public}@]", v6);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeSessionWithIdentifier:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, v0, v1, "Removing bug session [%{public}@]", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)abortSession:(uint64_t)a3 withCompletion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 136315138;
  v5 = "[DEDController abortSession:withCompletion:]";
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, a1, a3, "%s", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)abortSession:withCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connector:didLooseConnectionToProcessWithPid:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcInbound_forceRemoveNotificationOfType:identifier:hostIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcInbound_forceRemoveNotificationOfType:(uint64_t)a1 identifier:(NSObject *)a2 hostIdentifier:.cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = "EnhancedLogging";
  if (a1 != 3)
  {
    v2 = "Unknown";
  }

  if (!a1)
  {
    v2 = "unset";
  }

  v4 = 136446466;
  v5 = "[DEDController xpcInbound_forceRemoveNotificationOfType:identifier:hostIdentifier:]";
  v6 = 2082;
  v7 = v2;
  _os_log_fault_impl(&dword_248AD7000, a2, OS_LOG_TYPE_FAULT, "[%{public}s] for type [%{public}s] not handled", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)xpcInbound_startPairSetupForDevice:fromInbound:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)xpcInbound_promptPINForDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)xpcInbound_promptPINForDevice:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)xpcInbound_tryPIN:forDevice:fromInbound:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)xpcInbound_successPINForDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sharingInbound_promptPINForDevice:fromInbound:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sharingInbound_successPINForDevice:fromInbound:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_cold_1(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  *a2 = 138543362;
  *a3 = a1;
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, a4, a3, "idsInbound_devicesChanged: ignoring device [%{public}@]", a2);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:(os_log_t)log configuration:caller:target:fromInbound:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_248AD7000, log, OS_LOG_TYPE_ERROR, "cannot find device with [%{public}@]", buf, 0xCu);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didStartBugSessionWithInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__DEDController_upgradeToClassCDataProtectionIfNeeded__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error setting file protection key: %@");
}

void __47__DEDController_purgeStaleSessions_completion___block_invoke_112_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error deleting orphan dir [%{public}@]");
}

void __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "session start timed out for session id [%{public}@]", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end