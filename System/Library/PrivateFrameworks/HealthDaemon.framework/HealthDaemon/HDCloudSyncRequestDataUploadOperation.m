@interface HDCloudSyncRequestDataUploadOperation
- (void)main;
@end

@implementation HDCloudSyncRequestDataUploadOperation

- (void)main
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 primaryCKContainer];

  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 cachedCloudState];
  v8 = [v5 containerIdentifier];
  v33 = 0;
  v9 = [v7 unifiedSyncZoneForContainerID:v8 error:&v33];
  v10 = v33;

  if (v9 || !v10)
  {
    if (v9)
    {
      v32 = 0;
      v12 = [v9 recordsForClass:objc_opt_class() error:&v32];
      v13 = v32;
      v14 = v13;
      if (v12 || !v13)
      {
        if ([v12 count] >= 2)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            v29 = v17;
            v30 = [v9 zoneIdentifier];
            *buf = 138543618;
            v36 = self;
            v37 = 2114;
            v38 = v30;
            _os_log_fault_impl(&dword_228986000, v29, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple data upload request records for %{public}@. This is unexpected.", buf, 0x16u);
          }
        }

        v18 = [v12 firstObject];
        if (!v18)
        {
          v19 = [v9 zoneIdentifier];
          v20 = [v19 zoneIdentifier];
          v18 = [HDCloudSyncDataUploadRequestRecord recordForZoneID:v20];
        }

        v21 = [HDCloudSyncModifyRecordsOperation alloc];
        v22 = [(HDCloudSyncOperation *)self configuration];
        v23 = [v18 record];
        v34 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        v25 = [(HDCloudSyncModifyRecordsOperation *)v21 initWithConfiguration:v22 container:v5 recordsToSave:v24 recordIDsToDelete:0];

        [(HDCloudSyncModifyRecordsOperation *)v25 setSavePolicy:2];
        [(HDCloudSyncOperation *)self delegateToOperation:v25];

        v14 = v31;
      }

      else
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v27 = v15;
          v28 = [v9 zoneIdentifier];
          *buf = 138543874;
          v36 = self;
          v37 = 2114;
          v38 = v28;
          v39 = 2114;
          v40 = v14;
          _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get data upload request records for %{public}@, %{public}@", buf, 0x20u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hk_error:715 format:@"The unified zone must already exist before requesting data upload."];
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v16];
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v36 = self;
      v37 = 2114;
      v38 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end