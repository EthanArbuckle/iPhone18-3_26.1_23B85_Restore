@interface HDCloudSyncMedicalIDFetchOperation
- (HDCloudSyncMedicalIDFetchOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncMedicalIDFetchOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 container:(id)a5;
- (void)main;
@end

@implementation HDCloudSyncMedicalIDFetchOperation

- (HDCloudSyncMedicalIDFetchOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncMedicalIDFetchOperation)initWithConfiguration:(id)a3 cloudState:(id)a4 container:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HDCloudSyncMedicalIDFetchOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:a3 cloudState:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_container, a5);
  }

  return v11;
}

- (void)main
{
  v67 = *MEMORY[0x277D85DE8];
  container = self->_container;
  v58 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v58 repository];
  v5 = [v4 profileIdentifier];
  v6 = HDDatabaseForContainer(container, v5);
  v7 = container;
  v8 = v6;
  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [v9 cachedCloudState];
  v11 = [(CKContainer *)v7 containerIdentifier];
  v60 = 0;
  v12 = [v10 unifiedSyncZoneForContainerID:v11 error:&v60];
  v13 = v60;

  _HKInitializeLogging();
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 == 0;
  }

  if (!v14)
  {
    v28 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v62 = self;
      v63 = 2114;
      v64 = v13;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
    }

    v30 = self;
    v31 = 0;
    v32 = v13;
LABEL_20:
    [(HDCloudSyncOperation *)v30 finishWithSuccess:v31 error:v32];
    goto LABEL_39;
  }

  v15 = MEMORY[0x277CCC2E0];
  v16 = *MEMORY[0x277CCC2E0];
  v17 = os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v17)
    {
      v33 = v16;
      [v8 databaseScope];
      v34 = CKDatabaseScopeString();
      v35 = [(CKContainer *)v7 containerIdentifier];
      *buf = 138543874;
      v62 = self;
      v63 = 2114;
      v64 = v34;
      v65 = 2114;
      v66 = v35;
      _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ No unified zone exists in cache for database %{public}@ in %{public}@", buf, 0x20u);
    }

    v30 = self;
    v31 = 1;
    v32 = 0;
    goto LABEL_20;
  }

  if (v17)
  {
    v18 = v16;
    [v8 databaseScope];
    v19 = CKDatabaseScopeString();
    v20 = [(CKContainer *)v7 containerIdentifier];
    *buf = 138543874;
    v62 = self;
    v63 = 2114;
    v64 = v19;
    v65 = 2114;
    v66 = v20;
    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning Medical ID fetch from cache for %{public}@ in %{public}@", buf, 0x20u);

    v15 = MEMORY[0x277CCC2E0];
  }

  v59 = 0;
  v21 = [v12 recordsForClass:objc_opt_class() error:&v59];
  v22 = v59;
  v23 = v22;
  if (v21 || !v22)
  {
    if (v21 && [v21 count])
    {
      if ([v21 count] >= 2)
      {
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
        {
          v48 = v36;
          objb = [v21 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          v62 = self;
          v63 = 2114;
          v64 = objb;
          _os_log_fault_impl(&dword_228986000, v48, OS_LOG_TYPE_FAULT, "%{public}@ Fetched multiple MedicalID records from the cloud. CKRecordIDs: %{public}@ ", buf, 0x16u);
        }
      }

      v37 = [v21 firstObject];
      medicalIDRecord = self->_medicalIDRecord;
      self->_medicalIDRecord = v37;

      _HKInitializeLogging();
      v39 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_medicalIDRecord;
        *buf = 138543618;
        v62 = self;
        v63 = 2114;
        v64 = v40;
        _os_log_impl(&dword_228986000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetched MedicalID record from cache %{public}@", buf, 0x16u);
      }

      v41 = [(HDCloudSyncMedicalIDRecord *)self->_medicalIDRecord medicalIDData];
      v51 = v41;
      v53 = v23;
      if (v41)
      {
        v41 = [MEMORY[0x277CCDDF0] createWithCodable:v41];
      }

      obj = v41;
      if (self->_cloudMedicalIDData)
      {
        cloudMedicalIDData = [v41 dateSaved];
        if (cloudMedicalIDData)
        {
          v43 = [(_HKMedicalIDData *)self->_cloudMedicalIDData dateSaved];
          v49 = [v43 hk_isBeforeDate:cloudMedicalIDData];

          v23 = v53;
          if (v49)
          {
            objc_storeStrong(&self->_cloudMedicalIDData, obj);
          }
        }
      }

      else
      {
        v46 = v41;
        cloudMedicalIDData = self->_cloudMedicalIDData;
        self->_cloudMedicalIDData = v46;
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
      goto LABEL_38;
    }

    _HKInitializeLogging();
    v44 = *v15;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      objc = v44;
      [v8 databaseScope];
      v52 = CKDatabaseScopeString();
      v50 = [(CKContainer *)v7 containerIdentifier];
      *buf = 138543874;
      v62 = self;
      v63 = 2114;
      v64 = v52;
      v65 = 2114;
      v66 = v50;
      _os_log_impl(&dword_228986000, objc, OS_LOG_TYPE_DEFAULT, "%{public}@ No MedicalID record exists in the cache for %{public}@ in %{public}@", buf, 0x20u);
    }

    v25 = self;
    v26 = 1;
    v27 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v47 = v24;
      obja = [v12 zoneIdentifier];
      *buf = 138543874;
      v62 = self;
      v63 = 2114;
      v64 = obja;
      v65 = 2114;
      v66 = v23;
      _os_log_error_impl(&dword_228986000, v47, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get medicalID record for %{public}@, %{public}@", buf, 0x20u);
    }

    v25 = self;
    v26 = 0;
    v27 = v23;
  }

  [(HDCloudSyncOperation *)v25 finishWithSuccess:v26 error:v27];
LABEL_38:

LABEL_39:
  v45 = *MEMORY[0x277D85DE8];
}

@end