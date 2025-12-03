@interface MTSessionServer
- (BOOL)_isSystemReady;
- (MTSessionServer)initWithCoordinator:(id)coordinator;
- (id)_systemNotReadyError;
- (id)gatherDiagnostics;
- (void)endAlertingSession;
- (void)handleSystemReady;
- (void)printDiagnostics;
- (void)startListening;
- (void)stopListening;
@end

@implementation MTSessionServer

- (void)endAlertingSession
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ ending alerting session", &v5, 0xCu);
  }

  [(MTActivityCoordinator *)self->_coordinator endAlertingSession];
  v4 = *MEMORY[0x1E69E9840];
}

- (MTSessionServer)initWithCoordinator:(id)coordinator
{
  v21 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = MTSessionServer;
  v6 = [(MTSessionServer *)&v18 init];
  if (v6)
  {
    v7 = MTLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v8 = MTSessionClientInterface();
    v9 = MTSessionServerInterface();
    v10 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.sessionserver" remoteObjectInterface:v8 exportedObject:v6 exportedObjectInterface:v9 lifecycleNotification:@"com.apple.MTSessionServer.wakeup" requiredEntitlement:@"com.apple.private.mobiletimerd" options:0];

    v11 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTSessionServer.ready-queue", +[MTScheduler defaultPriority]);
    serializer = v6->_serializer;
    v6->_serializer = v11;

    v13 = [MTXPCConnectionListenerProvider providerWithConnectionInfo:v10 errorHandler:0];
    connectionListenerProvider = v6->_connectionListenerProvider;
    v6->_connectionListenerProvider = v13;
    v15 = v13;

    objc_storeStrong(&v6->_coordinator, coordinator);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)startListening
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Starting %{public}@", &v6, 0xCu);
  }

  connectionListenerProvider = [(MTSessionServer *)self connectionListenerProvider];
  [connectionListenerProvider startListening];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopListening
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping %{public}@", &v6, 0xCu);
  }

  connectionListenerProvider = [(MTSessionServer *)self connectionListenerProvider];
  [connectionListenerProvider stopListening];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleSystemReady
{
  serializer = [(MTSessionServer *)self serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__MTSessionServer_handleSystemReady__block_invoke;
  v4[3] = &unk_1E7B0C9D8;
  v4[4] = self;
  [serializer performBlock:v4];
}

void __36__MTSessionServer_handleSystemReady__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "System is ready: %{public}@.  Will post MTSessionServerReadyNotification.", &v6, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 postNotificationName:@"com.apple.MTSessionServer.ready" object:0 userInfo:0 deliverImmediately:1];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_systemNotReadyError
{
  v2 = MTLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(MTSessionServer *)v2 _systemNotReadyError];
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimerd.MTSessionServer" code:1 userInfo:0];

  return v3;
}

- (BOOL)_isSystemReady
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(MTSessionServer *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MTSessionServer__isSystemReady__block_invoke;
  v7[3] = &unk_1E7B0CB10;
  v9 = &v10;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  [serializer performBlock:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(serializer) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return serializer;
}

- (void)printDiagnostics
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTSessionServer-----", &v10, 2u);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSessionServer _isSystemReady](self, "_isSystemReady")}];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "System Ready: %@", &v10, 0xCu);
  }

  v6 = MTLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    connectionListenerProvider = [(MTSessionServer *)self connectionListenerProvider];
    connectedClients = [connectionListenerProvider connectedClients];
    v10 = 138543362;
    v11 = connectedClients;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Clients: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"Session system ready";
  if ([(MTSessionServer *)self _isSystemReady])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v11[1] = @"Session clients";
  v12[0] = v3;
  connectionListenerProvider = [(MTSessionServer *)self connectionListenerProvider];
  connectedClients = [connectionListenerProvider connectedClients];
  v6 = [connectedClients valueForKey:@"processName"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end