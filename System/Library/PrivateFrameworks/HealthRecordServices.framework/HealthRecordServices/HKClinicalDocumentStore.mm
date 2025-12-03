@interface HKClinicalDocumentStore
- (HKClinicalDocumentStore)initWithHealthStore:(id)store;
- (void)_establishProxyConnection;
- (void)_establishProxyConnectionIfNoObserversArePresent;
- (void)_unitTesting_triggerDownloadableAttachmentDidChange:(id)change completion:(id)completion;
- (void)addClinicalDocumentStateChangeListener:(id)listener;
- (void)clientRemote_downloadableAttachmentDidChangeState:(id)state;
- (void)fetchAttachmentWithIdentifier:(id)identifier completion:(id)completion;
- (void)insertDownloadableAttachment:(id)attachment completion:(id)completion;
- (void)markDataAvailableForAttachmentWithIdentifier:(id)identifier attachmentContent:(id)content completion:(id)completion;
- (void)markDownloadCompleteForAttachmentWithIdentifier:(id)identifier fileURL:(id)l completion:(id)completion;
- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)identifiers requestBatchSize:(id)size completion:(id)completion;
- (void)pingWithCompletion:(id)completion;
- (void)processAttachmentWithIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllAttachmentsFromMedicalRecord:(id)record completion:(id)completion;
- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)completion;
- (void)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)identifier errorStatus:(int64_t)status lastError:(id)error retryCount:(int64_t)count completion:(id)completion;
- (void)updateRetryCountForAttachmentWithIdentifier:(id)identifier retryCount:(int64_t)count nextRetryDate:(id)date completion:(id)completion;
- (void)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)identifier status:(int64_t)status completion:(id)completion;
@end

@implementation HKClinicalDocumentStore

- (HKClinicalDocumentStore)initWithHealthStore:(id)store
{
  v11.receiver = self;
  v11.super_class = HKClinicalDocumentStore;
  v3 = [(HKClinicalStore *)&v11 initWithHealthStore:store exportedObject:self];
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

- (void)updateRetryCountForAttachmentWithIdentifier:(id)identifier retryCount:(int64_t)count nextRetryDate:(id)date completion:(id)completion
{
  identifierCopy = identifier;
  dateCopy = date;
  v12 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HKClinicalDocumentStore_updateRetryCountForAttachmentWithIdentifier_retryCount_nextRetryDate_completion___block_invoke;
  v18[3] = &unk_2796DBFD0;
  countCopy = count;
  v19 = identifierCopy;
  v20 = dateCopy;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__HKClinicalDocumentStore_updateRetryCountForAttachmentWithIdentifier_retryCount_nextRetryDate_completion___block_invoke_2;
  v16[3] = &unk_2796DBFF8;
  v17 = v21;
  v13 = v21;
  v14 = dateCopy;
  v15 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v18 errorHandler:v16];
}

- (void)updateStatusAndClearErrorForAttachmentWithIdentifier:(id)identifier status:(int64_t)status completion:(id)completion
{
  identifierCopy = identifier;
  v9 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__HKClinicalDocumentStore_updateStatusAndClearErrorForAttachmentWithIdentifier_status_completion___block_invoke;
  v14[3] = &unk_2796DC020;
  v15 = identifierCopy;
  statusCopy = status;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HKClinicalDocumentStore_updateStatusAndClearErrorForAttachmentWithIdentifier_status_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)updateErrorStatusAndRetryCountForAttachmentWithIdentifier:(id)identifier errorStatus:(int64_t)status lastError:(id)error retryCount:(int64_t)count completion:(id)completion
{
  identifierCopy = identifier;
  errorCopy = error;
  v14 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __129__HKClinicalDocumentStore_updateErrorStatusAndRetryCountForAttachmentWithIdentifier_errorStatus_lastError_retryCount_completion___block_invoke;
  v20[3] = &unk_2796DC048;
  v21 = identifierCopy;
  v22 = errorCopy;
  statusCopy = status;
  countCopy = count;
  v23 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __129__HKClinicalDocumentStore_updateErrorStatusAndRetryCountForAttachmentWithIdentifier_errorStatus_lastError_retryCount_completion___block_invoke_2;
  v18[3] = &unk_2796DBFF8;
  v19 = v23;
  v15 = v23;
  v16 = errorCopy;
  v17 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v20 errorHandler:v18];
}

- (void)markDownloadCompleteForAttachmentWithIdentifier:(id)identifier fileURL:(id)l completion:(id)completion
{
  identifierCopy = identifier;
  lCopy = l;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HKClinicalDocumentStore_markDownloadCompleteForAttachmentWithIdentifier_fileURL_completion___block_invoke;
  v16[3] = &unk_2796DC070;
  v17 = identifierCopy;
  v18 = lCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__HKClinicalDocumentStore_markDownloadCompleteForAttachmentWithIdentifier_fileURL_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = lCopy;
  v13 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)markDataAvailableForAttachmentWithIdentifier:(id)identifier attachmentContent:(id)content completion:(id)completion
{
  identifierCopy = identifier;
  contentCopy = content;
  v10 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HKClinicalDocumentStore_markDataAvailableForAttachmentWithIdentifier_attachmentContent_completion___block_invoke;
  v16[3] = &unk_2796DC070;
  v17 = identifierCopy;
  v18 = contentCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HKClinicalDocumentStore_markDataAvailableForAttachmentWithIdentifier_attachmentContent_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = contentCopy;
  v13 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)fetchAttachmentWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HKClinicalDocumentStore_fetchAttachmentWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HKClinicalDocumentStore_fetchAttachmentWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)processAttachmentWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HKClinicalDocumentStore_processAttachmentWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HKClinicalDocumentStore_processAttachmentWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)runMedicalDownloadableAttachmentPipelineWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
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

- (void)notifyDownloadingCompleteAndRequestMoreWithIdentifiers:(id)identifiers requestBatchSize:(id)size completion:(id)completion
{
  identifiersCopy = identifiers;
  sizeCopy = size;
  v10 = [(HKClinicalStore *)self clientQueueObjectHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HKClinicalDocumentStore_notifyDownloadingCompleteAndRequestMoreWithIdentifiers_requestBatchSize_completion___block_invoke;
  v16[3] = &unk_2796DC070;
  v17 = identifiersCopy;
  v18 = sizeCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__HKClinicalDocumentStore_notifyDownloadingCompleteAndRequestMoreWithIdentifiers_requestBatchSize_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = sizeCopy;
  v13 = identifiersCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v16 errorHandler:v14];
}

- (void)triggerAttachmentRetryForMedicalRecordWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HKClinicalDocumentStore_triggerAttachmentRetryForMedicalRecordWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HKClinicalDocumentStore_triggerAttachmentRetryForMedicalRecordWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)pingWithCompletion:(id)completion
{
  v4 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
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

- (void)addClinicalDocumentStateChangeListener:(id)listener
{
  listenerCopy = listener;
  [(HKClinicalDocumentStore *)self _establishProxyConnectionIfNoObserversArePresent];
  [(HKObserverSet *)self->_stateChangeListeners registerObserver:listenerCopy queue:0];
}

- (void)insertDownloadableAttachment:(id)attachment completion:(id)completion
{
  attachmentCopy = attachment;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HKClinicalDocumentStore_insertDownloadableAttachment_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = attachmentCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKClinicalDocumentStore_insertDownloadableAttachment_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = attachmentCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)removeAllAttachmentsFromMedicalRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HKClinicalDocumentStore_removeAllAttachmentsFromMedicalRecord_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = recordCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HKClinicalDocumentStore_removeAllAttachmentsFromMedicalRecord_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = recordCopy;
  [(HKClinicalStore *)self fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)_unitTesting_triggerDownloadableAttachmentDidChange:(id)change completion:(id)completion
{
  changeCopy = change;
  v7 = [(HKClinicalStore *)self clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HKClinicalDocumentStore__unitTesting_triggerDownloadableAttachmentDidChange_completion___block_invoke;
  v12[3] = &unk_2796DC098;
  v13 = changeCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HKClinicalDocumentStore__unitTesting_triggerDownloadableAttachmentDidChange_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = changeCopy;
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

- (void)clientRemote_downloadableAttachmentDidChangeState:(id)state
{
  stateCopy = state;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    [(HKClinicalDocumentStore *)self clientRemote_downloadableAttachmentDidChangeState:v5, stateCopy];
  }

  stateChangeListeners = self->_stateChangeListeners;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HKClinicalDocumentStore_clientRemote_downloadableAttachmentDidChangeState___block_invoke;
  v8[3] = &unk_2796DC160;
  v9 = stateCopy;
  v7 = stateCopy;
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