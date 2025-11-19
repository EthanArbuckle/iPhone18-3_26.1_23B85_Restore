@interface CUMessageSessionServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CUMessageSessionServer)init;
- (void)_connectionInvalidated:(id)a3;
- (void)activate;
- (void)invalidate;
@end

@implementation CUMessageSessionServer

- (void)_connectionInvalidated:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [v5 connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v5];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = objc_alloc_init(CUMessageSessionXPCConnection);
  objc_storeStrong(&v7->_server, self);
  objc_storeStrong(&v7->_dispatchQueue, self->_dispatchQueue);
  objc_storeStrong(&v7->_xpcCnx, a4);
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = self->_xpcConnections;
    self->_xpcConnections = v9;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v7];
  [v6 _setQueue:self->_dispatchQueue];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AD200];
  [v6 setExportedInterface:v11];

  [v6 setExportedObject:v7];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__CUMessageSessionServer_listener_shouldAcceptNewConnection___block_invoke;
  v20[3] = &unk_1E73A49F0;
  v20[4] = self;
  v12 = v7;
  v21 = v12;
  [v6 setInvalidationHandler:v20];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06ACBB8];
  [v6 setRemoteObjectInterface:v13];

  [v6 resume];
  if (gLogCategory_CUMessageSession <= 20 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x14u)))
  {
    v14 = [v6 processIdentifier];
    LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionServer listener:shouldAcceptNewConnection:]", 0x14u, "XPC connection started from %#{pid}\n", v15, v16, v17, v18, v14);
  }

  return 1;
}

- (void)invalidate
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUMessageSession <= 30 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionServer invalidate]", 0x1Eu, "Invalidate\n", v3, v4, v5, v6, v20);
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        *(v13 + 16) = 1;
        [*(v13 + 40) invalidate];
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v16 = self->_invalidationHandler;
  }

  else
  {
    v16 = 0;
  }

  self->_invalidationHandler = 0;

  registerRequestHandler = self->_registerRequestHandler;
  self->_registerRequestHandler = 0;

  deregisterRequestHandler = self->_deregisterRequestHandler;
  self->_deregisterRequestHandler = 0;

  sendRequestHandler = self->_sendRequestHandler;
  self->_sendRequestHandler = 0;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUMessageSession <= 30 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionServer activate]", 0x1Eu, "Activate\n", v3, v4, v5, v6, v17);
  }

  if (!self->_xpcListener)
  {
    v7 = [MEMORY[0x1E696B0D8] anonymousListener];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v7;

    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    v9 = objc_alloc_init(CUMessageSession);
    templateSession = self->_templateSession;
    self->_templateSession = v9;

    v11 = [(NSXPCListener *)self->_xpcListener endpoint];
    [(CUMessageSession *)self->_templateSession setListenerEndpoint:v11];

    v12 = [(CUMessageSession *)self->_templateSession listenerEndpoint];

    if (!v12 && gLogCategory_CUMessageSession <= 90 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x5Au)))
    {

      LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionServer activate]", 0x5Au, "### No XPC endpoint?\n", v13, v14, v15, v16, v19);
    }
  }
}

- (CUMessageSessionServer)init
{
  v4.receiver = self;
  v4.super_class = CUMessageSessionServer;
  v2 = [(CUMessageSessionServer *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
  }

  return v2;
}

@end