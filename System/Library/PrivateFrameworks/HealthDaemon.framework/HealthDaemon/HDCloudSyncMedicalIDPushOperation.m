@interface HDCloudSyncMedicalIDPushOperation
- (void)main;
@end

@implementation HDCloudSyncMedicalIDPushOperation

- (void)main
{
  v64[1] = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 primaryCKContainer];

  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [v6 repository];
  v8 = [v7 profileIdentifier];
  v9 = HDDatabaseForContainer(v5, v8);

  if ([(_HKMedicalIDData *)self->_cloudMedicalIDData isEqualToSyncedData:self->_medicalIDDataToPush])
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Cloud MedicalID is the same as the MedicalID to be pushed. Completing push operation successfully", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    goto LABEL_23;
  }

  if (!self->_medicalIDRecord)
  {
    v25 = [(HDCloudSyncOperation *)self configuration];
    v26 = [v25 cachedCloudState];
    v27 = [v5 containerIdentifier];
    v58 = 0;
    v28 = [v26 unifiedSyncZoneForContainerID:v27 error:&v58];
    v29 = v58;

    if (v28 || !v29)
    {
      if (v28)
      {
        v47 = [v28 zoneIdentifier];
        v48 = [v47 zoneIdentifier];

        v49 = [[HDCloudSyncMedicalIDRecord alloc] initInZone:v48];
        medicalIDRecord = self->_medicalIDRecord;
        self->_medicalIDRecord = v49;

        goto LABEL_6;
      }

      v51 = [MEMORY[0x277CCA9B8] hk_error:715 format:@"The unified zone must already exist before pushing MedicalID"];
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v51];
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v29];
    }

    goto LABEL_23;
  }

LABEL_6:
  v56 = v5;
  v57 = v9;
  v11 = [(_HKMedicalIDData *)self->_medicalIDDataToPush codableRepresentationForSync];
  [(HDCloudSyncMedicalIDRecord *)self->_medicalIDRecord setMedicalIDData:v11];

  v12 = self->_medicalIDRecord;
  v13 = [(HDCloudSyncOperation *)self configuration];
  v14 = [v13 repository];
  v15 = [v14 behavior];

  v16 = MEMORY[0x277CCACA8];
  v54 = [(HDCloudSyncOperation *)self configuration];
  v53 = [v54 repository];
  v17 = [v53 profileIdentifier];
  v18 = [v15 currentDeviceProductType];
  v19 = [v15 currentOSBuild];
  v20 = [v15 currentDeviceDisplayName];
  v21 = [(HDCloudSyncOperation *)self configuration];
  v22 = [v21 repository];
  v23 = [v22 deviceMode];
  v55 = v12;
  if (v23 == 1)
  {
    v24 = @"Basic";
  }

  else if (v23 == 2)
  {
    v24 = @"Satellite";
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v23];
  }

  v31 = [v16 stringWithFormat:@"ProfileIdentifier: %@, ProductType: %@, SystemBuildVersion: %@, DeviceName: %@, DeviceMode: %@, ", v17, v18, v19, v20, v24];

  [(HDCloudSyncMedicalIDRecord *)v55 addMedicalIDEvent:v31];
  v5 = v56;
  v32 = v56;
  v33 = v57;
  _HKInitializeLogging();
  v34 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    v35 = v34;
    [v33 databaseScope];
    v36 = CKDatabaseScopeString();
    v37 = [v32 containerIdentifier];
    v38 = self->_medicalIDRecord;
    *buf = 138544130;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    *&buf[22] = 2114;
    v61 = v37;
    LOWORD(v62) = 2114;
    *(&v62 + 2) = v38;
    _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Beginning MedicalID record push to cloud for %{public}@ in %{public}@. %{public}@", buf, 0x2Au);
  }

  v39 = [HDCloudSyncModifyRecordsOperation alloc];
  v40 = [(HDCloudSyncOperation *)self configuration];
  v41 = [(HDCloudSyncRecord *)self->_medicalIDRecord record];
  v42 = [v41 copy];
  v64[0] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
  v44 = [(HDCloudSyncModifyRecordsOperation *)v39 initWithConfiguration:v40 container:v32 recordsToSave:v43 recordIDsToDelete:0];

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __86__HDCloudSyncMedicalIDPushOperation__pushMedicalIDRecordToCloudForContainer_database___block_invoke;
  v61 = &unk_278621F48;
  *&v62 = self;
  v45 = v32;
  *(&v62 + 1) = v45;
  v46 = v33;
  v63 = v46;
  [(HDCloudSyncOperation *)v44 setOnError:buf];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __86__HDCloudSyncMedicalIDPushOperation__pushMedicalIDRecordToCloudForContainer_database___block_invoke_299;
  v59[3] = &unk_278613060;
  v59[4] = self;
  [(HDCloudSyncOperation *)v44 setOnSuccess:v59];
  [(HDCloudSyncOperation *)v44 start];

  v9 = v57;
LABEL_23:

  v52 = *MEMORY[0x277D85DE8];
}

void __86__HDCloudSyncMedicalIDPushOperation__pushMedicalIDRecordToCloudForContainer_database___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = [v7 containerIdentifier];
    [*(a1 + 48) databaseScope];
    v11 = CKDatabaseScopeString();
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: Failed to push MedicalID to database %{public}@ with error %{public}@", &v12, 0x2Au);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HDCloudSyncMedicalIDPushOperation__pushMedicalIDRecordToCloudForContainer_database___block_invoke_299(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully pushed MedicalID.", &v6, 0xCu);
  }

  result = [*(a1 + 32) finishWithSuccess:1 error:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end