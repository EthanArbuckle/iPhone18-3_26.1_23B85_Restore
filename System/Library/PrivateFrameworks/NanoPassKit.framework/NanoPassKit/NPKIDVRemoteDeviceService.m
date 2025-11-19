@interface NPKIDVRemoteDeviceService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NPKIDVRemoteDeviceService)initWithServiceName:(id)a3 delegate:(id)a4 callbackQueue:(id)a5;
- (NPKIDVRemoteDeviceServiceDelegate)delegate;
- (void)_addConnection:(id)a3;
- (void)_addServer:(id)a3;
- (void)_removeServer:(id)a3;
- (void)dealloc;
- (void)identityRemoteDeviceServiceServer:(id)a3 didReceiveEvent:(unint64_t)a4 fromRemoteDeviceWithID:(id)a5 eventContext:(id)a6;
- (void)setDelegate:(id)a3;
@end

@implementation NPKIDVRemoteDeviceService

- (NPKIDVRemoteDeviceService)initWithServiceName:(id)a3 delegate:(id)a4 callbackQueue:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = NPKIDVRemoteDeviceService;
  v11 = [(NPKIDVRemoteDeviceService *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;

    objc_storeWeak(&v11->_delegate, v9);
    objc_storeStrong(&v11->_delegateCallBackQueue, a5);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    serviceServers = v11->_serviceServers;
    v11->_serviceServers = v14;

    v16 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v8];
    [(NSXPCListener *)v16 setDelegate:v11];
    xpcListener = v11->_xpcListener;
    v11->_xpcListener = v16;
    v18 = v16;

    [(NSXPCListener *)v18 resume];
    v19 = pk_Payment_log();
    LODWORD(xpcListener) = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (xpcListener)
    {
      v20 = pk_Payment_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: New Remote Device service Listener created:%@ with serviceName:%@", buf, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

- (NPKIDVRemoteDeviceServiceDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  delegateCallBackQueue = self->_delegateCallBackQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__NPKIDVRemoteDeviceService_delegate__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(delegateCallBackQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__NPKIDVRemoteDeviceService_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  delegateCallBackQueue = self->_delegateCallBackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NPKIDVRemoteDeviceService_setDelegate___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateCallBackQueue, v7);
}

- (void)dealloc
{
  [(NSMutableSet *)self->_serviceServers enumerateObjectsUsingBlock:&__block_literal_global_2];
  serviceServers = self->_serviceServers;
  self->_serviceServers = 0;

  v4.receiver = self;
  v4.super_class = NPKIDVRemoteDeviceService;
  [(NPKIDVRemoteDeviceService *)&v4 dealloc];
}

void __36__NPKIDVRemoteDeviceService_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 connection];
  [v2 invalidate];

  [v3 clearConnectionReference];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  xpcListener = self->_xpcListener;
  v9 = pk_Payment_log();
  v10 = v9;
  if (xpcListener == v6)
  {
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v7;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested new connection:%@", &v19, 0xCu);
      }
    }

    v11 = [(NSXPCListener *)v7 valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.client"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v11 BOOLValue]& 1) != 0)
    {
      [(NPKIDVRemoteDeviceService *)self _addConnection:v7];
      LOBYTE(self) = 1;
      goto LABEL_14;
    }

    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: client doesn't have required entitlement to establish the connection", &v19, 2u);
      }
    }

LABEL_5:
    LOBYTE(self) = 0;
LABEL_14:

    goto LABEL_15;
  }

  LODWORD(self) = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (self)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unknown requested connection from listener:%@", &v19, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)_addConnection:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[NPKIDVRemoteDeviceServiceServer alloc] initWithConnection:v4 delegate:self];
  v6 = NPKIDVRemoteDeviceServiceServerProtocolInterface();
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:v5];
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__NPKIDVRemoteDeviceService__addConnection___block_invoke;
  v20[3] = &unk_279945930;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v7 = v5;
  v21 = v7;
  [v4 setInvalidationHandler:v20];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __44__NPKIDVRemoteDeviceService__addConnection___block_invoke_20;
  v16 = &unk_279945930;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v8 = v7;
  v17 = v8;
  [v4 setInterruptionHandler:&v13];
  [(NPKIDVRemoteDeviceService *)self _addServer:v8, v13, v14, v15, v16];
  [v4 resume];
  v9 = pk_Payment_log();
  LODWORD(v6) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 processIdentifier];
      *buf = 138412546;
      v27 = v4;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Added new connection:{%@, PID:%d}", buf, 0x12u);
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __44__NPKIDVRemoteDeviceService__addConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _removeServer:*(a1 + 32)];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@ Connection invalidated:{%@, PID:%d}", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __44__NPKIDVRemoteDeviceService__addConnection___block_invoke_20(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _removeServer:*(a1 + 32)];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@ Connection interrupted:{%@, PID:%d}", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addServer:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_serviceServers addObject:?];
  }
}

- (void)_removeServer:(id)a3
{
  v5 = a3;
  v4 = [v5 connection];
  [v4 invalidate];

  [v5 clearConnectionReference];
  [(NSMutableSet *)self->_serviceServers removeObject:v5];
}

- (void)identityRemoteDeviceServiceServer:(id)a3 didReceiveEvent:(unint64_t)a4 fromRemoteDeviceWithID:(id)a5 eventContext:(id)a6
{
  v9 = a5;
  v10 = a6;
  delegateCallBackQueue = self->_delegateCallBackQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115__NPKIDVRemoteDeviceService_identityRemoteDeviceServiceServer_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke;
  v14[3] = &unk_279945958;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a4;
  v12 = v10;
  v13 = v9;
  dispatch_async(delegateCallBackQueue, v14);
}

void __115__NPKIDVRemoteDeviceService_identityRemoteDeviceServiceServer_didReceiveEvent_fromRemoteDeviceWithID_eventContext___block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 32));
    [v4 identityRemoteDeviceService:a1[4] didReceiveEvent:a1[7] fromRemoteDeviceWithID:a1[5] eventContext:a1[6]];

    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1[4] + 32));
        v9 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a1[7]);
        v10 = a1[5];
        v21 = 138412802;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did notify delegate:%@ received event: %@ from remote Device with ID:%@ with context", &v21, 0x20u);
      }
    }
  }

  v11 = objc_loadWeakRetained((a1[4] + 32));
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained((a1[4] + 32));
    [v13 identityRemoteDeviceService:a1[4] didReceiveEvent:a1[7] fromRemoteDeviceWithID:a1[5]];

    v14 = pk_Payment_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_loadWeakRetained((a1[4] + 32));
        v18 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(a1[7]);
        v19 = a1[5];
        v21 = 138412802;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did notify delegate:%@ received event: %@ from remote Device with ID:%@", &v21, 0x20u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end