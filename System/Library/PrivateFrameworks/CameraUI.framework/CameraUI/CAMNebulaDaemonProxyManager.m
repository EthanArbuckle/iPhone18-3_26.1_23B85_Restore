@interface CAMNebulaDaemonProxyManager
+ (id)_daemonProtocolInterface;
- (CAMNebulaDaemonIrisClientProtocol)irisClientDelegate;
- (CAMNebulaDaemonProxyManager)init;
- (CAMNebulaDaemonTimelapseClientProtocol)timelapseClientDelegate;
- (void)_closeConnectionToDaemon;
- (void)_ensureConnectionToDaemon;
- (void)_getProxyForExecutingBlock:(id)a3;
- (void)closeConnectionToDaemon;
- (void)enqueueIrisVideoJobs:(id)a3;
- (void)ensureConnectionToDaemon;
- (void)finishCaptureForTimelapseWithUUID:(id)a3;
- (void)forceStopTimelapseCaptureWithReasons:(int64_t)a3;
- (void)nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:(id)a3;
- (void)performCrashRecoveryIfNeededForceEndLastTimelapseSession:(BOOL)a3;
- (void)resumeTimelapseWithUUID:(id)a3;
- (void)startTimelapseWithUUID:(id)a3;
- (void)stopTimelapseWithUUID:(id)a3;
- (void)updatePendingWorkFromDiskForceEndLastSession:(BOOL)a3;
- (void)updateTimelapseWithUUID:(id)a3;
@end

@implementation CAMNebulaDaemonProxyManager

- (CAMNebulaDaemonProxyManager)init
{
  v6.receiver = self;
  v6.super_class = CAMNebulaDaemonProxyManager;
  v2 = [(CAMNebulaDaemonProxyManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.camera.nebulad.proxy", 0);
    queue = v2->__queue;
    v2->__queue = v3;
  }

  return v2;
}

- (void)ensureConnectionToDaemon
{
  queue = self->__queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CAMNebulaDaemonProxyManager_ensureConnectionToDaemon__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)closeConnectionToDaemon
{
  queue = self->__queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CAMNebulaDaemonProxyManager_closeConnectionToDaemon__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_ensureConnectionToDaemon
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->__queue);
  connection = self->__connection;
  ++self->__connectionCount;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assetsd.nebulad" options:4096];
    v5 = self->__connection;
    self->__connection = v4;

    v6 = [objc_opt_class() _daemonProtocolInterface];
    [(NSXPCConnection *)self->__connection setRemoteObjectInterface:v6];
    v7 = [objc_opt_class() _clientProtocolInterface];
    [(NSXPCConnection *)self->__connection setExportedInterface:v7];
    [(NSXPCConnection *)self->__connection setExportedObject:self];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __56__CAMNebulaDaemonProxyManager__ensureConnectionToDaemon__block_invoke;
    v12 = &unk_1E76F8580;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->__connection setInterruptionHandler:&v9];
    [(NSXPCConnection *)self->__connection setInvalidationHandler:&__block_literal_global_35, v9, v10, v11, v12];
    [(NSXPCConnection *)self->__connection _setQueue:self->__queue];
    [(NSXPCConnection *)self->__connection resume];
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = @"com.apple.assetsd.nebulad";
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Opening new connection to %{public}@", buf, 0xCu);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __56__CAMNebulaDaemonProxyManager__ensureConnectionToDaemon__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"com.apple.assetsd.nebulad";
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Connection with %{public}@ was interrupted", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pingAfterInterruption];
}

void __56__CAMNebulaDaemonProxyManager__ensureConnectionToDaemon__block_invoke_3()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 138543362;
    v2 = @"com.apple.assetsd.nebulad";
    _os_log_impl(&dword_1A3640000, v0, OS_LOG_TYPE_DEFAULT, "Connection with %{public}@ was invalidated. System is likely trying to shut down", &v1, 0xCu);
  }
}

- (void)_closeConnectionToDaemon
{
  dispatch_assert_queue_V2(self->__queue);
  connectionCount = self->__connectionCount;
  self->__connectionCount = connectionCount - 1;
  if (connectionCount <= 1)
  {
    connection = self->__connection;
    if (connection)
    {
      v5 = connection;
      v6 = self->__connection;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__CAMNebulaDaemonProxyManager__closeConnectionToDaemon__block_invoke;
      v10[3] = &unk_1E76F77B0;
      v11 = v5;
      v7 = v5;
      [(NSXPCConnection *)v6 addBarrierBlock:v10];
      v8 = self->__connection;
      self->__connection = 0;
    }

    else
    {
      v7 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Trying to close a nil connection", &v9, 2u);
      }
    }
  }
}

uint64_t __55__CAMNebulaDaemonProxyManager__closeConnectionToDaemon__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"com.apple.assetsd.nebulad";
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Closing connection to %{public}@", &v4, 0xCu);
  }

  [*(a1 + 32) setDelegate:0];
  [*(a1 + 32) setInterruptionHandler:0];
  [*(a1 + 32) setInvalidationHandler:0];
  return [*(a1 + 32) invalidate];
}

+ (id)_daemonProtocolInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F173BC28];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_enqueueIrisVideoJobs_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_getProxyForExecutingBlock:(id)a3
{
  v4 = a3;
  queue = self->__queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CAMNebulaDaemonProxyManager__getProxyForExecutingBlock___block_invoke;
  v7[3] = &unk_1E76F7E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__CAMNebulaDaemonProxyManager__getProxyForExecutingBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureConnectionToDaemon];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v2 = *(*(a1 + 32) + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CAMNebulaDaemonProxyManager__getProxyForExecutingBlock___block_invoke_75;
  v8[3] = &unk_1E76FA378;
  v8[4] = &v9;
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, v10[5]);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CAMNebulaDaemonProxyManager__getProxyForExecutingBlock___block_invoke_77;
  v7[3] = &unk_1E76F77B0;
  v7[4] = v5;
  dispatch_async(v6, v7);

  _Block_object_dispose(&v9, 8);
}

void __58__CAMNebulaDaemonProxyManager__getProxyForExecutingBlock___block_invoke_75(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Error getting proxy object %{public}@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)startTimelapseWithUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CAMNebulaDaemonProxyManager_startTimelapseWithUUID___block_invoke;
  v6[3] = &unk_1E76FBA98;
  v7 = v4;
  v5 = v4;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v6];
}

- (void)resumeTimelapseWithUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CAMNebulaDaemonProxyManager_resumeTimelapseWithUUID___block_invoke;
  v6[3] = &unk_1E76FBA98;
  v7 = v4;
  v5 = v4;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v6];
}

- (void)updateTimelapseWithUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__CAMNebulaDaemonProxyManager_updateTimelapseWithUUID___block_invoke;
  v6[3] = &unk_1E76FBA98;
  v7 = v4;
  v5 = v4;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v6];
}

- (void)finishCaptureForTimelapseWithUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CAMNebulaDaemonProxyManager_finishCaptureForTimelapseWithUUID___block_invoke;
  v6[3] = &unk_1E76FBA98;
  v7 = v4;
  v5 = v4;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v6];
}

- (void)stopTimelapseWithUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CAMNebulaDaemonProxyManager_stopTimelapseWithUUID___block_invoke;
  v6[3] = &unk_1E76FBA98;
  v7 = v4;
  v5 = v4;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v6];
}

- (void)updatePendingWorkFromDiskForceEndLastSession:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__CAMNebulaDaemonProxyManager_updatePendingWorkFromDiskForceEndLastSession___block_invoke;
  v3[3] = &__block_descriptor_33_e47_v24__0___CAMNebulaDaemonProtocol__8__NSError_16l;
  v4 = a3;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v3];
}

- (void)forceStopTimelapseCaptureWithReasons:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__CAMNebulaDaemonProxyManager_forceStopTimelapseCaptureWithReasons___block_invoke;
  v3[3] = &unk_1E76F7A38;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __68__CAMNebulaDaemonProxyManager_forceStopTimelapseCaptureWithReasons___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained forceStopTimelapseCaptureWithReasons:*(a1 + 40)];
}

- (void)enqueueIrisVideoJobs:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CAMNebulaDaemonProxyManager_enqueueIrisVideoJobs___block_invoke;
  v6[3] = &unk_1E76FBA98;
  v7 = v4;
  v5 = v4;
  [(CAMNebulaDaemonProxyManager *)self _getProxyForExecutingBlock:v6];
}

- (void)nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__CAMNebulaDaemonProxyManager_nebulaDaemonDidCompleteLocalVideoPersistenceWithResult___block_invoke;
  v6[3] = &unk_1E76F7960;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __86__CAMNebulaDaemonProxyManager_nebulaDaemonDidCompleteLocalVideoPersistenceWithResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained nebulaDaemonDidCompleteLocalVideoPersistenceWithResult:*(a1 + 40)];
}

- (void)performCrashRecoveryIfNeededForceEndLastTimelapseSession:(BOOL)a3
{
  v3 = a3;
  if (+[CAMTimelapseDiskUtilities hasPendingWork])
  {
    [(CAMNebulaDaemonProxyManager *)self updatePendingWorkFromDiskForceEndLastSession:v3];
  }

  if (+[CAMIrisDiskUtilities hasPendingWork])
  {

    [(CAMNebulaDaemonProxyManager *)self performIrisCrashRecovery];
  }
}

- (CAMNebulaDaemonTimelapseClientProtocol)timelapseClientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_timelapseClientDelegate);

  return WeakRetained;
}

- (CAMNebulaDaemonIrisClientProtocol)irisClientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_irisClientDelegate);

  return WeakRetained;
}

@end