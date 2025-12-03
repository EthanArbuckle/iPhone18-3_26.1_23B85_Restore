@interface NDAnalyticsEnvelopeManager
- (NDAnalyticsEnvelopeManager)init;
- (NDAnalyticsEnvelopeManager)initWithAppConfigurationManager:(id)manager telemetryUploader:(id)uploader storeDirectoryFileURL:(id)l URLSessionQueue:(id)queue;
- (id)_handleDroppedEnvelopesForLocalReasons:(id)reasons;
- (id)_handleOutcomeOfUploadAttemptWithPayload:(id)payload success:(BOOL)success error:(id)error willRetry:(BOOL)retry hitEndpoint:(BOOL)endpoint;
- (id)_lastUploadDatesByContentType;
- (void)_scheduleUploadIfNeededWithCompletion:(id)completion;
- (void)_uploadTelemetryEnvelopes:(id)envelopes;
- (void)envelopeStore:(id)store didFlushEnvelopesForEntries:(id)entries;
- (void)handleLaunchEventForBackgroundSessionWithIdentifier:(id)identifier completion:(id)completion;
- (void)submitEnvelopes:(id)envelopes withCompletion:(id)completion;
- (void)uploadScheduler:(id)scheduler performUploadWithCompletion:(id)completion;
@end

@implementation NDAnalyticsEnvelopeManager

- (NDAnalyticsEnvelopeManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAnalyticsEnvelopeManager init]";
    v10 = 2080;
    v11 = "NDAnalyticsEnvelopeManager.m";
    v12 = 1024;
    v13 = 58;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAnalyticsEnvelopeManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAnalyticsEnvelopeManager)initWithAppConfigurationManager:(id)manager telemetryUploader:(id)uploader storeDirectoryFileURL:(id)l URLSessionQueue:(id)queue
{
  managerCopy = manager;
  uploaderCopy = uploader;
  lCopy = l;
  queueCopy = queue;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager initWithAppConfigurationManager:telemetryUploader:storeDirectoryFileURL:URLSessionQueue:];
    if (lCopy)
    {
      goto LABEL_6;
    }
  }

  else if (lCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager initWithAppConfigurationManager:telemetryUploader:storeDirectoryFileURL:URLSessionQueue:];
  }

LABEL_6:
  if (!queueCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager initWithAppConfigurationManager:telemetryUploader:storeDirectoryFileURL:URLSessionQueue:];
  }

  v35.receiver = self;
  v35.super_class = NDAnalyticsEnvelopeManager;
  v14 = [(NDAnalyticsEnvelopeManager *)&v35 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277D30E38]) initWithQualityOfService:-1];
    submissionQueue = v14->_submissionQueue;
    v14->_submissionQueue = v15;

    objc_storeStrong(&v14->_URLSessionQueue, queue);
    objc_storeStrong(&v14->_telemetryUploader, uploader);
    v17 = [[NDAnalyticsEnvelopeStore alloc] initWithStoreDirectoryFileURL:lCopy];
    [(NDAnalyticsEnvelopeStore *)v17 setObserver:v14];
    [(NDAnalyticsEnvelopeStore *)v17 enableFlushing];
    envelopeStore = v14->_envelopeStore;
    v14->_envelopeStore = v17;
    v19 = v17;

    v20 = [[NDAppConfigAnalyticsPayloadAssemblerConfigProvider alloc] initWithAppConfigurationManager:managerCopy];
    v21 = [[NDAnalyticsPayloadAssembler alloc] initWithConfigProvider:v20 maxPayloadSize:1000000];
    payloadAssembler = v14->_payloadAssembler;
    v14->_payloadAssembler = v21;

    v23 = [[NDAnalyticsPayloadUploader alloc] initWithAppConfigurationManager:managerCopy];
    payloadUploader = v14->_payloadUploader;
    v14->_payloadUploader = v23;

    v25 = [[NDAnalyticsUploadScheduler alloc] initWithURLSessionQueue:queueCopy];
    [(NDAnalyticsUploadScheduler *)v25 setDelegate:v14];
    uploadScheduler = v14->_uploadScheduler;
    v14->_uploadScheduler = v25;
    v27 = v25;

    v28 = objc_alloc(MEMORY[0x277D310C8]);
    path = [lCopy path];
    v30 = [v28 initWithName:@"last-upload" directory:path version:1 options:0 classRegistry:0];
    lastUploadDatesByContentType = v14->_lastUploadDatesByContentType;
    v14->_lastUploadDatesByContentType = v30;

    v32 = objc_opt_new();
    keyValueStoreLock = v14->_keyValueStoreLock;
    v14->_keyValueStoreLock = v32;
  }

  return v14;
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager handleLaunchEventForBackgroundSessionWithIdentifier:completion:];
  }

  uploadScheduler = [(NDAnalyticsEnvelopeManager *)self uploadScheduler];
  [uploadScheduler handleLaunchEventForBackgroundSessionWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)submitEnvelopes:(id)envelopes withCompletion:(id)completion
{
  envelopesCopy = envelopes;
  completionCopy = completion;
  if (!envelopesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager submitEnvelopes:withCompletion:];
  }

  submissionQueue = [(NDAnalyticsEnvelopeManager *)self submissionQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__NDAnalyticsEnvelopeManager_submitEnvelopes_withCompletion___block_invoke;
  v11[3] = &unk_27997A510;
  v12 = envelopesCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = envelopesCopy;
  [submissionQueue enqueueBlock:v11];
}

void __61__NDAnalyticsEnvelopeManager_submitEnvelopes_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__NDAnalyticsEnvelopeManager_submitEnvelopes_withCompletion___block_invoke_2;
  v11[3] = &unk_27997A4E8;
  v11[4] = &v18;
  v11[5] = &v12;
  [v4 fc_splitArrayWithTest:&__block_literal_global_37 result:v11];
  v5 = *MEMORY[0x277D304F0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v19[5] count];
    v7 = [v13[5] count];
    *buf = 134218240;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_25BDF7000, v5, OS_LOG_TYPE_DEFAULT, "will submit %lu analytics envelopes and %lu telemetry envelopes", buf, 0x16u);
  }

  if ([v19[5] count])
  {
    v8 = [*(a1 + 40) envelopeStore];
    [v8 copyEnvelopes:*(a1 + 32)];
    [NAUAnalyticsEnvelopeTracker registerEnvelopesAsReceivedByUploader:*(a1 + 32)];
    [*(a1 + 40) _scheduleUploadIfNeededWithCompletion:0];
  }

  if ([v13[5] count])
  {
    [*(a1 + 40) _uploadTelemetryEnvelopes:v13[5]];
  }

  v3[2](v3);
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __61__NDAnalyticsEnvelopeManager_submitEnvelopes_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)uploadScheduler:(id)scheduler performUploadWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = os_transaction_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke;
  aBlock[3] = &unk_27997A560;
  v7 = completionCopy;
  v26 = v7;
  aBlock[4] = self;
  v8 = v6;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  envelopeStore = [(NDAnalyticsEnvelopeManager *)self envelopeStore];
  v23 = 0;
  v11 = [envelopeStore allEntriesWithHoldToken:&v23];
  v12 = v23;
  if ([v11 count])
  {
    payloadAssembler = [(NDAnalyticsEnvelopeManager *)self payloadAssembler];
    _lastUploadDatesByContentType = [(NDAnalyticsEnvelopeManager *)self _lastUploadDatesByContentType];
    v15 = [MEMORY[0x277CBEB98] setWithObject:&unk_286D791C8];
    [envelopeStore sizesOfEnvelopesWithEntries:v11];
    v19 = v8;
    v16 = v7;
    v18 = v17 = v12;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_46;
    v20[3] = &unk_27997A600;
    v20[4] = self;
    v21 = envelopeStore;
    v22 = v9;
    [payloadAssembler assemblePayloadsWithEntries:v11 lastUploadDatesByContentType:_lastUploadDatesByContentType droppedEnvelopeReasonsToUpload:v15 envelopeSizeByEntry:v18 completion:v20];

    v12 = v17;
    v7 = v16;
    v8 = v19;
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke(uint64_t a1, int a2)
{
  (*(*(a1 + 48) + 16))();
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_2;
    v5[3] = &unk_27997A538;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 _scheduleUploadIfNeededWithCompletion:v5];
  }
}

void __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_46(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] _handleDroppedEnvelopesForLocalReasons:v8];
  [a1[5] deleteEnvelopesForEntries:v10];
  if (v9 || ![v7 count])
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    v11 = [a1[4] payloadUploader];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_2_47;
    v16[3] = &unk_27997A588;
    v12 = a1[5];
    v16[4] = a1[4];
    v17 = v12;
    v18 = v19;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_3;
    v13[3] = &unk_27997A5D8;
    v13[4] = a1[4];
    v14 = a1[6];
    v15 = v19;
    [v11 uploadPayloadsForInfos:v7 withEnvelopeStore:v17 perPayloadCompletion:v16 completion:v13];

    _Block_object_dispose(v19, 8);
  }
}

void __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_2_47(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 fc_shouldRetry];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) _handleOutcomeOfUploadAttemptWithPayload:v11 success:v8 == 0 error:v8 willRetry:v9 hitEndpoint:a4];
  [*(a1 + 40) deleteEnvelopesForEntries:v10];
  *(*(*(a1 + 48) + 8) + 24) &= v8 == 0;
}

void __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) lastUploadDatesByContentType];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__NDAnalyticsEnvelopeManager_uploadScheduler_performUploadWithCompletion___block_invoke_4;
  v5[3] = &unk_27997A5B0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 saveWithCompletionHandler:v5];
}

- (void)envelopeStore:(id)store didFlushEnvelopesForEntries:(id)entries
{
  v4 = NDAnalyticsEnvelopeSubmissionDatesByContentType(entries);
  [NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsDropped:v4 forReason:3 withError:0];
}

- (void)_scheduleUploadIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_transaction_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__NDAnalyticsEnvelopeManager__scheduleUploadIfNeededWithCompletion___block_invoke;
  aBlock[3] = &unk_27997A628;
  v6 = completionCopy;
  v17 = v6;
  v7 = v5;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  envelopeStore = [(NDAnalyticsEnvelopeManager *)self envelopeStore];
  v10 = [envelopeStore allEntriesWithHoldToken:0];

  if ([v10 count])
  {
    payloadAssembler = [(NDAnalyticsEnvelopeManager *)self payloadAssembler];
    _lastUploadDatesByContentType = [(NDAnalyticsEnvelopeManager *)self _lastUploadDatesByContentType];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__NDAnalyticsEnvelopeManager__scheduleUploadIfNeededWithCompletion___block_invoke_2;
    v13[3] = &unk_27997A650;
    v13[4] = self;
    v14 = v8;
    [payloadAssembler determinePayloadDeliveryWindowForEntries:v10 withLastUploadDatesByContentType:_lastUploadDatesByContentType completion:v13];
  }

  else
  {
    v8[2](v8);
  }
}

uint64_t __68__NDAnalyticsEnvelopeManager__scheduleUploadIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__NDAnalyticsEnvelopeManager__scheduleUploadIfNeededWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!v6 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) uploadScheduler];
    [v5 scheduleUploadInWindow:v6 withForegroundUploadCompletion:*(a1 + 40)];
  }
}

- (id)_lastUploadDatesByContentType
{
  v3 = objc_opt_new();
  keyValueStoreLock = [(NDAnalyticsEnvelopeManager *)self keyValueStoreLock];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__NDAnalyticsEnvelopeManager__lastUploadDatesByContentType__block_invoke;
  v11 = &unk_27997A678;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [keyValueStoreLock performWithLockSync:&v8];

  v6 = [v5 fc_dictionaryByTransformingKeysWithBlock:{&__block_literal_global_55, v8, v9, v10, v11, selfCopy}];

  return v6;
}

void __59__NDAnalyticsEnvelopeManager__lastUploadDatesByContentType__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastUploadDatesByContentType];
  [v2 addAllEntriesToDictionary:*(a1 + 40)];
}

uint64_t __59__NDAnalyticsEnvelopeManager__lastUploadDatesByContentType__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (id)_handleDroppedEnvelopesForLocalReasons:(id)reasons
{
  reasonsCopy = reasons;
  if (!reasonsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager _handleDroppedEnvelopesForLocalReasons:];
  }

  [reasonsCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global_59];
  allValues = [reasonsCopy allValues];
  fc_arrayByFlattening = [allValues fc_arrayByFlattening];

  return fc_arrayByFlattening;
}

void __69__NDAnalyticsEnvelopeManager__handleDroppedEnvelopesForLocalReasons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    if (v5 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __69__NDAnalyticsEnvelopeManager__handleDroppedEnvelopesForLocalReasons___block_invoke_cold_1();
    }

    v6 = 0;
  }

  v7 = NDAnalyticsEnvelopeSubmissionDatesByContentType(v4);
  [NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsDropped:v7 forReason:v6 withError:0];
}

- (id)_handleOutcomeOfUploadAttemptWithPayload:(id)payload success:(BOOL)success error:(id)error willRetry:(BOOL)retry hitEndpoint:(BOOL)endpoint
{
  endpointCopy = endpoint;
  payloadCopy = payload;
  errorCopy = error;
  if (!payloadCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeManager _handleOutcomeOfUploadAttemptWithPayload:success:error:willRetry:hitEndpoint:];
  }

  if (endpointCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    keyValueStoreLock = [(NDAnalyticsEnvelopeManager *)self keyValueStoreLock];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke;
    v36[3] = &unk_27997A708;
    v37 = payloadCopy;
    selfCopy = self;
    v39 = date;
    v16 = date;
    [keyValueStoreLock performWithLockSync:v36];
  }

  v17 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_3;
  aBlock[3] = &unk_27997A730;
  successCopy = success;
  v18 = v17;
  retryCopy = retry;
  v32 = v18;
  v33 = errorCopy;
  v19 = errorCopy;
  v20 = _Block_copy(aBlock);
  entriesToUpload = [payloadCopy entriesToUpload];
  v22 = entriesToUpload;
  if (entriesToUpload)
  {
    v23 = entriesToUpload;
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v20[2](v20, v23);

  droppedEntriesByReason = [payloadCopy droppedEntriesByReason];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_4;
  v29[3] = &unk_27997A758;
  v30 = v20;
  v25 = v20;
  [droppedEntriesByReason enumerateKeysAndObjectsUsingBlock:v29];

  v26 = v30;
  v27 = v18;

  return v18;
}

void __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entriesToUpload];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_2;
  v4[3] = &unk_27997A6E0;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v4];
}

void __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v9 = [v3 lastUploadDatesByContentType];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 envelopeContentType];

  v7 = [v5 numberWithInt:v6];
  v8 = [v7 stringValue];
  [v9 setObject:v2 forKeyedSubscript:v8];
}

void __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) addObjectsFromArray:v3];
    v4 = NDAnalyticsEnvelopeSubmissionDatesByContentType(v5);
    [NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsUploaded:v4];
  }

  else if (*(a1 + 49))
  {
    v4 = NDAnalyticsEnvelopeContentTypesFromEntries(v3);
    [NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsRetainedForUploadRetry:v4];
  }

  else
  {
    [*(a1 + 32) addObjectsFromArray:v3];
    v4 = NDAnalyticsEnvelopeSubmissionDatesByContentType(v5);
    [NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsDropped:v4 forReason:2 withError:*(a1 + 40)];
  }
}

void __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  if (v6 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_4_cold_1();
    }
  }

  else if (v6 == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_4_cold_2();
  }
}

- (void)_uploadTelemetryEnvelopes:(id)envelopes
{
  envelopesCopy = envelopes;
  v5 = os_transaction_create();
  telemetryUploader = [(NDAnalyticsEnvelopeManager *)self telemetryUploader];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NDAnalyticsEnvelopeManager__uploadTelemetryEnvelopes___block_invoke;
  v8[3] = &unk_27997A538;
  v9 = v5;
  v7 = v5;
  [telemetryUploader uploadEnvelopes:envelopesCopy completion:v8];
}

- (void)initWithAppConfigurationManager:telemetryUploader:storeDirectoryFileURL:URLSessionQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfigurationManager", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppConfigurationManager:telemetryUploader:storeDirectoryFileURL:URLSessionQueue:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "storeDirectoryFileURL", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppConfigurationManager:telemetryUploader:storeDirectoryFileURL:URLSessionQueue:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "URLSessionQueue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleLaunchEventForBackgroundSessionWithIdentifier:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "identifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)submitEnvelopes:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopes", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleDroppedEnvelopesForLocalReasons:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "droppedEntriesByLocalReason", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void __69__NDAnalyticsEnvelopeManager__handleDroppedEnvelopesForLocalReasons___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"oversized is not a local failure reason!"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleOutcomeOfUploadAttemptWithPayload:success:error:willRetry:hitEndpoint:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "payloadInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_4_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"sampled is a local failure reason!"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void __107__NDAnalyticsEnvelopeManager__handleOutcomeOfUploadAttemptWithPayload_success_error_willRetry_hitEndpoint___block_invoke_4_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"missing config is a local failure reason!"];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end