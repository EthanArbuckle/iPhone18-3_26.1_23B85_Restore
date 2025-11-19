@interface DEDCloudKitClient
- (DEDCloudKitClient)initWithBugSession:(id)a3 configuration:(id)a4;
- (void)uploadRecords:(id)a3 taskIdentifier:(id)a4 totalUploadSize:(id)a5 perRecordProgressBlock:(id)a6 perRecordSaveBlock:(id)a7 completionBlock:(id)a8;
@end

@implementation DEDCloudKitClient

- (DEDCloudKitClient)initWithBugSession:(id)a3 configuration:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = DEDCloudKitClient;
  v9 = [(DEDCloudKitClient *)&v26 init];
  if (v9)
  {
    v10 = +[DEDConfiguration sharedInstance];
    v11 = os_log_create([v10 loggingSubsystem], "ded-cloudkit-client");
    log = v9->_log;
    v9->_log = v11;

    objc_storeStrong(&v9->_bugSession, a3);
    objc_storeStrong(&v9->_bugSessionConfig, a4);
    v13 = [v8 cloudkitData];

    v14 = v9->_log;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = v14;
        v17 = [v8 cloudkitData];
        *buf = 138543362;
        v28 = v17;
        _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "cloudkitData: %{public}@", buf, 0xCu);
      }
    }

    else if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "No additional CloudKit data was provided", buf, 2u);
    }

    if ([v8 cloudkitUseDevelopmentEnvironment])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = objc_alloc(MEMORY[0x277CBC220]);
    v20 = [v8 cloudkitContainer];
    v21 = [v19 initWithContainerIdentifier:v20 environment:v18];

    v22 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v21];
    container = v9->_container;
    v9->_container = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)uploadRecords:(id)a3 taskIdentifier:(id)a4 totalUploadSize:(id)a5 perRecordProgressBlock:(id)a6 perRecordSaveBlock:(id)a7 completionBlock:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [MEMORY[0x277CF0810] sharedScheduler];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke;
  v35[3] = &unk_278F66D88;
  v35[4] = self;
  v21 = v15;
  v36 = v21;
  v32 = v14;
  v37 = v32;
  v22 = v17;
  v38 = v22;
  v23 = v18;
  v39 = v23;
  v24 = v19;
  v40 = v24;
  [v20 registerForTaskWithIdentifier:v21 usingQueue:0 launchHandler:v35];

  v25 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:v21];
  [v25 setPriority:2];
  [v25 setRequiresNetworkConnectivity:1];
  if (v16)
  {
    [v25 setNetworkUploadSize:{objc_msgSend(v16, "integerValue", v32)}];
  }

  v26 = [MEMORY[0x277CF0810] sharedScheduler];
  v34 = 0;
  v27 = [v26 submitTaskRequest:v25 error:&v34];
  v28 = v34;

  v29 = [(DEDCloudKitClient *)self log];
  v30 = v29;
  if (v27)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v42 = v21;
      _os_log_impl(&dword_248AD7000, v30, OS_LOG_TYPE_DEFAULT, "Submitted task %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DEDCloudKitClient uploadRecords:v21 taskIdentifier:v28 totalUploadSize:v30 perRecordProgressBlock:? perRecordSaveBlock:? completionBlock:?];
    }

    if (v24)
    {
      (*(v24 + 2))(v24, v28);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_2;
  v28[3] = &unk_278F66D10;
  v4 = *(a1 + 40);
  v28[4] = *(a1 + 32);
  v29 = v4;
  v30 = &v31;
  [v3 setExpirationHandler:v28];
  if ((v32[3] & 1) == 0)
  {
    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v36 = v6;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Task %{public}@ is running", buf, 0xCu);
    }

    v7 = [*(a1 + 32) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) count];
      v9 = *(a1 + 48);
      *buf = 134218242;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Uploading %lu records: %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v10 setQualityOfService:17];
    [v10 setAllowsCellularAccess:1];
    [v10 setAllowsExpensiveNetworkAccess:1];
    [v10 setSystemTask:v3];
    v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:*(a1 + 48) recordIDsToDelete:0];
    [v11 setConfiguration:v10];
    v12 = [*(a1 + 56) copy];
    [v11 setPerRecordProgressBlock:v12];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17;
    v26[3] = &unk_278F66D38;
    v26[4] = *(a1 + 32);
    v27 = *(a1 + 64);
    [v11 setPerRecordSaveBlock:v26];
    objc_initWeak(buf, v11);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19;
    v20 = &unk_278F66D60;
    objc_copyWeak(&v25, buf);
    v13 = *(a1 + 40);
    v21 = *(a1 + 32);
    v22 = v13;
    v23 = v3;
    v24 = *(a1 + 72);
    [v11 setCompletionBlock:&v17];
    v14 = [*(a1 + 32) container];
    v15 = [v14 publicCloudDatabase];
    [v15 addOperation:v11];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v31, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Task %{public}@ was expired by DAS", &v5, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v4 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) log];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17_cold_1(v8, v9, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "CloudKit successfully saved record: %@", &v14, 0xCu);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained error];

  v4 = [*(a1 + 32) log];
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = WeakRetained;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Operation completed successfully: %@", buf, 0xCu);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, 0);
    }

    v24 = [*(a1 + 32) log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      *buf = 138543362;
      v34 = v25;
      _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "Task %{public}@ completed", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_1(WeakRetained, v5);
  }

  v6 = [WeakRetained error];
  v7 = [v6 domain];
  v8 = *MEMORY[0x277CBBF50];
  if (![v7 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    goto LABEL_26;
  }

  v9 = [WeakRetained error];
  if ([v9 code] != 20)
  {
LABEL_25:

LABEL_26:
LABEL_27:
    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = [WeakRetained error];
      (*(v26 + 16))(v26, v27);
    }

LABEL_29:
    [*(a1 + 48) setTaskCompleted];
    goto LABEL_30;
  }

  v10 = [WeakRetained error];
  v11 = [v10 underlyingErrors];
  v12 = [v11 firstObject];
  v13 = [v12 domain];
  if (![v13 isEqualToString:v8])
  {

    goto LABEL_25;
  }

  v29 = [WeakRetained error];
  [v29 underlyingErrors];
  v14 = v30 = v10;
  v15 = [v14 firstObject];
  v31 = [v15 code];

  if (v31 != 133)
  {
    goto LABEL_27;
  }

  v16 = [*(a1 + 32) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138543362;
    v34 = v17;
    _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Expiring task %{public}@", buf, 0xCu);
  }

  v18 = *(a1 + 48);
  v32 = 0;
  v19 = [v18 setTaskExpiredWithRetryAfter:&v32 error:0.0];
  v20 = v32;
  if ((v19 & 1) == 0)
  {
    v21 = [*(a1 + 32) log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_2(a1, v21);
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))(v22, v20);
    }

    [*(a1 + 48) setTaskCompleted];
  }

LABEL_30:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)uploadRecords:(NSObject *)a3 taskIdentifier:totalUploadSize:perRecordProgressBlock:perRecordSaveBlock:completionBlock:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, a2, a3, "Failed to submit task %{public}@: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_17_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, a2, a3, "CloudKit failed to save record: %@ with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Operation failed with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __124__DEDCloudKitClient_uploadRecords_taskIdentifier_totalUploadSize_perRecordProgressBlock_perRecordSaveBlock_completionBlock___block_invoke_19_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Failed to expire task %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end