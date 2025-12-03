@interface CUXPCAgent
- (BOOL)activateDirectAndReturnError:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CUXPCAgent)init;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_connectionInvalidated:(id)invalidated;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation CUXPCAgent

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcCnx = self->_xpcCnx;
  if (!xpcCnx)
  {
    if ([(NSMutableSet *)self->_xpcCnxSet count]>= 2)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 60)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x3Cu))
          {
            goto LABEL_8;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUXPCAgent remoteObjectProxyWithErrorHandler:]", 0x3Cu, "### Multiple connections...using arbitrary one\n", v7, v8, v9, v10, v15);
      }
    }

LABEL_8:
    anyObject = [(NSMutableSet *)self->_xpcCnxSet anyObject];
    v13 = anyObject;
    if (anyObject)
    {
      v6 = [*(anyObject + 24) remoteObjectProxyWithErrorHandler:handlerCopy];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_12;
  }

  v6 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:handlerCopy];
LABEL_12:

  return v6;
}

- (id)remoteObjectProxy
{
  xpcCnx = self->_xpcCnx;
  if (!xpcCnx)
  {
    if ([(NSMutableSet *)self->_xpcCnxSet count]>= 2)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 60)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x3Cu))
          {
            goto LABEL_8;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUXPCAgent remoteObjectProxy]", 0x3Cu, "### Multiple connections...using arbitrary one\n", v5, v6, v7, v8, v13);
      }
    }

LABEL_8:
    anyObject = [(NSMutableSet *)self->_xpcCnxSet anyObject];
    v11 = anyObject;
    if (anyObject)
    {
      remoteObjectProxy = [*(anyObject + 24) remoteObjectProxy];
    }

    else
    {
      remoteObjectProxy = 0;
    }

    goto LABEL_12;
  }

  remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
LABEL_12:

  return remoteObjectProxy;
}

- (void)_connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcCnxSet removeObject:invalidatedCopy];
  connectionEndedHandler = self->_connectionEndedHandler;
  if (connectionEndedHandler)
  {
    connectionEndedHandler[2](connectionEndedHandler, invalidatedCopy);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = objc_alloc_init(CUXPCAgentConnection);
  objc_storeStrong(&v7->_agent, self);
  objc_storeStrong(&v7->_dispatchQueue, self->_dispatchQueue);
  objc_storeStrong(&v7->_xpcCnx, connection);
  xpcCnxSet = self->_xpcCnxSet;
  if (!xpcCnxSet)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = self->_xpcCnxSet;
    self->_xpcCnxSet = v9;

    xpcCnxSet = self->_xpcCnxSet;
  }

  [(NSMutableSet *)xpcCnxSet addObject:v7];
  [connectionCopy _setQueue:self->_dispatchQueue];
  [connectionCopy setExportedInterface:self->_exportedInterface];
  [connectionCopy setExportedObject:self->_exportedObject];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__CUXPCAgent_listener_shouldAcceptNewConnection___block_invoke;
  v20[3] = &unk_1E73A49F0;
  v20[4] = self;
  v11 = v7;
  v21 = v11;
  [connectionCopy setInvalidationHandler:v20];
  [connectionCopy setRemoteObjectInterface:self->_remoteObjectInterface];
  [connectionCopy resume];
  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 != -1)
    {
LABEL_5:
      processIdentifier = [connectionCopy processIdentifier];
      LogPrintF(ucat, "[CUXPCAgent listener:shouldAcceptNewConnection:]", 0x14u, "XPC connection started from %#{pid}\n", v14, v15, v16, v17, processIdentifier);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x14u))
    {
      ucat = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_7:
  connectionStartedHandler = self->_connectionStartedHandler;
  if (connectionStartedHandler)
  {
    connectionStartedHandler[2](connectionStartedHandler, v11);
  }

  return 1;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x3Cu))
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUXPCAgent _invalidated]", 0x3Cu, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v18);
    }
  }

LABEL_7:
  if (!self->_xpcCnx && !self->_xpcListener)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    connectionStartedHandler = self->_connectionStartedHandler;
    self->_connectionStartedHandler = 0;

    connectionEndedHandler = self->_connectionEndedHandler;
    self->_connectionEndedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v12 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    listenerEndpoint = self->_listenerEndpoint;
    self->_listenerEndpoint = 0;

    exportedInterface = self->_exportedInterface;
    self->_exportedInterface = 0;

    exportedObject = self->_exportedObject;
    self->_exportedObject = 0;

    remoteObjectInterface = self->_remoteObjectInterface;
    self->_remoteObjectInterface = 0;

    v17 = self->_exportedInterface;
    self->_exportedInterface = 0;

    self->_invalidateDone = 1;
  }
}

- (void)_invalidate
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUXPCAgent _invalidate]", 0x1Eu, "Invalidate\n", v2, v3, v4, v5, v15);
  }

LABEL_6:
  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(NSMutableSet *)self->_xpcCnxSet copy];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CUXPCAgent *)self _connectionInvalidated:*(*(&v15 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSMutableSet *)self->_xpcCnxSet removeAllObjects];
  xpcCnxSet = self->_xpcCnxSet;
  self->_xpcCnxSet = 0;

  [(NSXPCConnection *)self->_xpcCnx invalidate];
  [(CUXPCAgent *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CUXPCAgent_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUXPCAgent _interrupted]", 0x1Eu, "Interrupted\n", v3, v4, v5, v6, v10);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v9 = *(interruptionHandler + 2);

    v9();
  }
}

- (BOOL)activateDirectAndReturnError:(id *)error
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUXPCAgent activateDirectAndReturnError:]", 0x1Eu, "Activate\n", v3, v4, v5, v6, v28[0]);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = self->_listenerEndpoint;
  if (v16)
  {
    if (!self->_xpcCnx)
    {
      v17 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v16];
      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = v17;

      [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
      [(NSXPCConnection *)self->_xpcCnx setExportedInterface:self->_exportedInterface];
      [(NSXPCConnection *)self->_xpcCnx setExportedObject:self->_exportedObject];
      [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:self->_remoteObjectInterface];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __43__CUXPCAgent_activateDirectAndReturnError___block_invoke;
      v29[3] = &unk_1E73A4F68;
      v29[4] = self;
      [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v29];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __43__CUXPCAgent_activateDirectAndReturnError___block_invoke_2;
      v28[3] = &unk_1E73A4F68;
      v28[4] = self;
      [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v28];
      [(NSXPCConnection *)self->_xpcCnx resume];
LABEL_10:
      v23 = 0;
      v24 = 0;
      goto LABEL_11;
    }
  }

  else if (!self->_xpcListener)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    xpcListener = self->_xpcListener;
    self->_xpcListener = anonymousListener;

    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    endpoint = [(NSXPCListener *)self->_xpcListener endpoint];
    listenerEndpoint = self->_listenerEndpoint;
    self->_listenerEndpoint = endpoint;

    goto LABEL_10;
  }

  v26 = NSErrorWithOSStatusF(4294960575, "Activate already called", v10, v11, v12, v13, v14, v15, v28[0]);
  v24 = v26;
  v23 = v26 != 0;
  if (error && v26)
  {
    v27 = v26;
    *error = v24;
    v23 = 1;
  }

LABEL_11:

  return !v23;
}

uint64_t __43__CUXPCAgent_activateDirectAndReturnError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUXPCAgent activateDirectAndReturnError:]_block_invoke_2", 0x1Eu, "Invalidated\n", a5, a6, a7, a8, v15);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 16);
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = *(v9 + 24);
  *(v9 + 24) = 0;

  v13 = *(a1 + 32);

  return [v13 _invalidated];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CUXPCAgent_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __37__CUXPCAgent_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 activateDirectAndReturnError:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADEA998;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUXPCAgent;
  [(CUXPCAgent *)&v4 dealloc];
}

- (CUXPCAgent)init
{
  v4.receiver = self;
  v4.super_class = CUXPCAgent;
  v2 = [(CUXPCAgent *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUXPCAgent;
  }

  return v2;
}

@end