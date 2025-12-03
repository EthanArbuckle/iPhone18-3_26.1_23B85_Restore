@interface HKClinicalAccountStore
- (BOOL)supportsClinicalSharing;
- (HKClinicalAccountStore)initWithHealthStore:(id)store;
- (id)accountWithIdentifier:(id)identifier error:(id *)error;
- (void)_establishProxyConnection;
- (void)_establishProxyConnectionIfNoObserversArePresent;
- (void)_executeCheapCallOnPluginServerProxy:(id)proxy;
- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)proxy;
- (void)addAccountStateChangeListener:(id)listener;
- (void)beginInitialLoginSessionForGateway:(id)gateway completion:(id)completion;
- (void)beginReloginSessionForAccount:(id)account completion:(id)completion;
- (void)clientRemote_accountDidChange:(id)change changeType:(int64_t)type;
- (void)createStaticAccountWithTitle:(id)title subtitle:(id)subtitle description:(id)description countryCode:(id)code fhirVersion:(id)version onlyIfNeededForSimulatedGatewayID:(id)d completion:(id)completion;
- (void)deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason completion:(id)completion;
- (void)deviceConfigurationSupportsHealthRecords:(id)records;
- (void)endLoginSessionWithState:(id)state code:(id)code completion:(id)completion;
- (void)fetchAccountForSource:(id)source completion:(id)completion;
- (void)fetchAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchAccountsForGatewaysWithExternalIDs:(id)ds completion:(id)completion;
- (void)fetchAllAccountsWithCompletion:(id)completion;
- (void)fetchAllEventsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)hasAnyHealthRecordsAccountWithCompletion:(id)completion;
- (void)hasGatewayBackedHealthRecordsAccountWithCompletion:(id)completion;
- (void)invalidateCredentialForAccountWithIdentifier:(id)identifier event:(id)event completion:(id)completion;
- (void)persistEphemeralAccount:(id)account triggerIngestion:(BOOL)ingestion completion:(id)completion;
- (void)pruneAuthenticationDataWithCompletion:(id)completion;
- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)identifier usingCredentialWithPersistentID:(id)d completion:(id)completion;
- (void)shouldShowHealthRecordsSectionWithCompletion:(id)completion;
- (void)simulateAccountDownloadOverdueWithIdentifier:(id)identifier stage:(int64_t)stage completion:(id)completion;
- (void)simulateUnmergeEventForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateAccountCredentialStateForAccountWithIdentifier:(id)identifier state:(int64_t)state event:(id)event completion:(id)completion;
- (void)updateClinicalSharingStatusForAccountWithIdentifier:(id)identifier firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name completion:(id)completion;
@end

@implementation HKClinicalAccountStore

- (HKClinicalAccountStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = HKClinicalAccountStore;
  v5 = [(HKClinicalStore *)&v16 initWithHealthStore:storeCopy exportedObject:self];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCD738]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = HKLogInfrastructure();
    v10 = [v6 initWithName:v8 loggingCategory:v9];
    accountStateChangeObservers = v5->_accountStateChangeObservers;
    v5->_accountStateChangeObservers = v10;

    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__HKClinicalAccountStore_initWithHealthStore___block_invoke;
    v13[3] = &unk_2796DCB68;
    objc_copyWeak(&v14, &location);
    [(HKClinicalStore *)v5 setAutomaticProxyReconnectionHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __46__HKClinicalAccountStore_initWithHealthStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:v4];
}

- (void)fetchAllAccountsWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HKClinicalAccountStore_fetchAllAccountsWithCompletion___block_invoke;
  v8[3] = &unk_2796DCB90;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HKClinicalAccountStore_fetchAllAccountsWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)fetchAccountsForGatewaysWithExternalIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HKClinicalAccountStore_fetchAccountsForGatewaysWithExternalIDs_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = dsCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HKClinicalAccountStore_fetchAccountsForGatewaysWithExternalIDs_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = dsCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchAccountForSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HKClinicalAccountStore_fetchAccountForSource_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = sourceCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HKClinicalAccountStore_fetchAccountForSource_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = sourceCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (id)accountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HKClinicalAccountStore_accountWithIdentifier_error___block_invoke;
  v15[3] = &unk_2796DCC08;
  v7 = identifierCopy;
  v16 = v7;
  v17 = &v19;
  v18 = &v25;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__HKClinicalAccountStore_accountWithIdentifier_error___block_invoke_3;
  v14[3] = &unk_2796DBE78;
  v14[4] = &v25;
  [(HKClinicalAccountStore *)self _getSynchronousServerProxyWithHandler:v15 errorHandler:v14];
  v8 = v20[5];
  if (!v8)
  {
    v9 = v26[5];
    v10 = v9;
    if (v9)
    {
      if (error)
      {
        v11 = v9;
        *error = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v8 = v20[5];
  }

  v12 = v8;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

uint64_t __54__HKClinicalAccountStore_accountWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HKClinicalAccountStore_accountWithIdentifier_error___block_invoke_2;
  v4[3] = &unk_2796DCBE0;
  v5 = *(a1 + 40);
  return [a2 remote_fetchAccountWithIdentifier:v2 completion:v4];
}

void __54__HKClinicalAccountStore_accountWithIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HKClinicalAccountStore_fetchAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HKClinicalAccountStore_fetchAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)deleteAccountWithIdentifier:(id)identifier deletionReason:(int64_t)reason completion:(id)completion
{
  identifierCopy = identifier;
  v9 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HKClinicalAccountStore_deleteAccountWithIdentifier_deletionReason_completion___block_invoke;
  v14[3] = &unk_2796DCC30;
  v15 = identifierCopy;
  reasonCopy = reason;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HKClinicalAccountStore_deleteAccountWithIdentifier_deletionReason_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)hasAnyHealthRecordsAccountWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueBoolHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke;
  v8[3] = &unk_2796DCB90;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_297;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

void __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_2;
  v3[3] = &unk_2796DCC58;
  v4 = *(a1 + 32);
  [a2 remote_hasAnyHealthRecordsAccountWithCompletion:v3];
}

void __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 1);
}

void __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_297(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)hasGatewayBackedHealthRecordsAccountWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueBoolHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke;
  v8[3] = &unk_2796DCB90;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_298;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

void __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_2;
  v3[3] = &unk_2796DCC58;
  v4 = *(a1 + 32);
  [a2 remote_hasGatewayBackedHealthRecordsAccountWithCompletion:v3];
}

void __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 1);
}

void __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deviceConfigurationSupportsHealthRecords:(id)records
{
  v4 = [(HKClinicalStore *)self clientQueueFailableActionHandlerWithCompletion:records];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HKClinicalAccountStore_deviceConfigurationSupportsHealthRecords___block_invoke;
  v8[3] = &unk_2796DCB90;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HKClinicalAccountStore_deviceConfigurationSupportsHealthRecords___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

void __67__HKClinicalAccountStore_deviceConfigurationSupportsHealthRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __67__HKClinicalAccountStore_deviceConfigurationSupportsHealthRecords___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)shouldShowHealthRecordsSectionWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueDoubleBoolHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke;
  v8[3] = &unk_2796DCB90;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_300;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

void __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_2;
  v3[3] = &unk_2796DCC80;
  v4 = *(a1 + 32);
  [a2 remote_shouldShowHealthRecordsSectionWithCompletion:v3];
}

void __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 1, a3);
}

void __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_300(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)supportsClinicalSharing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke;
  v5[3] = &unk_2796DCCD0;
  v5[4] = &v6;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_301;
  v4[3] = &unk_2796DBE78;
  v4[4] = &v6;
  [(HKClinicalAccountStore *)self _getSynchronousServerProxyWithHandler:v5 errorHandler:v4];
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_2;
  v3[3] = &unk_2796DCCA8;
  v3[4] = *(a1 + 32);
  return [a2 remote_supportsClinicalSharingWithCompletion:v3];
}

void __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2 == 1;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_2_cold_1();
    }
  }
}

void __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

- (void)beginInitialLoginSessionForGateway:(id)gateway completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  gatewayCopy = gateway;
  completionCopy = completion;
  if ([MEMORY[0x277CCDD30] isRunningStoreDemoMode])
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 138543362;
      v20 = objc_opt_class();
      v10 = v20;
      _os_log_impl(&dword_2519FE000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ running store demo mode, connecting to gateways is not supported", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:111 description:{@"Running in store demo mode, connecting to gateways is not supported"}];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    v12 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completionCopy];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__HKClinicalAccountStore_beginInitialLoginSessionForGateway_completion___block_invoke;
    v16[3] = &unk_2796DCBB8;
    v17 = gatewayCopy;
    v18 = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__HKClinicalAccountStore_beginInitialLoginSessionForGateway_completion___block_invoke_2;
    v14[3] = &unk_2796DBFF8;
    completionCopy = v18;
    v15 = completionCopy;
    [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];

    v11 = v17;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __72__HKClinicalAccountStore_beginInitialLoginSessionForGateway_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 externalID];
  [v4 remote_beginInitialLoginSessionForGatewayWithExternalID:v5 completion:*(a1 + 40)];
}

- (void)beginReloginSessionForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HKClinicalAccountStore_beginReloginSessionForAccount_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = accountCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKClinicalAccountStore_beginReloginSessionForAccount_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = accountCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

void __67__HKClinicalAccountStore_beginReloginSessionForAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 remote_beginReloginSessionForAccountWithIdentifier:v5 completion:*(a1 + 40)];
}

- (void)endLoginSessionWithState:(id)state code:(id)code completion:(id)completion
{
  stateCopy = state;
  codeCopy = code;
  completionCopy = completion;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v26 = selfCopy;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke;
  aBlock[3] = &unk_2796DCD20;
  aBlock[4] = selfCopy;
  v23 = completionCopy;
  v24 = v25;
  v12 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_3;
  v18[3] = &unk_2796DCD48;
  v13 = stateCopy;
  v19 = v13;
  v14 = codeCopy;
  v20 = v14;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_4;
  v16[3] = &unk_2796DBFF8;
  v15 = v21;
  v17 = v15;
  [(HKClinicalStore *)selfCopy fetchServerProxyWithHandler:v18 errorHandler:v16];

  _Block_object_dispose(v25, 8);
}

void __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_2;
  v7[3] = &unk_2796DCCF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  [v4 dispatchAsyncProxyClientQueue:v7];
}

void __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HKClinicalAccountLoginCompletionState completionStateWithError:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)persistEphemeralAccount:(id)account triggerIngestion:(BOOL)ingestion completion:(id)completion
{
  accountCopy = account;
  v9 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HKClinicalAccountStore_persistEphemeralAccount_triggerIngestion_completion___block_invoke;
  v14[3] = &unk_2796DCD70;
  v15 = accountCopy;
  ingestionCopy = ingestion;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HKClinicalAccountStore_persistEphemeralAccount_triggerIngestion_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = accountCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)pruneAuthenticationDataWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HKClinicalAccountStore_pruneAuthenticationDataWithCompletion___block_invoke;
  v8[3] = &unk_2796DCB90;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HKClinicalAccountStore_pruneAuthenticationDataWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)identifier usingCredentialWithPersistentID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __122__HKClinicalAccountStore_replaceAccountWithNewAccountForAccountWithIdentifier_usingCredentialWithPersistentID_completion___block_invoke;
  v16[3] = &unk_2796DCD48;
  v17 = identifierCopy;
  v18 = dCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __122__HKClinicalAccountStore_replaceAccountWithNewAccountForAccountWithIdentifier_usingCredentialWithPersistentID_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = dCopy;
  v13 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HKClinicalAccountStore_refreshAccountConnectionInformationForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HKClinicalAccountStore_refreshAccountConnectionInformationForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)updateClinicalSharingStatusForAccountWithIdentifier:(id)identifier firstSharedDate:(id)date lastSharedDate:(id)sharedDate userStatus:(id)status multiDeviceStatus:(id)deviceStatus primaryDeviceName:(id)name completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  sharedDateCopy = sharedDate;
  statusCopy = status;
  deviceStatusCopy = deviceStatus;
  nameCopy = name;
  v21 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __167__HKClinicalAccountStore_updateClinicalSharingStatusForAccountWithIdentifier_firstSharedDate_lastSharedDate_userStatus_multiDeviceStatus_primaryDeviceName_completion___block_invoke;
  v31[3] = &unk_2796DCD98;
  v32 = identifierCopy;
  v33 = dateCopy;
  v34 = sharedDateCopy;
  v35 = statusCopy;
  v36 = deviceStatusCopy;
  v37 = nameCopy;
  v38 = v21;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __167__HKClinicalAccountStore_updateClinicalSharingStatusForAccountWithIdentifier_firstSharedDate_lastSharedDate_userStatus_multiDeviceStatus_primaryDeviceName_completion___block_invoke_2;
  v29[3] = &unk_2796DBFF8;
  v30 = v38;
  v22 = v38;
  v23 = nameCopy;
  v24 = deviceStatusCopy;
  v25 = statusCopy;
  v26 = sharedDateCopy;
  v27 = dateCopy;
  v28 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v31 errorHandler:v29];
}

- (void)addAccountStateChangeListener:(id)listener
{
  listenerCopy = listener;
  [(HKClinicalAccountStore *)self _establishProxyConnectionIfNoObserversArePresent];
  [(HKObserverSet *)self->_accountStateChangeObservers registerObserver:listenerCopy];
}

- (void)fetchAllEventsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HKClinicalAccountStore_fetchAllEventsForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HKClinicalAccountStore_fetchAllEventsForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)createStaticAccountWithTitle:(id)title subtitle:(id)subtitle description:(id)description countryCode:(id)code fhirVersion:(id)version onlyIfNeededForSimulatedGatewayID:(id)d completion:(id)completion
{
  titleCopy = title;
  subtitleCopy = subtitle;
  descriptionCopy = description;
  codeCopy = code;
  versionCopy = version;
  dCopy = d;
  v21 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __145__HKClinicalAccountStore_createStaticAccountWithTitle_subtitle_description_countryCode_fhirVersion_onlyIfNeededForSimulatedGatewayID_completion___block_invoke;
  v31[3] = &unk_2796DCD98;
  v32 = titleCopy;
  v33 = subtitleCopy;
  v34 = descriptionCopy;
  v35 = codeCopy;
  v36 = versionCopy;
  v37 = dCopy;
  v38 = v21;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __145__HKClinicalAccountStore_createStaticAccountWithTitle_subtitle_description_countryCode_fhirVersion_onlyIfNeededForSimulatedGatewayID_completion___block_invoke_2;
  v29[3] = &unk_2796DBFF8;
  v30 = v38;
  v22 = v38;
  v23 = dCopy;
  v24 = versionCopy;
  v25 = codeCopy;
  v26 = descriptionCopy;
  v27 = subtitleCopy;
  v28 = titleCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v31 errorHandler:v29];
}

- (void)invalidateCredentialForAccountWithIdentifier:(id)identifier event:(id)event completion:(id)completion
{
  identifierCopy = identifier;
  eventCopy = event;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HKClinicalAccountStore_invalidateCredentialForAccountWithIdentifier_event_completion___block_invoke;
  v16[3] = &unk_2796DCD48;
  v17 = identifierCopy;
  v18 = eventCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HKClinicalAccountStore_invalidateCredentialForAccountWithIdentifier_event_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = eventCopy;
  v13 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)updateAccountCredentialStateForAccountWithIdentifier:(id)identifier state:(int64_t)state event:(id)event completion:(id)completion
{
  identifierCopy = identifier;
  eventCopy = event;
  v12 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__HKClinicalAccountStore_updateAccountCredentialStateForAccountWithIdentifier_state_event_completion___block_invoke;
  v18[3] = &unk_2796DCDC0;
  stateCopy = state;
  v19 = identifierCopy;
  v20 = eventCopy;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__HKClinicalAccountStore_updateAccountCredentialStateForAccountWithIdentifier_state_event_completion___block_invoke_2;
  v16[3] = &unk_2796DBFF8;
  v17 = v21;
  v13 = v21;
  v14 = eventCopy;
  v15 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v18 errorHandler:v16];
}

- (void)simulateUnmergeEventForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKClinicalAccountStore_simulateUnmergeEventForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HKClinicalAccountStore_simulateUnmergeEventForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)simulateAccountDownloadOverdueWithIdentifier:(id)identifier stage:(int64_t)stage completion:(id)completion
{
  identifierCopy = identifier;
  v9 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HKClinicalAccountStore_simulateAccountDownloadOverdueWithIdentifier_stage_completion___block_invoke;
  v14[3] = &unk_2796DCC30;
  v15 = identifierCopy;
  stageCopy = stage;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HKClinicalAccountStore_simulateAccountDownloadOverdueWithIdentifier_stage_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)clientRemote_accountDidChange:(id)change changeType:(int64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    v11 = v7;
    identifier = [changeCopy identifier];
    v13 = NSStringFromAccountStateChangeType(type);
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = identifier;
    v21 = 2114;
    v22 = v13;
    _os_log_debug_impl(&dword_2519FE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: account with identifier %{public}@ did change state: %{public}@", buf, 0x20u);
  }

  accountStateChangeObservers = self->_accountStateChangeObservers;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HKClinicalAccountStore_clientRemote_accountDidChange_changeType___block_invoke;
  v14[3] = &unk_2796DCDE8;
  v14[4] = self;
  v15 = changeCopy;
  typeCopy = type;
  v9 = changeCopy;
  [(HKObserverSet *)accountStateChangeObservers notifyObservers:v14];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_establishProxyConnectionIfNoObserversArePresent
{
  if (![(HKObserverSet *)self->_accountStateChangeObservers count])
  {

    [(HKClinicalAccountStore *)self _establishProxyConnection];
  }
}

- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([(HKObserverSet *)self->_accountStateChangeObservers count])
  {
    [(HKClinicalAccountStore *)self _executeCheapCallOnPluginServerProxy:proxyCopy];
    unitTesting_didCallReestablishProxyConnectionIfObserversArePresent = self->_unitTesting_didCallReestablishProxyConnectionIfObserversArePresent;
    if (unitTesting_didCallReestablishProxyConnectionIfObserversArePresent)
    {
      unitTesting_didCallReestablishProxyConnectionIfObserversArePresent[2]();
    }
  }
}

- (void)_establishProxyConnection
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__HKClinicalAccountStore__establishProxyConnection__block_invoke;
  v3[3] = &unk_2796DCE10;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__HKClinicalAccountStore__establishProxyConnection__block_invoke_2;
  v2[3] = &unk_2796DC138;
  v2[4] = self;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v3 errorHandler:v2];
}

void __51__HKClinicalAccountStore__establishProxyConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __53__HKClinicalIngestionStore__establishProxyConnection__block_invoke_2_cold_1(a1);
  }
}

- (void)_executeCheapCallOnPluginServerProxy:(id)proxy
{
  proxyCopy = proxy;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    [HKClinicalAccountStore _executeCheapCallOnPluginServerProxy:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HKClinicalAccountStore__executeCheapCallOnPluginServerProxy___block_invoke;
  v5[3] = &unk_2796DC0E8;
  v5[4] = self;
  [proxyCopy remote_pingWithCompletion:v5];
}

void __63__HKClinicalAccountStore__executeCheapCallOnPluginServerProxy___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __63__HKClinicalAccountStore__executeCheapCallOnPluginServerProxy___block_invoke_cold_1(a1);
    }
  }
}

void __67__HKClinicalAccountStore_hasAnyHealthRecordsAccountWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, v0, v1, "Failed to query for any health records account availability with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__HKClinicalAccountStore_hasGatewayBackedHealthRecordsAccountWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, v0, v1, "Failed to query for gateway backed account availability with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__HKClinicalAccountStore_deviceConfigurationSupportsHealthRecords___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, v0, v1, "Failed to determine if device configuration supports CHR with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__HKClinicalAccountStore_shouldShowHealthRecordsSectionWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, v0, v1, "Failed to determine if CHR section should be shown with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__HKClinicalAccountStore_supportsClinicalSharing__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, v0, v1, "Failed to query for clinical sharing availability with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_executeCheapCallOnPluginServerProxy:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_2519FE000, v0, OS_LOG_TYPE_DEBUG, "%{public}@: making cheap XCP call to establish connection on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __63__HKClinicalAccountStore__executeCheapCallOnPluginServerProxy___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_2519FE000, v1, v2, "%{public}@: error executing a ping: %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

@end