@interface HDMedicalIDDataManager
- (BOOL)deleteMedicalIDDataWithError:(id *)a3;
- (BOOL)obliterateMedicalIDDataWithReason:(id)a3 error:(id *)a4;
- (BOOL)unitTest_persistMedicalIDData:(id)a3;
- (BOOL)updateMedicalIDWithLocalData:(id)a3 error:(id *)a4;
- (BOOL)updateMedicalIDWithSyncedData:(id)a3 provenance:(id)a4 error:(id *)a5;
- (HDMedicalIDDataManager)initWithProfile:(id)a3;
- (HDProfile)profile;
- (id)_fetchMedicalIDDataFromDiskWithError:(void *)a1;
- (id)_medicalIDURL;
- (id)_medicalIDURLWithDirectoryPath:(void *)a1;
- (id)_unarchiveMedicalIDDataWithRawData:(void *)a3 error:;
- (id)fetchMedicalIDDataIfSetUpOrCreateDefaultWithError:(id *)a3;
- (id)fetchMedicalIDIfSetUpWithError:(id *)a3;
- (id)fetchMedicalIDWithError:(id *)a3;
- (id)medicalIDClinicalContactsWithError:(id *)a3;
- (id)medicalIDEmergencyContactsWithError:(id *)a3;
- (id)unitTest_medicalIDData;
- (int64_t)medicalIDSetupStatusWithError:(id *)a3;
- (uint64_t)_migrateMedicalIDLocationIfNecessary:(void *)a1;
- (uint64_t)_persistMedicalIDData:(void *)a3 originalData:(void *)a4 provenance:(void *)a5 error:;
- (uint64_t)_persistMedicalIDDataFileToDisk:(void *)a3 error:;
- (void)_runEmergencyContactConsolidationWithCompletion:(id)a3;
- (void)_runEmergencyContactConsolidationWithSOSManager:(id)a3 WithCompletion:(id)a4;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4;
- (void)runEmergencyContactConsolidationWithCompletion:(id)a3;
@end

@implementation HDMedicalIDDataManager

- (HDMedicalIDDataManager)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDMedicalIDDataManager;
  v5 = [(HDMedicalIDDataManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    [v4 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 analyticsSubmissionCoordinator];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = HDMedicalIDDataManager;
  [(HDMedicalIDDataManager *)&v6 dealloc];
}

- (id)fetchMedicalIDWithError:(id *)a3
{
  v10 = 0;
  v4 = [(HDMedicalIDDataManager *)self _fetchMedicalIDDataFromDiskWithError:?];
  v5 = v10;
  v6 = v5;
  if (v4 || !v5)
  {
    v8 = v4;
  }

  else if (a3)
  {
    v7 = v5;
    v8 = 0;
    *a3 = v6;
  }

  else
  {
    _HKLogDroppedError();
    v8 = 0;
  }

  return v8;
}

- (id)_fetchMedicalIDDataFromDiskWithError:(void *)a1
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v33 = 0;
    v4 = [(HDMedicalIDDataManager *)a1 _migrateMedicalIDLocationIfNecessary:?];
    v5 = v33;
    if (v4)
    {
      v6 = [(HDMedicalIDDataManager *)a1 _medicalIDURL];
      v7 = [v6 path];

      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7];
      if (v8)
      {
        v32 = 0;
        v9 = [(HDMedicalIDDataManager *)a1 _unarchiveMedicalIDDataWithRawData:v8 error:&v32];
        v10 = v32;
        if (v9)
        {
          v11 = [v9 copy];
          if ([HDMedicalIDDataMigrator migrateMedicalIDDataIfNeeded:v9])
          {
            _HKInitializeLogging();
            v12 = MEMORY[0x277CCC2E0];
            v13 = *MEMORY[0x277CCC2E0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              v15 = [v9 schemaVersion];
              *buf = 134217984;
              v35 = v15;
              _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[database] Migrated Medical ID data to version %li", buf, 0xCu);
            }

            v31 = 0;
            v16 = [(HDMedicalIDDataManager *)a1 _persistMedicalIDData:v9 originalData:v11 provenance:&unk_283CB05A0 error:&v31];
            v17 = v31;
            if ((v16 & 1) == 0)
            {
              _HKInitializeLogging();
              v18 = *v12;
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v35 = v17;
                _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[database] Failed to save migrated Medical ID data: %{public}@", buf, 0xCu);
              }
            }
          }

          v19 = [a1 profile];
          v30 = 0;
          v20 = [HDMedicalIDSyncEntity touchSyncAnchorIfNecessaryWithProfile:v19 error:&v30];
          v21 = v30;

          if (!v20)
          {
            _HKInitializeLogging();
            v22 = *MEMORY[0x277CCC2E0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v35 = v21;
              _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[database] Failed to touch Medical ID sync anchor: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC2E0];
          v26 = *MEMORY[0x277CCC2E0];
          if (v10)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v35 = a1;
              v36 = 2114;
              v37 = v10;
              _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "[database] %{public}@ Failed to unarchive Medical ID fetched from disk, error: %{public}@", buf, 0x16u);
            }

            if (a2)
            {
              v27 = v10;
              *a2 = v10;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v35 = a1;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_INFO, "[database] %{public}@ Unarchived MedicalID on disk is nil even though raw data was retrieved.", buf, 0xCu);
          }
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_31;
    }

    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = a1;
      v36 = 2114;
      v37 = v5;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[database] %{public}@ Failed to migrate Medical ID before update, error: %{public}@", buf, 0x16u);
    }

    v7 = v5;
    if (v7)
    {
      if (a2)
      {
        v24 = v7;
        v9 = 0;
        *a2 = v7;
LABEL_31:

        goto LABEL_32;
      }

      _HKLogDroppedError();
    }

    v9 = 0;
    goto LABEL_31;
  }

  v9 = 0;
LABEL_32:
  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchMedicalIDIfSetUpWithError:(id *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:a3];
  if ([v4 isEmpty])
  {
    _HKInitializeLogging();
    v5 = HKLogMedicalIDCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[database] %{public}@ Medical ID on disk is non-nil but empty, returning nil to the client in this case", &v9, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)fetchMedicalIDDataIfSetUpOrCreateDefaultWithError:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v5 = [(HDMedicalIDDataManager *)self fetchMedicalIDIfSetUpWithError:&v40];
  v6 = v40;
  v7 = v6;
  if (v5 || !v6)
  {
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCDDF0]);
      v9 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
      v10 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB10]];
      v35 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCBA8]];
      v33 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC990]];
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v12 = [WeakRetained userCharacteristicsManager];
      v39 = 0;
      v13 = [v12 userCharacteristicForType:v9 error:&v39];
      v14 = v39;

      if (v13)
      {
        [v5 setGregorianBirthday:v13];
      }

      else if (v14)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v14;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[database] Failed to get date of birth for Medical ID: %{public}@", buf, 0xCu);
        }
      }

      v16 = objc_loadWeakRetained(&self->_profile);
      v17 = [v16 userCharacteristicsManager];
      v38 = 0;
      v34 = v10;
      v18 = [v17 userCharacteristicForType:v10 error:&v38];
      v19 = v38;

      if (v18)
      {
        [v5 setBloodType:{objc_msgSend(v18, "integerValue")}];
      }

      else if (v19)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v19;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[database] Failed to get blood type for Medical ID: %{public}@", buf, 0xCu);
        }
      }

      v21 = objc_loadWeakRetained(&self->_profile);
      v37 = 0;
      v22 = [(HDSampleEntity *)HDQuantitySampleEntity mostRecentSampleWithType:v35 profile:v21 encodingOptions:0 predicate:0 anchor:0 error:&v37];
      v23 = v37;

      if (v22)
      {
        v24 = [v22 quantity];
        [v5 setHeight:v24];
      }

      else if (v23)
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v23;
          _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "[database] Failed to get height for Medical ID: %{public}@", buf, 0xCu);
        }
      }

      v26 = objc_loadWeakRetained(&self->_profile);
      v36 = 0;
      v27 = [(HDSampleEntity *)HDQuantitySampleEntity mostRecentSampleWithType:v33 profile:v26 encodingOptions:0 predicate:0 anchor:0 error:&v36];
      v28 = v36;

      if (v27)
      {
        v29 = [v27 quantity];
        [v5 setWeight:v29];
      }

      else if (a3)
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = v28;
          _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "[database] Failed to get weight for Medical ID: {public}%@", buf, 0xCu);
        }
      }
    }
  }

  else if (a3)
  {
    v8 = v6;
    v5 = 0;
    *a3 = v7;
  }

  else
  {
    _HKLogDroppedError();
    v5 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int64_t)medicalIDSetupStatusWithError:(id *)a3
{
  v8 = 0;
  v3 = [(HDMedicalIDDataManager *)self fetchMedicalIDIfSetUpWithError:&v8];
  v4 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8 == 0;
  }

  v6 = v5;
  if (v3)
  {
    if ([v3 isEmpty])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (id)medicalIDEmergencyContactsWithError:(id *)a3
{
  v3 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:a3];
  v4 = [v3 emergencyContacts];

  return v4;
}

- (id)medicalIDClinicalContactsWithError:(id *)a3
{
  v3 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:a3];
  v4 = [v3 clinicalContacts];

  return v4;
}

- (BOOL)updateMedicalIDWithSyncedData:(id)a3 provenance:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v10 = [(HDMedicalIDDataManager *)self _fetchMedicalIDDataFromDiskWithError:?];
  v11 = v21;
  v12 = v11;
  if (v10 || !v11)
  {
    if (v8)
    {
      if ([v8 isEqualToSyncedData:v10])
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = @"Attempt to save Medical ID with no updated fields.";
      }

      else
      {
        if (!self)
        {
          goto LABEL_17;
        }

        if (!v10)
        {
          goto LABEL_17;
        }

        v18 = v10;
        v19 = [v8 dateSaved];
        v20 = [v18 dateSaved];

        LODWORD(v18) = [v19 hk_isBeforeDate:v20];
        if (!v18)
        {
LABEL_17:
          v14 = [(HDMedicalIDDataManager *)self _persistMedicalIDData:v8 originalData:v10 provenance:v9 error:a5];
          goto LABEL_12;
        }

        v15 = MEMORY[0x277CCA9B8];
        v16 = @"Attempt to save Medical ID created before current Medical ID on disk.";
      }
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = @"Medical ID must not be nil";
    }

    [v15 hk_assignError:a5 code:3 format:v16];
    goto LABEL_11;
  }

  if (!a5)
  {
    _HKLogDroppedError();
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v13 = v11;
  v14 = 0;
  *a5 = v12;
LABEL_12:

  return v14;
}

- (uint64_t)_persistMedicalIDData:(void *)a3 originalData:(void *)a4 provenance:(void *)a5 error:
{
  v74 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    v56 = 0;
    goto LABEL_54;
  }

  v66 = 0;
  v12 = [(HDMedicalIDDataManager *)a1 _persistMedicalIDDataFileToDisk:v9 error:&v66];
  v13 = v66;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 2114;
    *&buf[20] = v13;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Persisted MedicalID changes on device with success (%id), error (%{public}@)", buf, 0x1Cu);
  }

  if (!v12)
  {
    v18 = v13;
    if (v18)
    {
      if (a5)
      {
        v23 = v18;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_52;
  }

  v15 = [a1 profile];
  v16 = [v15 database];
  v65 = 0;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __78__HDMedicalIDDataManager__persistMedicalIDData_originalData_provenance_error___block_invoke;
  v63[3] = &unk_278613218;
  v63[4] = a1;
  v64 = v11;
  v17 = [(HDHealthEntity *)HDUnprotectedKeyValueEntity performWriteTransactionWithHealthDatabase:v16 error:&v65 block:v63];
  v18 = v65;

  if (!v17)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Error performing write transaction to update medicalID key value parameters %{public}@", buf, 0x16u);
    }

    v18 = v18;
    if (v18)
    {
      if (a5)
      {
        v25 = v18;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v67 = 0;
    goto LABEL_53;
  }

  notify_post(*MEMORY[0x277CCE4B0]);
  v19 = [v9 emergencyContacts];
  v20 = [v10 emergencyContacts];
  v62 = v11;
  if (v19 == v20)
  {
    goto LABEL_10;
  }

  v21 = [v10 emergencyContacts];
  if (v21)
  {
    v22 = [v9 emergencyContacts];
    v15 = [v10 emergencyContacts];
    if ([v22 isEqual:v15])
    {

LABEL_10:
      goto LABEL_33;
    }

    v61 = v22;
  }

  v26 = [v9 emergencyContacts];
  if ([v26 count])
  {

    if (v21)
    {
    }
  }

  else
  {
    v60 = v10;
    v27 = [v10 emergencyContacts];
    v59 = [v27 count];

    if (v21)
    {
    }

    v10 = v60;
    if (!v59)
    {
      goto LABEL_33;
    }
  }

  notify_post(*MEMORY[0x277CCE4B8]);
LABEL_33:
  v28 = [a1 profile];
  v29 = [v28 profileType];

  if (v29 == 1)
  {
    v30 = [v9 isDisabled];
    v31 = MEMORY[0x277CBED28];
    if (v30)
    {
      v31 = MEMORY[0x277CBED10];
    }

    v32 = *MEMORY[0x277CCE3E8];
    v33 = *MEMORY[0x277CCE408];
    CFPreferencesSetAppValue(*MEMORY[0x277CCE3E8], *v31, *MEMORY[0x277CCE408]);
    if (CFPreferencesAppSynchronize(v33))
    {
      v34 = [MEMORY[0x277CBEB98] setWithObject:v32];
      HKSynchronizeNanoPreferencesUserDefaults();
    }

    else
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[sync] Could not synchronize Medical Id flag for watch", buf, 2u);
      }
    }
  }

  v36 = v9;
  v37 = v36;
  if (v36)
  {
    v38 = [v36 emergencyContacts];
    v39 = [v38 count];

    if (v39)
    {
      v40 = [a1 profile];
      v41 = [v40 daemon];
      v42 = [v41 behavior];
      v43 = [v42 tinkerModeEnabled];

      if (v43)
      {
        if (([getSOSUtilitiesClass() isAllowedToMessageSOSContacts] & 1) == 0)
        {
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC2E0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = a1;
            _os_log_impl(&dword_228986000, v44, OS_LOG_TYPE_DEFAULT, "Set allowedToMessageSOSContacts for Medical ID on a Tinker device %{public}@", buf, 0xCu);
          }

          [getSOSUtilitiesClass() setAllowedToMessageSOSContacts:1];
        }
      }
    }
  }

  v45 = [a1 profile];
  v46 = [v45 nanoSyncManager];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __66__HDMedicalIDDataManager__triggerSyncForSuccessfulMedicalIDUpdate__block_invoke;
  *&buf[24] = &unk_2786130B0;
  v73 = a1;
  [v46 syncHealthDataWithOptions:0 reason:@"Medical ID Update" completion:buf];

  v47 = [a1 profile];
  v48 = [v47 cloudSyncManager];
  v68 = 0;
  v49 = [v48 canPerformCloudSyncWithError:&v68];
  v50 = v68;

  if (v49)
  {
    v51 = [[HDCloudSyncContext alloc] initForPurpose:18 options:0 reason:23];
    v52 = [a1 profile];
    v53 = [v52 cloudSyncManager];
    *v69 = MEMORY[0x277D85DD0];
    *&v69[8] = 3221225472;
    *&v69[16] = __66__HDMedicalIDDataManager__triggerSyncForSuccessfulMedicalIDUpdate__block_invoke_329;
    v70 = &unk_2786130B0;
    v71 = a1;
    v54 = [v53 syncMedicalIDDataWithContext:v51 completion:v69];

    v11 = v62;
  }

  else
  {
    _HKInitializeLogging();
    v55 = *MEMORY[0x277CCC2E0];
    v11 = v62;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_INFO))
    {
      *v69 = 138543618;
      *&v69[4] = a1;
      *&v69[12] = 2114;
      *&v69[14] = v50;
      _os_log_impl(&dword_228986000, v55, OS_LOG_TYPE_INFO, "%{public}@: Skipping cloud sync for medical ID update: %{public}@", v69, 0x16u);
    }
  }

LABEL_52:
  v67 = v12;
LABEL_53:

  v56 = v67;
LABEL_54:

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

- (BOOL)updateMedicalIDWithLocalData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v7 = [(HDMedicalIDDataManager *)self _fetchMedicalIDDataFromDiskWithError:?];
  v8 = v15;
  v9 = v8;
  if (!v7 && v8)
  {
    if (a4)
    {
      v10 = v8;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_10;
  }

  if (v6)
  {
    if ([v6 isEqual:v7])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Attempt to save Medical ID with no updated fields."];
LABEL_10:

      goto LABEL_11;
    }

    if (([v6 hasAnyModificationDate] & 1) == 0)
    {
      [v6 setModificationDatesForUpdatedFieldsWithMedicalIDData:0];
    }

    v13 = [v6 merge:v7];

    v14 = [v13 isEmpty];
    if (v7 || !v14)
    {
      v11 = [(HDMedicalIDDataManager *)self _persistMedicalIDData:v13 originalData:v7 provenance:&unk_283CB05A0 error:a4];

      goto LABEL_12;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Attempt to save empty Medical ID for the first time."];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Medical ID must not be nil"];
  }

LABEL_11:
  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)deleteMedicalIDDataWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCDDF0]);
  [v5 setIsDisabled:1];
  [v5 setModificationDatesToCurrentDate];
  LOBYTE(a3) = [(HDMedicalIDDataManager *)self updateMedicalIDWithLocalData:v5 error:a3];

  return a3;
}

- (uint64_t)_migrateMedicalIDLocationIfNecessary:(void *)a1
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [a1 profile];
  v6 = [v5 medicalIDDirectoryPath];
  v7 = [v6 stringByStandardizingPath];

  v8 = [a1 profile];
  v9 = [v8 directoryPath];
  v10 = [v9 stringByStandardizingPath];

  if (([v7 isEqualToString:v10] & 1) == 0)
  {
    v28 = 0;
    if ([v4 fileExistsAtPath:v7 isDirectory:&v28])
    {
      if ((v28 & 1) == 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"%@ is not a directory", v7}];
LABEL_10:
        v11 = 0;
        goto LABEL_23;
      }
    }

    else if (([v4 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:a2] & 1) == 0)
    {
      goto LABEL_10;
    }

    v12 = [(HDMedicalIDDataManager *)a1 _medicalIDURL];
    v13 = [v12 path];
    v14 = [v4 fileExistsAtPath:v13 isDirectory:0];

    if (v14)
    {
      v11 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v15 = [HDMedicalIDDataManager _medicalIDURLWithDirectoryPath:v10];
    v27 = 0;
    v16 = [v4 moveItemAtURL:v15 toURL:v12 error:&v27];
    v17 = v27;
    v18 = v17;
    if (v16)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v15 path];
        v22 = [v12 path];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[database] Migrated Medical ID from %{public}@ to %{public}@", buf, 0x16u);
      }
    }

    else if (([v17 hk_isCocoaNoSuchFileError] & 1) == 0)
    {
      v23 = v18;
      if (v23)
      {
        if (a2)
        {
          v24 = v23;
          *a2 = v23;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v11 = 0;
      goto LABEL_21;
    }

    v11 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v11 = 1;
LABEL_23:

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_medicalIDURL
{
  if (a1)
  {
    v1 = [a1 profile];
    v2 = [v1 medicalIDDirectoryPath];
    v3 = [HDMedicalIDDataManager _medicalIDURLWithDirectoryPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_unarchiveMedicalIDDataWithRawData:(void *)a3 error:
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = a2;
    v17 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v17];

    v7 = v17;
    if (v6)
    {
LABEL_16:
      v14 = v6;
      goto LABEL_17;
    }

    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[database] Failed to decode Medical ID data: %{public}@", buf, 0xCu);
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else if (v7)
    {
LABEL_5:
      v9 = [v7 domain];
      v10 = v9;
      if (v9 == *MEMORY[0x277CCA050])
      {
        v11 = [v7 code];

        if (v11 == 4865)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }

      v12 = v7;
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unknown failure occurred when unarchiving medical ID"];
    if (!v12)
    {
LABEL_15:

      goto LABEL_16;
    }

LABEL_11:
    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }

    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = 0;
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (uint64_t)_persistMedicalIDDataFileToDisk:(void *)a3 error:
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a2;
    v6 = [(HDMedicalIDDataManager *)a1 _medicalIDURL];
    v7 = [v6 path];

    v23 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];

    v9 = v23;
    if (v8)
    {
      v10 = *MEMORY[0x277CCA1B8];
      v11 = *MEMORY[0x277CCA180];
      v28[0] = *MEMORY[0x277CCA1B0];
      v28[1] = v11;
      v29[0] = v10;
      v29[1] = &unk_283CB05B8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v22 = v9;
      v13 = [v8 writeToFile:v7 options:1 error:&v22];
      v14 = v22;

      if (v13)
      {
        v15 = [MEMORY[0x277CCAA00] defaultManager];
        [v15 setAttributes:v12 ofItemAtPath:v7 error:0];
      }

      else
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v25 = v7;
          v26 = 2114;
          v27 = v14;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[database] Error writing Medical ID data file at %@, %{public}@", buf, 0x16u);
        }

        v15 = v14;
        if (v15)
        {
          if (a3)
          {
            v19 = v15;
            *a3 = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v9;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[database] Server failed to archive Medical ID data: %{public}@", buf, 0xCu);
      }

      v12 = v9;
      if (v12)
      {
        if (a3)
        {
          v17 = v12;
          v13 = 0;
          *a3 = v12;
        }

        else
        {
          _HKLogDroppedError();
          v13 = 0;
        }

        v14 = v12;
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __78__HDMedicalIDDataManager__persistMedicalIDData_originalData_provenance_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v19 = 0;
  v6 = [HDMedicalIDSyncEntity incrementSyncAnchorWithProfile:WeakRetained error:&v19];
  v7 = v19;

  if (!v6)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Error saving sync anchor for medicalID %{public}@", buf, 0x16u);
    }

    v7 = v7;
    if (!v7)
    {
      goto LABEL_15;
    }

    if (!a3)
    {
LABEL_14:
      _HKLogDroppedError();
      goto LABEL_15;
    }

LABEL_9:
    v12 = v7;
    *a3 = v7;
LABEL_15:

    v10 = 0;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) profile];
    v18 = 0;
    LOBYTE(v8) = [HDMedicalIDSyncEntity setSyncProvenance:v8 profile:v9 error:&v18];
    v7 = v18;

    if ((v8 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to save sync provenance during medicalID update, error: %{public}@", buf, 0x16u);
      }

      v7 = v7;
      if (!v7)
      {
        goto LABEL_15;
      }

      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

void __66__HDMedicalIDDataManager__triggerSyncForSuccessfulMedicalIDUpdate__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, " %{public}@ Nano-sync triggered for a MedicalID update failed, error: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __66__HDMedicalIDDataManager__triggerSyncForSuccessfulMedicalIDUpdate__block_invoke_329(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, " %{public}@ Cloudsync triggered for a MedicalID update failed, error: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)obliterateMedicalIDDataWithReason:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[database] Obliterating Medical ID with reason: %{public}@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [(HDMedicalIDDataManager *)self _medicalIDURL];
  v17 = 0;
  v10 = [v8 removeItemAtURL:v9 error:&v17];
  v11 = v17;

  if (v10 & 1) != 0 || ([v11 hk_isCocoaNoSuchFileError])
  {
    v12 = 1;
  }

  else
  {
    v13 = v11;
    if (v13)
    {
      if (a4)
      {
        v14 = v13;
        *a4 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_medicalIDURLWithDirectoryPath:(void *)a1
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 stringByAppendingPathComponent:@"MedicalIDData.archive"];

  v5 = [v3 initFileURLWithPath:v4];

  return v5;
}

- (void)runEmergencyContactConsolidationWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (id)unitTest_medicalIDData
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(HDMedicalIDDataManager *)self _medicalIDURL];
  v5 = [v3 dataWithContentsOfURL:v4];

  v6 = [(HDMedicalIDDataManager *)self _unarchiveMedicalIDDataWithRawData:v5 error:0];

  return v6;
}

- (BOOL)unitTest_persistMedicalIDData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v5 = [(HDMedicalIDDataManager *)self _migrateMedicalIDLocationIfNecessary:?];
  v6 = v12;
  if (v5)
  {
    v11 = 0;
    v7 = [(HDMedicalIDDataManager *)self _persistMedicalIDDataFileToDisk:v4 error:&v11];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[database] Failed to migrate Medical ID before update: %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained daemon];
  v5 = [v4 analyticsSubmissionCoordinator];
  [v5 addObserver:self queue:0];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    v18 = 0;
    v6 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:&v18];
    v7 = v18;
    v8 = MEMORY[0x277CCC2E0];
    if (v7)
    {
      _HKInitializeLogging();
      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v7;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[analytics] Failed to fetch MedicalID for daily analytics with error %{public}@", buf, 0xCu);
        if (v6)
        {
          goto LABEL_5;
        }
      }

      else if (v6)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
LABEL_15:

        goto LABEL_16;
      }

      v16 = 1;
LABEL_14:
      (*(v5 + 2))(v5, 0, v16, 0);
      goto LABEL_15;
    }

LABEL_5:
    v10 = [getSOSUtilitiesClass() isAllowedToMessageSOSContacts];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [WeakRetained daemon];
    v13 = [v12 analyticsSubmissionCoordinator];
    v14 = objc_loadWeakRetained(&self->_profile);
    [v13 medicalID_dailyReport:v6 sosContactStatus:v10 profileType:{objc_msgSend(v14, "profileType")}];

    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "[analytics] Submitted daily medical id analytic event", buf, 2u);
    }

    if (!v5)
    {
      goto LABEL_15;
    }

    v16 = 0;
    goto LABEL_14;
  }

  if (v5)
  {
    (*(v5 + 2))(v5, 0, 1, 0);
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)_runEmergencyContactConsolidationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HDSOSManager);
  [(HDMedicalIDDataManager *)self _runEmergencyContactConsolidationWithSOSManager:v5 WithCompletion:v4];
}

- (void)_runEmergencyContactConsolidationWithSOSManager:(id)a3 WithCompletion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__HDMedicalIDDataManager_EmergencyContactConsolidation___runEmergencyContactConsolidationWithSOSManager_WithCompletion___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v40 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v7 isAllowedToMessageSOSContacts];
  v11 = MEMORY[0x277CCC2E0];
  if (!v10)
  {
    [v7 setIsAllowedToMessageSOSContacts];
    _HKInitializeLogging();
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion - setting isAllowedToMessageSOSContacts to true.", buf, 2u);
    }

    v14 = [v7 sosContactManager];
    v15 = [v14 legacyContactsManager];
    v16 = [v15 SOSLegacyContactsExist];

    if ((v16 & 1) == 0)
    {
      _HKInitializeLogging();
      v21 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion - no contacts to consolidate.", buf, 2u);
      }

      v9[2](v9, 1, 0);
      goto LABEL_40;
    }

    v38 = 0;
    v17 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:&v38];
    v18 = v38;
    if (v18)
    {
      v19 = v18;
      _HKInitializeLogging();
      v20 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v26 = v20;
        v27 = [v19 description];
        *buf = 138412290;
        v42 = v27;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion failed to fetch medical id data with error: %@.", buf, 0xCu);
      }

      (v9)[2](v9, 0, v19);
      goto LABEL_39;
    }

    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x277CCDDF0]);
    }

    v22 = [v17 consolidatedSOSContactsWithSOSContactsManager:v14];
    v23 = [v17 emergencyContacts];
    if (v22 == v23)
    {
      goto LABEL_21;
    }

    v24 = [v17 emergencyContacts];
    if (v24)
    {
      v4 = [v17 emergencyContacts];
      if ([v22 isEqual:v4])
      {

LABEL_21:
        goto LABEL_22;
      }

      if ([v22 count])
      {

        goto LABEL_29;
      }

      v36 = v22;
    }

    else
    {
      if ([v22 count])
      {
LABEL_29:

LABEL_34:
        [v17 setEmergencyContacts:v22];
        v29 = [MEMORY[0x277CBEAA8] date];
        [v17 setEmergencyContactsModifiedDate:v29];

        v37 = 0;
        [(HDMedicalIDDataManager *)self updateMedicalIDWithLocalData:v17 error:&v37];
        v30 = v37;
        if (v30)
        {
          v19 = v30;
          _HKInitializeLogging();
          v31 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
          {
            v33 = v31;
            v34 = [v19 description];
            *buf = 138412290;
            v42 = v34;
            _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion failed to save medical id data with error: %@.", buf, 0xCu);
          }

          (v9)[2](v9, 0, v19);
          goto LABEL_38;
        }

LABEL_22:
        _HKInitializeLogging();
        v25 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion - successfully consolidated contacts", buf, 2u);
        }

        v9[2](v9, 1, 0);
        v19 = 0;
LABEL_38:

LABEL_39:
LABEL_40:

        goto LABEL_41;
      }

      v36 = v22;
    }

    v28 = [v17 emergencyContacts];
    v35 = [v28 count];

    if (v24)
    {
    }

    v22 = v36;
    if (!v35)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  _HKInitializeLogging();
  v12 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion - isAllowedToMessageSOSContacts - true, no need to consolidate", buf, 2u);
  }

  v9[2](v9, 1, 0);
LABEL_41:

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __120__HDMedicalIDDataManager_EmergencyContactConsolidation___runEmergencyContactConsolidationWithSOSManager_WithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end