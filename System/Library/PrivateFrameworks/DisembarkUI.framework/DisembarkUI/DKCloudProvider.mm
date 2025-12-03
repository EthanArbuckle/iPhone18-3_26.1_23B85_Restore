@interface DKCloudProvider
- (BOOL)isRestoring;
- (DKCloudProvider)init;
- (unint64_t)isUploadSupportedForCurrentNetwork;
- (void)_communicateProgress;
- (void)cancelUpload;
- (void)hasDataToUpload:(id)upload;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
@end

@implementation DKCloudProvider

- (DKCloudProvider)init
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = DKCloudProvider;
  v2 = [(DKCloudProvider *)&v25 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.diskembarkui.progress", 0);
    progressQueue = v2->_progressQueue;
    v2->_progressQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277D4DA18]);
    cloudSyncClient = v2->_cloudSyncClient;
    v2->_cloudSyncClient = v5;

    [(BYBuddyDaemonCloudSyncClient *)v2->_cloudSyncClient setDelegate:v2];
    v7 = objc_alloc_init(MEMORY[0x277CD9200]);
    pathEvaluator = v2->_pathEvaluator;
    v2->_pathEvaluator = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    aa_appleAccounts = [defaultStore aa_appleAccounts];

    v12 = [aa_appleAccounts countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(aa_appleAccounts);
          }

          v16 = [[DKBackupProvider alloc] initWithAccount:*(*(&v21 + 1) + 8 * v15)];
          [v9 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [aa_appleAccounts countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    v17 = [v9 copy];
    backupProviders = v2->_backupProviders;
    v2->_backupProviders = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (unint64_t)isUploadSupportedForCurrentNetwork
{
  v21 = *MEMORY[0x277D85DE8];
  pathEvaluator = [(DKCloudProvider *)self pathEvaluator];
  path = [pathEvaluator path];

  interface = [path interface];
  type = [interface type];

  v7 = 0;
  if (type && type != 4)
  {
    if (type == 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      backupProviders = [(DKCloudProvider *)self backupProviders];
      v9 = [backupProviders countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(backupProviders);
            }

            if (![*(*(&v16 + 1) + 8 * i) isManualBackupOnCellularAllowed])
            {

              v7 = 0;
              goto LABEL_20;
            }
          }

          v10 = [backupProviders countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      if ([path isExpensive])
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
    }

    if (([path status] | 2) == 3)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_20:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)hasDataToUpload:(id)upload
{
  v21 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    backupProviders = [(DKCloudProvider *)self backupProviders];
    v8 = [backupProviders countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(backupProviders);
          }

          if ([*(*(&v16 + 1) + 8 * v11) isBackupEnabled])
          {
            uploadCopy[2](uploadCopy, 1);

            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [backupProviders countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    cloudSyncClient = [(DKCloudProvider *)self cloudSyncClient];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__DKCloudProvider_hasDataToUpload___block_invoke;
    v14[3] = &unk_278F7DCD8;
    v15 = uploadCopy;
    [cloudSyncClient needsToSync:v14];
  }

  else
  {
    uploadCopy[2](uploadCopy, 0);
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

void __35__DKCloudProvider_hasDataToUpload___block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__DKCloudProvider_hasDataToUpload___block_invoke_2;
  v3[3] = &unk_278F7DCB0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (BOOL)isRestoring
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  backupProviders = [(DKCloudProvider *)self backupProviders];
  v3 = [backupProviders countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(backupProviders);
        }

        if ([*(*(&v8 + 1) + 8 * i) isRestoring])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [backupProviders countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __83__DKCloudProvider_beginUploadAllowingExpensiveCellular_progressHandler_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProgressHandler:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setCompletion:v2];
}

uint64_t __83__DKCloudProvider_beginUploadAllowingExpensiveCellular_progressHandler_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTimeRemaining:0.0];
  v2 = MEMORY[0x277CCAC48];
  v3 = [*(a1 + 32) backupProviders];
  v4 = [v2 progressWithTotalUnitCount:{objc_msgSend(v3, "count")}];
  [*(a1 + 32) setBackupProgress:v4];

  v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  [*(a1 + 32) setSyncProgress:v5];

  v6 = [MEMORY[0x277CBEB18] array];
  [*(a1 + 32) setBackupResults:v6];

  [*(a1 + 32) setSyncErrors:0];
  v7 = *(a1 + 32);

  return [v7 setNotifiedCompletion:0];
}

- (void)cancelUpload
{
  v20 = *MEMORY[0x277D85DE8];
  progressQueue = [(DKCloudProvider *)self progressQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DKCloudProvider_cancelUpload__block_invoke;
  block[3] = &unk_278F7DC60;
  block[4] = self;
  dispatch_async(progressQueue, block);

  v4 = _DKLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling backup(s)...", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  backupProviders = [(DKCloudProvider *)self backupProviders];
  v6 = [backupProviders countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(backupProviders);
        }

        [*(*(&v13 + 1) + 8 * v9++) cancel];
      }

      while (v7 != v9);
      v7 = [backupProviders countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = _DKLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v10, OS_LOG_TYPE_DEFAULT, "Cancelling sync...", buf, 2u);
  }

  cloudSyncClient = [(DKCloudProvider *)self cloudSyncClient];
  [cloudSyncClient cancelSync];

  v12 = *MEMORY[0x277D85DE8];
}

void __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentBackupProvider:*(a1 + 40)];
  v2 = [*(a1 + 32) backupProgress];
  [v2 addChild:*(a1 + 48) withPendingUnitCount:1];
}

void __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke_2(uint64_t a1, uint64_t a2, float a3)
{
  v6 = [*(a1 + 32) progressQueue];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke_3;
  v12 = &unk_278F7DD50;
  v7 = *(a1 + 40);
  v16 = a3;
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = a2;
  dispatch_async(v6, &v9);

  [*(a1 + 32) _communicateProgress];
}

uint64_t __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:(*(a1 + 56) * 100.0)];
  v2 = *(a1 + 48) * 60.0;
  v3 = *(a1 + 40);

  return [v3 setTimeRemaining:v2];
}

void __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) progressQueue];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke_5;
  v10 = &unk_278F7DDA0;
  v5 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v5;
  v13 = v3;
  v14 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, &v7);

  [*(a1 + 32) _communicateProgress];
  [*(a1 + 32) _startBackupWithProviders:*(a1 + 56) allowExpensiveCellular:*(a1 + 64)];
}

void __85__DKCloudProvider__startBackupForProvider_remainingProviders_allowExpensiveCellular___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) currentBackupProvider];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    if (*(a1 + 48))
    {
      v4 = [*(a1 + 32) currentBackupProvider];
      v5 = [v4 account];

      v6 = [*(a1 + 32) backupResults];
      v7 = [DKCloudUploadResult resultWithAccount:v5 success:*(a1 + 48) == 0 error:?];
      [v6 addObject:v7];
    }

    [*(a1 + 32) setCurrentBackupProvider:0];
    v8 = [*(a1 + 56) totalUnitCount];
    v9 = *(a1 + 56);

    [v9 setCompletedUnitCount:v8];
  }
}

- (void)_communicateProgress
{
  progressQueue = [(DKCloudProvider *)self progressQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DKCloudProvider__communicateProgress__block_invoke;
  block[3] = &unk_278F7DC60;
  block[4] = self;
  dispatch_async(progressQueue, block);
}

void __39__DKCloudProvider__communicateProgress__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) notifiedCompletion])
  {
    goto LABEL_8;
  }

  v2 = [*v1 backupProgress];
  if (([v2 isFinished] & 1) == 0)
  {

    goto LABEL_8;
  }

  v3 = [*v1 syncProgress];
  v4 = [v3 isFinished];

  if (!v4)
  {
LABEL_8:
    v9 = [*v1 backupProgress];
    [v9 fractionCompleted];
    v11 = v10;
    v12 = [*v1 syncProgress];
    [v12 fractionCompleted];
    *&v11 = v13 * 0.25 + v11 * 0.75;

    [*v1 timeRemaining];
    v14 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__DKCloudProvider__communicateProgress__block_invoke_2;
    v20[3] = &unk_278F7DDF0;
    v20[4] = *v1;
    v21 = LODWORD(v11);
    v20[5] = v15;
    goto LABEL_9;
  }

  [*v1 setNotifiedCompletion:1];
  v5 = [*v1 syncErrors];
  v6 = [v5 count];

  v7 = _DKLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __39__DKCloudProvider__communicateProgress__block_invoke_cold_1(v1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v8, OS_LOG_TYPE_DEFAULT, "Sync completed successfully!", buf, 2u);
  }

  v16 = [*v1 backupResults];
  v17 = [v16 count];

  v18 = _DKLogSystem();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __39__DKCloudProvider__communicateProgress__block_invoke_cold_2(v1);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v19, OS_LOG_TYPE_DEFAULT, "Backup(s) completed successfully!", buf, 2u);
  }

  v14 = v22;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__DKCloudProvider__communicateProgress__block_invoke_21;
  v22[3] = &unk_278F7DC60;
  v22[4] = *v1;
LABEL_9:
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __39__DKCloudProvider__communicateProgress__block_invoke_21(uint64_t a1)
{
  v8 = objc_alloc_init(DKCloudUploadResults);
  v2 = [*(a1 + 32) backupResults];
  v3 = [v2 copy];
  [(DKCloudUploadResults *)v8 setBackupResults:v3];

  v4 = [*(a1 + 32) syncErrors];
  v5 = +[DKCloudUploadResult resultWithSuccess:error:](DKCloudUploadResult, "resultWithSuccess:error:", [v4 count] == 0, 0);
  [(DKCloudUploadResults *)v8 setSyncResult:v5];

  v6 = [*(a1 + 32) completion];

  if (v6)
  {
    v7 = [*(a1 + 32) completion];
    (v7)[2](v7, v8);
  }
}

void __39__DKCloudProvider__communicateProgress__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) progressHandler];
    v3[2](*(a1 + 48), *(a1 + 40));
  }
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  progressQueue = [(DKCloudProvider *)self progressQueue];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __43__DKCloudProvider_syncCompletedWithErrors___block_invoke;
  v10 = &unk_278F7DE18;
  selfCopy = self;
  v12 = errorsCopy;
  v6 = errorsCopy;
  dispatch_sync(progressQueue, &v7);

  [(DKCloudProvider *)self _communicateProgress:v7];
}

void __43__DKCloudProvider_syncCompletedWithErrors___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSyncErrors:*(a1 + 40)];
  v4 = [*(a1 + 32) syncProgress];
  v2 = [v4 totalUnitCount];
  v3 = [*(a1 + 32) syncProgress];
  [v3 setCompletedUnitCount:v2];
}

- (void)syncProgress:(double)progress
{
  progressQueue = [(DKCloudProvider *)self progressQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__DKCloudProvider_syncProgress___block_invoke;
  v6[3] = &unk_278F7DE40;
  v6[4] = self;
  *&v6[5] = progress;
  dispatch_sync(progressQueue, v6);

  [(DKCloudProvider *)self _communicateProgress];
}

void __32__DKCloudProvider_syncProgress___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 40) * 100.0);
  v2 = [*(a1 + 32) syncProgress];
  [v2 setCompletedUnitCount:v1];
}

void __39__DKCloudProvider__communicateProgress__block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 syncErrors];
  OUTLINED_FUNCTION_0_0(&dword_248D68000, v2, v3, "Sync completed with errors: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __39__DKCloudProvider__communicateProgress__block_invoke_cold_2(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 backupResults];
  OUTLINED_FUNCTION_0_0(&dword_248D68000, v2, v3, "Backup(s) completed with errors: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end