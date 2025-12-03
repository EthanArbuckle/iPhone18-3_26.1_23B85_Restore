@interface DEDXPCConnector
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)validateConnection:(id)connection;
- (DEDXPCConnector)initWithDelegate:(id)delegate;
- (DEDXPCConnectorDelegate)xpcConnectorDelegate;
- (DEDXPCProtocol)diagnosticextensionsdXPCInterface;
- (NSArray)clientConnections;
- (id)_connectionForPid:(id)pid;
- (id)_whitelistedXPCInterface;
- (id)clientXPCInterfaceFromInbound:(id)inbound;
- (id)connectionWithEndpoint:(id)endpoint forMachService:(id)service;
- (id)remoteXPCObjectForApplicationPid:(id)pid;
- (void)_initializeDiagnosticextensionsdConnection;
- (void)_storeAppConnection:(id)connection;
- (void)configureConnectionType:(unint64_t)type;
- (void)configureDaemonMode;
- (void)start;
- (void)startForDaemon;
@end

@implementation DEDXPCConnector

- (DEDXPCConnector)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = DEDXPCConnector;
  v5 = [(DEDXPCConnector *)&v13 init];
  if (v5)
  {
    v6 = +[DEDConfiguration sharedInstance];
    v7 = os_log_create([v6 loggingSubsystem], "t-xpc-connector");
    log = v5->_log;
    v5->_log = v7;

    *&v5->_isDaemon = 0;
    listener = v5->_listener;
    v5->_listener = 0;

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    appConnections = v5->_appConnections;
    v5->_appConnections = v10;

    objc_storeWeak(&v5->_xpcConnectorDelegate, delegateCopy);
    v5->_connectionRestartCount = 0;
  }

  return v5;
}

- (void)configureConnectionType:(unint64_t)type
{
  if (![(DEDXPCConnector *)self started])
  {

    [(DEDXPCConnector *)self setConnType:type];
  }
}

- (void)configureDaemonMode
{
  if (![(DEDXPCConnector *)self started])
  {

    [(DEDXPCConnector *)self setIsDaemon:1];
  }
}

- (void)start
{
  if (![(DEDXPCConnector *)self started])
  {
    if ([(DEDXPCConnector *)self isDaemon])
    {

      [(DEDXPCConnector *)self startForDaemon];
    }

    else
    {

      [(DEDXPCConnector *)self startForApp];
    }
  }
}

- (void)startForDaemon
{
  v3 = +[DEDConfiguration sharedInstance];
  machServiceName = [v3 machServiceName];
  connType = [(DEDXPCConnector *)self connType];
  if (connType)
  {
    if (connType != 1)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v6 = [(DEDXPCConnector *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_INFO, "starting anonymous listener", buf, 2u);
    }

    sharedAnonymousListener = [v3 sharedAnonymousListener];
  }

  else
  {
    v8 = [(DEDXPCConnector *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "starting privileged listener", buf, 2u);
    }

    sharedAnonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:machServiceName];
  }

  v9 = sharedAnonymousListener;
LABEL_11:
  [(DEDXPCConnector *)self setListener:v9];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-listener-queue", machServiceName];
  v11 = dispatch_queue_create([v10 cStringUsingEncoding:4], 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DEDXPCConnector_startForDaemon__block_invoke;
  block[3] = &unk_278F65668;
  block[4] = self;
  v15 = machServiceName;
  v16 = v9;
  v12 = v9;
  v13 = machServiceName;
  dispatch_async(v11, block);
}

uint64_t __33__DEDXPCConnector_startForDaemon__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__DEDXPCConnector_startForDaemon__block_invoke_cold_1(a1, v2);
  }

  [*(a1 + 48) setDelegate:*(a1 + 32)];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __33__DEDXPCConnector_startForDaemon__block_invoke_cold_2(v3);
  }

  return [*(a1 + 48) resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v40 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [(DEDXPCConnector *)self validateConnection:connectionCopy];
  if (v8)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v10 = [(DEDXPCConnector *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = processIdentifier;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "New connection from pid [%ld]", buf, 0xCu);
    }

    v11 = objc_initWeak(buf, self);
    _whitelistedXPCInterface = [(DEDXPCConnector *)self _whitelistedXPCInterface];
    [connectionCopy setRemoteObjectInterface:_whitelistedXPCInterface];

    WeakRetained = objc_loadWeakRetained(buf);
    _whitelistedXPCInterface2 = [WeakRetained _whitelistedXPCInterface];
    [connectionCopy setExportedInterface:_whitelistedXPCInterface2];

    v15 = objc_loadWeakRetained(buf);
    xpcConnectorDelegate = [v15 xpcConnectorDelegate];
    v17 = objc_loadWeakRetained(buf);
    v18 = [MEMORY[0x277CCABB0] numberWithInt:processIdentifier];
    v19 = [xpcConnectorDelegate connector:v17 needsXPCInboundForPid:v18];

    [connectionCopy setExportedObject:v19];
    v20 = [connectionCopy description];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __54__DEDXPCConnector_listener_shouldAcceptNewConnection___block_invoke;
    v34[3] = &unk_278F66E10;
    objc_copyWeak(&v36, buf);
    v21 = v20;
    v35 = v21;
    v37 = processIdentifier;
    [connectionCopy setInvalidationHandler:v34];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __54__DEDXPCConnector_listener_shouldAcceptNewConnection___block_invoke_26;
    v30 = &unk_278F66E10;
    objc_copyWeak(&v32, buf);
    v22 = v21;
    v31 = v22;
    v33 = processIdentifier;
    [connectionCopy setInterruptionHandler:&v27];
    v23 = objc_loadWeakRetained(buf);
    [v23 _storeAppConnection:{connectionCopy, v27, v28, v29, v30}];

    [connectionCopy resume];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = [(DEDXPCConnector *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCConnector listener:shouldAcceptNewConnection:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void __54__DEDXPCConnector_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "connection [%{public}@] was invalidated", &v10, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 xpcConnectorDelegate];
  v7 = objc_loadWeakRetained((a1 + 40));
  [v6 connector:v7 didLooseConnectionToProcessWithPid:*(a1 + 48)];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _releaseAppConnectionWithPid:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__DEDXPCConnector_listener_shouldAcceptNewConnection___block_invoke_26(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "connection [%{public}@] was interrupted", &v7, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _releaseAppConnectionWithPid:*(a1 + 48)];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateConnection:(id)connection
{
  v4 = [connection valueForEntitlement:@"com.apple.diagnosticextensionsd.xpcclient"];
  v5 = +[DEDConfiguration sharedInstance];
  connectionType = [v5 connectionType];

  if (connectionType == 1 || v4 && ([v4 BOOLValue] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(DEDXPCConnector *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEDXPCConnector validateConnection:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)connectionWithEndpoint:(id)endpoint forMachService:(id)service
{
  endpointCopy = endpoint;
  serviceCopy = service;
  v8 = serviceCopy;
  if (endpointCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:endpointCopy];
  }

  else
  {
    if (!serviceCopy)
    {
      goto LABEL_7;
    }

    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:serviceCopy options:4096];
  }

  v10 = v9;
  if (v9)
  {
    _whitelistedXPCInterface = [(DEDXPCConnector *)self _whitelistedXPCInterface];
    [v10 setRemoteObjectInterface:_whitelistedXPCInterface];

    _whitelistedXPCInterface2 = [(DEDXPCConnector *)self _whitelistedXPCInterface];
    [v10 setExportedInterface:_whitelistedXPCInterface2];

    xpcConnectorDelegate = [(DEDXPCConnector *)self xpcConnectorDelegate];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "processIdentifier")}];
    v15 = [xpcConnectorDelegate connector:self needsXPCInboundForPid:v14];

    [v10 setExportedObject:v15];
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__DEDXPCConnector_connectionWithEndpoint_forMachService___block_invoke;
    v21[3] = &unk_278F65830;
    objc_copyWeak(&v22, &location);
    [v10 setInvalidationHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__DEDXPCConnector_connectionWithEndpoint_forMachService___block_invoke_28;
    v19[3] = &unk_278F65830;
    objc_copyWeak(&v20, &location);
    [v10 setInterruptionHandler:v19];
    [v10 resume];
    v16 = v10;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    v17 = v16;
    goto LABEL_10;
  }

LABEL_7:
  v16 = [(DEDXPCConnector *)self log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(DEDXPCConnector *)v8 connectionWithEndpoint:endpointCopy forMachService:v16];
  }

  v17 = 0;
LABEL_10:

  return v17;
}

void __57__DEDXPCConnector_connectionWithEndpoint_forMachService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__DEDXPCConnector_connectionWithEndpoint_forMachService___block_invoke_cold_1();
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setDiagnosticextensionsdConnection:0];
}

void __57__DEDXPCConnector_connectionWithEndpoint_forMachService___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__DEDXPCConnector_connectionWithEndpoint_forMachService___block_invoke_28_cold_1();
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setDiagnosticextensionsdConnection:0];
}

- (id)_whitelistedXPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B97640];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_xpc_didDiscoverDevices_ argumentIndex:0 ofReply:0];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];

  [v2 setClasses:v9 forSelector:sel_xpc_gotDeviceUpdate_ argumentIndex:0 ofReply:0];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];

  [v2 setClasses:v12 forSelector:sel_xpc_startPairSetupForDevice_ argumentIndex:0 ofReply:0];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];

  [v2 setClasses:v15 forSelector:sel_xpc_promptPINForDevice_ argumentIndex:0 ofReply:0];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  [v2 setClasses:v16 forSelector:sel_xpc_tryPIN_forDevice_ argumentIndex:0 ofReply:0];
  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];

  [v2 setClasses:v19 forSelector:sel_xpc_tryPIN_forDevice_ argumentIndex:1 ofReply:0];
  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];

  [v2 setClasses:v22 forSelector:sel_xpc_successPINForDevice_ argumentIndex:0 ofReply:0];
  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  [v2 setClasses:v23 forSelector:sel_xpc_startBugSessionWithIdentifier_configuration_caller_target_ argumentIndex:0 ofReply:0];
  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];

  [v2 setClasses:v26 forSelector:sel_xpc_startBugSessionWithIdentifier_configuration_caller_target_ argumentIndex:1 ofReply:0];
  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];

  [v2 setClasses:v29 forSelector:sel_xpc_startBugSessionWithIdentifier_configuration_caller_target_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v29 forSelector:sel_xpc_startBugSessionWithIdentifier_configuration_caller_target_ argumentIndex:3 ofReply:0];
  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];

  [v2 setClasses:v32 forSelector:sel_xpc_adoptFiles_forSession_ argumentIndex:0 ofReply:0];
  v33 = MEMORY[0x277CBEB98];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];

  [v2 setClasses:v35 forSelector:sel_xpc_listClientXPCConnectionsReply_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)remoteXPCObjectForApplicationPid:(id)pid
{
  pidCopy = pid;
  v5 = [(DEDXPCConnector *)self _connectionForPid:pidCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__DEDXPCConnector_remoteXPCObjectForApplicationPid___block_invoke;
  v9[3] = &unk_278F66E38;
  v9[4] = self;
  v10 = pidCopy;
  v6 = pidCopy;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __52__DEDXPCConnector_remoteXPCObjectForApplicationPid___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__DEDXPCConnector_remoteXPCObjectForApplicationPid___block_invoke_cold_1(a1);
  }
}

- (DEDXPCProtocol)diagnosticextensionsdXPCInterface
{
  v13 = *MEMORY[0x277D85DE8];
  diagnosticextensionsdConnection = [(DEDXPCConnector *)self diagnosticextensionsdConnection];

  if (!diagnosticextensionsdConnection)
  {
    if ([(DEDXPCConnector *)self connectionRestartCount]> 4)
    {
      v4 = [(DEDXPCConnector *)self log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        connectionRestartCount = 5;
        v5 = "diagnosticextensionsd connection has been lost more than [%lu] times. Will not retry";
        goto LABEL_7;
      }
    }

    else
    {
      [(DEDXPCConnector *)self _initializeDiagnosticextensionsdConnection];
      [(DEDXPCConnector *)self setConnectionRestartCount:[(DEDXPCConnector *)self connectionRestartCount]+ 1];
      v4 = [(DEDXPCConnector *)self log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        connectionRestartCount = [(DEDXPCConnector *)self connectionRestartCount];
        v5 = "diagnosticextensionsd connection has been lost. Restarting it. count: [%lu]";
LABEL_7:
        _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
      }
    }
  }

  diagnosticextensionsdConnection2 = [(DEDXPCConnector *)self diagnosticextensionsdConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__DEDXPCConnector_diagnosticextensionsdXPCInterface__block_invoke;
  v10[3] = &unk_278F661A8;
  v10[4] = self;
  v7 = [diagnosticextensionsdConnection2 remoteObjectProxyWithErrorHandler:v10];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __52__DEDXPCConnector_diagnosticextensionsdXPCInterface__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __52__DEDXPCConnector_diagnosticextensionsdXPCInterface__block_invoke_cold_1();
  }
}

- (void)_storeAppConnection:(id)connection
{
  v11 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [(DEDXPCConnector *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = [connectionCopy processIdentifier];
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Storing connection from PID [%i]", v10, 8u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
  appConnections = [(DEDXPCConnector *)selfCopy appConnections];
  [appConnections setObject:connectionCopy forKeyedSubscript:v7];

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_connectionForPid:(id)pid
{
  pidCopy = pid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appConnections = [(DEDXPCConnector *)selfCopy appConnections];
  v7 = [appConnections objectForKeyedSubscript:pidCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)clientXPCInterfaceFromInbound:(id)inbound
{
  senderPid = [inbound senderPid];
  v5 = [(DEDXPCConnector *)self remoteXPCObjectForApplicationPid:senderPid];

  return v5;
}

- (void)_initializeDiagnosticextensionsdConnection
{
  v6 = +[DEDConfiguration sharedInstance];
  if ([(DEDXPCConnector *)self connType]== 1)
  {
    sharedAnonymousListener = [v6 sharedAnonymousListener];
    endpoint = [sharedAnonymousListener endpoint];
    v5 = [(DEDXPCConnector *)self connectionWithEndpoint:endpoint forMachService:0];
    [(DEDXPCConnector *)self setDiagnosticextensionsdConnection:v5];
  }

  else
  {
    sharedAnonymousListener = [v6 machServiceName];
    endpoint = [(DEDXPCConnector *)self connectionWithEndpoint:0 forMachService:sharedAnonymousListener];
    [(DEDXPCConnector *)self setDiagnosticextensionsdConnection:endpoint];
  }
}

- (NSArray)clientConnections
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  appConnections = [(DEDXPCConnector *)selfCopy appConnections];
  allKeys = [appConnections allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_opt_new();
        [v11 setPid:v10];
        [v3 addObject:v11];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (DEDXPCConnectorDelegate)xpcConnectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnectorDelegate);

  return WeakRetained;
}

void __33__DEDXPCConnector_startForDaemon__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "listening for service %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __33__DEDXPCConnector_startForDaemon__block_invoke_cold_2(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_248AD7000, a1, OS_LOG_TYPE_DEBUG, "resuming listener from thread %@", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validateConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connectionWithEndpoint:(NSObject *)a3 forMachService:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 description];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "failed to initialize connection for mach service %{public}@ or endpoint %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __52__DEDXPCConnector_remoteXPCObjectForApplicationPid___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__DEDXPCConnector_diagnosticextensionsdXPCInterface__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end