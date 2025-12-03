@interface NPKIDVRemoteDevicesManager
- (NPKIDVRemoteDevicesManager)initWithDataSource:(id)source;
- (NPKIDVRemoteDevicesManagerDataSource)dataSource;
- (id)biometricPassPreflightManagerPairedDeviceOSVersion:(id)version;
- (void)_handleDeviceDidUnpair:(id)unpair;
- (void)_initRemoteDeviceService;
- (void)_registerForDeviceEvents;
- (void)_teardownConnections;
- (void)biometricPassPreflightManager:(id)manager provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion;
- (void)deviceDidBecomeActive:(id)active;
- (void)deviceDidBecomeInactive;
- (void)deviceDidDeletePass:(id)pass;
- (void)noDeviceDidBecomeActive;
- (void)remoteDeviceConnectionCoordinator:(id)coordinator didReceivePrearmStatusUpdate:(int64_t)update;
- (void)remoteDevicesSessionService:(id)service provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion;
- (void)remoteDevicesSessionService:(id)service remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion;
@end

@implementation NPKIDVRemoteDevicesManager

- (NPKIDVRemoteDevicesManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = NPKIDVRemoteDevicesManager;
  v5 = [(NPKIDVRemoteDevicesManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v7 = objc_alloc_init(NPKIDVRemoteDeviceServiceEventsCoordinator);
    eventsCoordinator = v6->_eventsCoordinator;
    v6->_eventsCoordinator = v7;

    v9 = objc_alloc_init(NPKIDVRemoteDeviceConnectionCoordinator);
    connectionCoordinator = v6->_connectionCoordinator;
    v6->_connectionCoordinator = v9;

    v11 = [[NPKBiometricPassPreflightManager alloc] initWithDataSource:v6];
    preflightManager = v6->_preflightManager;
    v6->_preflightManager = v11;

    [(NPKIDVRemoteDevicesManager *)v6 _registerForDeviceEvents];
  }

  return v6;
}

- (void)deviceDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Handling Device did become active", v8, 2u);
    }
  }

  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator initializeWithDevice:activeCopy];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator startCurrentRemoteDeviceConnection];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator updatePrearmStatus];
  [(NPKIDVRemoteDevicesManager *)self _initRemoteDeviceService];
}

- (void)noDeviceDidBecomeActive
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Handling No Device did become active", v6, 2u);
    }
  }

  [(NPKIDVRemoteDevicesManager *)self _initRemoteDeviceService];
}

- (void)deviceDidBecomeInactive
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Handling Device did became Inactive", v6, 2u);
    }
  }

  [(NPKIDVRemoteDevicesManager *)self _teardownConnections];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator teardownCurrentRemoteDeviceContextWithReason:0];
}

- (void)deviceDidDeletePass:(id)pass
{
  passCopy = pass;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Handling device pass deletion event", v8, 2u);
    }
  }

  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator handlePassDeletionForPass:passCopy];
}

- (void)_handleDeviceDidUnpair:(id)unpair
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Handling Device did unpair", v7, 2u);
    }
  }

  [(NPKIDVRemoteDevicesManager *)self _teardownConnections];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator teardownCurrentRemoteDeviceContextWithReason:1];
}

- (void)remoteDeviceConnectionCoordinator:(id)coordinator didReceivePrearmStatusUpdate:(int64_t)update
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromNPKIDVDeviceCredentialPrearmStatus(update);
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: :%@ Received credential prearm status update:%@", &v11, 0x16u);
    }
  }

  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self->_eventsCoordinator setNeedsPrearmCredential:update == 1];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)biometricPassPreflightManagerPairedDeviceOSVersion:(id)version
{
  dataSource = [(NPKIDVRemoteDevicesManager *)self dataSource];
  v5 = [dataSource remoteDevicesManagerPairedDeviceOSVersion:self];

  return v5;
}

- (void)biometricPassPreflightManager:(id)manager provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDevicesManager *)self dataSource];
  [dataSource remoteDevicesManager:self provisionedCredentialCountsForType:type completion:completionCopy];
}

- (void)remoteDevicesSessionService:(id)service provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDevicesManager *)self dataSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__NPKIDVRemoteDevicesManager_remoteDevicesSessionService_provisionedCredentialCountsForType_completion___block_invoke;
  v10[3] = &unk_279947288;
  v11 = completionCopy;
  v9 = completionCopy;
  [dataSource remoteDevicesManager:self provisionedCredentialCountsForType:type completion:v10];
}

uint64_t __104__NPKIDVRemoteDevicesManager_remoteDevicesSessionService_provisionedCredentialCountsForType_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)remoteDevicesSessionService:(id)service remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  dataSource = [(NPKIDVRemoteDevicesManager *)self dataSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __122__NPKIDVRemoteDevicesManager_remoteDevicesSessionService_remoteBiometricAuthenticationStatusForCredentialType_completion___block_invoke;
  v10[3] = &unk_2799467D0;
  v11 = completionCopy;
  v9 = completionCopy;
  [dataSource remoteDevicesManager:self remoteBiometricAuthenticationStatusForCredentialType:type completion:v10];
}

uint64_t __122__NPKIDVRemoteDevicesManager_remoteDevicesSessionService_remoteBiometricAuthenticationStatusForCredentialType_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)_teardownConnections
{
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator teardownCurrentRemoteDeviceConnection];
  [(NPKIDVRemoteDeviceSessionService *)self->_remoteDeviceService teardownCurrentRemoteDeviceSessions];
  remoteDeviceService = self->_remoteDeviceService;
  self->_remoteDeviceService = 0;
}

- (void)_registerForDeviceEvents
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleDeviceDidUnpair_ name:*MEMORY[0x277D2BC78] object:mEMORY[0x277D2BCF8]];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self->_connectionCoordinator addObserver:self];
}

- (void)_initRemoteDeviceService
{
  v3 = [[NPKIDVRemoteDeviceSessionService alloc] initWithRemoteDeviceEventsCoordinator:self->_eventsCoordinator connectionCoordinator:self->_connectionCoordinator preflightManager:self->_preflightManager];
  remoteDeviceService = self->_remoteDeviceService;
  self->_remoteDeviceService = v3;

  v5 = self->_remoteDeviceService;

  [(NPKIDVRemoteDeviceSessionService *)v5 setDataSource:self];
}

- (NPKIDVRemoteDevicesManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end