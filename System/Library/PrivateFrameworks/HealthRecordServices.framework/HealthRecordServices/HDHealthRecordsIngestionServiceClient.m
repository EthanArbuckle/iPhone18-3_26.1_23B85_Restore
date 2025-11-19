@interface HDHealthRecordsIngestionServiceClient
- (HDHealthRecordsIngestionServiceClient)init;
- (HDHealthRecordsIngestionServiceClient)initWithConnection:(id)a3;
- (id)exportedInterface;
- (id)handleSignedClinicalDataFeature:(id)a3 context:(id)a4 error:(id *)a5;
- (void)addCardToWalletForRecord:(id)a3 completion:(id)a4;
- (void)didUpdateSignedClinicalDataRecord:(id)a3;
- (void)parseSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)reverifySignatureForRecord:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)willDeleteSignedClinicalDataRecordWithSyncIdentifier:(id)a3;
@end

@implementation HDHealthRecordsIngestionServiceClient

- (HDHealthRecordsIngestionServiceClient)init
{
  v3 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v4 = [(HDHealthRecordsIngestionServiceClient *)self initWithConnection:v3];

  return v4;
}

- (HDHealthRecordsIngestionServiceClient)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDHealthRecordsIngestionServiceClient;
  v5 = [(HDHealthRecordsIngestionServiceClient *)&v9 init];
  if (v5)
  {
    v6 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:v4 serviceIdentifier:@"HealthRecordsIngestionService" exportedObject:v5];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = &v6->super;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)parseSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HDHealthRecordsIngestionServiceClient_parseSignedClinicalData_options_completion___block_invoke;
  v14[3] = &unk_2796DC4A8;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDHealthRecordsIngestionServiceClient_parseSignedClinicalData_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (id)handleSignedClinicalDataFeature:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__HDHealthRecordsIngestionServiceClient_handleSignedClinicalDataFeature_context_error___block_invoke;
  v19[3] = &unk_2796DC4F8;
  v10 = v8;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  v22 = &v30;
  v23 = &v24;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDHealthRecordsIngestionServiceClient_handleSignedClinicalDataFeature_context_error___block_invoke_3;
  v18[3] = &unk_2796DBE78;
  v18[4] = &v24;
  [(HDHealthRecordsIngestionServiceClient *)self _synchronousPerformWithProxyHandler:v19 errorHandler:v18];
  v12 = v31[5];
  if (!v12)
  {
    v13 = v25[5];
    v14 = v13;
    if (v13)
    {
      if (a5)
      {
        v15 = v13;
        *a5 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = v31[5];
  }

  v16 = v12;

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

uint64_t __87__HDHealthRecordsIngestionServiceClient_handleSignedClinicalDataFeature_context_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__HDHealthRecordsIngestionServiceClient_handleSignedClinicalDataFeature_context_error___block_invoke_2;
  v5[3] = &unk_2796DC4D0;
  v6 = *(a1 + 48);
  return [a2 remote_handleSignedClinicalDataFeature:v2 context:v3 completion:v5];
}

void __87__HDHealthRecordsIngestionServiceClient_handleSignedClinicalDataFeature_context_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HDHealthRecordsIngestionServiceClient_processOriginalSignedClinicalDataRecords_options_completion___block_invoke;
  v14[3] = &unk_2796DC4A8;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HDHealthRecordsIngestionServiceClient_processOriginalSignedClinicalDataRecords_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)reverifySignatureForRecord:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__HDHealthRecordsIngestionServiceClient_reverifySignatureForRecord_options_completion___block_invoke;
  v14[3] = &unk_2796DC4A8;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDHealthRecordsIngestionServiceClient_reverifySignatureForRecord_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)addCardToWalletForRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HDHealthRecordsIngestionServiceClient_addCardToWalletForRecord_completion___block_invoke;
  v12[3] = &unk_2796DC520;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HDHealthRecordsIngestionServiceClient_addCardToWalletForRecord_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v12 errorHandler:v10];
}

- (void)didUpdateSignedClinicalDataRecord:(id)a3
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HDHealthRecordsIngestionServiceClient_didUpdateSignedClinicalDataRecord___block_invoke;
  v8[3] = &unk_2796DC548;
  v9 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HDHealthRecordsIngestionServiceClient_didUpdateSignedClinicalDataRecord___block_invoke_2;
  v7[3] = &unk_2796DC570;
  v7[4] = self;
  v7[5] = a2;
  v6 = v5;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v8 errorHandler:v7];
}

void __75__HDHealthRecordsIngestionServiceClient_didUpdateSignedClinicalDataRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __75__HDHealthRecordsIngestionServiceClient_didUpdateSignedClinicalDataRecord___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)willDeleteSignedClinicalDataRecordWithSyncIdentifier:(id)a3
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__HDHealthRecordsIngestionServiceClient_willDeleteSignedClinicalDataRecordWithSyncIdentifier___block_invoke;
  v8[3] = &unk_2796DC548;
  v9 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__HDHealthRecordsIngestionServiceClient_willDeleteSignedClinicalDataRecordWithSyncIdentifier___block_invoke_2;
  v7[3] = &unk_2796DC570;
  v7[4] = self;
  v7[5] = a2;
  v6 = v5;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v8 errorHandler:v7];
}

void __94__HDHealthRecordsIngestionServiceClient_willDeleteSignedClinicalDataRecordWithSyncIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __75__HDHealthRecordsIngestionServiceClient_didUpdateSignedClinicalDataRecord___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueDoubleObjectHandlerWithCompletion:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__HDHealthRecordsIngestionServiceClient_triggerDownloadIssuerRegistryWithOptions_completion___block_invoke;
  v10[3] = &unk_2796DC598;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__HDHealthRecordsIngestionServiceClient_triggerDownloadIssuerRegistryWithOptions_completion___block_invoke_2;
  v8[3] = &unk_2796DBFF8;
  v9 = v11;
  v7 = v11;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueDoubleObjectHandlerWithCompletion:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__HDHealthRecordsIngestionServiceClient_triggerDownloadPublicKeysWithOptions_completion___block_invoke;
  v10[3] = &unk_2796DC598;
  v12 = a3;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__HDHealthRecordsIngestionServiceClient_triggerDownloadPublicKeysWithOptions_completion___block_invoke_2;
  v8[3] = &unk_2796DBFF8;
  v9 = v11;
  v7 = v11;
  [(HDHealthRecordsIngestionServiceClient *)self _fetchProxyWithHandler:v10 errorHandler:v8];
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

void __75__HDHealthRecordsIngestionServiceClient_didUpdateSignedClinicalDataRecord___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2519FE000, v8, v9, "%{public}@ %{public}@ failed to connect to proxy: %{public}@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

@end