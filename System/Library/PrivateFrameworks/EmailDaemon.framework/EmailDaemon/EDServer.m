@interface EDServer
+ (OS_os_log)log;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (EDServer)initWithDaemonInterfaceFactory:(id)a3;
- (EDServer)initWithDaemonInterfaceFactory:(id)a3 listener:(id)a4;
- (NSArray)remoteClients;
- (id)messageReconciliationQueries;
- (id)threadReconciliationQueries;
- (void)addRemoteClient:(id)a3;
- (void)removeRemoteClient:(id)a3;
- (void)start;
- (void)test_tearDown;
@end

@implementation EDServer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__EDServer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_96 != -1)
  {
    dispatch_once(&log_onceToken_96, block);
  }

  v2 = log_log_96;

  return v2;
}

void __15__EDServer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_96;
  log_log_96 = v1;
}

- (EDServer)initWithDaemonInterfaceFactory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696B0D8]);
  v6 = [v5 initWithMachServiceName:*MEMORY[0x1E699A720]];
  v7 = [(EDServer *)self initWithDaemonInterfaceFactory:v4 listener:v6];

  return v7;
}

- (EDServer)initWithDaemonInterfaceFactory:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = EDServer;
  v9 = [(EDServer *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E699B7F0]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v10 initWithObject:v11];
    connectedClients = v9->_connectedClients;
    v9->_connectedClients = v12;

    objc_storeStrong(&v9->_daemonInterfaceFactory, a3);
    objc_storeStrong(&v9->_listener, a4);
    [(NSXPCListener *)v9->_listener setDelegate:v9];
  }

  return v9;
}

- (void)test_tearDown
{
  v18 = *MEMORY[0x1E69E9840];
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"EDServer.m" lineNumber:51 description:{@"%s can only be called from unit tests", "-[EDServer test_tearDown]"}];
  }

  v4 = [(EDServer *)self connectedClients];
  v5 = [v4 getObject];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v9++) test_tearDown];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [(EDServer *)self daemonInterfaceFactory];
  [v10 test_tearDown];

  [(NSXPCListener *)self->_listener invalidate];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[EDServer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    listener = self->_listener;
    v6 = 138412290;
    v7 = listener;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "starting listener %@", &v6, 0xCu);
  }

  [(NSXPCListener *)self->_listener resume];
  notify_post([*MEMORY[0x1E699A718] UTF8String]);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[EDServer log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "received a new connection request %@", buf, 0xCu);
  }

  v7 = [v5 valueForEntitlement:@"com.apple.private.email"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v7 = 0;
  }

  v8 = [v5 valueForEntitlement:@"com.apple.mobilemail.mailservices"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v8 = 0;
  }

  if ([v7 BOOLValue] & 1) != 0 || (objc_msgSend(v8, "BOOLValue"))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [EDRemoteClient alloc];
    v11 = [(EDServer *)self daemonInterfaceFactory];
    v12 = [(EDRemoteClient *)v10 initWithConnection:v5 daemonInterfaceFactory:v11 serverRemoteClientsProvider:self];

    v13 = +[EDRemoteClient exportedInterface];
    [v5 setExportedInterface:v13];

    [v5 setExportedObject:v12];
    objc_initWeak(buf, v12);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__EDServer_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_1E8250098;
    objc_copyWeak(&v25, buf);
    v24[4] = self;
    [v5 setInterruptionHandler:v24];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __47__EDServer_listener_shouldAcceptNewConnection___block_invoke_19;
    v21 = &unk_1E8250098;
    objc_copyWeak(&v23, buf);
    v22 = self;
    [v5 setInvalidationHandler:&v18];
    [(EDServer *)self addRemoteClient:v12, v18, v19, v20, v21];
    [v5 resume];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);

    objc_autoreleasePoolPop(v9);
    v14 = 1;
  }

  else
  {
    v15 = +[EDServer log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDServer listener:v15 shouldAcceptNewConnection:?];
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __47__EDServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDServer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Remote Client Interrupted %@", &v5, 0xCu);
  }

  [*(a1 + 32) removeRemoteClient:WeakRetained];
  v4 = *MEMORY[0x1E69E9840];
}

void __47__EDServer_listener_shouldAcceptNewConnection___block_invoke_19(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDServer log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Remote Client Invalidated %@", &v5, 0xCu);
  }

  [*(a1 + 32) removeRemoteClient:WeakRetained];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)addRemoteClient:(id)a3
{
  v4 = a3;
  v5 = [(EDServer *)self connectedClients];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__EDServer_addRemoteClient___block_invoke;
  v7[3] = &unk_1E82536A0;
  v6 = v4;
  v8 = v6;
  [v5 performWhileLocked:v7];
}

- (void)removeRemoteClient:(id)a3
{
  v4 = a3;
  v5 = [(EDServer *)self connectedClients];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__EDServer_removeRemoteClient___block_invoke;
  v7[3] = &unk_1E82536A0;
  v6 = v4;
  v8 = v6;
  [v5 performWhileLocked:v7];
}

- (id)messageReconciliationQueries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  v2 = [(EDServer *)self connectedClients];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__EDServer_messageReconciliationQueries__block_invoke;
  v5[3] = &unk_1E82564D0;
  v5[4] = &v6;
  [v2 performWhileLocked:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__EDServer_messageReconciliationQueries__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 ef_compactMap:&__block_literal_global_86];
  v4 = [v3 ef_flatten];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)threadReconciliationQueries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  v2 = [(EDServer *)self connectedClients];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EDServer_threadReconciliationQueries__block_invoke;
  v5[3] = &unk_1E82564D0;
  v5[4] = &v6;
  [v2 performWhileLocked:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__EDServer_threadReconciliationQueries__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 ef_compactMap:&__block_literal_global_115];
  v4 = [v3 ef_flatten];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (NSArray)remoteClients
{
  v2 = [(EDServer *)self connectedClients];
  v3 = [v2 getObject];

  return v3;
}

@end