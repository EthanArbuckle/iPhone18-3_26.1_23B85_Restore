@interface HDMedicalIDDataManager
- (BOOL)deleteMedicalIDDataWithError:(id *)error;
- (BOOL)obliterateMedicalIDDataWithReason:(id)reason error:(id *)error;
- (BOOL)unitTest_persistMedicalIDData:(id)data;
- (BOOL)updateMedicalIDWithLocalData:(id)data error:(id *)error;
- (BOOL)updateMedicalIDWithSyncedData:(id)data provenance:(id)provenance error:(id *)error;
- (HDMedicalIDDataManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_fetchMedicalIDDataFromDiskWithError:(void *)error;
- (id)_medicalIDURL;
- (id)_medicalIDURLWithDirectoryPath:(void *)path;
- (id)_unarchiveMedicalIDDataWithRawData:(void *)data error:;
- (id)fetchMedicalIDDataIfSetUpOrCreateDefaultWithError:(id *)error;
- (id)fetchMedicalIDIfSetUpWithError:(id *)error;
- (id)fetchMedicalIDWithError:(id *)error;
- (id)medicalIDClinicalContactsWithError:(id *)error;
- (id)medicalIDEmergencyContactsWithError:(id *)error;
- (id)unitTest_medicalIDData;
- (int64_t)medicalIDSetupStatusWithError:(id *)error;
- (uint64_t)_migrateMedicalIDLocationIfNecessary:(void *)necessary;
- (uint64_t)_persistMedicalIDData:(void *)data originalData:(void *)originalData provenance:(void *)provenance error:;
- (uint64_t)_persistMedicalIDDataFileToDisk:(void *)disk error:;
- (void)_runEmergencyContactConsolidationWithCompletion:(id)completion;
- (void)_runEmergencyContactConsolidationWithSOSManager:(id)manager WithCompletion:(id)completion;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
- (void)runEmergencyContactConsolidationWithCompletion:(id)completion;
@end

@implementation HDMedicalIDDataManager

- (HDMedicalIDDataManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDMedicalIDDataManager;
  v5 = [(HDMedicalIDDataManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    [profileCopy registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator removeObserver:self];

  v6.receiver = self;
  v6.super_class = HDMedicalIDDataManager;
  [(HDMedicalIDDataManager *)&v6 dealloc];
}

- (id)fetchMedicalIDWithError:(id *)error
{
  v10 = 0;
  v4 = [(HDMedicalIDDataManager *)self _fetchMedicalIDDataFromDiskWithError:?];
  v5 = v10;
  v6 = v5;
  if (v4 || !v5)
  {
    v8 = v4;
  }

  else if (error)
  {
    v7 = v5;
    v8 = 0;
    *error = v6;
  }

  else
  {
    _HKLogDroppedError();
    v8 = 0;
  }

  return v8;
}

- (id)_fetchMedicalIDDataFromDiskWithError:(void *)error
{
  v38 = *MEMORY[0x277D85DE8];
  if (error)
  {
    v33 = 0;
    v4 = [(HDMedicalIDDataManager *)error _migrateMedicalIDLocationIfNecessary:?];
    v5 = v33;
    if (v4)
    {
      _medicalIDURL = [(HDMedicalIDDataManager *)error _medicalIDURL];
      path = [_medicalIDURL path];

      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
      if (v8)
      {
        v32 = 0;
        v9 = [(HDMedicalIDDataManager *)error _unarchiveMedicalIDDataWithRawData:v8 error:&v32];
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
              schemaVersion = [v9 schemaVersion];
              *buf = 134217984;
              errorCopy3 = schemaVersion;
              _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[database] Migrated Medical ID data to version %li", buf, 0xCu);
            }

            v31 = 0;
            v16 = [(HDMedicalIDDataManager *)error _persistMedicalIDData:v9 originalData:v11 provenance:&unk_283CB05A0 error:&v31];
            v17 = v31;
            if ((v16 & 1) == 0)
            {
              _HKInitializeLogging();
              v18 = *v12;
              if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                errorCopy3 = v17;
                _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[database] Failed to save migrated Medical ID data: %{public}@", buf, 0xCu);
              }
            }
          }

          profile = [error profile];
          v30 = 0;
          v20 = [HDMedicalIDSyncEntity touchSyncAnchorIfNecessaryWithProfile:profile error:&v30];
          v21 = v30;

          if (!v20)
          {
            _HKInitializeLogging();
            v22 = *MEMORY[0x277CCC2E0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              errorCopy3 = v21;
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
              errorCopy3 = error;
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
            errorCopy3 = error;
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
      errorCopy3 = error;
      v36 = 2114;
      v37 = v5;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[database] %{public}@ Failed to migrate Medical ID before update, error: %{public}@", buf, 0x16u);
    }

    path = v5;
    if (path)
    {
      if (a2)
      {
        v24 = path;
        v9 = 0;
        *a2 = path;
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

- (id)fetchMedicalIDIfSetUpWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:error];
  if ([v4 isEmpty])
  {
    _HKInitializeLogging();
    v5 = HKLogMedicalIDCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
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

- (id)fetchMedicalIDDataIfSetUpOrCreateDefaultWithError:(id *)error
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
      userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
      v39 = 0;
      v13 = [userCharacteristicsManager userCharacteristicForType:v9 error:&v39];
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
      userCharacteristicsManager2 = [v16 userCharacteristicsManager];
      v38 = 0;
      v34 = v10;
      v18 = [userCharacteristicsManager2 userCharacteristicForType:v10 error:&v38];
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
        quantity = [v22 quantity];
        [v5 setHeight:quantity];
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
        quantity2 = [v27 quantity];
        [v5 setWeight:quantity2];
      }

      else if (error)
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

  else if (error)
  {
    v8 = v6;
    v5 = 0;
    *error = v7;
  }

  else
  {
    _HKLogDroppedError();
    v5 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int64_t)medicalIDSetupStatusWithError:(id *)error
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

- (id)medicalIDEmergencyContactsWithError:(id *)error
{
  v3 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:error];
  emergencyContacts = [v3 emergencyContacts];

  return emergencyContacts;
}

- (id)medicalIDClinicalContactsWithError:(id *)error
{
  v3 = [(HDMedicalIDDataManager *)self fetchMedicalIDWithError:error];
  clinicalContacts = [v3 clinicalContacts];

  return clinicalContacts;
}

- (BOOL)updateMedicalIDWithSyncedData:(id)data provenance:(id)provenance error:(id *)error
{
  dataCopy = data;
  provenanceCopy = provenance;
  v21 = 0;
  v10 = [(HDMedicalIDDataManager *)self _fetchMedicalIDDataFromDiskWithError:?];
  v11 = v21;
  v12 = v11;
  if (v10 || !v11)
  {
    if (dataCopy)
    {
      if ([dataCopy isEqualToSyncedData:v10])
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
        dateSaved = [dataCopy dateSaved];
        dateSaved2 = [v18 dateSaved];

        LODWORD(v18) = [dateSaved hk_isBeforeDate:dateSaved2];
        if (!v18)
        {
LABEL_17:
          v14 = [(HDMedicalIDDataManager *)self _persistMedicalIDData:dataCopy originalData:v10 provenance:provenanceCopy error:error];
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

    [v15 hk_assignError:error code:3 format:v16];
    goto LABEL_11;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v13 = v11;
  v14 = 0;
  *error = v12;
LABEL_12:

  return v14;
}

- (uint64_t)_persistMedicalIDData:(void *)data originalData:(void *)originalData provenance:(void *)provenance error:
{
  v74 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dataCopy = data;
  originalDataCopy = originalData;
  if (!self)
  {
    v56 = 0;
    goto LABEL_54;
  }

  v66 = 0;
  v12 = [(HDMedicalIDDataManager *)self _persistMedicalIDDataFileToDisk:v9 error:&v66];
  v13 = v66;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
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
      if (provenance)
      {
        v23 = v18;
        *provenance = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_52;
  }

  profile = [self profile];
  database = [profile database];
  v65 = 0;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __78__HDMedicalIDDataManager__persistMedicalIDData_originalData_provenance_error___block_invoke;
  v63[3] = &unk_278613218;
  v63[4] = self;
  v64 = originalDataCopy;
  v17 = [(HDHealthEntity *)HDUnprotectedKeyValueEntity performWriteTransactionWithHealthDatabase:database error:&v65 block:v63];
  v18 = v65;

  if (!v17)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Error performing write transaction to update medicalID key value parameters %{public}@", buf, 0x16u);
    }

    v18 = v18;
    if (v18)
    {
      if (provenance)
      {
        v25 = v18;
        *provenance = v18;
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
  emergencyContacts = [v9 emergencyContacts];
  emergencyContacts2 = [dataCopy emergencyContacts];
  v62 = originalDataCopy;
  if (emergencyContacts == emergencyContacts2)
  {
    goto LABEL_10;
  }

  emergencyContacts3 = [dataCopy emergencyContacts];
  if (emergencyContacts3)
  {
    emergencyContacts4 = [v9 emergencyContacts];
    profile = [dataCopy emergencyContacts];
    if ([emergencyContacts4 isEqual:profile])
    {

LABEL_10:
      goto LABEL_33;
    }

    v61 = emergencyContacts4;
  }

  emergencyContacts5 = [v9 emergencyContacts];
  if ([emergencyContacts5 count])
  {

    if (emergencyContacts3)
    {
    }
  }

  else
  {
    v60 = dataCopy;
    emergencyContacts6 = [dataCopy emergencyContacts];
    v59 = [emergencyContacts6 count];

    if (emergencyContacts3)
    {
    }

    dataCopy = v60;
    if (!v59)
    {
      goto LABEL_33;
    }
  }

  notify_post(*MEMORY[0x277CCE4B8]);
LABEL_33:
  profile2 = [self profile];
  profileType = [profile2 profileType];

  if (profileType == 1)
  {
    isDisabled = [v9 isDisabled];
    v31 = MEMORY[0x277CBED28];
    if (isDisabled)
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
    emergencyContacts7 = [v36 emergencyContacts];
    v39 = [emergencyContacts7 count];

    if (v39)
    {
      profile3 = [self profile];
      daemon = [profile3 daemon];
      behavior = [daemon behavior];
      tinkerModeEnabled = [behavior tinkerModeEnabled];

      if (tinkerModeEnabled)
      {
        if (([getSOSUtilitiesClass() isAllowedToMessageSOSContacts] & 1) == 0)
        {
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC2E0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v44, OS_LOG_TYPE_DEFAULT, "Set allowedToMessageSOSContacts for Medical ID on a Tinker device %{public}@", buf, 0xCu);
          }

          [getSOSUtilitiesClass() setAllowedToMessageSOSContacts:1];
        }
      }
    }
  }

  profile4 = [self profile];
  nanoSyncManager = [profile4 nanoSyncManager];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __66__HDMedicalIDDataManager__triggerSyncForSuccessfulMedicalIDUpdate__block_invoke;
  *&buf[24] = &unk_2786130B0;
  selfCopy = self;
  [nanoSyncManager syncHealthDataWithOptions:0 reason:@"Medical ID Update" completion:buf];

  profile5 = [self profile];
  cloudSyncManager = [profile5 cloudSyncManager];
  v68 = 0;
  v49 = [cloudSyncManager canPerformCloudSyncWithError:&v68];
  v50 = v68;

  if (v49)
  {
    v51 = [[HDCloudSyncContext alloc] initForPurpose:18 options:0 reason:23];
    profile6 = [self profile];
    cloudSyncManager2 = [profile6 cloudSyncManager];
    *v69 = MEMORY[0x277D85DD0];
    *&v69[8] = 3221225472;
    *&v69[16] = __66__HDMedicalIDDataManager__triggerSyncForSuccessfulMedicalIDUpdate__block_invoke_329;
    v70 = &unk_2786130B0;
    selfCopy2 = self;
    v54 = [cloudSyncManager2 syncMedicalIDDataWithContext:v51 completion:v69];

    originalDataCopy = v62;
  }

  else
  {
    _HKInitializeLogging();
    v55 = *MEMORY[0x277CCC2E0];
    originalDataCopy = v62;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_INFO))
    {
      *v69 = 138543618;
      *&v69[4] = self;
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

- (BOOL)updateMedicalIDWithLocalData:(id)data error:(id *)error
{
  dataCopy = data;
  v15 = 0;
  v7 = [(HDMedicalIDDataManager *)self _fetchMedicalIDDataFromDiskWithError:?];
  v8 = v15;
  v9 = v8;
  if (!v7 && v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_10;
  }

  if (dataCopy)
  {
    if ([dataCopy isEqual:v7])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Attempt to save Medical ID with no updated fields."];
LABEL_10:

      goto LABEL_11;
    }

    if (([dataCopy hasAnyModificationDate] & 1) == 0)
    {
      [dataCopy setModificationDatesForUpdatedFieldsWithMedicalIDData:0];
    }

    v13 = [dataCopy merge:v7];

    isEmpty = [v13 isEmpty];
    if (v7 || !isEmpty)
    {
      v11 = [(HDMedicalIDDataManager *)self _persistMedicalIDData:v13 originalData:v7 provenance:&unk_283CB05A0 error:error];

      goto LABEL_12;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Attempt to save empty Medical ID for the first time."];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Medical ID must not be nil"];
  }

LABEL_11:
  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)deleteMedicalIDDataWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CCDDF0]);
  [v5 setIsDisabled:1];
  [v5 setModificationDatesToCurrentDate];
  LOBYTE(error) = [(HDMedicalIDDataManager *)self updateMedicalIDWithLocalData:v5 error:error];

  return error;
}

- (uint64_t)_migrateMedicalIDLocationIfNecessary:(void *)necessary
{
  v33 = *MEMORY[0x277D85DE8];
  if (!necessary)
  {
    v11 = 0;
    goto LABEL_24;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  profile = [necessary profile];
  medicalIDDirectoryPath = [profile medicalIDDirectoryPath];
  stringByStandardizingPath = [medicalIDDirectoryPath stringByStandardizingPath];

  profile2 = [necessary profile];
  directoryPath = [profile2 directoryPath];
  stringByStandardizingPath2 = [directoryPath stringByStandardizingPath];

  if (([stringByStandardizingPath isEqualToString:stringByStandardizingPath2] & 1) == 0)
  {
    v28 = 0;
    if ([defaultManager fileExistsAtPath:stringByStandardizingPath isDirectory:&v28])
    {
      if ((v28 & 1) == 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"%@ is not a directory", stringByStandardizingPath}];
LABEL_10:
        v11 = 0;
        goto LABEL_23;
      }
    }

    else if (([defaultManager createDirectoryAtPath:stringByStandardizingPath withIntermediateDirectories:1 attributes:0 error:a2] & 1) == 0)
    {
      goto LABEL_10;
    }

    _medicalIDURL = [(HDMedicalIDDataManager *)necessary _medicalIDURL];
    path = [_medicalIDURL path];
    v14 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if (v14)
    {
      v11 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v15 = [HDMedicalIDDataManager _medicalIDURLWithDirectoryPath:stringByStandardizingPath2];
    v27 = 0;
    v16 = [defaultManager moveItemAtURL:v15 toURL:_medicalIDURL error:&v27];
    v17 = v27;
    v18 = v17;
    if (v16)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2E0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        path2 = [v15 path];
        path3 = [_medicalIDURL path];
        *buf = 138543618;
        v30 = path2;
        v31 = 2114;
        v32 = path3;
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
  if (self)
  {
    profile = [self profile];
    medicalIDDirectoryPath = [profile medicalIDDirectoryPath];
    v3 = [HDMedicalIDDataManager _medicalIDURLWithDirectoryPath:medicalIDDirectoryPath];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_unarchiveMedicalIDDataWithRawData:(void *)data error:
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
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
      domain = [v7 domain];
      v10 = domain;
      if (domain == *MEMORY[0x277CCA050])
      {
        code = [v7 code];

        if (code == 4865)
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
    if (data)
    {
      v13 = v12;
      *data = v12;
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

- (uint64_t)_persistMedicalIDDataFileToDisk:(void *)disk error:
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = a2;
    _medicalIDURL = [(HDMedicalIDDataManager *)self _medicalIDURL];
    path = [_medicalIDURL path];

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
      v13 = [v8 writeToFile:path options:1 error:&v22];
      v14 = v22;

      if (v13)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager setAttributes:v12 ofItemAtPath:path error:0];
      }

      else
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2E0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v25 = path;
          v26 = 2114;
          v27 = v14;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[database] Error writing Medical ID data file at %@, %{public}@", buf, 0x16u);
        }

        defaultManager = v14;
        if (defaultManager)
        {
          if (disk)
          {
            v19 = defaultManager;
            *disk = defaultManager;
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
        if (disk)
        {
          v17 = v12;
          v13 = 0;
          *disk = v12;
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

- (BOOL)obliterateMedicalIDDataWithReason:(id)reason error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = reasonCopy;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[database] Obliterating Medical ID with reason: %{public}@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _medicalIDURL = [(HDMedicalIDDataManager *)self _medicalIDURL];
  v17 = 0;
  v10 = [defaultManager removeItemAtURL:_medicalIDURL error:&v17];
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
      if (error)
      {
        v14 = v13;
        *error = v13;
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

- (id)_medicalIDURLWithDirectoryPath:(void *)path
{
  v1 = MEMORY[0x277CBEBC0];
  pathCopy = path;
  v3 = [v1 alloc];
  v4 = [pathCopy stringByAppendingPathComponent:@"MedicalIDData.archive"];

  v5 = [v3 initFileURLWithPath:v4];

  return v5;
}

- (void)runEmergencyContactConsolidationWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = completionCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (id)unitTest_medicalIDData
{
  v3 = MEMORY[0x277CBEA90];
  _medicalIDURL = [(HDMedicalIDDataManager *)self _medicalIDURL];
  v5 = [v3 dataWithContentsOfURL:_medicalIDURL];

  v6 = [(HDMedicalIDDataManager *)self _unarchiveMedicalIDDataWithRawData:v5 error:0];

  return v6;
}

- (BOOL)unitTest_persistMedicalIDData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = 0;
  v5 = [(HDMedicalIDDataManager *)self _migrateMedicalIDLocationIfNecessary:?];
  v6 = v12;
  if (v5)
  {
    v11 = 0;
    v7 = [(HDMedicalIDDataManager *)self _persistMedicalIDDataFileToDisk:dataCopy error:&v11];
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

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:0];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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

      if (!completionCopy)
      {
LABEL_15:

        goto LABEL_16;
      }

      v16 = 1;
LABEL_14:
      (*(completionCopy + 2))(completionCopy, 0, v16, 0);
      goto LABEL_15;
    }

LABEL_5:
    isAllowedToMessageSOSContacts = [getSOSUtilitiesClass() isAllowedToMessageSOSContacts];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    v14 = objc_loadWeakRetained(&self->_profile);
    [analyticsSubmissionCoordinator medicalID_dailyReport:v6 sosContactStatus:isAllowedToMessageSOSContacts profileType:{objc_msgSend(v14, "profileType")}];

    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_INFO, "[analytics] Submitted daily medical id analytic event", buf, 2u);
    }

    if (!completionCopy)
    {
      goto LABEL_15;
    }

    v16 = 0;
    goto LABEL_14;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 1, 0);
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)_runEmergencyContactConsolidationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(HDSOSManager);
  [(HDMedicalIDDataManager *)self _runEmergencyContactConsolidationWithSOSManager:v5 WithCompletion:completionCopy];
}

- (void)_runEmergencyContactConsolidationWithSOSManager:(id)manager WithCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__HDMedicalIDDataManager_EmergencyContactConsolidation___runEmergencyContactConsolidationWithSOSManager_WithCompletion___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v40 = completionCopy;
  v9 = _Block_copy(aBlock);
  isAllowedToMessageSOSContacts = [managerCopy isAllowedToMessageSOSContacts];
  v11 = MEMORY[0x277CCC2E0];
  if (!isAllowedToMessageSOSContacts)
  {
    [managerCopy setIsAllowedToMessageSOSContacts];
    _HKInitializeLogging();
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "HDMedicalIDDataManager._runEmergencyContactConsolidationWithCompletion - setting isAllowedToMessageSOSContacts to true.", buf, 2u);
    }

    sosContactManager = [managerCopy sosContactManager];
    legacyContactsManager = [sosContactManager legacyContactsManager];
    sOSLegacyContactsExist = [legacyContactsManager SOSLegacyContactsExist];

    if ((sOSLegacyContactsExist & 1) == 0)
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

    v22 = [v17 consolidatedSOSContactsWithSOSContactsManager:sosContactManager];
    emergencyContacts = [v17 emergencyContacts];
    if (v22 == emergencyContacts)
    {
      goto LABEL_21;
    }

    emergencyContacts2 = [v17 emergencyContacts];
    if (emergencyContacts2)
    {
      emergencyContacts3 = [v17 emergencyContacts];
      if ([v22 isEqual:emergencyContacts3])
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
        date = [MEMORY[0x277CBEAA8] date];
        [v17 setEmergencyContactsModifiedDate:date];

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

    emergencyContacts4 = [v17 emergencyContacts];
    v35 = [emergencyContacts4 count];

    if (emergencyContacts2)
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