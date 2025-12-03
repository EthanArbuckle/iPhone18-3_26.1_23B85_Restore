@interface CAMNebulaDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CAMNebulaDaemon)init;
- (id)allowedProtocolForClientAccess:(id)access;
- (void)daemonConnectionManagerHasBeenDisconnected:(id)disconnected;
- (void)performPendingWorkAfterDelay:(double)delay;
- (void)persistenceController:(id)controller didGenerateVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request;
@end

@implementation CAMNebulaDaemon

- (CAMNebulaDaemon)init
{
  v20.receiver = self;
  v20.super_class = CAMNebulaDaemon;
  v2 = [(CAMNebulaDaemon *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Timelapse daemon started running", v19, 2u);
    }

    v4 = objc_alloc_init(CAMNebulaKeepAliveController);
    keepAliveController = v2->__keepAliveController;
    v2->__keepAliveController = v4;

    v6 = [[CAMPersistenceController alloc] initWithLocationController:0 burstController:0 protectionController:0 powerController:0 irisVideoController:0];
    persistenceController = v2->__persistenceController;
    v2->__persistenceController = v6;

    [(CAMPersistenceController *)v2->__persistenceController setResultDelegate:v2];
    v8 = [[CAMTimelapseBackendController alloc] initWithPersistenceController:v2->__persistenceController keepAliveController:v2->__keepAliveController];
    timelapseBackendController = v2->__timelapseBackendController;
    v2->__timelapseBackendController = v8;

    v10 = [[CAMNebulaIrisBackendController alloc] initWithPersistenceController:v2->__persistenceController keepAliveController:v2->__keepAliveController];
    irisBackendController = v2->__irisBackendController;
    v2->__irisBackendController = v10;

    [(CAMNebulaKeepAliveController *)v2->__keepAliveController removeKeepAliveFileIfNotKeptForAnyIdentifiers];
    [MEMORY[0x1E696B0D8] enableTransactions];
    array = [MEMORY[0x1E695DF70] array];
    connections = v2->__connections;
    v2->__connections = array;

    v14 = dispatch_queue_create("com.apple.assetsd.nebulad.daemon", 0);
    queue = v2->__queue;
    v2->__queue = v14;

    v16 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.assetsd.nebulad"];
    listener = v2->__listener;
    v2->__listener = v16;

    [(NSXPCListener *)v2->__listener setDelegate:v2];
    [(NSXPCListener *)v2->__listener _setQueue:v2->__queue];
    [(NSXPCListener *)v2->__listener resume];
  }

  return v2;
}

- (void)performPendingWorkAfterDelay:(double)delay
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    delayCopy = delay;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Timelapse daemon will check for pending work after %.2f seconds", buf, 0xCu);
  }

  v6 = os_transaction_create();
  v7 = dispatch_time(0, (delay * 1000000000.0));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__CAMNebulaDaemon_performPendingWorkAfterDelay___block_invoke;
  v9[3] = &unk_1E76F7960;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

void __48__CAMNebulaDaemon_performPendingWorkAfterDelay___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "Timelapse daemon checking for pending work", v5, 2u);
  }

  v3 = [*(a1 + 32) _timelapseBackendController];
  [v3 updatePendingWorkFromDiskForceEndLastSession:0];
  v4 = [*(a1 + 32) _irisBackendController];
  [v4 performIrisCrashRecoveryForceFileSystemCheck:0];
}

- (id)allowedProtocolForClientAccess:(id)access
{
  accessCopy = access;
  if ([accessCopy isEqual:@"camera"])
  {
    v4 = &protocolRef_CAMNebulaDaemonProtocol;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([accessCopy isEqual:@"photos"])
  {
    v4 = &protocolRef_CAMNebulaDaemonProtocolLimited;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v57 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.assetsd.nebulad.access"];
  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_10;
    }

    v10 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = connectionCopy;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.private.assetsd.nebulad.access";
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: value for entitlement %{public}@ is invalid", buf, 0x16u);
    }
  }

  v11 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = connectionCopy;
    *&buf[12] = 2114;
    *&buf[14] = @"com.apple.private.assetsd.nebulad.access";
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ has no valid entitlement for %{public}@. Will fallback on bundle identifier", buf, 0x16u);
  }

  v9 = 0;
  v7 = 0;
  v8 = 1;
LABEL_10:
  v36 = 0u;
  v37 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v35 = 0;
  *buf = v36;
  *&buf[16] = v37;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v12 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = connectionCopy;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ has no bundle identifier. Will fallback on process ID", buf, 0xCu);
    }

    processIdentifier = [connectionCopy processIdentifier];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    memset(buf, 0, sizeof(buf));
    if (proc_name(processIdentifier, buf, 0x100u))
    {
      v35 = CFStringCreateWithCString(0, buf, 0x8000100u);
      if (v35)
      {
        goto LABEL_23;
      }

      v14 = os_log_create("com.apple.camera", "Nebula");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *v38 = 0;
      v15 = "Can't decypher process name";
      v16 = v14;
      v17 = 2;
    }

    else
    {
      v14 = os_log_create("com.apple.camera", "Nebula");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        goto LABEL_23;
      }

      v18 = __error();
      v19 = strerror(*v18);
      *v38 = 138543618;
      v39 = connectionCopy;
      v40 = 2080;
      v41 = v19;
      v15 = "Can't get process name for %{public}@: %s";
      v16 = v14;
      v17 = 22;
    }

    _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, v15, v38, v17);
    goto LABEL_22;
  }

LABEL_23:
  v20 = v35;
  if (!v35)
  {
    v20 = CFRetain(@"anonymous");
    v35 = v20;
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_31:
    if (!v9)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if (!v8)
  {
    goto LABEL_31;
  }

LABEL_25:
  if (([(__CFString *)v20 isEqual:@"com.apple.camera"]& 1) != 0 || [(__CFString *)v20 isEqual:@"com.apple.MobileSMS"])
  {
    v21 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = @"camera";
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "Will use default camera access '%{public}@' for %{public}@", buf, 0x16u);
    }

    v7 = @"camera";
  }

  else
  {
    v31 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = connectionCopy;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.private.assetsd.nebulad.access";
      *&buf[22] = 2114;
      *&buf[24] = v20;
      _os_log_impl(&dword_1A3640000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ has no valid entitlement for %{public}@ and bundle id %{public}@ not accepted", buf, 0x20u);
    }

    v7 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_32:
  v22 = [(CAMNebulaDaemon *)self allowedProtocolForClientAccess:v7];
  v23 = os_log_create("com.apple.camera", "Nebula");
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      v25 = NSStringFromProtocol(v22);
      *buf = 138544130;
      *&buf[4] = connectionCopy;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2114;
      *&buf[24] = v25;
      LOWORD(v43) = 2114;
      *(&v43 + 2) = v7;
      _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "Accepting a new connection from %{public}@ (bundle identifier: %{public}@). Allowed protocol is %{public}@ (%{public}@)", buf, 0x2Au);
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@[%@]", v20, v7];
    v27 = [[CAMNebulaDaemonConnectionManager alloc] initWithConnection:connectionCopy name:v26 bundleIdentifier:v20 queue:self->__queue clientAccess:v7 allowedProtocol:v22];
    [(CAMNebulaDaemonConnectionManager *)v27 setDelegate:self];
    [(CAMNebulaDaemonConnectionManager *)v27 addTarget:self->__timelapseBackendController forProtocol:&unk_1F173BAC0];
    [(CAMNebulaDaemonConnectionManager *)v27 addTarget:self->__irisBackendController forProtocol:&unk_1F173BBC8];
    [(NSMutableArray *)self->__connections addObject:v27];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CAMNebulaDaemon_listener_shouldAcceptNewConnection___block_invoke;
    block[3] = &unk_1E76F7960;
    v33 = v27;
    selfCopy = self;
    v28 = v27;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v29 = 1;
    goto LABEL_42;
  }

  if (v24)
  {
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = connectionCopy;
    *&buf[22] = 2114;
    *&buf[24] = v20;
    _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "Unknown access type '%{public}@' from %{public}@ (%{public}@)", buf, 0x20u);
  }

LABEL_39:
  v22 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [CAMNebulaDaemon listener:connectionCopy shouldAcceptNewConnection:v22];
  }

  v29 = 0;
LABEL_42:

  return v29;
}

void __54__CAMNebulaDaemon_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientAccess];
  v3 = [v2 isEqualToString:@"camera"];

  if (v3)
  {
    v5 = [*(a1 + 40) _timelapseBackendController];
    [v5 handleClientConnection:*(a1 + 32)];
    v4 = [*(a1 + 40) _irisBackendController];
    [v4 handleClientConnection:*(a1 + 32)];
  }
}

- (void)daemonConnectionManagerHasBeenDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __62__CAMNebulaDaemon_daemonConnectionManagerHasBeenDisconnected___block_invoke;
  v9 = &unk_1E76F7960;
  v10 = disconnectedCopy;
  selfCopy = self;
  v5 = disconnectedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], &v6);
  [(NSMutableArray *)self->__connections removeObject:v5, v6, v7, v8, v9];
}

void __62__CAMNebulaDaemon_daemonConnectionManagerHasBeenDisconnected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientAccess];
  v3 = [v2 isEqualToString:@"camera"];

  if (v3)
  {
    v5 = [*(a1 + 40) _timelapseBackendController];
    [v5 handleClientDisconnection];
    v4 = [*(a1 + 40) _irisBackendController];
    [v4 handleClientDisconnection:*(a1 + 32)];
  }
}

- (void)persistenceController:(id)controller didGenerateVideoLocalPersistenceResult:(id)result forCaptureResult:(id)captureResult fromRequest:(id)request
{
  requestCopy = request;
  captureResultCopy = captureResult;
  resultCopy = result;
  controllerCopy = controller;
  if ([requestCopy type] == 1)
  {
    [(CAMNebulaDaemon *)self _timelapseBackendController];
  }

  else
  {
    [(CAMNebulaDaemon *)self _irisBackendController];
  }
  v14 = ;
  [v14 persistenceController:controllerCopy didGenerateVideoLocalPersistenceResult:resultCopy forCaptureResult:captureResultCopy fromRequest:requestCopy];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Refusing connection from %{public}@", &v2, 0xCu);
}

@end