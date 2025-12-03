@interface DSXPCConnection
- (void)_activateKappaSessionMessage:(id)message;
- (void)_activateMotionSessionMessage:(id)message;
- (void)_checkEntitlement:(const char *)entitlement error:(id *)error;
- (void)_deviceChangedHandler:(id)handler;
- (void)_deviceFoundHandler:(id)handler;
- (void)_deviceLostHandler:(id)handler;
- (void)_handleXPCMessage:(id)message;
- (void)_printCohortMessage:(id)message;
- (void)_updateCoordinationStatusMessage:(id)message;
- (void)_updateVehicleStateMessage:(id)message;
- (void)_xpcCohortDeviceMessage:(id)message type:(const char *)type;
- (void)_xpcConnectionSendEvent:(id)event;
- (void)_xpcEventHandler:(id)handler;
- (void)_xpcSendReplyForMessage:(id)message error:(id)error;
- (void)activate;
- (void)invalidate;
@end

@implementation DSXPCConnection

- (void)activate
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__DSXPCConnection_activate__block_invoke;
    handler[3] = &unk_278F85830;
    handler[4] = self;
    xpc_connection_set_event_handler(xpcConnection, handler);
    xpc_connection_set_target_queue(self->_xpcConnection, self->_dispatchQueue);
    xpc_connection_activate(self->_xpcConnection);
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v4 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      *buf = 67109120;
      v14 = pid;
      v6 = "DSXPCConnection activated for PID: %d";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 8;
LABEL_10:
      _os_log_impl(&dword_249027000, v7, v8, v6, buf, v9);
    }
  }

  else
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v10 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "xpc connection not set";
      v7 = v10;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 2;
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = xpcConnection;
    xpc_connection_cancel(v4);
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  kappaSession = self->_kappaSession;
  if (kappaSession)
  {
    self->_isEntitledForKappa = 0;
    self->_kappaSession = 0;
  }

  motionSession = self->_motionSession;
  if (motionSession)
  {
    self->_isEntitledForMotion = 0;
    self->_motionSession = 0;
  }

  xpcDaemonServer = self->_xpcDaemonServer;

  [(DSXPCServer *)xpcDaemonServer removeXPCConnection:self];
}

- (void)_xpcEventHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy == MEMORY[0x277D863F8])
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v8 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_DEFAULT))
    {
      pid = self->_pid;
      v12 = 67109120;
      LODWORD(v13) = pid;
      _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "XPC Connection Invalidated for pid: %d", &v12, 8u);
    }

    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = 0;

    [(DSXPCConnection *)self invalidate];
  }

  else if (MEMORY[0x24C1EF810](handlerCopy) == MEMORY[0x277D86468])
  {
    [(DSXPCConnection *)self _handleXPCMessage:v5];
  }

  else
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v6 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v12 = 136315138;
      v13 = MEMORY[0x24C1EF710](v5);
      _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "Invalid XPC Message :%s", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "kDSXPCMsg");
  if (!string)
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v11 = logObjDSXPCConnection;
    if (!os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v14 = 0;
    v8 = "No message type in XPC";
    v9 = v11;
    v10 = 2;
    goto LABEL_15;
  }

  v6 = string;
  if (!strcmp(string, "kDSKappaActivate"))
  {
    [(DSXPCConnection *)self _activateKappaSessionMessage:messageCopy];
    goto LABEL_22;
  }

  if (!strcmp(v6, "kDSKappaUpdate"))
  {
    [(DSXPCConnection *)self _updateCoordinationStatusMessage:messageCopy];
    goto LABEL_22;
  }

  if (!strcmp(v6, "kDSMotionActivate"))
  {
    [(DSXPCConnection *)self _activateMotionSessionMessage:messageCopy];
    goto LABEL_22;
  }

  if (!strcmp(v6, "kDSMotionUpdate"))
  {
    [(DSXPCConnection *)self _updateVehicleStateMessage:messageCopy];
    goto LABEL_22;
  }

  if (!strcmp(v6, "kDSCohortPrint"))
  {
    [(DSXPCConnection *)self _printCohortMessage:messageCopy];
    goto LABEL_22;
  }

  if (onceTokenDSXPCConnection != -1)
  {
    [DSXPCConnection activate];
  }

  v7 = logObjDSXPCConnection;
  if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
  {
    *v14 = 136315138;
    *&v14[4] = v6;
    v8 = "Unknown message type in XPC: %s";
    v9 = v7;
    v10 = 12;
LABEL_15:
    _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_ERROR, v8, v14, v10);
  }

LABEL_16:
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:{0, *v14}];
  [(DSXPCConnection *)self _xpcSendReplyForMessage:messageCopy error:v12];

LABEL_22:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_xpcSendReplyForMessage:(id)message error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  if (xpc_dictionary_expects_reply())
  {
    if (self->_xpcConnection)
    {
      reply = xpc_dictionary_create_reply(messageCopy);
      v9 = reply;
      if (reply)
      {
        if (errorCopy)
        {
          v20 = errorCopy;
          v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:&v20];
          v11 = v20;

          if (v10)
          {
            v12 = xpc_data_create([v10 bytes], objc_msgSend(v10, "length"));
            xpc_dictionary_set_value(v9, "kDSXPCErrorData", v12);
          }

          xpc_dictionary_set_string(v9, "kDSXPCMsg", "kDSXPCError");
        }

        else
        {
          xpc_dictionary_set_string(reply, "kDSXPCMsg", "kDSXPCSuccess");
          v11 = 0;
        }

        xpc_connection_send_message(self->_xpcConnection, v9);
        errorCopy = v11;
      }

      else
      {
        if (onceTokenDSXPCConnection != -1)
        {
          [DSXPCConnection activate];
        }

        v19 = logObjDSXPCConnection;
        if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_impl(&dword_249027000, v19, OS_LOG_TYPE_ERROR, "Send reply error: reply creation error", v21, 2u);
        }
      }

      goto LABEL_24;
    }

    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v18 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Send reply error: no connection";
      v15 = buf;
      v16 = v18;
      v17 = OS_LOG_TYPE_ERROR;
      goto LABEL_16;
    }
  }

  else
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v13 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      v14 = "XPC message does not expect reply";
      v15 = &v23;
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
      _os_log_impl(&dword_249027000, v16, v17, v14, v15, 2u);
    }
  }

LABEL_24:
}

- (void)_xpcConnectionSendEvent:(id)event
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {

    xpc_connection_send_message(xpcConnection, event);
  }

  else
  {
    [DSXPCConnection _xpcConnectionSendEvent:];
  }
}

- (void)_checkEntitlement:(const char *)entitlement error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v7;
  v17 = v7;
  xpcConnection = self->_xpcConnection;
  xpc_connection_get_audit_token();
  v9 = xpc_copy_entitlement_for_token();
  v10 = v9;
  if (v9 && xpc_dictionary_get_BOOL(v9, entitlement))
  {
    if (!strcmp(entitlement, "com.apple.distributedsensingd-kappa"))
    {
      self->_isEntitledForKappa = 1;
    }

    else if (!strcmp(entitlement, "com.apple.distributedsensingd-motionState"))
    {
      self->_isEntitledForMotion = 1;
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Entitlement Missing";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:{1, v16, v17}];
    v13 = [v11 errorWithDomain:@"DSErrorDomain" code:3 userInfo:v12];

    if (error)
    {
      v14 = v13;
      *error = v13;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_activateKappaSessionMessage:(id)message
{
  messageCopy = message;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__DSXPCConnection__activateKappaSessionMessage___block_invoke;
  v19[3] = &unk_278F85C50;
  v19[4] = self;
  v5 = MEMORY[0x24C1EF510](v19);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__DSXPCConnection__activateKappaSessionMessage___block_invoke_2;
  v18[3] = &unk_278F85C50;
  v18[4] = self;
  v6 = MEMORY[0x24C1EF510](v18);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__DSXPCConnection__activateKappaSessionMessage___block_invoke_3;
  v17[3] = &unk_278F85C50;
  v17[4] = self;
  v7 = MEMORY[0x24C1EF510](v17);
  v16 = 0;
  [(DSXPCConnection *)self _checkEntitlement:"com.apple.distributedsensingd-kappa" error:&v16];
  v8 = v16;
  if (self->_isEntitledForKappa)
  {
    v15 = v8;
    v9 = [[DSKappaSession alloc] initWithXPCObject:messageCopy error:&v15];
    v10 = v15;

    if (v9)
    {
      [(DSKappaSession *)v9 setDeviceFoundHandler:v5];
      [(DSKappaSession *)v9 setDeviceLostHandler:v6];
      [(DSKappaSession *)v9 setDeviceChangedHandler:v7];
      objc_storeStrong(&self->_kappaSession, v9);
      coordinationStatus = [(DSKappaSession *)v9 coordinationStatus];
      myDeviceContext = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
      [myDeviceContext setCoordinationStatus:coordinationStatus];

      tiebreaker = [(DSKappaSession *)v9 tiebreaker];
      myDeviceContext2 = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
      [myDeviceContext2 setTiebreaker:tiebreaker];

      [(DSXPCServer *)self->_xpcDaemonServer updateAdvertiser];
      [(DSXPCServer *)self->_xpcDaemonServer updateScanner];
    }

    else
    {
      [DSXPCConnection _activateKappaSessionMessage:?];
    }

    v8 = v10;
  }

  else
  {
    [DSXPCConnection _activateKappaSessionMessage:];
    v9 = 0;
  }

  [(DSXPCConnection *)self _xpcSendReplyForMessage:messageCopy error:v8];
}

- (void)_updateCoordinationStatusMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (!self->_isEntitledForKappa)
  {
    p_super = DSLogObjectForCategory_DSXPCConnection();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    v15 = 136315138;
    v16 = "com.apple.distributedsensingd-kappa";
    v10 = "Missing entitlement :%s";
    v11 = p_super;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
LABEL_9:
    _os_log_impl(&dword_249027000, v11, v12, v10, &v15, v13);
    goto LABEL_4;
  }

  v5 = [[DSKappaSession alloc] initWithXPCObject:messageCopy error:0];
  if (!v5)
  {
    p_super = DSLogObjectForCategory_DSXPCConnection();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    pid = self->_pid;
    v15 = 67109120;
    LODWORD(v16) = pid;
    v10 = "Error creating Kappa Session for pid %d";
    v11 = p_super;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 8;
    goto LABEL_9;
  }

  p_super = &v5->super;
  [(DSKappaSession *)self->_kappaSession setCoordinationStatus:[(DSKappaSession *)v5 coordinationStatus]];
  coordinationStatus = [p_super coordinationStatus];
  myDeviceContext = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
  [myDeviceContext setCoordinationStatus:coordinationStatus];

  [(DSXPCServer *)self->_xpcDaemonServer updateAdvertiser];
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_activateMotionSessionMessage:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __49__DSXPCConnection__activateMotionSessionMessage___block_invoke;
  v38[3] = &unk_278F85C50;
  v38[4] = self;
  v5 = MEMORY[0x24C1EF510](v38);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __49__DSXPCConnection__activateMotionSessionMessage___block_invoke_2;
  v37[3] = &unk_278F85C50;
  v37[4] = self;
  v6 = MEMORY[0x24C1EF510](v37);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __49__DSXPCConnection__activateMotionSessionMessage___block_invoke_3;
  v36[3] = &unk_278F85C50;
  v36[4] = self;
  v7 = MEMORY[0x24C1EF510](v36);
  v35 = 0;
  [(DSXPCConnection *)self _checkEntitlement:"com.apple.distributedsensingd-motionState" error:&v35];
  v8 = v35;
  if (self->_isEntitledForMotion)
  {
    v34 = v8;
    v9 = [[DSMotionSession alloc] initWithXPCObject:messageCopy error:&v34];
    v10 = v34;

    if (v9)
    {
      [(DSMotionSession *)v9 setDeviceFoundHandler:v5];
      [(DSMotionSession *)v9 setDeviceLostHandler:v7];
      [(DSMotionSession *)v9 setDeviceChangedHandler:v6];
      objc_storeStrong(&self->_motionSession, v9);
      vehicleState = [(DSMotionSession *)v9 vehicleState];
      myDeviceContext = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
      [myDeviceContext setVehicleState:vehicleState];

      vehicleConfidence = [(DSMotionSession *)v9 vehicleConfidence];
      myDeviceContext2 = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
      [myDeviceContext2 setVehicleConfidence:vehicleConfidence];

      [(DSXPCServer *)self->_xpcDaemonServer updateAdvertiser];
      [(DSXPCServer *)self->_xpcDaemonServer updateScanner];
    }

    else
    {
      [DSXPCConnection _activateMotionSessionMessage:?];
    }

    v8 = v10;
  }

  else
  {
    [DSXPCConnection _activateMotionSessionMessage:];
    v9 = 0;
  }

  [(DSXPCConnection *)self _xpcSendReplyForMessage:messageCopy error:v8];
  if (!v8)
  {
    v26 = v7;
    v27 = v6;
    v28 = v5;
    v29 = messageCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    cohortManager = [(DSXPCServer *)self->_xpcDaemonServer cohortManager];
    devices = [cohortManager devices];

    v17 = [devices countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        v20 = 0;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(devices);
          }

          v21 = *(*(&v30 + 1) + 8 * v20);
          cohortManager2 = [(DSXPCServer *)self->_xpcDaemonServer cohortManager];
          devices2 = [cohortManager2 devices];
          v24 = [devices2 objectForKeyedSubscript:v21];
          [(DSXPCConnection *)self _deviceFoundHandler:v24];

          ++v20;
        }

        while (v18 != v20);
        v18 = [devices countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v18);
    }

    v5 = v28;
    messageCopy = v29;
    v7 = v26;
    v6 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateVehicleStateMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (!self->_isEntitledForMotion)
  {
    p_super = DSLogObjectForCategory_DSXPCConnection();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    v17 = 136315138;
    v18 = "com.apple.distributedsensingd-motionState";
    v12 = "Missing entitlement :%s";
    v13 = p_super;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 12;
LABEL_9:
    _os_log_impl(&dword_249027000, v13, v14, v12, &v17, v15);
    goto LABEL_4;
  }

  v5 = [[DSMotionSession alloc] initWithXPCObject:messageCopy error:0];
  if (!v5)
  {
    p_super = DSLogObjectForCategory_DSXPCConnection();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    pid = self->_pid;
    v17 = 67109120;
    LODWORD(v18) = pid;
    v12 = "Error creating Motion Session for pid %d";
    v13 = p_super;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 8;
    goto LABEL_9;
  }

  p_super = &v5->super;
  vehicleState = [(DSMotionSession *)v5 vehicleState];
  myDeviceContext = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
  [myDeviceContext setVehicleState:vehicleState];

  vehicleConfidence = [p_super vehicleConfidence];
  myDeviceContext2 = [(DSXPCServer *)self->_xpcDaemonServer myDeviceContext];
  [myDeviceContext2 setVehicleConfidence:vehicleConfidence];

  [(DSXPCServer *)self->_xpcDaemonServer updateAdvertiser];
LABEL_4:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_printCohortMessage:(id)message
{
  v10 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (onceTokenDSXPCConnection != -1)
  {
    [DSXPCConnection activate];
  }

  v5 = logObjDSXPCConnection;
  if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "print cohort message", &v8, 2u);
  }

  if (self->_isEntitledForMotion)
  {
    cohortManager = [(DSXPCServer *)self->_xpcDaemonServer cohortManager];
    [cohortManager printConsensusData];
  }

  else
  {
    cohortManager = DSLogObjectForCategory_DSXPCConnection();
    if (os_log_type_enabled(cohortManager, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.distributedsensingd-motionState";
      _os_log_impl(&dword_249027000, cohortManager, OS_LOG_TYPE_DEFAULT, "Missing entitlement :%s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_xpcCohortDeviceMessage:(id)message type:(const char *)type
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (onceTokenDSXPCConnection != -1)
  {
    [DSXPCConnection activate];
  }

  v7 = logObjDSXPCConnection;
  if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    typeCopy = type;
    _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "xpc send message: %s", &v10, 0xCu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "kDSXPCMsg", type);
  [messageCopy encodeSelf:v8];
  [(DSXPCConnection *)self _xpcConnectionSendEvent:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_deviceFoundHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [handlerCopy identifier];
  if (identifier)
  {
    deviceDictionary = self->_deviceDictionary;
    if (!deviceDictionary)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = self->_deviceDictionary;
      self->_deviceDictionary = v7;

      deviceDictionary = self->_deviceDictionary;
    }

    [(NSMutableDictionary *)deviceDictionary setObject:handlerCopy forKeyedSubscript:identifier];
    [(DSXPCConnection *)self _xpcCohortDeviceMessage:handlerCopy type:"kDSXPCDeviceFound"];
  }

  else
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v9 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_ERROR, "missing identifier in Device Found", v10, 2u);
    }
  }
}

- (void)_deviceChangedHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [handlerCopy identifier];
  if (identifier)
  {
    v6 = [(NSMutableDictionary *)self->_deviceDictionary objectForKeyedSubscript:identifier];

    deviceDictionary = self->_deviceDictionary;
    if (v6)
    {
      [(NSMutableDictionary *)deviceDictionary setObject:handlerCopy forKeyedSubscript:identifier];
      v8 = "kDSXPCDeviceChanged";
    }

    else
    {
      if (!deviceDictionary)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v11 = self->_deviceDictionary;
        self->_deviceDictionary = v10;

        deviceDictionary = self->_deviceDictionary;
      }

      [(NSMutableDictionary *)deviceDictionary setObject:handlerCopy forKeyedSubscript:identifier];
      v8 = "kDSXPCDeviceFound";
    }

    [(DSXPCConnection *)self _xpcCohortDeviceMessage:handlerCopy type:v8];
  }

  else
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v9 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_ERROR, "missing identifier in Device Changed", v12, 2u);
    }
  }
}

- (void)_deviceLostHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [handlerCopy identifier];
  if (identifier)
  {
    v6 = [(NSMutableDictionary *)self->_deviceDictionary objectForKeyedSubscript:identifier];

    if (v6)
    {
      [(NSMutableDictionary *)self->_deviceDictionary setObject:0 forKeyedSubscript:identifier];
      [(DSXPCConnection *)self _xpcCohortDeviceMessage:handlerCopy type:"kDSXPCDeviceLost"];
    }
  }

  else
  {
    if (onceTokenDSXPCConnection != -1)
    {
      [DSXPCConnection activate];
    }

    v7 = logObjDSXPCConnection;
    if (os_log_type_enabled(logObjDSXPCConnection, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_ERROR, "missing identifier in Device Lost", v8, 2u);
    }
  }
}

- (void)_xpcConnectionSendEvent:.cold.1()
{
  v0 = DSLogObjectForCategory_DSXPCConnection();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v1, v2, v3, v4, v5, 2u);
  }
}

- (void)_activateKappaSessionMessage:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = DSLogObjectForCategory_DSXPCConnection();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1(&dword_249027000, v1, v2, "Missing entitlement :%s", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_activateKappaSessionMessage:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DSLogObjectForCategory_DSXPCConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 24);
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_activateMotionSessionMessage:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = DSLogObjectForCategory_DSXPCConnection();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1(&dword_249027000, v1, v2, "Missing entitlement :%s", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_activateMotionSessionMessage:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DSLogObjectForCategory_DSXPCConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 24);
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end