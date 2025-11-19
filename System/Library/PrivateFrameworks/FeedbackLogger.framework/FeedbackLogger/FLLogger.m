@interface FLLogger
+ (BOOL)isManagedProcess;
+ (id)fixedCategoryForBundleID:(id)a3;
+ (id)sharedLoggerWithPersistenceConfiguration:(unint64_t)a3;
- (FLLogger)initWithContext:(id)a3;
- (FLLogger)initWithPersistenceConfiguration:(unint64_t)a3;
- (FLWriteTransaction)writeTransaction;
- (id)__dispatched_databaseConnectionWithStorePath:(id)a3;
- (id)__dispatched_persistentStoreWithId:(id)a3 category:(id)a4;
- (id)__dispatched_persistentStoreWithId:(id)a3 category:(id)a4 storePath:(id)a5;
- (id)_nextStoreCacheTimerFireDate;
- (id)categoryForSiriPayload:(id)a3 autoBugCaptureBlock:(id)a4;
- (id)parsecPersistentStoreForBundleID:(id)a3;
- (id)readSiriCategoryFrom:(id)a3 recursive:(BOOL)a4 autoBugCaptureBlock:(id)a5;
- (id)registerSiriInstrumentationObserver:(id)a3 observer:(id)a4;
- (id)siriReadingStoreForBundleID:(id)a3;
- (id)siriReadingStoreForBundleID:(id)a3 directoryPath:(id)a4;
- (id)siriWritingStoreForBundleID:(id)a3 category:(id)a4;
- (id)uploadHeaders;
- (void)_cancelStoreCacheTimer;
- (void)_cancelWriteTransactionTTLTimer;
- (void)_claimWriteTransaction;
- (void)_cleanPersistantStores;
- (void)_closeAllStores;
- (void)_relinquishWriteTransaction;
- (void)_scheduleStoreCacheTimer;
- (void)_scheduleWriteTransactionTTLTimer;
- (void)_setupStoreCacheTimer;
- (void)_setupWriteTransactionTTLTimer;
- (void)_writeTransactionTTLTimerDidFire;
- (void)cancelWriteTransactionTTLTimer;
- (void)closeAllStores;
- (void)closeOpenBatchesAndStores;
- (void)closeStoreForApplicationFromNotification:(id)a3;
- (void)closeStoreForBundleID:(id)a3;
- (void)dealloc;
- (void)removeSiriInstrumentationObserver:(id)a3;
- (void)report:(id)a3 application:(id)a4 onComplete:(id)a5;
- (void)reportCADroppedBeforePersistPayloadFromBundleID:(id)a3 category:(id)a4 size:(unint64_t)a5;
- (void)reportCAIncomingPayloadFromBundleID:(id)a3 category:(id)a4 size:(unint64_t)a5;
- (void)reportDataPlatformBatchedEvent:(id)a3 forBundleID:(id)a4 ofSchema:(id)a5 completion:(id)a6;
- (void)reportDataPlatformSingleEvent:(id)a3 forBundleID:(id)a4 ofSchema:(id)a5 completion:(id)a6;
- (void)reportDataUploadEvent:(id)a3 application:(id)a4 completion:(id)a5;
- (void)reportParsecFeedback:(id)a3 completion:(id)a4;
- (void)reportSiriInstrumentationEvent:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)runOnStoreForBundleID:(id)a3 block:(id)a4;
- (void)runOnStoreForBundleID:(id)a3 directoryPath:(id)a4 block:(id)a5;
- (void)scheduleImmediateUpload;
- (void)setValue:(id)a3 forUploadHeaderNamed:(id)a4;
- (void)write:(id)a3 category:(id)a4 toStoreWithID:(id)a5 completion:(id)a6;
- (void)write:(id)a3 store:(id)a4 preferredBatchSize:(unint64_t)a5 completion:(id)a6;
@end

@implementation FLLogger

- (void)report:(id)a3 application:(id)a4 onComplete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __42__FLLogger_report_application_onComplete___block_invoke;
  v19 = &unk_278FF8BC0;
  objc_copyWeak(&v22, &location);
  v11 = v9;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  v13 = _Block_copy(&v16);
  v14 = [(FLLogger *)self categoryForSiriPayload:v12 autoBugCaptureBlock:v13, v16, v17, v18, v19];
  v15 = [(FLLogger *)self siriStoreIdForBundleId:v11];
  [(FLLogger *)self write:v12 category:v14 toStoreWithID:v15 completion:v10];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __42__FLLogger_report_application_onComplete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [FLAutoBugHelper alloc];
  v8 = [WeakRetained context];
  v9 = [v8 autoBugCapture];
  v10 = [(FLAutoBugHelper *)v7 initWithAutoBugCapture:v9 bundleID:*(a1 + 32) eventValue:*(a1 + 40)];

  if (v11)
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5 additionalEventName:v11];
  }

  else
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5];
  }
}

- (void)runOnStoreForBundleID:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FLLogger *)self context];
  v9 = [v8 pathForStore:v6];

  v10 = [(FLLogger *)self context];
  v11 = [v10 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__FLLogger_runOnStoreForBundleID_block___block_invoke;
  v15[3] = &unk_278FF8B68;
  v15[4] = self;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v12 = v7;
  v13 = v9;
  v14 = v6;
  dispatch_sync(v11, v15);
}

void __40__FLLogger_runOnStoreForBundleID_block___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 siriStoreIdForBundleId:a1[5]];
  v5 = [v2 __dispatched_persistentStoreWithId:v3 category:0 storePath:a1[6]];

  v4 = v5;
  if (v5)
  {
    (*(a1[7] + 16))();
    v4 = v5;
  }
}

- (void)runOnStoreForBundleID:(id)a3 directoryPath:(id)a4 block:(id)a5
{
  v25[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CCACA8];
  v25[0] = a4;
  v25[1] = @"data.sqlite";
  v11 = MEMORY[0x277CBEA60];
  v12 = a4;
  v13 = [v11 arrayWithObjects:v25 count:2];
  v14 = [v10 pathWithComponents:v13];

  v15 = [(FLLogger *)self context];
  v16 = [v15 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__FLLogger_runOnStoreForBundleID_directoryPath_block___block_invoke;
  block[3] = &unk_278FF8B68;
  block[4] = self;
  v22 = v8;
  v23 = v14;
  v24 = v9;
  v17 = v9;
  v18 = v14;
  v19 = v8;
  dispatch_sync(v16, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __54__FLLogger_runOnStoreForBundleID_directoryPath_block___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 siriStoreIdForBundleId:a1[5]];
  v5 = [v2 __dispatched_persistentStoreWithId:v3 category:0 storePath:a1[6]];

  v4 = v5;
  if (v5)
  {
    (*(a1[7] + 16))();
    v4 = v5;
  }
}

- (void)reportDataPlatformSingleEvent:(id)a3 forBundleID:(id)a4 ofSchema:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:v11 isDPG:1])
  {
    -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", v11, &unk_285E1AE38, [v10 length]);
    v14 = [FLDPGBatchFactory allowDPGBundleID:v11];
    v15 = [v10 length];
    if (!v14)
    {
      [(FLLogger *)self reportCADroppedBeforePersistPayloadFromBundleID:v11 category:&unk_285E1AE38 size:v15];
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = -9;
      goto LABEL_9;
    }

    if (v15 >= 0x1F0000)
    {
      -[FLLogger reportCADroppedBeforePersistPayloadFromBundleID:category:size:](self, "reportCADroppedBeforePersistPayloadFromBundleID:category:size:", v11, &unk_285E1AE38, [v10 length]);
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = -5;
LABEL_9:
      v19 = [v16 initWithDomain:@"FLErrorDomain" code:v17 userInfo:0];
      v13[2](v13, v19);

      goto LABEL_13;
    }

    v20 = [FLDPGBatchFactory makeBatchWithPayload:v10 bundleID:v11 schema:v12];
    v21 = [v20 bundleID];
    v31 = v20;
    v22 = [v20 payload];
    v23 = os_transaction_create();
    v24 = [(FLLogger *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v21;
      v39 = 2048;
      v40 = [v22 length];
      _os_log_impl(&dword_24AB3F000, v24, OS_LOG_TYPE_DEFAULT, "Received persist data request for store (%@) for %lu bytes", buf, 0x16u);
    }

    v25 = [(FLLogger *)self context];
    v26 = [v25 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__FLLogger_reportDataPlatformSingleEvent_forBundleID_ofSchema_completion___block_invoke;
    block[3] = &unk_278FF8B40;
    block[4] = self;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v13;
    v27 = v23;
    v28 = v22;
    v29 = v21;
    dispatch_async(v26, block);
  }

  else
  {
    v18 = [(FLLogger *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping DP single event", buf, 2u);
    }

    v13[2](v13, 0);
  }

LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

void __74__FLLogger_reportDataPlatformSingleEvent_forBundleID_ofSchema_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:&unk_285E1AE38];
  v3 = [v2 persistUploadPayload:*(a1 + 48)];

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) length];
    v7 = @"failed";
    v10 = 138412802;
    v11 = v5;
    if (!v3)
    {
      v7 = @"completed successfully";
    }

    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_DEFAULT, "Persist data request for store (%@) for %lu bytes %@", &v10, 0x20u);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reportDataPlatformBatchedEvent:(id)a3 forBundleID:(id)a4 ofSchema:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:v11 isDPG:1])
  {
    if ([v10 length] < 0x80000)
    {
      -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", v11, &unk_285E1AE38, [v10 length]);
      if ([FLDPGBatchFactory allowDPGBundleID:v11])
      {
        v16 = [FLDPGBatchFactory makeBatchWithPayload:v10 bundleID:v11 schema:v12];
        v24 = [v16 payload];
        v17 = [v16 bundleID];
        v18 = [(FLLogger *)self siriStoreIdForBundleId:v17];

        v19 = [(FLLogger *)self writeTransaction];
        v20 = [(FLLogger *)self log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v28 = v18;
          v29 = 2112;
          v30 = &unk_285E1AE38;
          v31 = 2048;
          v32 = [v24 length];
          _os_log_impl(&dword_24AB3F000, v20, OS_LOG_TYPE_DEFAULT, "Received persist request for store (%@, %@) for %lu bytes", buf, 0x20u);
        }

        v21 = [(FLLogger *)self context];
        v22 = [v21 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __75__FLLogger_reportDataPlatformBatchedEvent_forBundleID_ofSchema_completion___block_invoke;
        block[3] = &unk_278FF8B40;
        block[4] = self;
        block[5] = v18;
        block[6] = v24;
        block[7] = v19;
        v26 = v13;
        dispatch_async(v22, block);
      }

      else
      {
        -[FLLogger reportCADroppedBeforePersistPayloadFromBundleID:category:size:](self, "reportCADroppedBeforePersistPayloadFromBundleID:category:size:", v11, &unk_285E1AE38, [v10 length]);
        v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"FLErrorDomain" code:-9 userInfo:0];
        (*(v13 + 2))(v13, v23);
      }
    }

    else
    {
      [(FLLogger *)self reportDataPlatformSingleEvent:v10 forBundleID:v11 ofSchema:v12 completion:v13];
    }
  }

  else
  {
    v14 = [(FLLogger *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24AB3F000, v14, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping DP batch event", buf, 2u);
    }

    (*(v13 + 2))(v13, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__FLLogger_reportDataPlatformBatchedEvent_forBundleID_ofSchema_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:&unk_285E1AE38];
  if (([v3 currentBatchEventCount] - 1000) < 0xFFFFFFFFFFFFFC17 || (v2 = objc_msgSend(v3, "currentBatchPayloadSize"), (objc_msgSend(*(a1 + 48), "length") + v2) >= 0x1F0000))
  {
    [v3 initializeNewBatch];
  }

  [*(a1 + 32) write:*(a1 + 48) store:v3 preferredBatchSize:0x200000 completion:*(a1 + 64)];
}

- (void)reportDataUploadEvent:(id)a3 application:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:v9 isDPG:0])
  {
    v11 = os_transaction_create();
    v12 = [v8 data];
    v13 = [(FLLogger *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v9;
      v27 = 2048;
      v28 = [v12 length];
      _os_log_impl(&dword_24AB3F000, v13, OS_LOG_TYPE_DEFAULT, "Received persist data request for store (%@) for %lu bytes", buf, 0x16u);
    }

    -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", v9, &unk_285E1AE38, [v12 length]);
    v14 = [(FLLogger *)self context];
    v15 = [v14 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__FLLogger_reportDataUploadEvent_application_completion___block_invoke;
    block[3] = &unk_278FF8B40;
    block[4] = self;
    v21 = v9;
    v22 = v12;
    v23 = v11;
    v24 = v10;
    v16 = v11;
    v17 = v12;
    dispatch_async(v15, block);
  }

  else
  {
    v18 = [(FLLogger *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping data event", buf, 2u);
    }

    (*(v10 + 2))(v10, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__FLLogger_reportDataUploadEvent_application_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:&unk_285E1AE38];
  v3 = [v2 persistUploadPayload:*(a1 + 48)];

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) length];
    v7 = @"failed";
    v10 = 138412802;
    v11 = v5;
    if (!v3)
    {
      v7 = @"completed successfully";
    }

    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_DEFAULT, "Persist data request for store (%@) for %lu bytes %@", &v10, 0x20u);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeSiriInstrumentationObserver:(id)a3
{
  v4 = a3;
  v5 = [(FLLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Removing siri instrumentation observer", v6, 2u);
  }

  dispatch_source_cancel(v4);
}

- (id)registerSiriInstrumentationObserver:(id)a3 observer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FLLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_DEFAULT, "Registering new siri instrumentation observer", v12, 2u);
  }

  v9 = [(FLLogger *)self siriReadingStoreForBundleID:v7];

  [(FLLogger *)self _cancelStoreCacheTimer];
  v10 = [v9 registerInsertionObserver:v6];

  return v10;
}

- (void)reportSiriInstrumentationEvent:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:v9 isDPG:0])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [v8 data];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__FLLogger_reportSiriInstrumentationEvent_forBundleID_completion___block_invoke;
    aBlock[3] = &unk_278FF8BC0;
    objc_copyWeak(&v22, location);
    v13 = v9;
    v20 = v13;
    v14 = v12;
    v21 = v14;
    v15 = _Block_copy(aBlock);
    v16 = [(FLLogger *)self categoryForSiriPayload:v14 autoBugCaptureBlock:v15];
    v17 = [(FLLogger *)self siriStoreIdForBundleId:v13];
    [(FLLogger *)self write:v14 category:v16 toStoreWithID:v17 completion:v10];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v18 = [(FLLogger *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping SELF event", location, 2u);
    }

    v10[2](v10, 0);
  }
}

void __66__FLLogger_reportSiriInstrumentationEvent_forBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [FLAutoBugHelper alloc];
  v8 = [WeakRetained context];
  v9 = [v8 autoBugCapture];
  v10 = [(FLAutoBugHelper *)v7 initWithAutoBugCapture:v9 bundleID:*(a1 + 32) eventValue:*(a1 + 40)];

  if (v11)
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5 additionalEventName:v11];
  }

  else
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5];
  }
}

- (id)siriReadingStoreForBundleID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(FLLogger *)self context];
  v6 = [v5 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FLLogger_siriReadingStoreForBundleID___block_invoke;
  block[3] = &unk_278FF8B18;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __40__FLLogger_siriReadingStoreForBundleID___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 siriStoreIdForBundleId:a1[5]];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)siriReadingStoreForBundleID:(id)a3 directoryPath:(id)a4
{
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v8 = MEMORY[0x277CCACA8];
  v28[0] = v7;
  v28[1] = @"data.sqlite";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v10 = [v8 pathWithComponents:v9];

  v11 = [(FLLogger *)self context];
  v12 = [v11 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__FLLogger_siriReadingStoreForBundleID_directoryPath___block_invoke;
  block[3] = &unk_278FF8AF0;
  block[4] = self;
  v19 = v6;
  v20 = v10;
  v21 = &v22;
  v13 = v10;
  v14 = v6;
  dispatch_sync(v12, block);

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __54__FLLogger_siriReadingStoreForBundleID_directoryPath___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 siriStoreIdForBundleId:a1[5]];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:0 storePath:a1[6]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)siriWritingStoreForBundleID:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v8 = [(FLLogger *)self context];
  v9 = [v8 queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__FLLogger_siriWritingStoreForBundleID_category___block_invoke;
  v14[3] = &unk_278FF8AF0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v17 = &v18;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, v14);

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __49__FLLogger_siriWritingStoreForBundleID_category___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 siriStoreIdForBundleId:a1[5]];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:a1[6]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)categoryForSiriPayload:(id)a3 autoBugCaptureBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (![v7 length])
  {
    v6[2](v6, @"AnyEventTypePayloadSizeZero", 0);
  }

  v8 = [objc_opt_new() initWithData:v7];

  if (v8)
  {
    v9 = [(FLLogger *)self readSiriCategoryFrom:v8 recursive:1 autoBugCaptureBlock:v6];
  }

  else
  {
    v6[2](v6, @"AnyEventTypeReaderNil", 0);
    v9 = 0;
  }

  return v9;
}

- (id)readSiriCategoryFrom:(id)a3 recursive:(BOOL)a4 autoBugCaptureBlock:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = 0;
  v47 = 0;
  v48 = a5;
  v9 = 0;
  v10 = @"AnyEventTypeFoundButValueSizeZero_nonrecursive";
  if (v6)
  {
    v10 = @"AnyEventTypeFoundButValueSizeZero_recursive";
  }

  v46 = v10;
  v11 = 1;
  v12 = 1;
  while (1)
  {
    v13 = [v7 position];
    if (v13 >= [v7 length] || (objc_msgSend(v7, "hasError") & 1) != 0)
    {
LABEL_45:
      if ((v9 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      buf[0] = 0;
      v17 = [v7 position] + 1;
      if (v17 >= [v7 position] && (v18 = objc_msgSend(v7, "position") + 1, v18 <= objc_msgSend(v7, "length")))
      {
        v19 = [v7 data];
        [v19 getBytes:buf range:{objc_msgSend(v7, "position"), 1}];

        [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
      }

      else
      {
        [v7 _setError];
      }

      v16 |= (buf[0] & 0x7F) << v14;
      if ((buf[0] & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v20 = v15++ >= 9;
      if (v20)
      {
        v21 = 0;
        goto LABEL_18;
      }
    }

    v21 = [v7 hasError] ? 0 : v16;
LABEL_18:
    if ([v7 hasError])
    {
      break;
    }

    if ((v21 & 7) == 4)
    {
      goto LABEL_45;
    }

    if ((v21 >> 3) == 2)
    {
      if (v6)
      {
        v28 = PBReaderReadData();

        if (!v8)
        {
          (*(v48 + 2))(v48, @"PayloadFoundButValueSizeZero_recursive", 0);
        }

        v12 = 0;
        v47 = v28;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        v44 = *(v48 + 2);
        goto LABEL_91;
      }
    }

    else if ((v21 >> 3) == 1)
    {
      v22 = 0;
      v23 = 0;
      v8 = 0;
      while (1)
      {
        buf[0] = 0;
        v24 = [v7 position] + 1;
        if (v24 >= [v7 position] && (v25 = objc_msgSend(v7, "position") + 1, v25 <= objc_msgSend(v7, "length")))
        {
          v26 = [v7 data];
          [v26 getBytes:buf range:{objc_msgSend(v7, "position"), 1}];

          [v7 setPosition:{objc_msgSend(v7, "position") + 1}];
        }

        else
        {
          [v7 _setError];
        }

        v8 |= (buf[0] & 0x7F) << v22;
        if ((buf[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        if (v23++ > 8)
        {
          goto LABEL_39;
        }
      }

      if (([v7 hasError] & 1) != 0 || !v8)
      {
LABEL_39:
        (*(v48 + 2))(v48, v46, 0);
        v8 = 0;
      }

      if (!v6)
      {
        goto LABEL_81;
      }

      v11 = 0;
      v9 = 1;
    }

    else if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      v44 = *(v48 + 2);
LABEL_91:
      v44();
      v42 = 0;
      goto LABEL_82;
    }

    if ((v11 & 1) == 0 && (v12 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (v6)
  {
    v40 = @"AnyEventTypeReaderHasError_recursive";
  }

  else
  {
    v40 = @"AnyEventTypeReaderHasError_nonrecursive";
  }

  (*(v48 + 2))(v48, v40, 0);
  if (v9)
  {
    goto LABEL_50;
  }

LABEL_46:
  if (v6)
  {
    v29 = @"AnyEventTypeNeverFound_recursive";
  }

  else
  {
    v29 = @"AnyEventTypeNeverFound_nonrecursive";
  }

  (*(v48 + 2))(v48, v29, 0);
LABEL_50:
  if (!v6 || v8 != 6)
  {
LABEL_81:
    v42 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    goto LABEL_82;
  }

  v30 = [objc_opt_new() initWithData:v47];
  while (1)
  {
    v31 = [v30 position];
    if (v31 >= [v30 length] || (objc_msgSend(v30, "hasError") & 1) != 0)
    {
      goto LABEL_80;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      buf[0] = 0;
      v35 = [v30 position] + 1;
      if (v35 >= [v30 position] && (v36 = objc_msgSend(v30, "position") + 1, v36 <= objc_msgSend(v30, "length")))
      {
        v37 = [v30 data];
        [v37 getBytes:buf range:{objc_msgSend(v30, "position"), 1}];

        [v30 setPosition:{objc_msgSend(v30, "position") + 1}];
      }

      else
      {
        [v30 _setError];
      }

      v34 |= (buf[0] & 0x7F) << v32;
      if ((buf[0] & 0x80) == 0)
      {
        break;
      }

      v32 += 7;
      v20 = v33++ >= 9;
      if (v20)
      {
        v38 = 0;
        goto LABEL_67;
      }
    }

    if ([v30 hasError])
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

LABEL_67:
    if ([v30 hasError])
    {
      v41 = [(FLLogger *)self log];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, v41, OS_LOG_TYPE_ERROR, "Error with PBReader with payload having outer event AnyOrderedEventType", buf, 2u);
      }

LABEL_80:
      (*(v48 + 2))(v48, @"InnerAnyEventTypeNeverFound", 0);

      goto LABEL_81;
    }

    if ((v38 & 7) == 4)
    {
      goto LABEL_80;
    }

    if ((v38 >> 3) == 2)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      v39 = *(v48 + 2);
      goto LABEL_88;
    }
  }

  *buf = 0;
  v50 = 0;
  if (PBReaderPlaceMark())
  {
    v42 = [(FLLogger *)self readSiriCategoryFrom:v30 recursive:0 autoBugCaptureBlock:v48];
    goto LABEL_89;
  }

  v39 = *(v48 + 2);
LABEL_88:
  v39();
  v42 = 0;
LABEL_89:

LABEL_82:

  return v42;
}

- (void)reportParsecFeedback:(id)a3 completion:(id)a4
{
  v6 = a4;
  v9 = [a3 data];
  v7 = [(FLLogger *)self parsecCategoryForPayload:v9];
  v8 = [(FLLogger *)self parsecStoreId];
  [(FLLogger *)self write:v9 category:v7 toStoreWithID:v8 completion:v6];
}

- (id)parsecPersistentStoreForBundleID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v5 = [(FLLogger *)self context];
  v6 = [v5 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__FLLogger_parsecPersistentStoreForBundleID___block_invoke;
  v9[3] = &unk_278FF8AC8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __45__FLLogger_parsecPersistentStoreForBundleID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 parsecStoreId];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)write:(id)a3 category:(id)a4 toStoreWithID:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FLLogger *)self writeTransaction];
  v15 = [(FLLogger *)self log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = v12;
    v31 = 2112;
    v32 = v11;
    v33 = 2048;
    v34 = [v10 length];
    _os_log_impl(&dword_24AB3F000, v15, OS_LOG_TYPE_DEFAULT, "Received persist request for store (%@, %@) for %lu bytes", buf, 0x20u);
  }

  -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", v12, v11, [v10 length]);
  v16 = [(FLLogger *)self context];
  v17 = [v16 queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__FLLogger_write_category_toStoreWithID_completion___block_invoke;
  v23[3] = &unk_278FF8AA0;
  v23[4] = self;
  v24 = v12;
  v25 = v11;
  v26 = v10;
  v27 = v14;
  v28 = v13;
  v18 = v13;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  dispatch_async(v17, v23);

  v22 = *MEMORY[0x277D85DE8];
}

void __52__FLLogger_write_category_toStoreWithID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:*(a1 + 48)];
  [*(a1 + 32) write:*(a1 + 56) store:v2 preferredBatchSize:0 completion:*(a1 + 72)];
}

- (void)write:(id)a3 store:(id)a4 preferredBatchSize:(unint64_t)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(FLLogger *)self context];
  if ([v13 persistenceConfiguration] == 1)
  {
    v14 = [(FLLogger *)self context];
    v15 = [v14 deviceUnlockedSinceBoot];

    if ((v15 & 1) == 0)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = -10;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v11)
  {
    v18 = [v11 persist:v10 preferredBatchSize:a5];
    goto LABEL_9;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = -8;
LABEL_8:
  v18 = [v16 errorWithDomain:@"FLErrorDomain" code:v17 userInfo:0];
LABEL_9:
  v19 = v18;
  v20 = [(FLLogger *)self log];
  v21 = v20;
  if (v19)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v22 = [v11 storeIdentifier];
    v24 = 138412802;
    v25 = v22;
    v26 = 2048;
    v27 = [v10 length];
    v28 = 2112;
    v29 = v19;
    _os_log_error_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_ERROR, "Persist request for store (%@) for %lu bytes failed with error %@.", &v24, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v22 = [v11 storeIdentifier];
    v24 = 138412546;
    v25 = v22;
    v26 = 2048;
    v27 = [v10 length];
    _os_log_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_DEFAULT, "Persist request for store (%@) for %lu bytes completed successfully.", &v24, 0x16u);
  }

LABEL_15:
  if (v12)
  {
    v12[2](v12, v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)scheduleImmediateUpload
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_INFO, "Immediate upload requested. Requesting stores be closed.", buf, 2u);
  }

  [(FLLogger *)self closeAllStores];
  v4 = dispatch_time(0, 2000000000);
  v5 = [(FLLogger *)self context];
  v6 = [v5 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FLLogger_scheduleImmediateUpload__block_invoke;
  block[3] = &unk_278FF8A78;
  v9 = v3;
  v7 = v3;
  dispatch_after(v4, v6, block);
}

uint64_t __35__FLLogger_scheduleImmediateUpload__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_24AB3F000, v1, OS_LOG_TYPE_INFO, "Telling FBF to upload immediately.", v3, 2u);
  }

  return notify_post([@"com.apple.parsec-fbf.FLUploadImmediately" UTF8String]);
}

- (id)uploadHeaders
{
  v2 = [(FLLogger *)self context];
  v3 = [v2 userDefaults];
  v4 = [v3 objectForKey:@"FLUploadHeaders"];

  return v4;
}

- (void)setValue:(id)a3 forUploadHeaderNamed:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(FLLogger *)self context];
  v8 = [v7 userDefaults];

  v9 = [v8 objectForKey:@"FLUploadHeaders"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = v11;
  if (v13)
  {
    [v11 setObject:v13 forKey:v6];
  }

  else
  {
    [v11 removeObjectForKey:v6];
  }

  [v8 setObject:v12 forKey:@"FLUploadHeaders"];
}

- (void)_closeAllStores
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Closing all stores", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = [(FLLogger *)self persistentStores];
  [v4 removeAllObjects];

  v5 = [(FLLogger *)self dbConnections];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)closeOpenBatchesAndStores
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_INFO, "Received notification to close all stores and any open batches, closing", buf, 2u);
  }

  v4 = [(FLLogger *)self context];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__FLLogger_closeOpenBatchesAndStores__block_invoke;
  block[3] = &unk_278FF8A78;
  block[4] = self;
  dispatch_async(v5, block);
}

void __37__FLLogger_closeOpenBatchesAndStores__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStores];
  v3 = [v2 allValues];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) forceCloseOpenBatches];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) _closeAllStores];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)closeAllStores
{
  v3 = [(FLLogger *)self context];
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__FLLogger_closeAllStores__block_invoke;
  block[3] = &unk_278FF8A78;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_cancelStoreCacheTimer
{
  v3 = [(FLLogger *)self persistentStoreCacheTTLTimer];

  if (v3)
  {
    v4 = [(FLLogger *)self persistentStoreCacheTTLTimer];
    dispatch_source_cancel(v4);

    [(FLLogger *)self setPersistentStoreCacheTTLTimer:0];
  }
}

- (void)_scheduleStoreCacheTimer
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(FLLogger *)self context];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  [(FLLogger *)self _setupStoreCacheTimer];
  v5 = [(FLLogger *)self _nextStoreCacheTimerFireDate];
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v5 isEqualToDate:v6];

  if ((v7 & 1) == 0)
  {
    [v5 timeIntervalSinceNow];
    v9 = v8;
    objc_initWeak(&location, self);
    if (v9 <= 0.0)
    {
      v13 = [(FLLogger *)self context];
      v14 = [v13 queue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __36__FLLogger__scheduleStoreCacheTimer__block_invoke;
      v16[3] = &unk_278FF8A50;
      objc_copyWeak(&v17, &location);
      dispatch_async(v14, v16);

      objc_destroyWeak(&v17);
    }

    else
    {
      v10 = [(FLLogger *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v9;
        _os_log_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling store cache TTL timer for %f seconds from now.", buf, 0xCu);
      }

      v11 = [(FLLogger *)self persistentStoreCacheTTLTimer];
      v12 = dispatch_walltime(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }

    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __36__FLLogger__scheduleStoreCacheTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanPersistantStores];
    WeakRetained = v2;
  }
}

- (void)_setupStoreCacheTimer
{
  v3 = [(FLLogger *)self context];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(FLLogger *)self persistentStoreCacheTTLTimer];

  if (!v5)
  {
    v6 = [(FLLogger *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_DEFAULT, "Creating new store cache TTL timer", buf, 2u);
    }

    v7 = [(FLLogger *)self context];
    v8 = [v7 queue];
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
    [(FLLogger *)self setPersistentStoreCacheTTLTimer:v9];

    objc_initWeak(buf, self);
    v10 = [(FLLogger *)self persistentStoreCacheTTLTimer];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__FLLogger__setupStoreCacheTimer__block_invoke;
    v15 = &unk_278FF8A00;
    v16 = self;
    objc_copyWeak(&v17, buf);
    dispatch_source_set_event_handler(v10, &v12);

    v11 = [(FLLogger *)self persistentStoreCacheTTLTimer:v12];
    dispatch_activate(v11);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __33__FLLogger__setupStoreCacheTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, v2, OS_LOG_TYPE_DEFAULT, "Store cache TTL timer fired.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Purging persistent store cache after inactivity", v6, 2u);
    }

    [v4 _cancelStoreCacheTimer];
    [v4 _cleanPersistantStores];
  }
}

- (id)_nextStoreCacheTimerFireDate
{
  v3 = [(FLLogger *)self context];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(FLLogger *)self persistentStores];
  v6 = [v5 keyEnumerator];

  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v6 nextObject];
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v10 = [(FLLogger *)self persistentStores];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [v11 currentBatchCreationDate];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x277CBEAA8] date];
      }

      v15 = v14;

      [v11 batchMaximumDuration];
      v16 = [v15 dateByAddingTimeInterval:?];
      v17 = [v16 earlierDate:v7];

      [v17 timeIntervalSinceNow];
      if (v18 <= 0.0)
      {
        break;
      }

      v19 = [v6 nextObject];

      v9 = v19;
      v7 = v17;
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    v20 = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    v17 = v7;
LABEL_10:
    v17 = v17;
    v20 = v17;
  }

  return v20;
}

- (void)_cleanPersistantStores
{
  v3 = [(FLLogger *)self context];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(FLLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Closing all open database connections.", v21, 2u);
  }

  v6 = [(FLLogger *)self persistentStores];
  v7 = [v6 keyEnumerator];

  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = [(FLLogger *)self persistentStores];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [v11 currentBatchCreationDate];
      [v11 batchMaximumDuration];
      v13 = [v12 dateByAddingTimeInterval:?];
      [v13 timeIntervalSinceNow];
      v15 = v14;

      if (v15 <= 0.0)
      {
        v16 = [(FLLogger *)self persistentStores];
        v17 = [v16 objectForKeyedSubscript:v9];
        [v17 closeOpenBatch];
      }

      v18 = [v7 nextObject];

      v9 = v18;
    }

    while (v18);
  }

  v19 = [(FLLogger *)self persistentStores];
  [v19 removeAllObjects];

  v20 = [(FLLogger *)self dbConnections];
  [v20 removeAllObjects];

  [(FLLogger *)self _cancelStoreCacheTimer];
}

- (void)closeStoreForApplicationFromNotification:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:@"bundleIdentifier"];

  v5 = v6;
  if (v6)
  {
    [(FLLogger *)self closeStoreForBundleID:v6];
    v5 = v6;
  }
}

- (void)closeStoreForBundleID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FLLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Received notification to close stores for %@", buf, 0xCu);
  }

  v6 = os_transaction_create();
  v7 = [(FLLogger *)self context];
  v8 = [v7 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__FLLogger_closeStoreForBundleID___block_invoke;
  block[3] = &unk_278FF8A28;
  v13 = v4;
  v14 = self;
  v15 = v6;
  v9 = v6;
  v10 = v4;
  dispatch_async(v8, block);

  v11 = *MEMORY[0x277D85DE8];
}

void __34__FLLogger_closeStoreForBundleID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-", *(a1 + 32)];
  v3 = [*(a1 + 40) persistentStores];
  v4 = [v3 allKeys];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 hasPrefix:v2])
        {
          v11 = [*(a1 + 40) persistentStores];
          v12 = [v11 objectForKeyedSubscript:v10];
          [v12 closeOpenBatch];

          v13 = [*(a1 + 40) persistentStores];
          [v13 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)__dispatched_persistentStoreWithId:(id)a3 category:(id)a4 storePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FLLogger *)self context];
  v12 = [v11 queue];
  dispatch_assert_queue_V2(v12);

  if (v9)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, v9];
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;
  v15 = [(FLLogger *)self persistentStores];
  v16 = [v15 objectForKeyedSubscript:v14];

  [(FLLogger *)self _scheduleStoreCacheTimer];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = [(FLLogger *)self __dispatched_databaseConnectionWithStorePath:v10];
    if (v18)
    {
      v19 = [FLSQLitePersistence alloc];
      v20 = [(FLLogger *)self context];
      v21 = [(FLSQLitePersistence *)v19 initWithStoreId:v8 dbConnection:v18 loggingContext:v20];

      v22 = [(FLLogger *)self persistentStores];
      [v22 setObject:v21 forKeyedSubscript:v14];

      v17 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)__dispatched_persistentStoreWithId:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FLLogger *)self context];
  v9 = [v8 queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(FLLogger *)self context];
  v11 = [v10 pathForStore:v7];

  v12 = [(FLLogger *)self __dispatched_persistentStoreWithId:v7 category:v6 storePath:v11];

  return v12;
}

- (id)__dispatched_databaseConnectionWithStorePath:(id)a3
{
  v4 = a3;
  v5 = [(FLLogger *)self context];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = v4;
    v8 = [(FLLogger *)self dbConnections];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (!v9)
    {
      v9 = [[FLSQLiteDatabaseConnection alloc] initWithStorePath:v7];
      v10 = [(FLLogger *)self dbConnections];
      [v10 setObject:v9 forKeyedSubscript:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)cancelWriteTransactionTTLTimer
{
  os_unfair_lock_lock(&self->_lock);
  [(FLLogger *)self _cancelWriteTransactionTTLTimer];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_cancelWriteTransactionTTLTimer
{
  v3 = [(FLLogger *)self writeTransactionTTLTimer];
  if (v3)
  {
    v4 = v3;
    dispatch_source_cancel(v3);
    [(FLLogger *)self setWriteTransactionTTLTimer:0];
    v3 = v4;
  }
}

- (void)_writeTransactionTTLTimerDidFire
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating write transaction after TTL expiration.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(FLLogger *)self _relinquishWriteTransaction];
  [(FLLogger *)self _cancelWriteTransactionTTLTimer];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_scheduleWriteTransactionTTLTimer
{
  v11 = *MEMORY[0x277D85DE8];
  writeTransactionTTLTimer = self->_writeTransactionTTLTimer;
  v4 = [(FLLogger *)self log];
  v5 = v4;
  if (writeTransactionTTLTimer)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [(FLLogger *)self writeTransactionTTL];
      _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling the write transaction TTL timer for %lu seconds from now.", &v9, 0xCu);
    }

    v6 = self->_writeTransactionTTLTimer;
    v7 = dispatch_walltime(0, 1000000000 * [(FLLogger *)self writeTransactionTTL]);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_ERROR, "TTL timer scheduling was requested, but no timer was found.", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupWriteTransactionTTLTimer
{
  v3 = [(FLLogger *)self context];
  v4 = [v3 queue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  writeTransactionTTLTimer = self->_writeTransactionTTLTimer;
  self->_writeTransactionTTLTimer = v5;

  objc_initWeak(&location, self);
  v7 = [(FLLogger *)self writeTransactionTTLTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __42__FLLogger__setupWriteTransactionTTLTimer__block_invoke;
  handler[3] = &unk_278FF8A00;
  handler[4] = self;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, handler);

  dispatch_activate(self->_writeTransactionTTLTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__FLLogger__setupWriteTransactionTTLTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24AB3F000, v2, OS_LOG_TYPE_DEFAULT, "Write transaction TTL timer fired.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _writeTransactionTTLTimerDidFire];
  }
}

- (FLWriteTransaction)writeTransaction
{
  os_unfair_lock_lock(&self->_lock);
  if (![(FLLogger *)self _isHoldingWriteTransaction])
  {
    v3 = [(FLLogger *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Initializing new write transaction.", v6, 2u);
    }

    [(FLLogger *)self _claimWriteTransaction];
    [(FLLogger *)self _setupWriteTransactionTTLTimer];
  }

  [(FLLogger *)self _scheduleWriteTransactionTTLTimer];
  v4 = self->_writeTransaction;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_relinquishWriteTransaction
{
  if ([objc_opt_class() isManagedProcess])
  {
    [(FLLogger *)self _cancelStoreCacheTimer];
    [(FLLogger *)self _cleanPersistantStores];
  }

  writeTransaction = self->_writeTransaction;
  self->_writeTransaction = 0;
}

- (void)_claimWriteTransaction
{
  v3 = objc_alloc_init(FLWriteTransaction);
  writeTransaction = self->_writeTransaction;
  self->_writeTransaction = v3;

  MEMORY[0x2821F96F8]();
}

- (void)reportCADroppedBeforePersistPayloadFromBundleID:(id)a3 category:(id)a4 size:(unint64_t)a5
{
  v17[4] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [(FLLogger *)self context];
  v11 = &stru_285E18D78;
  if (v9)
  {
    v11 = v9;
  }

  v16[0] = @"bundle_id";
  v16[1] = @"category";
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &unk_285E1AE38;
  }

  v17[0] = v11;
  v17[1] = v12;
  v17[2] = &unk_285E1AE68;
  v16[2] = @"outcome";
  v16[3] = @"size";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(a5 + 1023) >> 10];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [v10 reportTelemetry:@"com.apple.parsec-fbf.batchUploadOutcome" payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportCAIncomingPayloadFromBundleID:(id)a3 category:(id)a4 size:(unint64_t)a5
{
  v17[4] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [(FLLogger *)self context];
  v11 = &stru_285E18D78;
  if (v9)
  {
    v11 = v9;
  }

  v16[0] = @"bundle_id";
  v16[1] = @"category";
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &unk_285E1AE38;
  }

  v17[0] = v11;
  v17[1] = v12;
  v17[2] = &unk_285E1AE50;
  v16[2] = @"outcome";
  v16[3] = @"size";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(a5 + 1023) >> 10];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [v10 reportTelemetry:@"com.apple.parsec-fbf.batchUploadOutcome" payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (FLLogger)initWithPersistenceConfiguration:(unint64_t)a3
{
  v5 = [FLLoggingContext alloc];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [(FLLoggingContext *)v5 initWithFileManager:v6 persistenceConfiguration:a3];

  v8 = [(FLLogger *)self initWithContext:v7];
  return v8;
}

- (void)dealloc
{
  [(FLLogger *)self _closeAllStores];
  [(NSDistributedNotificationCenter *)self->_notificationCenter removeObserver:self];
  [(FLLogger *)self _cancelStoreCacheTimer];
  [(FLLogger *)self cancelWriteTransactionTTLTimer];
  v3.receiver = self;
  v3.super_class = FLLogger;
  [(FLLogger *)&v3 dealloc];
}

- (FLLogger)initWithContext:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = FLLogger;
  v6 = [(FLLogger *)&v17 init];
  v7 = v6;
  if (FLSignpostLoggingInit_onceToken != -1)
  {
    dispatch_once(&FLSignpostLoggingInit_onceToken, &__block_literal_global_640);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    persistentStores = v7->_persistentStores;
    v7->_persistentStores = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dbConnections = v7->_dbConnections;
    v7->_dbConnections = v10;

    v12 = flLogForObject(v7);
    log = v7->_log;
    v7->_log = v12;

    objc_storeStrong(&v7->_context, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_writeTransactionTTL = 5;
    v14 = [MEMORY[0x277CCA9A0] defaultCenter];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = v14;

    [(NSDistributedNotificationCenter *)v7->_notificationCenter addObserver:v7 selector:sel_closeOpenBatchesAndStores name:@"FLCloseAllStores" object:0];
    [(NSDistributedNotificationCenter *)v7->_notificationCenter addObserver:v7 selector:sel_closeStoreForApplicationFromNotification_ name:@"FLCloseStore" object:0];
  }

LABEL_4:

  return v7;
}

+ (id)fixedCategoryForBundleID:(id)a3
{
  if ([FLDPGBatchFactory isDPGBundleID:a3])
  {
    return &unk_285E1AE38;
  }

  else
  {
    return 0;
  }
}

+ (id)sharedLoggerWithPersistenceConfiguration:(unint64_t)a3
{
  if (sharedLoggerWithPersistenceConfiguration__onceToken != -1)
  {
    dispatch_once(&sharedLoggerWithPersistenceConfiguration__onceToken, &__block_literal_global_29);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  os_unfair_lock_lock(&sharedLoggerWithPersistenceConfiguration__lock);
  v6 = [sharedLoggerWithPersistenceConfiguration__sharedLoggersByConfiguration objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [[a1 alloc] initWithPersistenceConfiguration:a3];
    [sharedLoggerWithPersistenceConfiguration__sharedLoggersByConfiguration setObject:v6 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&sharedLoggerWithPersistenceConfiguration__lock);

  return v6;
}

uint64_t __53__FLLogger_sharedLoggerWithPersistenceConfiguration___block_invoke()
{
  sharedLoggerWithPersistenceConfiguration__lock = 0;
  sharedLoggerWithPersistenceConfiguration__sharedLoggersByConfiguration = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isManagedProcess
{
  if (isManagedProcess_onceToken != -1)
  {
    dispatch_once(&isManagedProcess_onceToken, &__block_literal_global);
  }

  return isManagedProcess__isManagedProcess;
}

void __28__FLLogger_isManagedProcess__block_invoke()
{
  v0 = [MEMORY[0x277D46F48] currentProcess];
  isManagedProcess__isManagedProcess = [v0 isManaged];
}

@end