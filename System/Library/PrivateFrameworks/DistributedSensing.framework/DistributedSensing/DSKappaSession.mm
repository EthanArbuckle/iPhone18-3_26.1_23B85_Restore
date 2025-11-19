@interface DSKappaSession
- (DSKappaSession)init;
- (DSKappaSession)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)_getXPCConnection;
- (void)_activate;
- (void)_activateXPC;
- (void)_activateXPCHandleReply:(id)a3;
- (void)_deviceChangedMessage:(id)a3;
- (void)_deviceFoundMessage:(id)a3;
- (void)_deviceLostMessage:(id)a3;
- (void)_handleXPCMessage:(id)a3;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidateXPC;
- (void)_invalidated;
- (void)_updateKappaCoordinationStatus:(unsigned __int8)a3;
- (void)_xpcEventHandler:(id)a3;
- (void)_xpcHandleCompletionBlockReply:(id)a3 error:(id *)a4;
- (void)activateWithCompletion:(id)a3;
- (void)encodeSelf:(id)a3;
- (void)invalidate;
- (void)updateKappaCoordinationStatus:(unsigned __int8)a3;
@end

@implementation DSKappaSession

- (DSKappaSession)init
{
  v3.receiver = self;
  v3.super_class = DSKappaSession;
  result = [(DSKappaSession *)&v3 init];
  if (result)
  {
    result->_coordinationStatus = 0;
  }

  return result;
}

- (DSKappaSession)initWithXPCObject:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = DSKappaSession;
  v7 = [(DSKappaSession *)&v21 init];
  if (!v7)
  {
    v19 = DSLogObjectForCategory_DSKappaSession();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "Allocation failed";
    goto LABEL_26;
  }

  if (MEMORY[0x24C1EF810](v6) != MEMORY[0x277D86468])
  {
    v19 = DSLogObjectForCategory_DSKappaSession();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "init with invalid dictionary";
    goto LABEL_26;
  }

  uint64 = xpc_dictionary_get_uint64(v6, "kDSCoordStatus");
  if (uint64 >= 0x100)
  {
    v19 = DSLogObjectForCategory_DSKappaSession();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "Error decoding coordination status";
    goto LABEL_26;
  }

  v9 = uint64;
  if (onceTokenDSKappaSession != -1)
  {
    [DSKappaSession initWithXPCObject:error:];
  }

  v10 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 > 5)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_278F858A0[v9];
    }

    *buf = 136315138;
    v23 = v11;
    _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_DEFAULT, "Coordination status %s", buf, 0xCu);
  }

  v7->_coordinationStatus = v9;
  v12 = xpc_dictionary_get_uint64(v6, "kDSTiebreaker");
  if (v12 >= 0x100)
  {
    v19 = DSLogObjectForCategory_DSKappaSession();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "Error decoding coordination status";
LABEL_26:
    _os_log_impl(&dword_249027000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
LABEL_27:

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
    if (a4)
    {
      v16 = v16;
      v15 = 0;
      *a4 = v16;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

  v13 = v12;
  if (onceTokenDSKappaSession != -1)
  {
    [DSKappaSession initWithXPCObject:error:];
  }

  v14 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v13;
    _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "Tie breaker: %llu", buf, 0xCu);
  }

  v7->_tiebreaker = v13;
  v15 = v7;
  v16 = 0;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeSelf:(id)a3
{
  v4 = a3;
  xdict = v4;
  if (self->_coordinationStatus)
  {
    xpc_dictionary_set_uint64(v4, "kDSCoordStatus", self->_coordinationStatus);
    v4 = xdict;
  }

  if (self->_tiebreaker)
  {
    xpc_dictionary_set_uint64(xdict, "kDSTiebreaker", self->_tiebreaker);
    v4 = xdict;
  }
}

- (void)activateWithCompletion:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (_os_feature_enabled_impl())
  {
    if (v5->_dispatchQueue)
    {
      if (!v5->_shouldActivate)
      {
        v5->_shouldActivate = 1;
        v12 = MEMORY[0x24C1EF510](v4);
        activateCompletionHandler = v5->_activateCompletionHandler;
        v5->_activateCompletionHandler = v12;

        dispatchQueue = v5->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__DSKappaSession_activateWithCompletion___block_invoke;
        block[3] = &unk_278F85808;
        block[4] = v5;
        dispatch_async(dispatchQueue, block);
        goto LABEL_21;
      }

      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v6 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Activate already called";
LABEL_19:
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      }
    }

    else
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v6 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Dispatch queue not set";
        goto LABEL_19;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Unsupported feature";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v8 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v9];

    if (onceTokenDSKappaSession != -1)
    {
      [DSKappaSession initWithXPCObject:error:];
    }

    v11 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_DEFAULT, "feature flag not enabled", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, v10);
    }
  }

LABEL_21:
  objc_sync_exit(v5);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (onceTokenDSKappaSession != -1)
  {
    DSLogObjectForCategory_DSKappaSession_cold_1();
  }

  v3 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Activate", buf, 2u);
  }

  if (self->_shouldInvalidate)
  {
    if (onceTokenDSKappaSession != -1)
    {
      [DSKappaSession initWithXPCObject:error:];
    }

    v4 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "Activate called after invalidate", v8, 2u);
    }

    v5 = MEMORY[0x24C1EF510](self->_activateCompletionHandler);
    activateCompletionHandler = self->_activateCompletionHandler;
    self->_activateCompletionHandler = 0;

    if (v5)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:6 userInfo:0];
      (v5)[2](v5, v7);
    }
  }

  else
  {
    [(DSKappaSession *)self _activateXPC];
  }
}

- (void)_activateXPC
{
  if (onceTokenDSKappaSession != -1)
  {
    DSLogObjectForCategory_DSKappaSession_cold_1();
  }

  v3 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Activate XPC", buf, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  [(DSKappaSession *)self encodeSelf:v4];
  xpc_dictionary_set_string(v4, "kDSXPCMsg", "kDSKappaActivate");
  v5 = [(DSKappaSession *)self _getXPCConnection];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__DSKappaSession__activateXPC__block_invoke;
  handler[3] = &unk_278F85830;
  handler[4] = self;
  xpc_connection_send_message_with_reply(v5, v4, dispatchQueue, handler);
}

- (void)_activateXPCHandleReply:(id)a3
{
  v7 = 0;
  [(DSKappaSession *)self _xpcHandleCompletionBlockReply:a3 error:&v7];
  v4 = v7;
  v5 = MEMORY[0x24C1EF510](self->_activateCompletionHandler);
  activateCompletionHandler = self->_activateCompletionHandler;
  self->_activateCompletionHandler = 0;

  if (v5)
  {
    (v5)[2](v5, v4);
  }
}

- (void)_xpcHandleCompletionBlockReply:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "kDSXPCMsg");
  if (!strcmp(string, "kDSXPCSuccess"))
  {
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v8 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "Activated", &v17, 2u);
    }

    v7 = 0;
    goto LABEL_23;
  }

  if (strcmp(string, "kDSXPCError"))
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = xpc_dictionary_get_value(v5, "kDSXPCErrorData");
  if (MEMORY[0x24C1EF810]() == MEMORY[0x277D86458])
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v9);
    if (bytes_ptr)
    {
      bytes_ptr = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes_ptr length:xpc_data_get_length(v9)];
      if (bytes_ptr)
      {
        v15 = MEMORY[0x277CCAAC8];
        v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
        v7 = [v15 unarchivedObjectOfClasses:v16 fromData:bytes_ptr error:0];

        if (v7)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    bytes_ptr = 0;
  }

  if (onceTokenDSKappaSession != -1)
  {
    DSLogObjectForCategory_DSKappaSession_cold_1();
  }

  v11 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_ERROR, "Error while unarchiving completion block error", &v17, 2u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
LABEL_17:
  if (onceTokenDSKappaSession != -1)
  {
    [DSKappaSession initWithXPCObject:error:];
  }

  v12 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "Failed to activate with error %@", &v17, 0xCu);
  }

  if (a4)
  {
LABEL_22:
    v13 = v7;
    *a4 = v7;
  }

LABEL_23:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateKappaCoordinationStatus:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_shouldActivate)
  {
    dispatchQueue = v4->_dispatchQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__DSKappaSession_updateKappaCoordinationStatus___block_invoke;
    v7[3] = &unk_278F85880;
    v8 = a3;
    v7[4] = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v6 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "Instance not activated", buf, 2u);
    }
  }

  objc_sync_exit(v4);
}

void __48__DSKappaSession_updateKappaCoordinationStatus___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 == v4[26])
  {
    v7 = v1;
    v8 = v2;
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v5 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "Already updated", v6, 2u);
    }
  }

  else
  {

    [v4 _updateKappaCoordinationStatus:?];
  }
}

- (void)_updateKappaCoordinationStatus:(unsigned __int8)a3
{
  if (self->_shouldInvalidate)
  {
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v3 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Update called after invalidate", buf, 2u);
    }
  }

  else
  {
    self->_coordinationStatus = a3;
    xdict = xpc_dictionary_create(0, 0, 0);
    [(DSKappaSession *)self encodeSelf:xdict];
    xpc_dictionary_set_string(xdict, "kDSXPCMsg", "kDSKappaUpdate");
    v5 = [(DSKappaSession *)self _getXPCConnection];
    xpc_connection_send_message(v5, xdict);
  }
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  dispatchQueue = v2->_dispatchQueue;
  if (dispatchQueue)
  {
    if (!v2->_shouldInvalidate)
    {
      v2->_shouldInvalidate = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__DSKappaSession_invalidate__block_invoke;
      block[3] = &unk_278F85808;
      block[4] = v2;
      dispatch_async(dispatchQueue, block);
      goto LABEL_13;
    }

    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v4 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Invalidate already called";
LABEL_11:
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v4 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Dispatch queue not set";
      goto LABEL_11;
    }
  }

LABEL_13:
  objc_sync_exit(v2);
}

- (void)_invalidate
{
  if (onceTokenDSKappaSession != -1)
  {
    DSLogObjectForCategory_DSKappaSession_cold_1();
  }

  v3 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", v4, 2u);
  }

  [(DSKappaSession *)self _invalidateXPC];
  [(DSKappaSession *)self _invalidated];
}

- (id)_getXPCConnection
{
  v2 = self;
  objc_sync_enter(v2);
  mach_service = v2->_xpcConnection;
  if (!mach_service)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.distributedsensingd", v2->_dispatchQueue, 0);
    objc_storeStrong(&v2->_xpcConnection, mach_service);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __35__DSKappaSession__getXPCConnection__block_invoke;
    handler[3] = &unk_278F85830;
    handler[4] = v2;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
  }

  objc_sync_exit(v2);

  return mach_service;
}

- (void)_invalidateXPC
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj->_xpcConnection;
  v3 = v2;
  if (v2)
  {
    xpc_connection_cancel(v2);
  }

  xpcConnection = obj->_xpcConnection;
  obj->_xpcConnection = 0;

  objc_sync_exit(obj);
}

- (void)_invalidated
{
  if (!self->_invalidateFinished)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    v4 = self;
    objc_sync_enter(v4);
    if (v4->_xpcConnection)
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v5 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_ERROR, "XPC connection not cleaned", buf, 2u);
      }

      objc_sync_exit(v4);
    }

    else
    {
      objc_sync_exit(v4);

      v4->_shouldInvalidate = 1;
      interruptionHandler = v4->_interruptionHandler;
      v4->_interruptionHandler = 0;

      v7 = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      self->_invalidateFinished = 1;
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v8 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "DSKappaSession Invalidated", v9, 2u);
      }
    }
  }
}

- (void)_interrupted
{
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2](interruptionHandler, a2);
    v4 = self->_interruptionHandler;
  }

  else
  {
    v4 = 0;
  }

  self->_interruptionHandler = 0;

  if (onceTokenDSKappaSession != -1)
  {
    DSLogObjectForCategory_DSKappaSession_cold_1();
  }

  v5 = logObjDSKappaSession;
  if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "DSKappaSession Interrupted", v6, 2u);
  }
}

- (void)_xpcEventHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 == MEMORY[0x277D863F8])
  {
    if (!self->_shouldInvalidate)
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v8 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_ERROR))
      {
        xpcConnection = self->_xpcConnection;
        v10 = v8;
        v14 = 136315138;
        v15 = xpc_connection_copy_invalidation_reason();
        _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_ERROR, "XPC Connection Invalidated for reason: %s", &v14, 0xCu);
      }
    }

    v11 = self;
    objc_sync_enter(v11);
    v12 = v11->_xpcConnection;
    v11->_xpcConnection = 0;

    objc_sync_exit(v11);
    [(DSKappaSession *)v11 _invalidated];
  }

  else if (v4 == MEMORY[0x277D863F0])
  {
    [(DSKappaSession *)self _interrupted];
  }

  else if (MEMORY[0x24C1EF810](v4) == MEMORY[0x277D86468])
  {
    [(DSKappaSession *)self _handleXPCMessage:v5];
  }

  else
  {
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v6 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v14 = 136315138;
      v15 = MEMORY[0x24C1EF710](v5);
      _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_ERROR, "Invalid XPC Message :%s", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCMessage:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "kDSXPCMsg");
  if (string)
  {
    v6 = string;
    if (!strcmp(string, "kDSXPCDeviceFound"))
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v10 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_DEFAULT, "Device Found XPC Message", v16, 2u);
      }

      [(DSKappaSession *)self _deviceFoundMessage:v4];
    }

    else if (!strcmp(v6, "kDSXPCDeviceChanged"))
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v11 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_DEFAULT, "Device Changed XPC Message", v15, 2u);
      }

      [(DSKappaSession *)self _deviceChangedMessage:v4];
    }

    else if (!strcmp(v6, "kDSXPCDeviceLost"))
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v12 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "Device Lost XPC Message", v14, 2u);
      }

      [(DSKappaSession *)self _deviceLostMessage:v4];
    }

    else
    {
      if (onceTokenDSKappaSession != -1)
      {
        DSLogObjectForCategory_DSKappaSession_cold_1();
      }

      v7 = logObjDSKappaSession;
      if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_ERROR))
      {
        v13 = 0;
        v8 = "Unhandled message from distributedsensingd";
        v9 = &v13;
LABEL_13:
        _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
      }
    }
  }

  else
  {
    if (onceTokenDSKappaSession != -1)
    {
      DSLogObjectForCategory_DSKappaSession_cold_1();
    }

    v7 = logObjDSKappaSession;
    if (os_log_type_enabled(logObjDSKappaSession, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "No Message type in XPC";
      v9 = buf;
      goto LABEL_13;
    }
  }
}

- (void)_deviceFoundMessage:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = 0;
  v6 = [[DSDeviceContext alloc] initWithXPCObject:v5 error:&v9];

  v7 = v9;
  if (v6)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    if (deviceFoundHandler)
    {
      deviceFoundHandler[2](deviceFoundHandler, v6);
    }
  }

  else
  {
    [DSKappaSession _deviceFoundMessage:];
  }
}

- (void)_deviceChangedMessage:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = 0;
  v6 = [[DSDeviceContext alloc] initWithXPCObject:v5 error:&v9];

  v7 = v9;
  if (v6)
  {
    deviceChangedHandler = self->_deviceChangedHandler;
    if (deviceChangedHandler)
    {
      deviceChangedHandler[2](deviceChangedHandler, v6);
    }
  }

  else
  {
    [DSKappaSession _deviceFoundMessage:];
  }
}

- (void)_deviceLostMessage:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = 0;
  v6 = [[DSDeviceContext alloc] initWithXPCObject:v5 error:&v9];

  v7 = v9;
  if (v6)
  {
    deviceLostHandler = self->_deviceLostHandler;
    if (deviceLostHandler)
    {
      deviceLostHandler[2](deviceLostHandler, v6);
    }
  }

  else
  {
    [DSKappaSession _deviceLostMessage:];
  }
}

- (void)_deviceFoundMessage:.cold.1()
{
  v0 = DSLogObjectForCategory_DSKappaSession();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_249027000, v1, v2, "Error decoding device context", v3, v4, v5, v6, 0);
  }
}

- (void)_deviceLostMessage:.cold.1()
{
  v0 = DSLogObjectForCategory_DSKappaSession();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_249027000, v1, v2, "Error decoding winner context", v3, v4, v5, v6, 0);
  }
}

@end