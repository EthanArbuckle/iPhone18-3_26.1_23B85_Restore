@interface HKClinicalAccountStore
- (BOOL)supportsClinicalSharing;
- (HKClinicalAccountStore)initWithHealthStore:(id)a3;
- (id)accountWithIdentifier:(id)a3 error:(id *)a4;
- (void)_establishProxyConnection;
- (void)_establishProxyConnectionIfNoObserversArePresent;
- (void)_executeCheapCallOnPluginServerProxy:(id)a3;
- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)a3;
- (void)addAccountStateChangeListener:(id)a3;
- (void)beginInitialLoginSessionForGateway:(id)a3 completion:(id)a4;
- (void)beginReloginSessionForAccount:(id)a3 completion:(id)a4;
- (void)clientRemote_accountDidChange:(id)a3 changeType:(int64_t)a4;
- (void)createStaticAccountWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 countryCode:(id)a6 fhirVersion:(id)a7 onlyIfNeededForSimulatedGatewayID:(id)a8 completion:(id)a9;
- (void)deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 completion:(id)a5;
- (void)deviceConfigurationSupportsHealthRecords:(id)a3;
- (void)endLoginSessionWithState:(id)a3 code:(id)a4 completion:(id)a5;
- (void)fetchAccountForSource:(id)a3 completion:(id)a4;
- (void)fetchAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)fetchAccountsForGatewaysWithExternalIDs:(id)a3 completion:(id)a4;
- (void)fetchAllAccountsWithCompletion:(id)a3;
- (void)fetchAllEventsForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)hasAnyHealthRecordsAccountWithCompletion:(id)a3;
- (void)hasGatewayBackedHealthRecordsAccountWithCompletion:(id)a3;
- (void)invalidateCredentialForAccountWithIdentifier:(id)a3 event:(id)a4 completion:(id)a5;
- (void)persistEphemeralAccount:(id)a3 triggerIngestion:(BOOL)a4 completion:(id)a5;
- (void)pruneAuthenticationDataWithCompletion:(id)a3;
- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)a3 usingCredentialWithPersistentID:(id)a4 completion:(id)a5;
- (void)shouldShowHealthRecordsSectionWithCompletion:(id)a3;
- (void)simulateAccountDownloadOverdueWithIdentifier:(id)a3 stage:(int64_t)a4 completion:(id)a5;
- (void)simulateUnmergeEventForAccountWithIdentifier:(id)a3 completion:(id)a4;
- (void)updateAccountCredentialStateForAccountWithIdentifier:(id)a3 state:(int64_t)a4 event:(id)a5 completion:(id)a6;
- (void)updateClinicalSharingStatusForAccountWithIdentifier:(id)a3 firstSharedDate:(id)a4 lastSharedDate:(id)a5 userStatus:(id)a6 multiDeviceStatus:(id)a7 primaryDeviceName:(id)a8 completion:(id)a9;
@end

@implementation HKClinicalAccountStore

- (HKClinicalAccountStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKClinicalAccountStore;
  v5 = [(HKClinicalStore *)&v16 initWithHealthStore:v4 exportedObject:self];
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

- (void)fetchAllAccountsWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a3];
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

- (void)fetchAccountsForGatewaysWithExternalIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HKClinicalAccountStore_fetchAccountsForGatewaysWithExternalIDs_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HKClinicalAccountStore_fetchAccountsForGatewaysWithExternalIDs_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchAccountForSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HKClinicalAccountStore_fetchAccountForSource_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HKClinicalAccountStore_fetchAccountForSource_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (id)accountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = v6;
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
      if (a4)
      {
        v11 = v9;
        *a4 = v10;
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

- (void)fetchAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HKClinicalAccountStore_fetchAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HKClinicalAccountStore_fetchAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)deleteAccountWithIdentifier:(id)a3 deletionReason:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HKClinicalAccountStore_deleteAccountWithIdentifier_deletionReason_completion___block_invoke;
  v14[3] = &unk_2796DCC30;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HKClinicalAccountStore_deleteAccountWithIdentifier_deletionReason_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)hasAnyHealthRecordsAccountWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueBoolHandlerWithCompletion:a3];
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

- (void)hasGatewayBackedHealthRecordsAccountWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueBoolHandlerWithCompletion:a3];
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

- (void)deviceConfigurationSupportsHealthRecords:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueFailableActionHandlerWithCompletion:a3];
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

- (void)shouldShowHealthRecordsSectionWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueDoubleBoolHandlerWithCompletion:a3];
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

- (void)beginInitialLoginSessionForGateway:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v7[2](v7, 0, v11);
  }

  else
  {
    v12 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:v7];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__HKClinicalAccountStore_beginInitialLoginSessionForGateway_completion___block_invoke;
    v16[3] = &unk_2796DCBB8;
    v17 = v6;
    v18 = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__HKClinicalAccountStore_beginInitialLoginSessionForGateway_completion___block_invoke_2;
    v14[3] = &unk_2796DBFF8;
    v7 = v18;
    v15 = v7;
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

- (void)beginReloginSessionForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HKClinicalAccountStore_beginReloginSessionForAccount_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKClinicalAccountStore_beginReloginSessionForAccount_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

void __67__HKClinicalAccountStore_beginReloginSessionForAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 remote_beginReloginSessionForAccountWithIdentifier:v5 completion:*(a1 + 40)];
}

- (void)endLoginSessionWithState:(id)a3 code:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  v11 = self;
  v26 = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke;
  aBlock[3] = &unk_2796DCD20;
  aBlock[4] = v11;
  v23 = v10;
  v24 = v25;
  v12 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_3;
  v18[3] = &unk_2796DCD48;
  v13 = v8;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HKClinicalAccountStore_endLoginSessionWithState_code_completion___block_invoke_4;
  v16[3] = &unk_2796DBFF8;
  v15 = v21;
  v17 = v15;
  [(HKClinicalStore *)v11 fetchServerProxyWithHandler:v18 errorHandler:v16];

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

- (void)persistEphemeralAccount:(id)a3 triggerIngestion:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HKClinicalAccountStore_persistEphemeralAccount_triggerIngestion_completion___block_invoke;
  v14[3] = &unk_2796DCD70;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HKClinicalAccountStore_persistEphemeralAccount_triggerIngestion_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)pruneAuthenticationDataWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a3];
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

- (void)replaceAccountWithNewAccountForAccountWithIdentifier:(id)a3 usingCredentialWithPersistentID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __122__HKClinicalAccountStore_replaceAccountWithNewAccountForAccountWithIdentifier_usingCredentialWithPersistentID_completion___block_invoke;
  v16[3] = &unk_2796DCD48;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __122__HKClinicalAccountStore_replaceAccountWithNewAccountForAccountWithIdentifier_usingCredentialWithPersistentID_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)refreshAccountConnectionInformationForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HKClinicalAccountStore_refreshAccountConnectionInformationForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HKClinicalAccountStore_refreshAccountConnectionInformationForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)updateClinicalSharingStatusForAccountWithIdentifier:(id)a3 firstSharedDate:(id)a4 lastSharedDate:(id)a5 userStatus:(id)a6 multiDeviceStatus:(id)a7 primaryDeviceName:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a9];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __167__HKClinicalAccountStore_updateClinicalSharingStatusForAccountWithIdentifier_firstSharedDate_lastSharedDate_userStatus_multiDeviceStatus_primaryDeviceName_completion___block_invoke;
  v31[3] = &unk_2796DCD98;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __167__HKClinicalAccountStore_updateClinicalSharingStatusForAccountWithIdentifier_firstSharedDate_lastSharedDate_userStatus_multiDeviceStatus_primaryDeviceName_completion___block_invoke_2;
  v29[3] = &unk_2796DBFF8;
  v30 = v38;
  v22 = v38;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v31 errorHandler:v29];
}

- (void)addAccountStateChangeListener:(id)a3
{
  v4 = a3;
  [(HKClinicalAccountStore *)self _establishProxyConnectionIfNoObserversArePresent];
  [(HKObserverSet *)self->_accountStateChangeObservers registerObserver:v4];
}

- (void)fetchAllEventsForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HKClinicalAccountStore_fetchAllEventsForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HKClinicalAccountStore_fetchAllEventsForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)createStaticAccountWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 countryCode:(id)a6 fhirVersion:(id)a7 onlyIfNeededForSimulatedGatewayID:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a9];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __145__HKClinicalAccountStore_createStaticAccountWithTitle_subtitle_description_countryCode_fhirVersion_onlyIfNeededForSimulatedGatewayID_completion___block_invoke;
  v31[3] = &unk_2796DCD98;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __145__HKClinicalAccountStore_createStaticAccountWithTitle_subtitle_description_countryCode_fhirVersion_onlyIfNeededForSimulatedGatewayID_completion___block_invoke_2;
  v29[3] = &unk_2796DBFF8;
  v30 = v38;
  v22 = v38;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v31 errorHandler:v29];
}

- (void)invalidateCredentialForAccountWithIdentifier:(id)a3 event:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HKClinicalAccountStore_invalidateCredentialForAccountWithIdentifier_event_completion___block_invoke;
  v16[3] = &unk_2796DCD48;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HKClinicalAccountStore_invalidateCredentialForAccountWithIdentifier_event_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)updateAccountCredentialStateForAccountWithIdentifier:(id)a3 state:(int64_t)a4 event:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__HKClinicalAccountStore_updateAccountCredentialStateForAccountWithIdentifier_state_event_completion___block_invoke;
  v18[3] = &unk_2796DCDC0;
  v22 = a4;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__HKClinicalAccountStore_updateAccountCredentialStateForAccountWithIdentifier_state_event_completion___block_invoke_2;
  v16[3] = &unk_2796DBFF8;
  v17 = v21;
  v13 = v21;
  v14 = v11;
  v15 = v10;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v18 errorHandler:v16];
}

- (void)simulateUnmergeEventForAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKClinicalAccountStore_simulateUnmergeEventForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DCBB8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HKClinicalAccountStore_simulateUnmergeEventForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)simulateAccountDownloadOverdueWithIdentifier:(id)a3 stage:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HKClinicalAccountStore_simulateAccountDownloadOverdueWithIdentifier_stage_completion___block_invoke;
  v14[3] = &unk_2796DCC30;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HKClinicalAccountStore_simulateAccountDownloadOverdueWithIdentifier_stage_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)clientRemote_accountDidChange:(id)a3 changeType:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    v11 = v7;
    v12 = [v6 identifier];
    v13 = NSStringFromAccountStateChangeType(a4);
    *buf = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v12;
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
  v15 = v6;
  v16 = a4;
  v9 = v6;
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

- (void)_reestablishProxyConnectionIfObserversArePresentWithPluginServerProxy:(id)a3
{
  v5 = a3;
  if ([(HKObserverSet *)self->_accountStateChangeObservers count])
  {
    [(HKClinicalAccountStore *)self _executeCheapCallOnPluginServerProxy:v5];
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

- (void)_executeCheapCallOnPluginServerProxy:(id)a3
{
  v4 = a3;
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
  [v4 remote_pingWithCompletion:v5];
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