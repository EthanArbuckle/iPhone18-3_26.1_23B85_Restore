@interface ClientConnection
+ (id)poolManager;
- (BOOL)_isPrimaryObjectTypeForAccessLogging:(id)a3;
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)addressURLIsAccountOwner:(id)a3;
- (BOOL)cancelOperationsWithToken:(unsigned int)a3;
- (BOOL)initializationOptionsSet;
- (BOOL)isAlarmRestricted:(void *)a3 forAction:(unint64_t)a4;
- (BOOL)isCalendarItemManaged:(void *)a3;
- (BOOL)isCalendarItemRestricted:(void *)a3 forAction:(unint64_t)a4;
- (BOOL)isCalendarManaged:(void *)a3;
- (BOOL)isCalendarRestricted:(void *)a3 forAction:(unint64_t)a4;
- (BOOL)isNotificationRestricted:(void *)a3 forAction:(unint64_t)a4;
- (BOOL)isStoreManaged:(void *)a3;
- (BOOL)isStoreRestricted:(void *)a3 forAction:(unint64_t)a4 strict:(BOOL)a5;
- (BOOL)reminderAccessGranted;
- (BOOL)trySetDatabaseInitializationOptions:(id)a3;
- (BOOL)withDatabaseForObject:(id)a3 perform:(id)a4;
- (BOOL)withDatabaseForObjects:(id)a3 options:(unint64_t)a4 perform:(id)a5;
- (CADAccountAccessHandler)accountAccessHandler;
- (CADPermissionValidator)permissionValidator;
- (CDBAccountInfo)localAccountInfo;
- (ClientConnection)initWithXPCConnection:(id)a3 tccPermissionChecker:(id)a4;
- (NSString)changeTrackingID;
- (NSString)effectiveApplicationIdentifier;
- (NSString)effectiveTeamIdentifier;
- (id)_accountsProvider;
- (id)_createManagedConfigAccountAccessHandlerWithValidator:(id)a3;
- (id)_databaseProvider;
- (id)_objectIDsResolvedAndLoggable:(id)a3;
- (id)_objectIDsToBeResolved:(id)a3;
- (id)_permissionValidator;
- (id)_resolveObjectIDForLoggingAccessToEntity:(void *)a3;
- (id)_resolveObjectIDsForLogging:(id)a3;
- (id)accountsProvider;
- (id)agentWithToken:(int)a3;
- (id)blockList;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)removeAgentWithToken:(int)a3;
- (id)restrictedCalendarRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4;
- (id)restrictedStoreRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4;
- (id)strictAccountAccessHandler;
- (int)databaseRestoreGeneration;
- (int)eventAccessLevel;
- (int)managedConfigurationAccountAccessForStore:(void *)a3;
- (void)_closeDatabases;
- (void)_initAccountAccessHandler;
- (void)_logAccessToResolvedObjectIDs:(id)a3;
- (void)addAgent:(id)a3;
- (void)addCreatedAuxDatabase:(CalDatabase *)a3;
- (void)addOperation:(id)a3;
- (void)clearCachedAuthorizationStatus;
- (void)closeDatabases;
- (void)dealloc;
- (void)dumpState;
- (void)handleDatabaseChanged;
- (void)invalidateConnection;
- (void)logAccessToEntities:(id)a3;
- (void)logAccessToObject:(id)a3;
- (void)logAccessToObjects:(id)a3;
- (void)reportIntegrityErrors:(id)a3;
- (void)restoreGenerationChangedExternally;
- (void)withAllDatabasesPerform:(id)a3;
@end

@implementation ClientConnection

- (CADPermissionValidator)permissionValidator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ClientConnection_permissionValidator__block_invoke;
  v5[3] = &unk_27851B050;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_permissionValidator
{
  dispatch_assert_queue_V2(self->_dbQueue);
  permissionValidator = self->_permissionValidator;
  if (!permissionValidator)
  {
    v4 = [CADDefaultPermissionValidator alloc];
    v5 = [(ClientConnection *)self identity];
    v6 = [(CADDefaultPermissionValidator *)v4 initWithClientIdentity:v5 tccPermissionChecker:self->_tccPermissionChecker];

    v7 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions mockPermissions];
    if (v7)
    {
      v8 = [[CADCombinedPermissionValidator alloc] initWithPermissionValidator:v6 andValidator:v7];
    }

    else
    {
      v8 = v6;
    }

    v9 = self->_permissionValidator;
    self->_permissionValidator = v8;

    permissionValidator = self->_permissionValidator;
  }

  return permissionValidator;
}

uint64_t __39__ClientConnection_permissionValidator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _permissionValidator];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_databaseProvider
{
  dispatch_assert_queue_V2(self->_dbQueue);
  databaseProvider = self->_databaseProvider;
  if (!databaseProvider)
  {
    v4 = +[ClientConnection poolManager];
    v5 = [v4 poolForClient:self options:self->_databaseInitializationOptions];
    v6 = self->_databaseProvider;
    self->_databaseProvider = v5;

    [(CADDatabaseConnectionProvider *)self->_databaseProvider addDelegate:self];
    v7 = self->_configuration;
    if (!v7)
    {
      v7 = objc_alloc_init(CADPooledDatabaseConfiguration);
      configuration = self->_configuration;
      self->_configuration = v7;

      [(CADPooledDatabaseConfiguration *)v7 setInMemoryChangeTrackingClientID:CalDatabaseNextInMemoryChangeTrackingClientID()];
      v9 = [(ClientIdentity *)self->_identity clientName];
      [(CADPooledDatabaseConfiguration *)v7 setClientName:v9];
    }

    v10 = [(ClientConnection *)self changeTrackingID];
    [(CADPooledDatabaseConfiguration *)v7 setClientIdentifier:v10];

    [(CADPooledDatabaseConfiguration *)v7 setEnablePropertyModificationLogging:[(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions enablePropertyModificationLogging]];
    databaseProvider = self->_databaseProvider;
  }

  return databaseProvider;
}

- (BOOL)initializationOptionsSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__ClientConnection_initializationOptionsSet__block_invoke;
  v5[3] = &unk_27851B050;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)eventAccessLevel
{
  v2 = [(ClientConnection *)self permissionValidator];
  v3 = [v2 eventAccessLevel];

  return v3;
}

+ (id)poolManager
{
  if (poolManager_onceToken != -1)
  {
    +[ClientConnection poolManager];
  }

  v3 = poolManager_defaultManager;

  return v3;
}

void __45__ClientConnection_databaseRestoreGeneration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _databaseProvider];
  *(*(*(a1 + 40) + 8) + 24) = [v2 databaseRestoreGeneration];
}

- (int)databaseRestoreGeneration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ClientConnection_databaseRestoreGeneration__block_invoke;
  v5[3] = &unk_27851B050;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)changeTrackingID
{
  v3 = [(ClientIdentity *)self->_identity applicationIdentifier];

  v4 = [(ClientConnection *)self databaseInitializationOptions];
  v5 = [v4 changeTrackingClientId];
  v6 = v5;
  if (v3)
  {
    v7 = [(ClientIdentity *)self->_identity applicationIdentifier];
    v8 = [v6 clientIdWithBundleId:v7];
  }

  else
  {
    v8 = [v5 clientId];
  }

  return v8;
}

- (CADAccountAccessHandler)accountAccessHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ClientConnection_accountAccessHandler__block_invoke;
  v5[3] = &unk_27851B078;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__ClientConnection_accountAccessHandler__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (!v3)
  {
    [v2 _initAccountAccessHandler];
    v3 = *(*(a1 + 32) + 24);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_operations;
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_operations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_operations removeAllObjects];
  objc_sync_exit(v3);

  v9.receiver = self;
  v9.super_class = ClientConnection;
  [(ClientConnection *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initAccountAccessHandler
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = +[CADRealCalendarDatabaseDataProvider realDataProvider];
  v4 = [[CADGroupedAccountAccessHandler alloc] initWithDatabaseDataProvider:v3];
  v5 = [(ClientConnection *)self _permissionValidator];
  v39 = [v5 shouldTrustClientEnforcedManagedConfigurationAccess];
  if (v39)
  {
    v6 = [[CADGroupedAccountAccessHandler alloc] initWithDatabaseDataProvider:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions allowDelegateSources];
  if (!v7)
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v37 = [(ClientConnection *)self identity];
      [v37 clientName];
      v11 = v10 = v6;
      v12 = MEMORY[0x277CCABB0];
      v13 = [(ClientConnection *)self identity];
      v14 = [v12 numberWithInt:{objc_msgSend(v13, "pid")}];
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_INFO, "XPC Client [%@] (PID: [%@]). allowDelegateSources is NO. Adding Excluded Delegate Access Handler", buf, 0x16u);

      v6 = v10;
    }

    v15 = [(CADAccountAccessHandler *)[CADExcludeDelegatesAccountAccessHandler alloc] initWithDatabaseDataProvider:v3];
    [(CADGroupedAccountAccessHandler *)v4 addAccountAccessHandler:v15];
    [(CADGroupedAccountAccessHandler *)v6 addAccountAccessHandler:v15];
  }

  if ([(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions allowIntegrations])
  {
    v16 = !v7;
  }

  else
  {
    v17 = [(CADAccountAccessHandler *)[CADExcludeIntegrationsAccountAccessHandler alloc] initWithDatabaseDataProvider:v3];
    [(CADGroupedAccountAccessHandler *)v4 addAccountAccessHandler:v17];
    [(CADGroupedAccountAccessHandler *)v6 addAccountAccessHandler:v17];

    v16 = 1;
  }

  v18 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions allowedSourceIdentifiers];

  if (v18)
  {
    v19 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = [(ClientConnection *)self identity];
      v22 = [v21 clientName];
      v23 = MEMORY[0x277CCABB0];
      [(ClientConnection *)self identity];
      v24 = v38 = v6;
      v25 = [v23 numberWithInt:{objc_msgSend(v24, "pid")}];
      v26 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions allowedSourceIdentifiers];
      *buf = 138543874;
      v41 = v22;
      v42 = 2114;
      v43 = v25;
      v44 = 2114;
      v45 = v26;
      _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_INFO, "XPC Client [%{public}@] (PID: [%{public}@]). allowedSourceIdentifiers is not nil. Adding Allow Specified Accounts Access Handler for sources %{public}@", buf, 0x20u);

      v6 = v38;
    }

    v27 = [CADAllowSpecifiedAccountsAccessHandler alloc];
    v28 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions allowedSourceIdentifiers];
    v29 = [(CADAllowSpecifiedAccountsAccessHandler *)v27 initWithAllowedSourceIdentifiers:v28 databaseDataProvider:v3];

    [(CADGroupedAccountAccessHandler *)v4 addAccountAccessHandler:v29];
    [(CADGroupedAccountAccessHandler *)v6 addAccountAccessHandler:v29];

    v16 = 1;
  }

  v30 = [(ClientConnection *)self _createManagedConfigAccountAccessHandlerWithValidator:v5];
  if (v30)
  {
    [(CADGroupedAccountAccessHandler *)v4 addAccountAccessHandler:v30];
  }

  v31 = [[CADFilterSuggestedCalendarsAccessHandler alloc] initWithDatabaseDataProvider:v3 permissionValidator:v5];
  [(CADGroupedAccountAccessHandler *)v4 addAccountAccessHandler:v31];
  if (v39)
  {
    if (v16)
    {
      v32 = v6;
    }

    else
    {
      v32 = [[CADAccountAccessHandler alloc] initWithDatabaseDataProvider:v3];
    }

    accountAccessHandler = self->_accountAccessHandler;
    self->_accountAccessHandler = v32;

    v35 = v4;
    strictAccountAccessHandler = self->_strictAccountAccessHandler;
    self->_strictAccountAccessHandler = v35;
  }

  else
  {
    objc_storeStrong(&self->_accountAccessHandler, v4);
    strictAccountAccessHandler = self->_strictAccountAccessHandler;
    self->_strictAccountAccessHandler = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_accountsProvider
{
  dispatch_assert_queue_V2(self->_dbQueue);
  accountsProvider = self->_accountsProvider;
  if (!accountsProvider)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v5 = [[CADACAccountStoreAccountsProvider alloc] initWithAccountStore:v4];
    v6 = self->_accountsProvider;
    self->_accountsProvider = v5;

    accountsProvider = self->_accountsProvider;
  }

  return accountsProvider;
}

- (void)clearCachedAuthorizationStatus
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ClientConnection_clearCachedAuthorizationStatus__block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  dispatch_sync(dbQueue, block);
  v4 = [(ClientConnection *)self cadOperationProxy];
  [v4 clearCachedAuthorizationStatus];
}

void __50__ClientConnection_clearCachedAuthorizationStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (id)strictAccountAccessHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ClientConnection_strictAccountAccessHandler__block_invoke;
  v5[3] = &unk_27851B078;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__ClientConnection_strictAccountAccessHandler__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v3 = [*(v2 + 152) management];
    v2 = *(a1 + 32);
    if (v3)
    {
      [v2 _initAccountAccessHandler];
      v2 = *(a1 + 32);
    }
  }

  v4 = *(v2 + 32);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, v4);
}

- (ClientConnection)initWithXPCConnection:(id)a3 tccPermissionChecker:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v33.receiver = self;
  v33.super_class = ClientConnection;
  v9 = [(ClientConnection *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, a3);
    objc_storeStrong(&v10->_tccPermissionChecker, a4);
    v11 = [ClientIdentity alloc];
    if (v7)
    {
      [v7 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v12 = [(ClientIdentity *)v11 initWithAuditToken:buf];
    identity = v10->_identity;
    v10->_identity = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    operations = v10->_operations;
    v10->_operations = v14;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.calaccessd.clientconnection.async.%d", objc_msgSend(v7, "processIdentifier")];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    asynchronousOperationQueue = v10->_asynchronousOperationQueue;
    v10->_asynchronousOperationQueue = v19;

    v21 = dispatch_queue_create("com.apple.calaccessd.clientconnection-dbqueue", 0);
    dbQueue = v10->_dbQueue;
    v10->_dbQueue = v21;

    v23 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      v25 = [(ClientConnection *)v10 identity];
      v26 = [v25 pid];
      v27 = [(ClientConnection *)v10 identity];
      v28 = [v27 clientName];
      *buf = 67109378;
      *&buf[4] = v26;
      *&buf[8] = 2112;
      *&buf[10] = v28;
      _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_INFO, "Client connected: %i (%@)", buf, 0x12u);
    }

    v29 = [[CADOperationProxy alloc] initWithClientConnection:v10];
    cadOperationProxy = v10->_cadOperationProxy;
    v10->_cadOperationProxy = v29;

    v10->_agentLock._os_unfair_lock_opaque = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __31__ClientConnection_poolManager__block_invoke()
{
  poolManager_defaultManager = objc_alloc_init(CADDatabaseConnectionPoolManager);

  return MEMORY[0x2821F96F8]();
}

- (id)_createManagedConfigAccountAccessHandlerWithValidator:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CADRealCalendarDatabaseDataProvider realDataProvider];
  v6 = [v4 hasSyncClientEntitlement];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions managementBundleIdentifier];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions remoteClientIdentity];
      v9 = [v10 bundleIdentifier];

      if (!v9)
      {
        v11 = [(ClientConnection *)self identity];
        v9 = [v11 bundleIdentifier];

        if (!v9)
        {
          v12 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v13 = v12;
            v14 = [(ClientConnection *)self identity];
            v15 = [v14 clientName];
            v16 = MEMORY[0x277CCABB0];
            v17 = [(ClientConnection *)self identity];
            v18 = [v16 numberWithInt:{objc_msgSend(v17, "pid")}];
            v27 = 138412546;
            v28 = v15;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_DEBUG, "XPC Client [%@] (PID: [%@]) does not have a bundle identifier. Account access behavior via MDM API will be undefined.", &v27, 0x16u);
          }

          v9 = 0;
        }
      }
    }

    CADAccountManagementFromSource([(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions management]);
    v20 = v19;
    v21 = [MEMORY[0x277D262A0] sharedConnection];
    v22 = [[CADMCProfileConnectionManagedConfigurationHandler alloc] initWithMCProfileConnection:v21];
    v23 = [CADMCAccountAccessHandler alloc];
    v24 = [(ClientConnection *)self _accountsProvider];
    v7 = [(CADMCAccountAccessHandler *)v23 initWithDatabaseDataProvider:v5 accountsProvider:v24 managedConfigHandler:v22 accountManagement:v20 bundleIdentifier:v9];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)accountsProvider
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ClientConnection_accountsProvider__block_invoke;
  v5[3] = &unk_27851B050;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__ClientConnection_accountsProvider__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accountsProvider];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)handleDatabaseChanged
{
  v3 = [(ClientConnection *)self accountAccessHandler];
  [v3 reset];

  v4 = [(ClientConnection *)self strictAccountAccessHandler];
  [v4 reset];
}

- (BOOL)trySetDatabaseInitializationOptions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, "ClientConnection trySetDatabaseInitializationOptions. clientProvidedOptions:%{public}@", buf, 0xCu);
  }

  [v4 purifyOptions];
  v6 = [v4 validOptionsForConnection:self];
  v7 = [v4 isEqualToOptions:v6];
  if (v7)
  {
    if (_os_feature_enabled_impl())
    {
      v8 = [v6 privacyClientIdentity];

      if (!v8)
      {
        v9 = [(ClientConnection *)self identity];
        v10 = v9;
        if (v9)
        {
          [v9 auditToken];
        }

        else
        {
          *buf = 0u;
          v21 = 0u;
        }

        v14 = PAAuthenticatedClientIdentity();
        [v6 setPrivacyClientIdentity:v14];
      }
    }

    dbQueue = self->_dbQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__ClientConnection_trySetDatabaseInitializationOptions___block_invoke;
    v18[3] = &unk_27851AB28;
    v18[4] = self;
    v19 = v6;
    dispatch_sync(dbQueue, v18);
  }

  else
  {
    v11 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_ERROR, "Error validating database initialization options for access.", buf, 2u);
    }

    v12 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_ERROR, "clientProvidedOptions:%{public}@", buf, 0xCu);
    }

    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "validatedOptions: %{public}@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void __56__ClientConnection_trySetDatabaseInitializationOptions___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 72) = 1;
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 152);
  if (v3 != v2 && ([v3 isEqualToOptions:?] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 152);
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEFAULT, "Changed database initialization options to [%{public}@]", &v13, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6[11])
    {
      [v6 _closeDatabases];
      v6 = *(a1 + 32);
    }

    v7 = v6[3];
    v6[3] = 0;

    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addCreatedAuxDatabase:(CalDatabase *)a3
{
  dbQueue = self->_dbQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__ClientConnection_addCreatedAuxDatabase___block_invoke;
  v4[3] = &unk_27851B0A0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dbQueue, v4);
}

- (void)withAllDatabasesPerform:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ClientConnection_withAllDatabasesPerform___block_invoke;
  block[3] = &unk_27851B0C8;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(dbQueue, block);
  v6 = [(ClientConnection *)self _currentPriority];
  [v15[5] performWithAllDatabasesWithConfiguration:v9[5] priority:v6 block:v4];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __44__ClientConnection_withAllDatabasesPerform___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _databaseProvider];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 96);
  v6 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (BOOL)withDatabaseForObjects:(id)a3 options:(unint64_t)a4 perform:(id)a5
{
  v31 = a4;
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = a5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v9)
  {
    v10 = *v57;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v57 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v56 + 1) + 8 * i);
        v13 = [v12 databaseID];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
        v15 = [v7 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v7 setObject:v15 forKeyedSubscript:v14];
        }

        [v15 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v9);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__6;
  v54 = __Block_byref_object_dispose__6;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__6;
  v48 = __Block_byref_object_dispose__6;
  v49 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ClientConnection_withDatabaseForObjects_options_perform___block_invoke;
  block[3] = &unk_27851B0C8;
  block[4] = self;
  block[5] = &v50;
  block[6] = &v44;
  dispatch_sync(dbQueue, block);
  v30 = [(ClientConnection *)self _currentPriority];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = v7;
  v17 = [obja countByEnumeratingWithState:&v39 objects:v62 count:16];
  if (v17)
  {
    v18 = *v40;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v39 + 1) + 8 * j);
        v21 = [v20 intValue];
        v22 = [obja objectForKeyedSubscript:v20];
        v23 = v51[5];
        v24 = v45[5];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __59__ClientConnection_withDatabaseForObjects_options_perform___block_invoke_2;
        v35[3] = &unk_27851B0F0;
        v37 = v32;
        v38 = v21;
        v25 = v22;
        v36 = v25;
        if (((v31 | [v23 performWithConfiguration:v24 priority:v30 databaseID:v21 block:v35]) & 1) == 0)
        {
          v27 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v61 = v20;
            _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_ERROR, "No database with ID %{public}@", buf, 0xCu);
          }

          v26 = 0;
          goto LABEL_22;
        }
      }

      v17 = [obja countByEnumeratingWithState:&v39 objects:v62 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
LABEL_22:

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

void __59__ClientConnection_withDatabaseForObjects_options_perform___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _databaseProvider];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 96);
  v6 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (BOOL)withDatabaseForObject:(id)a3 perform:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = -[ClientConnection withDatabaseID:perform:](self, "withDatabaseID:perform:", [a3 databaseID], v6);

  return a3;
}

void __43__ClientConnection_withDatabaseID_perform___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _databaseProvider];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 96);
  v6 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)closeDatabases
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ClientConnection_closeDatabases__block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  dispatch_sync(dbQueue, block);
}

- (void)_closeDatabases
{
  dispatch_assert_queue_V2(self->_dbQueue);
  databaseProvider = self->_databaseProvider;
  if (databaseProvider)
  {
    [(CADDatabaseConnectionProvider *)databaseProvider removeDelegate:self];
    v4 = +[ClientConnection poolManager];
    [v4 returnPool:self->_databaseProvider forClient:self];

    v5 = self->_databaseProvider;
    self->_databaseProvider = 0;
  }
}

- (void)restoreGenerationChangedExternally
{
  dispatch_assert_queue_not_V2(self->_dbQueue);
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ClientConnection_restoreGenerationChangedExternally__block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  dispatch_sync(dbQueue, block);
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(ClientConnection *)self xpcConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)invalidateConnection
{
  v2 = [(ClientConnection *)self xpcConnection];
  [v2 invalidate];
}

- (NSString)effectiveApplicationIdentifier
{
  identity = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions remoteClientIdentity];
  v4 = identity;
  if (!identity)
  {
    identity = self->_identity;
  }

  v5 = [identity applicationIdentifier];

  return v5;
}

- (NSString)effectiveTeamIdentifier
{
  identity = [(CADDatabaseInitializationOptions *)self->_databaseInitializationOptions remoteClientIdentity];
  v4 = identity;
  if (!identity)
  {
    identity = self->_identity;
  }

  v5 = [identity teamIdentifier];

  return v5;
}

- (void)addOperation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isAsynchronous])
  {
    v5 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      v6 = "Asynchronous operations are not supported: %@";
LABEL_8:
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
    }
  }

  else if ([v4 isReady])
  {
    v7 = self->_operations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_operations addObject:v4];
    objc_sync_exit(v7);

    v8 = self->_operations;
    asynchronousOperationQueue = self->_asynchronousOperationQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__ClientConnection_addOperation___block_invoke;
    v12[3] = &unk_27851AB28;
    v13 = v4;
    v14 = v8;
    v10 = v8;
    dispatch_async(asynchronousOperationQueue, v12);
  }

  else
  {
    v5 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      v6 = "Operations that aren't ready are not supported: %@";
      goto LABEL_8;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __33__ClientConnection_addOperation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) start];
  obj = *(a1 + 40);
  objc_sync_enter(obj);
  [*(a1 + 40) removeObject:*(a1 + 32)];
  objc_sync_exit(obj);
}

- (BOOL)cancelOperationsWithToken:(unsigned int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = self->_operations;
  objc_sync_enter(v5);
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_operations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 token] == a3)
        {
          [v12 cancel];
          [v6 addIndex:v9];
        }

        ++v9;
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v6 count];
  if (v13)
  {
    [(NSMutableArray *)self->_operations removeObjectsAtIndexes:v6];
  }

  objc_sync_exit(v5);
  v14 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (void)addAgent:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_agentLock);
  agents = self->_agents;
  if (!agents)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = self->_agents;
    self->_agents = v5;

    agents = self->_agents;
  }

  [(NSMutableArray *)agents addObject:v7];
  os_unfair_lock_unlock(&self->_agentLock);
}

- (id)removeAgentWithToken:(int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_agentLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_agents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        if ([v12 token] == a3)
        {
          v13 = v12;
          [(NSMutableArray *)self->_agents removeObjectAtIndex:v11];
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_agentLock);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)agentWithToken:(int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_agentLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_agents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 token] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_agentLock);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dumpState
{
  v3 = [(ClientConnection *)self identity];
  v2 = [v3 clientName];
  NSLog(&cfstr_Connection_0.isa, v2);
}

- (id)blockList
{
  v3 = [(ClientConnection *)self blockListOverride];

  if (v3)
  {
    [(ClientConnection *)self blockListOverride];
  }

  else
  {
    [MEMORY[0x277CF7770] sharedBlockList];
  }
  v4 = ;

  return v4;
}

- (BOOL)reminderAccessGranted
{
  v2 = [(ClientConnection *)self permissionValidator];
  v3 = [v2 hasReminderAccess];

  return v3;
}

- (void)logAccessToObject:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  if (v4 && v5)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(ClientConnection *)self logAccessToObjects:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logAccessToObjects:(id)a3
{
  v9 = a3;
  v4 = _os_feature_enabled_impl();
  if (v9)
  {
    if (v4)
    {
      v4 = [v9 count];
      if (v4)
      {
        v5 = [(ClientConnection *)self _objectIDsToBeResolved:v9];
        v6 = [(ClientConnection *)self _resolveObjectIDsForLogging:v5];
        v7 = [(ClientConnection *)self _objectIDsResolvedAndLoggable:v9];
        v8 = [v6 setByAddingObjectsFromSet:v7];
        [(ClientConnection *)self _logAccessToResolvedObjectIDs:v8];
      }
    }
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)logAccessToEntities:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  if (v4 && v5 && [v4 count])
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(ClientConnection *)self _resolveObjectIDForLoggingAccessToEntity:*(*(&v14 + 1) + 8 * v11), v14];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(ClientConnection *)self _logAccessToResolvedObjectIDs:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPrimaryObjectTypeForAccessLogging:(id)a3
{
  v3 = [a3 entityType];
  result = 1;
  if (v3 > 6 || ((1 << v3) & 0x46) == 0)
  {
    return v3 == 101;
  }

  return result;
}

- (id)_objectIDsToBeResolved:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!-[ClientConnection _isPrimaryObjectTypeForAccessLogging:](self, "_isPrimaryObjectTypeForAccessLogging:", v11, v14) && [v11 entityType] != -1)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_objectIDsResolvedAndLoggable:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(ClientConnection *)self _isPrimaryObjectTypeForAccessLogging:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_resolveObjectIDsForLogging:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ClientConnection__resolveObjectIDsForLogging___block_invoke;
  v7[3] = &unk_27851B140;
  v7[4] = self;
  v7[5] = &v8;
  [(ClientConnection *)self withDatabaseForObjects:v4 options:1 perform:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __48__ClientConnection__resolveObjectIDsForLogging___block_invoke(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = CADCopyEntityInDatabase(a4, *(*(&v15 + 1) + 8 * v10));
        if (v11)
        {
          v12 = v11;
          v13 = [*(a1 + 32) _resolveObjectIDForLoggingAccessToEntity:v11];
          if (v13)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
          }

          CFRelease(v12);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_resolveObjectIDForLoggingAccessToEntity:(void *)a3
{
  CADOwningEntity(a3);
  v4 = CADEntityCopyObjectID();
  if ([(ClientConnection *)self _isPrimaryObjectTypeForAccessLogging:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_logAccessToResolvedObjectIDs:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ClientConnection__logAccessToResolvedObjectIDs___block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  dispatch_sync(dbQueue, block);
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = objc_alloc(MEMORY[0x277CCAAB0]);
        v15 = [v14 initRequiringSecureCoding:{1, v21}];
        [v15 encodeObject:v12];
        v16 = [v15 encodedData];
        [v6 addObject:v16];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = objc_alloc(MEMORY[0x277D41288]);
  v18 = [v17 initWithAccessor:self->_privacyApplication forService:*MEMORY[0x277D6C118] assetIdentifiers:v6];
  v19 = [MEMORY[0x277D41260] sharedInstance];
  [v19 log:v18];

  v20 = *MEMORY[0x277D85DE8];
}

void __50__ClientConnection__logAccessToResolvedObjectIDs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 120))
  {
    v3 = [*(v1 + 152) privacyClientIdentity];

    v4 = objc_alloc(MEMORY[0x277D41270]);
    if (v3)
    {
      v12 = [*(*(a1 + 32) + 152) privacyClientIdentity];
      v5 = [v4 initWithTCCIdentity:v12];
      v6 = *(a1 + 32);
      v7 = *(v6 + 120);
      *(v6 + 120) = v5;
    }

    else
    {
      v8 = *(*(a1 + 32) + 144);
      if (v8)
      {
        [v8 auditToken];
      }

      else
      {
        memset(v13, 0, sizeof(v13));
      }

      v9 = [v4 initWithAuditToken:v13];
      v10 = *(a1 + 32);
      v11 = *(v10 + 120);
      *(v10 + 120) = v9;
    }
  }
}

- (id)restrictedCalendarRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4
{
  v6 = [(ClientConnection *)self accountAccessHandler];
  v7 = [v6 restrictedCalendarRowIDsForAction:a3 inDatabase:a4];

  return v7;
}

- (id)restrictedStoreRowIDsForAction:(unint64_t)a3 inDatabase:(CalDatabase *)a4
{
  v6 = [(ClientConnection *)self accountAccessHandler];
  v7 = [v6 restrictedStoreRowIDsForAction:a3 inDatabase:a4];

  return v7;
}

- (int)managedConfigurationAccountAccessForStore:(void *)a3
{
  v5 = [(ClientConnection *)self isStoreRestricted:a3 forAction:0 strict:1];
  result = [(ClientConnection *)self isStoreRestricted:a3 forAction:1 strict:1];
  if (result)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (v5)
  {
    return v7;
  }

  return result;
}

- (BOOL)isStoreRestricted:(void *)a3 forAction:(unint64_t)a4 strict:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    DatabaseForRecord = CalGetDatabaseForRecord();
    v10 = [(ClientConnection *)self accountAccessHandler];
    v11 = [v10 isActionAllowed:a4 forStore:a3 inDatabase:DatabaseForRecord] ^ 1;

    if ((v11 & 1) == 0 && v5)
    {
      v12 = [(ClientConnection *)self strictAccountAccessHandler];
      v13 = v12;
      if (v12)
      {
        v11 = [v12 isActionAllowed:a4 forStore:a3 inDatabase:DatabaseForRecord] ^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  else
  {
    v14 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_ERROR, "isStoreRestricted - NULL store passed in. Returning NO.", v16, 2u);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isCalendarRestricted:(void *)a3 forAction:(unint64_t)a4
{
  if (a3)
  {
    DatabaseForRecord = CalGetDatabaseForRecord();
    v7 = [MEMORY[0x277CCABB0] numberWithInt:CalCalendarGetUID()];
    v8 = [(ClientConnection *)self restrictedCalendarRowIDsForAction:a4 inDatabase:DatabaseForRecord];
    LOBYTE(self) = [v8 containsObject:v7];

    return self;
  }

  else
  {
    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "isCalendarRestricted - NULL calendar passed in. Returning NO.", v11, 2u);
    }

    return 0;
  }
}

- (BOOL)isCalendarItemRestricted:(void *)a3 forAction:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = CalCalendarItemCopyCalendar();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [(ClientConnection *)self isCalendarRestricted:v6 forAction:a4];
  CFRelease(v7);
  return v8;
}

- (BOOL)isNotificationRestricted:(void *)a3 forAction:(unint64_t)a4
{
  if (a3 && (v6 = CalNotificationCopyOwner()) != 0)
  {
    v7 = v6;
    if (CalEntityGetType() == 1)
    {
      if ([(ClientConnection *)self isCalendarRestricted:v7 forAction:a4])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v8 = !CalendarCanContainAnAllowedEntityType(v7, self);
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isAlarmRestricted:(void *)a3 forAction:(unint64_t)a4
{
  if (a3 && (v6 = CalAlarmCopyOwningEntity()) != 0)
  {
    v7 = v6;
    Type = CalEntityGetType();
    if (Type == 101 || Type == 2)
    {
      LOBYTE(a4) = [(ClientConnection *)self isCalendarItemRestricted:v7 forAction:a4];
    }

    else
    {
      LODWORD(a4) = !CalendarCanContainAnAllowedEntityType(v7, self);
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(a4) = 0;
  }

  return a4;
}

- (BOOL)isStoreManaged:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = CalStoreCopyExternalID();
  v5 = [(ClientConnection *)self accountsProvider];
  v6 = [v5 accountWithIdentifier:v4];
  v7 = [v6 MCIsManaged];

  return v7;
}

- (BOOL)isCalendarManaged:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = CalCalendarCopyStore();
  v5 = [(ClientConnection *)self isStoreManaged:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (BOOL)isCalendarItemManaged:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = CalCalendarItemCopyCalendar();
  v5 = [(ClientConnection *)self isCalendarManaged:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (void)reportIntegrityErrors:(id)a3
{
  v4 = a3;
  v5 = [(ClientConnection *)self remoteObjectProxyWithErrorHandler:&__block_literal_global_64];
  [v5 CADClientReceiveDatabaseIntegrityErrors:v4];
}

void __42__ClientConnection_reportIntegrityErrors___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_ERROR, "Error sending integrity errors back to client: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (CDBAccountInfo)localAccountInfo
{
  v3 = [(ClientConnection *)self databaseInitializationOptions];
  v4 = [v3 unitTesting];

  if (v4)
  {
    v5 = self;
  }

  else
  {
    v5 = [MEMORY[0x277CF74F8] sharedInstance];
  }

  return v5;
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  v3 = [a3 stringRemovingMailto];
  v4 = [v3 isEqualToString:@"attendee@localattendee.apple.com"];

  return v4;
}

- (BOOL)addressURLIsAccountOwner:(id)a3
{
  v4 = [a3 absoluteString];
  LOBYTE(self) = [(ClientConnection *)self addressIsAccountOwner:v4];

  return self;
}

@end