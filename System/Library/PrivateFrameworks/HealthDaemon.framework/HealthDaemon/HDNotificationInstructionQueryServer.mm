@interface HDNotificationInstructionQueryServer
- (void)_queue_start;
@end

@implementation HDNotificationInstructionQueryServer

- (void)_queue_start
{
  v49 = *MEMORY[0x277D85DE8];
  configuration = [(HDQueryServer *)self configuration];
  debugIdentifier = [configuration debugIdentifier];

  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC300];
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = debugIdentifier;
    v8 = *&buf[4];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Started", buf, 0x16u);
  }

  v40.receiver = self;
  v40.super_class = HDNotificationInstructionQueryServer;
  [(HDQueryServer *)&v40 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__195;
  v47 = __Block_byref_object_dispose__195;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v11 = [HDNotificationInstructionDiagnostics alloc];
  profile = [(HDQueryServer *)self profile];
  v13 = [(HDNotificationInstructionDiagnostics *)v11 initWithProfile:profile];

  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__HDNotificationInstructionQueryServer__queue_start__block_invoke;
  v24[3] = &unk_27862E4D8;
  v24[4] = self;
  v26 = &v32;
  v27 = buf;
  v14 = remoteObjectProxy;
  v25 = v14;
  v28 = &v36;
  v29 = v31;
  v15 = [(HDNotificationInstructionDiagnostics *)v13 enumerateAllNotificationInstructionsWithError:&v30 enumerationHandler:v24];
  v16 = v30;
  if ((v33[3] & 1) == 0)
  {
    if (v15)
    {
      v17 = *(*&buf[8] + 40);
      v18 = *(v37 + 24);
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v14 client_deliverNotificationInstructions:v17 clearPending:v18 isFinalBatch:1 queryUUID:queryUUID];
    }

    else
    {
      queryUUID = [(HDQueryServer *)self queryUUID];
      [v14 client_deliverError:v16 forQuery:queryUUID];
    }
  }

  _HKInitializeLogging();
  v20 = *v5;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    *v41 = 138543618;
    v42 = v21;
    v43 = 2114;
    v44 = debugIdentifier;
    v22 = v21;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Query Finished", v41, 0x16u);
  }

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(buf, 8);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __52__HDNotificationInstructionQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:128 description:@"Query suspended or aborted"];
    v6 = 0;
  }

  else
  {
    if ([*(*(*(a1 + 56) + 8) + 40) count] >= 0xC8)
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = *(*(*(a1 + 64) + 8) + 24);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) queryUUID];
      [v9 client_deliverNotificationInstructions:v7 clearPending:v8 isFinalBatch:0 queryUUID:v10];

      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
    ++*(*(*(a1 + 72) + 8) + 24);
    v6 = 1;
  }

  return v6;
}

@end