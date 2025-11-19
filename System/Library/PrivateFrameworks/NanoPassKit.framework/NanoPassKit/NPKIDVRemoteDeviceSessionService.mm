@interface NPKIDVRemoteDeviceSessionService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NPKIDVRemoteDeviceSessionService)initWithRemoteDeviceEventsCoordinator:(id)a3 connectionCoordinator:(id)a4 preflightManager:(id)a5;
- (NPKIDVRemoteDeviceSessionServiceDataSource)dataSource;
- (void)_addConnection:(id)a3;
- (void)_addServer:(id)a3;
- (void)_removeServer:(id)a3;
- (void)dealloc;
- (void)remoteDevicesSessionServer:(id)a3 provisionedCredentialCountsForType:(unint64_t)a4 completion:(id)a5;
- (void)remoteDevicesSessionServer:(id)a3 remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)a4 completion:(id)a5;
- (void)teardownCurrentRemoteDeviceSessions;
@end

@implementation NPKIDVRemoteDeviceSessionService

- (NPKIDVRemoteDeviceSessionService)initWithRemoteDeviceEventsCoordinator:(id)a3 connectionCoordinator:(id)a4 preflightManager:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = NPKIDVRemoteDeviceSessionService;
  v12 = [(NPKIDVRemoteDeviceSessionService *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_remoteDeviceEventCoordinator, a3);
    objc_storeStrong(&v13->_remoteDeviceConnectionCoordinator, a4);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sessionServers = v13->_sessionServers;
    v13->_sessionServers = v14;

    objc_storeStrong(&v13->_preflightManager, a5);
    v16 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.NanoPassbook.IDVRemoteDeviceService.session.server"];
    [(NSXPCListener *)v16 setDelegate:v13];
    xpcListener = v13->_xpcListener;
    v13->_xpcListener = v16;
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
        v25 = v13;
        v26 = 2112;
        v27 = @"com.apple.NanoPassbook.IDVRemoteDeviceService.session.server";
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: New Remote Device service Listener created:%@ with serviceName:%@", buf, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_sessionServers enumerateObjectsUsingBlock:&__block_literal_global_33];
  sessionServers = self->_sessionServers;
  self->_sessionServers = 0;

  v4.receiver = self;
  v4.super_class = NPKIDVRemoteDeviceSessionService;
  [(NPKIDVRemoteDeviceSessionService *)&v4 dealloc];
}

void __43__NPKIDVRemoteDeviceSessionService_dealloc__block_invoke(uint64_t a1, void *a2)
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

    v11 = [(NSXPCListener *)v7 valueForEntitlement:@"com.apple.NanoPassbook.IDVRemoteDeviceService.session.client"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v11 BOOLValue]& 1) != 0)
    {
      [(NPKIDVRemoteDeviceSessionService *)self _addConnection:v7];
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

- (void)remoteDevicesSessionServer:(id)a3 provisionedCredentialCountsForType:(unint64_t)a4 completion:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(NPKIDVRemoteDeviceSessionService *)self dataSource];

  if (v8)
  {
    v9 = [(NPKIDVRemoteDeviceSessionService *)self dataSource];
    [v9 remoteDevicesSessionService:self provisionedCredentialCountsForType:a4 completion:v7];
  }

  else
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch provisioned credential count! No data source found.", v17, 2u);
      }
    }

    if (v7)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"No data source found";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v14];

      v7[2](v7, 0, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)remoteDevicesSessionServer:(id)a3 remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)a4 completion:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(NPKIDVRemoteDeviceSessionService *)self dataSource];

  if (v8)
  {
    v9 = [(NPKIDVRemoteDeviceSessionService *)self dataSource];
    [v9 remoteDevicesSessionService:self remoteBiometricAuthenticationStatusForCredentialType:a4 completion:v7];
  }

  else
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unable to fetch remote biometric authentication status! No data source found.", v17, 2u);
      }
    }

    if (v7)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"No data source found";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v14];

      v7[2](v7, 0, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)teardownCurrentRemoteDeviceSessions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %@, requested teardown all current remote device sessions", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableSet *)self->_sessionServers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKIDVRemoteDeviceSessionService *)self _removeServer:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addConnection:(id)a3
{
  v4 = a3;
  v5 = [[NPKIDVRemoteDeviceSessionServer alloc] initWithConnection:v4 eventsCoordinator:self->_remoteDeviceEventCoordinator connectionCoordinator:self->_remoteDeviceConnectionCoordinator preflightManager:self->_preflightManager];
  [(NPKIDVRemoteDeviceSessionServer *)v5 setDataSource:self];
  v6 = NPKIDVRemoteDeviceServiceSessionServerProtocolInterface();
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:v5];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke;
  v16[3] = &unk_279945930;
  objc_copyWeak(&v18, &from);
  objc_copyWeak(&v19, &location);
  v7 = v5;
  v17 = v7;
  [v4 setInvalidationHandler:v16];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke_25;
  v12 = &unk_279945930;
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, &location);
  v8 = v7;
  v13 = v8;
  [v4 setInterruptionHandler:&v9];
  [(NPKIDVRemoteDeviceSessionService *)self _addServer:v8, v9, v10, v11, v12];
  [v4 resume];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
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

  [v3 _removeServer:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

void __51__NPKIDVRemoteDeviceSessionService__addConnection___block_invoke_25(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
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

  [v3 _removeServer:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addServer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableSet *)self->_sessionServers addObject:v4];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 connection];
      v9 = [v4 connection];
      v11 = 138412546;
      v12 = v8;
      v13 = 1024;
      v14 = [v9 processIdentifier];
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Added new connection:{%@, PID:%d}", &v11, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeServer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 connection];
  [v5 invalidate];

  [v4 clearConnectionReference];
  [(NSMutableSet *)self->_sessionServers removeObject:v4];
  v6 = pk_Payment_log();
  LODWORD(v5) = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 connection];
      v9 = [v4 connection];
      v11 = 138412546;
      v12 = v8;
      v13 = 1024;
      v14 = [v9 processIdentifier];
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Removed new connection:{%@, PID:%d}", &v11, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (NPKIDVRemoteDeviceSessionServiceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end