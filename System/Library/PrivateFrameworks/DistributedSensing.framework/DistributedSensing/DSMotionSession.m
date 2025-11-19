@interface DSMotionSession
- (DSMotionSession)initWithXPCObject:(id)a3 error:(id *)a4;
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
- (void)_printCohort;
- (void)_updateVehicleState:(unsigned __int8)a3 confidence:(unsigned __int8)a4;
- (void)_xpcEventHandler:(id)a3;
- (void)_xpcHandleCompletionBlockReply:(id)a3 error:(id *)a4;
- (void)activateWithCompletion:(id)a3;
- (void)encodeSelf:(id)a3;
- (void)invalidate;
- (void)printCohort;
- (void)updateVehicleState:(unsigned __int8)a3 confidence:(unsigned __int8)a4;
@end

@implementation DSMotionSession

- (DSMotionSession)initWithXPCObject:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = DSMotionSession;
  v7 = [(DSMotionSession *)&v21 init];
  if (!v7)
  {
    v19 = DSLogObjectForCategory_DSMotionSession();
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
    v19 = DSLogObjectForCategory_DSMotionSession();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "init with invalid dictionary";
    goto LABEL_26;
  }

  uint64 = xpc_dictionary_get_uint64(v6, "kDSVehicleState");
  if (uint64 >= 0x100)
  {
    v19 = DSLogObjectForCategory_DSMotionSession();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v20 = "Error decoding vehicle state";
    goto LABEL_26;
  }

  v9 = uint64;
  if (onceTokenDSMotionSession != -1)
  {
    [DSMotionSession initWithXPCObject:error:];
  }

  v10 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 > 2)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_278F85DD8[v9];
    }

    *buf = 136315138;
    v23 = v11;
    _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_DEFAULT, "Vehicle state : %s", buf, 0xCu);
  }

  v7->_vehicleState = v9;
  v12 = xpc_dictionary_get_uint64(v6, "kDSVehicleConfidence");
  if (v12 >= 0x100)
  {
    v19 = DSLogObjectForCategory_DSMotionSession();
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
  if (onceTokenDSMotionSession != -1)
  {
    [DSMotionSession initWithXPCObject:error:];
  }

  v14 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v13;
    _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "Vehicle confidence: %llu", buf, 0xCu);
  }

  v7->_vehicleConfidence = v13;
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
  if (self->_vehicleState)
  {
    xpc_dictionary_set_uint64(v4, "kDSVehicleState", self->_vehicleState);
    v4 = xdict;
  }

  if (self->_vehicleConfidence)
  {
    xpc_dictionary_set_uint64(xdict, "kDSVehicleConfidence", self->_vehicleConfidence);
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
        block[2] = __42__DSMotionSession_activateWithCompletion___block_invoke;
        block[3] = &unk_278F85808;
        block[4] = v5;
        dispatch_async(dispatchQueue, block);
        goto LABEL_21;
      }

      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v6 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Activate already called";
LABEL_19:
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      }
    }

    else
    {
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v6 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
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

    if (onceTokenDSMotionSession != -1)
    {
      [DSMotionSession initWithXPCObject:error:];
    }

    v11 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
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
  if (onceTokenDSMotionSession != -1)
  {
    DSLogObjectForCategory_DSMotionSession_cold_1();
  }

  v3 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Activate", buf, 2u);
  }

  if (self->_shouldInvalidate)
  {
    if (onceTokenDSMotionSession != -1)
    {
      [DSMotionSession initWithXPCObject:error:];
    }

    v4 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
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
    [(DSMotionSession *)self _activateXPC];
  }
}

- (void)_activateXPC
{
  if (onceTokenDSMotionSession != -1)
  {
    DSLogObjectForCategory_DSMotionSession_cold_1();
  }

  v3 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Activate XPC", buf, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  [(DSMotionSession *)self encodeSelf:v4];
  xpc_dictionary_set_string(v4, "kDSXPCMsg", "kDSMotionActivate");
  v5 = [(DSMotionSession *)self _getXPCConnection];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__DSMotionSession__activateXPC__block_invoke;
  handler[3] = &unk_278F85830;
  handler[4] = self;
  xpc_connection_send_message_with_reply(v5, v4, dispatchQueue, handler);
}

- (void)printCohort
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_shouldActivate)
  {
    dispatchQueue = v2->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__DSMotionSession_printCohort__block_invoke;
    block[3] = &unk_278F85808;
    block[4] = v2;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v4 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "Instance not activated", buf, 2u);
    }
  }

  objc_sync_exit(v2);
}

- (void)_printCohort
{
  xdict = xpc_dictionary_create(0, 0, 0);
  [(DSMotionSession *)self encodeSelf:xdict];
  xpc_dictionary_set_string(xdict, "kDSXPCMsg", "kDSCohortPrint");
  v3 = [(DSMotionSession *)self _getXPCConnection];
  xpc_connection_send_message(v3, xdict);
}

- (void)_activateXPCHandleReply:(id)a3
{
  v7 = 0;
  [(DSMotionSession *)self _xpcHandleCompletionBlockReply:a3 error:&v7];
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
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v8 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
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

  if (onceTokenDSMotionSession != -1)
  {
    DSLogObjectForCategory_DSMotionSession_cold_1();
  }

  v11 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_ERROR, "Error while unarchiving completion block error", &v17, 2u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
LABEL_17:
  if (onceTokenDSMotionSession != -1)
  {
    [DSMotionSession initWithXPCObject:error:];
  }

  v12 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
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

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_shouldInvalidate)
  {
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v3 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate already called", buf, 2u);
    }
  }

  else
  {
    v2->_shouldInvalidate = 1;
    dispatchQueue = v2->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__DSMotionSession_invalidate__block_invoke;
    block[3] = &unk_278F85808;
    block[4] = v2;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v2);
}

- (void)_invalidate
{
  if (onceTokenDSMotionSession != -1)
  {
    DSLogObjectForCategory_DSMotionSession_cold_1();
  }

  v3 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", v4, 2u);
  }

  [(DSMotionSession *)self _invalidateXPC];
  [(DSMotionSession *)self _invalidated];
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
    handler[2] = __36__DSMotionSession__getXPCConnection__block_invoke;
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
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v5 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_ERROR))
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

      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v8 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "DSMotionSession Invalidated", v9, 2u);
      }

      self->_invalidateFinished = 1;
    }
  }
}

- (void)_interrupted
{
  if (onceTokenDSMotionSession != -1)
  {
    DSLogObjectForCategory_DSMotionSession_cold_1();
  }

  v2 = logObjDSMotionSession;
  if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_249027000, v2, OS_LOG_TYPE_DEFAULT, "DSMotionSession Interrupted", v3, 2u);
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
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v8 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_ERROR))
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
    [(DSMotionSession *)v11 _invalidated];
  }

  else if (v4 == MEMORY[0x277D863F0])
  {
    [(DSMotionSession *)self _interrupted];
  }

  else if (MEMORY[0x24C1EF810](v4) == MEMORY[0x277D86468])
  {
    [(DSMotionSession *)self _handleXPCMessage:v5];
  }

  else
  {
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v6 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_ERROR))
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
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v10 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_249027000, v10, OS_LOG_TYPE_DEFAULT, "Device Found XPC Message", v16, 2u);
      }

      [(DSMotionSession *)self _deviceFoundMessage:v4];
    }

    else if (!strcmp(v6, "kDSXPCDeviceChanged"))
    {
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v11 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_DEFAULT, "Device Changed XPC Message", v15, 2u);
      }

      [(DSMotionSession *)self _deviceChangedMessage:v4];
    }

    else if (!strcmp(v6, "kDSXPCDeviceLost"))
    {
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v12 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "Device Lost XPC Message", v14, 2u);
      }

      [(DSMotionSession *)self _deviceLostMessage:v4];
    }

    else
    {
      if (onceTokenDSMotionSession != -1)
      {
        DSLogObjectForCategory_DSMotionSession_cold_1();
      }

      v7 = logObjDSMotionSession;
      if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_ERROR))
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
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v7 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_ERROR))
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
    [DSMotionSession _deviceFoundMessage:];
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
    [DSMotionSession _deviceFoundMessage:];
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
    [DSMotionSession _deviceLostMessage:];
  }
}

- (void)updateVehicleState:(unsigned __int8)a3 confidence:(unsigned __int8)a4
{
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_shouldActivate)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    v15 = 0;
    dispatchQueue = v6->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DSMotionSession_updateVehicleState_confidence___block_invoke;
    block[3] = &unk_278F85DB8;
    v10 = a3;
    block[4] = v6;
    block[5] = buf;
    v11 = a4;
    dispatch_async(dispatchQueue, block);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v8 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "Instance not activated", buf, 2u);
    }
  }

  objc_sync_exit(v6);
}

void __49__DSMotionSession_updateVehicleState_confidence___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 40) != *(a1 + 48))
  {
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v3 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 40);
      if (v4 > 2)
      {
        v5 = "?";
      }

      else
      {
        v5 = off_278F85DD8[v4];
      }

      v6 = *(a1 + 48);
      if (v6 > 2)
      {
        v7 = "?";
      }

      else
      {
        v7 = off_278F85DD8[v6];
      }

      v15 = 136315394;
      v16 = v5;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Updating Vehicle State from %s to %s", &v15, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 41) != *(a1 + 49))
  {
    if (onceTokenDSMotionSession != -1)
    {
      [DSMotionSession initWithXPCObject:error:];
    }

    v8 = logObjDSMotionSession;
    if (!os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    v9 = *(*(a1 + 32) + 41);
    if (v9 <= 6)
    {
      if (!*(*(a1 + 32) + 41))
      {
        v10 = "lowest";
        goto LABEL_29;
      }

      if (v9 == 4)
      {
        v10 = "low-medium";
        goto LABEL_29;
      }
    }

    else
    {
      switch(v9)
      {
        case 7u:
          v10 = "medium";
          goto LABEL_29;
        case 0xBu:
          v10 = "medium-high";
          goto LABEL_29;
        case 0xFu:
          v10 = "highest";
          goto LABEL_29;
      }
    }

    v10 = "?";
LABEL_29:
    v11 = *(a1 + 49);
    if (v11 <= 6)
    {
      if (!*(a1 + 49))
      {
        v12 = "lowest";
        goto LABEL_41;
      }

      if (v11 == 4)
      {
        v12 = "low-medium";
        goto LABEL_41;
      }
    }

    else
    {
      switch(v11)
      {
        case 7u:
          v12 = "medium";
          goto LABEL_41;
        case 0xBu:
          v12 = "medium-high";
          goto LABEL_41;
        case 0xFu:
          v12 = "highest";
LABEL_41:
          v15 = 136315394;
          v16 = v10;
          v17 = 2080;
          v18 = v12;
          _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "Updating Vehicle confidence from %s to %s", &v15, 0x16u);
LABEL_42:
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_43;
      }
    }

    v12 = "?";
    goto LABEL_41;
  }

LABEL_43:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) _updateVehicleState:*(a1 + 48) confidence:*(a1 + 49)];
  }

  else
  {
    if (onceTokenDSMotionSession != -1)
    {
      [DSMotionSession initWithXPCObject:error:];
    }

    v13 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_249027000, v13, OS_LOG_TYPE_DEFAULT, "States already updated", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateVehicleState:(unsigned __int8)a3 confidence:(unsigned __int8)a4
{
  if (self->_shouldInvalidate)
  {
    if (onceTokenDSMotionSession != -1)
    {
      DSLogObjectForCategory_DSMotionSession_cold_1();
    }

    v4 = logObjDSMotionSession;
    if (os_log_type_enabled(logObjDSMotionSession, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "Update called after invalidate", buf, 2u);
    }
  }

  else
  {
    self->_vehicleState = a3;
    self->_vehicleConfidence = a4;
    xdict = xpc_dictionary_create(0, 0, 0);
    [(DSMotionSession *)self encodeSelf:xdict];
    xpc_dictionary_set_string(xdict, "kDSXPCMsg", "kDSMotionUpdate");
    v6 = [(DSMotionSession *)self _getXPCConnection];
    xpc_connection_send_message(v6, xdict);
  }
}

- (void)_deviceFoundMessage:.cold.1()
{
  v0 = DSLogObjectForCategory_DSMotionSession();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_249027000, v1, v2, "Error decoding device context", v3, v4, v5, v6, 0);
  }
}

- (void)_deviceLostMessage:.cold.1()
{
  v0 = DSLogObjectForCategory_DSMotionSession();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_249027000, v1, v2, "Error decoding winner context", v3, v4, v5, v6, 0);
  }
}

@end