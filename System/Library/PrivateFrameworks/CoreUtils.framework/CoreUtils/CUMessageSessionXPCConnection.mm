@interface CUMessageSessionXPCConnection
- (void)connectionInvalidated;
- (void)remoteRegisterRequestID:(id)a3 options:(id)a4;
- (void)remoteSendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6;
@end

@implementation CUMessageSessionXPCConnection

- (void)remoteSendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidated)
  {
    if (gLogCategory_CUMessageSession <= 60 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x3Cu)))
    {
      [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection remoteSendRequestID:options:request:responseHandler:]", 0x3Cu, "### SendRequestID '%@' from %#{pid} after invalidate\n", v13, v14, v15, v16, v22);
    }
  }

  else
  {
    sendRequestHandler = self->_server->_sendRequestHandler;
    if (sendRequestHandler)
    {
      sendRequestHandler[2](sendRequestHandler, v22, v10, v11, v12);
    }

    else if (gLogCategory_CUMessageSession <= 60 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x3Cu)))
    {
      [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection remoteSendRequestID:options:request:responseHandler:]", 0x3Cu, "### SendRequestID '%@' from %#{pid} with no handler\n", v18, v19, v20, v21, v22);
    }
  }
}

- (void)remoteRegisterRequestID:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidated)
  {
    if (gLogCategory_CUMessageSession <= 60 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x3Cu)))
    {
      [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection remoteRegisterRequestID:options:]", 0x3Cu, "### RegisterRequestID '%@' from %#{pid} after invalidate\n", v8, v9, v10, v11, v6);
    }
  }

  else if (self->_server->_registerRequestHandler)
  {
    registeredRequestIDs = self->_registeredRequestIDs;
    if (!registeredRequestIDs)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = self->_registeredRequestIDs;
      self->_registeredRequestIDs = v13;

      registeredRequestIDs = self->_registeredRequestIDs;
    }

    [(NSMutableSet *)registeredRequestIDs addObject:v6];
    registerRequestHandler = self->_server->_registerRequestHandler;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__CUMessageSessionXPCConnection_remoteRegisterRequestID_options___block_invoke;
    v20[3] = &unk_1E73A3630;
    v20[4] = self;
    v21 = v6;
    registerRequestHandler[2](registerRequestHandler, v21, v7, v20);
  }

  else if (gLogCategory_CUMessageSession <= 60 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x3Cu)))
  {
    [(NSXPCConnection *)self->_xpcCnx processIdentifier];
    LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection remoteRegisterRequestID:options:]", 0x3Cu, "### RegisterRequestID '%@' from %#{pid} with no handler\n", v16, v17, v18, v19, v6);
  }
}

void __65__CUMessageSessionXPCConnection_remoteRegisterRequestID_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v10 = *(a1 + 32);
  if (*(v10 + 16) == 1)
  {
    if (gLogCategory_CUMessageSession <= 60)
    {
      if (gLogCategory_CUMessageSession == -1)
      {
        if (!_LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x3Cu))
        {
          goto LABEL_7;
        }

        v10 = *(a1 + 32);
      }

      v11 = *(a1 + 40);
      [*(v10 + 40) processIdentifier];
      LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection remoteRegisterRequestID:options:]_block_invoke", 0x3Cu, "### RemoteRequestID '%@' to %#{pid} after invalidate\n", v12, v13, v14, v15, v11);
    }

LABEL_7:
    (*(v9 + 2))(v9, 4294960573, 0, 0);
    goto LABEL_8;
  }

  v16 = *(v10 + 40);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__CUMessageSessionXPCConnection_remoteRegisterRequestID_options___block_invoke_2;
  v20[3] = &unk_1E73A35E0;
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v21 = v17;
  v22 = v18;
  v19 = [v16 remoteObjectProxyWithErrorHandler:v20];
  [v19 remoteRequestID:*(a1 + 40) options:v7 request:v8 responseHandler:v9];

LABEL_8:
}

uint64_t __65__CUMessageSessionXPCConnection_remoteRegisterRequestID_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_CUMessageSession <= 60)
  {
    v11 = v3;
    if (gLogCategory_CUMessageSession != -1 || (v3 = _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x3Cu), v4 = v11, v3))
    {
      v5 = *(a1 + 32);
      [*(*(a1 + 40) + 40) processIdentifier];
      v3 = LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection remoteRegisterRequestID:options:]_block_invoke_2", 0x3Cu, "### RemoteRequestID '%@' to %#{pid} failed: %{error}\n", v6, v7, v8, v9, v5);
      v4 = v11;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)connectionInvalidated
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUMessageSession <= 20 && (gLogCategory_CUMessageSession != -1 || _LogCategory_Initialize(&gLogCategory_CUMessageSession, 0x14u)))
  {
    v3 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
    LogPrintF(&gLogCategory_CUMessageSession, "[CUMessageSessionXPCConnection connectionInvalidated]", 0x14u, "XPC connection invalidated from %#{pid}\n", v4, v5, v6, v7, v3);
  }

  self->_invalidated = 1;
  if (self->_server->_deregisterRequestHandler)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_registeredRequestIDs;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(self->_server->_deregisterRequestHandler + 2))();
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  [(NSMutableSet *)self->_registeredRequestIDs removeAllObjects];
}

@end