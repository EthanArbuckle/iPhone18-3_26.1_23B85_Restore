@interface HDCloudSyncMedicalIDPersistOperation
- (BOOL)performWithError:(id *)a3;
@end

@implementation HDCloudSyncMedicalIDPersistOperation

- (BOOL)performWithError:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 medicalIDDataManager];
  v30 = 0;
  v8 = [v7 fetchMedicalIDWithError:&v30];
  v9 = v30;

  if (!v8 && v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = self;
      v34 = 2114;
      v35 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch local MedicalID during cloud sync with error %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v11 = v9;
      v12 = 0;
      *a3 = v9;
      goto LABEL_29;
    }

    _HKLogDroppedError();
LABEL_17:
    v12 = 0;
    goto LABEL_29;
  }

  if (v8)
  {
    v13 = [v8 dateSaved];
    v14 = [(_HKMedicalIDData *)self->_medicalIDDataToPersist dateSaved];
    v15 = [v13 hk_isAfterDate:v14];

    if (v15)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = self;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Local MedicalID updated during cloud sync. Aborting.", buf, 0xCu);
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:716 format:@"Local Medical ID updated during cloud sync."];
      goto LABEL_17;
    }
  }

  if ([v8 isEqualToSyncedData:self->_medicalIDDataToPersist])
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = self;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Local MedicalID is the same as the MedicalID to be persisted. Completing persist operation successfully.", buf, 0xCu);
    }

    v12 = 1;
  }

  else
  {
    v18 = self->_medicalIDDataToPersist;
    _HKInitializeLogging();
    v19 = MEMORY[0x277CCC2E0];
    v20 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = self;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating Medical ID on disk.", buf, 0xCu);
    }

    v21 = [(HDCloudSyncOperation *)self configuration];
    v22 = [v21 repository];
    v23 = [v22 medicalIDDataManager];
    v31 = 0;
    v12 = [v23 updateMedicalIDWithSyncedData:v18 provenance:0 error:&v31];

    v24 = v31;
    if ((v12 & 1) == 0)
    {
      _HKInitializeLogging();
      v25 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v24;
        _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@ Failed to persist MedicalID to disk during cloud sync with error %{public}@", buf, 0x16u);
      }

      v26 = v24;
      if (v26)
      {
        if (a3)
        {
          v27 = v26;
          *a3 = v26;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

@end