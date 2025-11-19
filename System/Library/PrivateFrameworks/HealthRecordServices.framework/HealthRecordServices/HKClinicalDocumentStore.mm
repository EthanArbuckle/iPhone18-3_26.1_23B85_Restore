@interface HKClinicalDocumentStore
- (HKClinicalDocumentStore)initWithHealthStore:(id)a3;
- (void)_establishProxyConnection;
- (void)_establishProxyConnectionIfNoObserversArePresent;
- (void)_unitTesting_triggerDownloadableAttachmentDidChange:(id)a3 completion:(id)a4;
- (void)addClinicalDocumentStateChangeListener:(id)a3;
- (void)clientRemote_downloadableAttachmentDidChangeState:(id)a3;
- (void)fetchAttachmentWithIdentifier:(id)a3 completion:(id)a4;
- (void)insertDownloadableAttachment:(id)a3 completion:(id)a4;
- (void)markDataAvailableForAttachmentWithIdentifier:(id)a3 attachmentContent:(id)a4 completion:(id)a5;
- (void)markDownloadCompleteForAttachmentWithIdentifier:(id)a3 fileURL:(id)a4 completion:(id)a5;
- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)a3 requestBatchSize:(id)a4 completion:(id)a5;
- (void)pingWithCompletion:(id)a3;
- (void)processAttachmentWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeAllAttachmentsFromMedicalRecord:(id)a3 completion:(id)a4;
- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)a3;
- (void)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)a3 completion:(id)a4;
- (void)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)a3 errorStatus:(int64_t)a4 lastError:(id)a5 retryCount:(int64_t)a6 completion:(id)a7;
- (void)updateRetryCountForAttachmentWithIdentifier:(id)a3 retryCount:(int64_t)a4 nextRetryDate:(id)a5 completion:(id)a6;
- (void)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)a3 status:(int64_t)a4 completion:(id)a5;
@end

@implementation HKClinicalDocumentStore

- (HKClinicalDocumentStore)initWithHealthStore:(id)a3
{
  v11.receiver = self;
  v11.super_class = HKClinicalDocumentStore;
  v3 = [(HKClinicalStore *)&v11 initWithHealthStore:a3 exportedObject:self];
  v4 = v3;
  if (v3)
  {
    [(HKClinicalStore *)v3 setProxyProviderShouldRetryOnInterruption:0];
    v5 = objc_alloc(MEMORY[0x277CCD738]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 initWithName:v7 loggingCategory:*MEMORY[0x277CCC2C0]];
    stateChangeListeners = v4->_stateChangeListeners;
    v4->_stateChangeListeners = v8;
  }

  return v4;
}

- (void)updateRetryCountForAttachmentWithIdentifier:(id)a3 retryCount:(int64_t)a4 nextRetryDate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HKClinicalDocumentStore_updateRetryCountForAttachmentWithIdentifier_retryCount_nextRetryDate_completion___block_invoke;
  v18[3] = &unk_2796DBFD0;
  v22 = a4;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__HKClinicalDocumentStore_updateRetryCountForAttachmentWithIdentifier_retryCount_nextRetryDate_completion___block_invoke_2;
  v16[3] = &unk_2796DBFF8;
  v17 = v21;
  v13 = v21;
  v14 = v11;
  v15 = v10;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v18 errorHandler:v16];
}

- (void)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)a3 status:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__HKClinicalDocumentStore_updateStatusAndClearErrorForAttachmentWithIdentifier_status_completion___block_invoke;
  v14[3] = &unk_2796DC020;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HKClinicalDocumentStore_updateStatusAndClearErrorForAttachmentWithIdentifier_status_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)a3 errorStatus:(int64_t)a4 lastError:(id)a5 retryCount:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a7];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __129__HKClinicalDocumentStore_updateErrorStatusAndRetryCountForAttachmentWithIdentifier_errorStatus_lastError_retryCount_completion___block_invoke;
  v20[3] = &unk_2796DC048;
  v21 = v12;
  v22 = v13;
  v24 = a4;
  v25 = a6;
  v23 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __129__HKClinicalDocumentStore_updateErrorStatusAndRetryCountForAttachmentWithIdentifier_errorStatus_lastError_retryCount_completion___block_invoke_2;
  v18[3] = &unk_2796DBFF8;
  v19 = v23;
  v15 = v23;
  v16 = v13;
  v17 = v12;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v20 errorHandler:v18];
}

- (void)markDownloadCompleteForAttachmentWithIdentifier:(id)a3 fileURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HKClinicalDocumentStore_markDownloadCompleteForAttachmentWithIdentifier_fileURL_completion___block_invoke;
  v16[3] = &unk_2796DC070;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__HKClinicalDocumentStore_markDownloadCompleteForAttachmentWithIdentifier_fileURL_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)markDataAvailableForAttachmentWithIdentifier:(id)a3 attachmentContent:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HKClinicalDocumentStore_markDataAvailableForAttachmentWithIdentifier_attachmentContent_completion___block_invoke;
  v16[3] = &unk_2796DC070;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HKClinicalDocumentStore_markDataAvailableForAttachmentWithIdentifier_attachmentContent_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)fetchAttachmentWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HKClinicalDocumentStore_fetchAttachmentWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HKClinicalDocumentStore_fetchAttachmentWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)processAttachmentWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HKClinicalDocumentStore_processAttachmentWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HKClinicalDocumentStore_processAttachmentWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HKClinicalDocumentStore_runMedicalDownloadableAttachmentPipelineWithCompletion___block_invoke;
  v8[3] = &unk_2796DC0C0;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HKClinicalDocumentStore_runMedicalDownloadableAttachmentPipelineWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)a3 requestBatchSize:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HKClinicalDocumentStore_notifyDownloadingCompleteAndRequestMoreWithIdentifiers_requestBatchSize_completion___block_invoke;
  v16[3] = &unk_2796DC070;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__HKClinicalDocumentStore_notifyDownloadingCompleteAndRequestMoreWithIdentifiers_requestBatchSize_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HKClinicalDocumentStore_triggerAttachmentRetryForMedicalRecordWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HKClinicalDocumentStore_triggerAttachmentRetryForMedicalRecordWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)pingWithCompletion:(id)a3
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HKClinicalDocumentStore_pingWithCompletion___block_invoke;
  v8[3] = &unk_2796DC0C0;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HKClinicalDocumentStore_pingWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)addClinicalDocumentStateChangeListener:(id)a3
{
  v4 = a3;
  [(HKClinicalDocumentStore *)self _establishProxyConnectionIfNoObserversArePresent];
  [(HKObserverSet *)self->_stateChangeListeners registerObserver:v4 queue:0];
}

- (void)insertDownloadableAttachment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HKClinicalDocumentStore_insertDownloadableAttachment_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKClinicalDocumentStore_insertDownloadableAttachment_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)removeAllAttachmentsFromMedicalRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HKClinicalDocumentStore_removeAllAttachmentsFromMedicalRecord_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HKClinicalDocumentStore_removeAllAttachmentsFromMedicalRecord_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)_unitTesting_triggerDownloadableAttachmentDidChange:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HKClinicalDocumentStore__unitTesting_triggerDownloadableAttachmentDidChange_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HKClinicalDocumentStore__unitTesting_triggerDownloadableAttachmentDidChange_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)_establishProxyConnection
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke;
  v3[3] = &unk_2796DC110;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_295;
  v2[3] = &unk_2796DC138;
  v2[4] = self;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v3 errorHandler:v2];
}

uint64_t __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_2;
  v3[3] = &unk_2796DC0E8;
  v3[4] = *(a1 + 32);
  return [a2 remote_pingWithCompletion:v3];
}

void __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_2_cold_1(a1);
    }
  }
}

void __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_295(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_295_cold_1(a1);
  }
}

- (void)_establishProxyConnectionIfNoObserversArePresent
{
  if (![(HKObserverSet *)self->_stateChangeListeners count])
  {

    [(HKClinicalDocumentStore *)self _establishProxyConnection];
  }
}

- (void)clientRemote_downloadableAttachmentDidChangeState:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    [(HKClinicalDocumentStore *)self clientRemote_downloadableAttachmentDidChangeState:v5, v4];
  }

  stateChangeListeners = self->_stateChangeListeners;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HKClinicalDocumentStore_clientRemote_downloadableAttachmentDidChangeState___block_invoke;
  v8[3] = &unk_2796DC160;
  v9 = v4;
  v7 = v4;
  [(HKObserverSet *)stateChangeListeners notifyObservers:v8];
}

void __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2519FE000, v2, v3, "%{public}@: error executing a ping: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __52__HKClinicalDocumentStore__establishProxyConnection__block_invoke_295_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2519FE000, v2, v3, "%{public}@: error establishing proxy connection: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)clientRemote_downloadableAttachmentDidChangeState:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 identifier];
  v7 = NSStringFromAttachmentStatus([a3 status]);
  v9 = 138543874;
  v10 = a1;
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  _os_log_debug_impl(&dword_2519FE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: downloadable attachment with identifier %{public}@ did change, status: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end