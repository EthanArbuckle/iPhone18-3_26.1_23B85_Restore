@interface HDCloudSyncMedicalIDMergeOperation
- (BOOL)performWithError:(id *)a3;
@end

@implementation HDCloudSyncMedicalIDMergeOperation

- (BOOL)performWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  localMedicalIDData = self->_localMedicalIDData;
  cloudMedicalIDData = self->_cloudMedicalIDData;
  if (localMedicalIDData)
  {
    if (!cloudMedicalIDData)
    {
      objc_storeStrong(&self->_mergedMedicalIDData, localMedicalIDData);
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138543362;
        v39 = self;
        v9 = "%{public}@ Returning the local MedicalID since cloud MedicalID is nil";
        goto LABEL_12;
      }

      goto LABEL_38;
    }

    if (([(_HKMedicalIDData *)self->_localMedicalIDData hasAnyModificationDate]& 1) != 0 || ([(_HKMedicalIDData *)self->_cloudMedicalIDData hasAnyModificationDate]& 1) != 0)
    {
      v6 = [(_HKMedicalIDData *)self->_cloudMedicalIDData merge:self->_localMedicalIDData];
      mergedMedicalIDData = self->_mergedMedicalIDData;
      self->_mergedMedicalIDData = v6;

      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138543362;
        v39 = self;
        v9 = "%{public}@ Merged MedicalID contains the most recently updated fields from the local and cloud MedicalID";
LABEL_12:
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, v9, &v38, 0xCu);
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    v13 = self->_localMedicalIDData;
    v14 = self->_cloudMedicalIDData;
    v15 = v13;
    v16 = [(_HKMedicalIDData *)self->_cloudMedicalIDData dateSaved];
    if (v16)
    {
    }

    else
    {
      v17 = [(_HKMedicalIDData *)self->_localMedicalIDData dateSaved];

      if (!v17)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2E0];
        v34 = os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT);
        v25 = v14;
        if (v34)
        {
          v38 = 138543362;
          v39 = self;
          v26 = "%{public}@ dateSaved property nil for cloud MedicalID and local MedicalID, returning cloud MedicalID";
          goto LABEL_33;
        }

        goto LABEL_37;
      }
    }

    v18 = [(_HKMedicalIDData *)self->_cloudMedicalIDData dateSaved];

    if (v18)
    {
      v19 = [(_HKMedicalIDData *)self->_localMedicalIDData dateSaved];

      if (!v19)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2E0];
        v29 = os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT);
        v25 = v14;
        if (v29)
        {
          v38 = 138543362;
          v39 = self;
          v26 = "%{public}@ dateSaved property nil for local MedicalID, returning cloud MedicalID";
          goto LABEL_33;
        }

LABEL_37:
        v35 = v25;

        v36 = self->_mergedMedicalIDData;
        self->_mergedMedicalIDData = v35;

        goto LABEL_38;
      }

      v20 = [(_HKMedicalIDData *)v14 dateSaved];
      v21 = [(_HKMedicalIDData *)v15 dateSaved];
      v22 = [v20 isEqualToDate:v21];

      if (v22)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2E0];
        v24 = os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT);
        v25 = v14;
        if (v24)
        {
          v38 = 138543362;
          v39 = self;
          v26 = "%{public}@ Returning the cloud MedicalID since dateSaved is equal";
LABEL_33:
          _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, v26, &v38, 0xCu);
          v25 = v14;
          goto LABEL_37;
        }

        goto LABEL_37;
      }

      v30 = [(_HKMedicalIDData *)v14 dateSaved];
      v31 = [(_HKMedicalIDData *)v15 dateSaved];
      v32 = [v30 hk_isAfterDate:v31];

      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2E0];
      v33 = os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        v25 = v14;
        if (v33)
        {
          v38 = 138543362;
          v39 = self;
          v26 = "%{public}@ Returning the cloud MedicalID since dateSaved is more recent";
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v25 = v15;
      if (!v33)
      {
        goto LABEL_37;
      }

      v38 = 138543362;
      v39 = self;
      v28 = "%{public}@ Returning the local MedicalID since dateSaved is more recent";
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2E0];
      v27 = os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT);
      v25 = v15;
      if (!v27)
      {
        goto LABEL_37;
      }

      v38 = 138543362;
      v39 = self;
      v28 = "%{public}@ dateSaved property nil for cloud MedicalID, returning local MedicalID";
    }

    _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, v28, &v38, 0xCu);
    v25 = v15;
    goto LABEL_37;
  }

  if (cloudMedicalIDData)
  {
    objc_storeStrong(&self->_mergedMedicalIDData, cloudMedicalIDData);
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138543362;
      v39 = self;
      v9 = "%{public}@ Returning the cloud MedicalID since local MedicalID is nil";
      goto LABEL_12;
    }

LABEL_38:
    result = 1;
    goto LABEL_39;
  }

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
  {
    v38 = 138543362;
    v39 = self;
    _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Reached invalid state. Local and cloud MedicalID should not be nil.", &v38, 0xCu);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Local and cloud MedicalID should not be nil."];
  result = 0;
LABEL_39:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

@end