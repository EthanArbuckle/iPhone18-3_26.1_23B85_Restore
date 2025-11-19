@interface HDCloudSyncDeleteSequenceOperation
- (HDCloudSyncDeleteSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncDeleteSequenceOperation)initWithConfiguration:(id)a3 targetsBySequence:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncDeleteSequenceOperation

- (HDCloudSyncDeleteSequenceOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncDeleteSequenceOperation)initWithConfiguration:(id)a3 targetsBySequence:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDCloudSyncDeleteSequenceOperation;
  v8 = [(HDCloudSyncOperation *)&v11 initWithConfiguration:a3 cloudState:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_targetsBySequence, a4);
  }

  return v9;
}

- (void)main
{
  v3 = [(NSDictionary *)self->_targetsBySequence allKeys];
  v4 = [v3 hk_map:&__block_literal_global_126];

  v5 = [HDCloudSyncModifyRecordsOperation alloc];
  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [(NSDictionary *)self->_targetsBySequence allValues];
  v8 = [v7 firstObject];
  v9 = [v8 container];
  v10 = [(HDCloudSyncModifyRecordsOperation *)v5 initWithConfiguration:v6 container:v9 recordsToSave:0 recordIDsToDelete:v4];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__HDCloudSyncDeleteSequenceOperation_main__block_invoke_2;
  v19[3] = &unk_278616348;
  v19[4] = self;
  v11 = v4;
  v20 = v11;
  [(HDCloudSyncOperation *)v10 setOnError:v19];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __42__HDCloudSyncDeleteSequenceOperation_main__block_invoke_298;
  v16 = &unk_2786234A8;
  v17 = self;
  v18 = v11;
  v12 = v11;
  [(HDCloudSyncOperation *)v10 setOnSuccess:&v13];
  [(HDCloudSyncOperation *)v10 start:v13];
}

void __42__HDCloudSyncDeleteSequenceOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete recordIDs %{public}@, %{public}@", &v9, 0x20u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __42__HDCloudSyncDeleteSequenceOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v37 = v5;
    v38 = 2114;
    v39 = v6;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully deleted recordIDs %{public}@", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v3;
  obj = [v3 deletedRecordIDs];
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138543362;
    v26 = v8;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = [*(*(a1 + 32) + 104) allKeys];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __42__HDCloudSyncDeleteSequenceOperation_main__block_invoke_299;
        v30[3] = &unk_27861ADC8;
        v30[4] = v12;
        v14 = [v13 hk_firstObjectPassingTest:v30];

        if (!v14)
        {
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v25 = *(a1 + 32);
            *buf = 138543618;
            v37 = v25;
            v38 = 2114;
            v39 = v12;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Sequence record surprisingly not found for record ID %{public}@", buf, 0x16u);
          }

          v22 = *(a1 + 32);
          v23 = [MEMORY[0x277CCA9B8] hk_error:725 description:@"Sequence record surprisingly not found"];
          [v22 finishWithSuccess:0 error:v23];

          goto LABEL_18;
        }

        v15 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:v14];
        v16 = [v15 store];
        v17 = [v16 syncStoreForEpoch:{objc_msgSend(v14, "baselineEpoch")}];

        v29 = 0;
        LOBYTE(v16) = [v17 clearAllSyncAnchorsWithError:&v29];
        v18 = v29;
        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v37 = v18;
            _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to remove old sync anchors after finalizing new baseline: %{public}@", buf, 0xCu);
          }
        }

        v20 = [v15 storeRecord];
        [v20 removeSequenceHeaderRecord:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 32) finishWithSuccess:1 error:0];
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HDCloudSyncDeleteSequenceOperation_main__block_invoke_299(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end