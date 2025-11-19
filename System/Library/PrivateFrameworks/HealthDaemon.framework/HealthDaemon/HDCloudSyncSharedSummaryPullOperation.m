@interface HDCloudSyncSharedSummaryPullOperation
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryPullOperation

- (void)main
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self profile];
  v4 = [v3 daemon];
  v5 = [v4 behavior];
  v6 = [v5 healthAppHiddenOrNotInstalled];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@ Health App is hidden or not installed", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = self->_taskGroup;
    self->_taskGroup = v8;

    [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
    v10 = [(HDCloudSyncOperation *)self configuration];
    v11 = [v10 cachedCloudState];
    v40 = 0;
    v12 = [v11 zonesByIdentifierWithError:&v40];
    v13 = v40;

    if (v12 || !v13)
    {
      v15 = [v12 hk_filter:&__block_literal_global_49];
      v16 = [v15 count];
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC328];
      v18 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        v34 = v13;
        if (v18)
        {
          v19 = v17;
          v20 = [v15 count];
          *buf = 138543618;
          *&buf[4] = self;
          v43 = 2048;
          v44 = v20;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Starting ingest from %lu zones", buf, 0x16u);
        }

        [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v15;
        obj = [v15 allKeys];
        v21 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v37;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = self->_taskGroup;
              v26 = *(*(&v36 + 1) + 8 * i);
              [(HDSynchronousTaskGroup *)v25 beginTask];
              v27 = [[HDInsertSharedSummaryTransactionOperation alloc] initWithZoneIdentifier:v26];

              v28 = [(HDCloudSyncOperation *)self profile];
              *buf = 0;
              v29 = [(HDJournalableOperation *)v27 performOrJournalWithProfile:v28 error:buf];
              v30 = *buf;

              v31 = self->_taskGroup;
              if (v29)
              {
                [(HDSynchronousTaskGroup *)v31 finishTask];
              }

              else
              {
                [(HDSynchronousTaskGroup *)v31 failTaskWithError:v30];
              }
            }

            v22 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v22);
        }

        [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
        v13 = v34;
        v15 = v33;
      }

      else
      {
        if (v18)
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: No zones to pull.", buf, 0xCu);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        v43 = 2114;
        v44 = v13;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v13];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

BOOL __45__HDCloudSyncSharedSummaryPullOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zoneIdentifier];
  v8 = 0;
  v9 = 0;
  v4 = [v3 hd_isSharedSummaryZoneIDForUserIdentifier:&v9 syncCircleIdentifier:&v8];
  v5 = v9;

  if (v4)
  {
    v6 = [v2 scope] == 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end