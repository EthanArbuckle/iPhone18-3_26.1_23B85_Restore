@interface HDMedicationsCloudSyncStateEntity
+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDStateSyncEntitySchema)stateEntitySchema;
+ (__CFString)_stringFromSyncResult:(uint64_t)result;
+ (id)_timeWindow;
+ (id)_windowUpdaterConfiguration;
+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile;
- (HDMedicationsCloudSyncStateEntity)init;
@end

@implementation HDMedicationsCloudSyncStateEntity

- (HDMedicationsCloudSyncStateEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HDStateSyncEntitySchema)stateEntitySchema
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v8[0] = 0x2863B7F98;
  v8[1] = 0x2863B7A18;
  v8[2] = 0x2863B9798;
  v8[3] = @"MedicationsCloudSyncStateEntityDoseEventWindowKey";
  v8[4] = @"MedicationsCloudSyncStateEntitySampleOriginKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v4 = [v2 initWithArray:v3];

  v5 = [objc_alloc(MEMORY[0x277D10888]) initWithWithDomain:@"CloudSyncStateEntityDomainMedications" dataKeys:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  profileCopy = profile;
  transactionCopy = transaction;
  v12 = objc_alloc_init(HDCloudSyncStateUpdaterMedicationDelegate);
  v55 = 0;
  v13 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v12 profile:profileCopy transaction:transactionCopy error:&v55];
  v14 = v55;
  if (v13)
  {
    errorCopy = error;
    v15 = objc_alloc_init(HDCloudSyncStateUpdaterMedsListDelegate);
    v54 = 0;
    v16 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v15 profile:profileCopy transaction:transactionCopy error:&v54];
    v17 = v54;
    v52 = v17;
    if (v16)
    {
      v18 = objc_alloc_init(HDCloudSyncStateUpdaterMedicationScheduleDelegate);
      v53 = 0;
      v19 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v18 profile:profileCopy transaction:transactionCopy error:&v53];
      v20 = v53;
      v50 = v20;
      if (v19)
      {
        v48 = +[HDMedicationsCloudSyncStateEntity _windowUpdaterConfiguration];
        v21 = [MEMORY[0x277D105F0] updateDataWithStateStorage:storageCopy configuration:? profile:? transaction:? error:?];
        v49 = 0;
        _HKInitializeLogging();
        v22 = HKLogMedication();
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = objc_opt_class();
            *buf = 138543362;
            v57 = v24;
            _os_log_impl(&dword_25181C000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] update success", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v47 = objc_opt_class();
            *buf = 138543874;
            v57 = v47;
            v58 = 2114;
            v59 = v48;
            v60 = 2114;
            v61 = v49;
            _os_log_error_impl(&dword_25181C000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
          }

          v36 = v49;
          v23 = v36;
          if (v36)
          {
            if (errorCopy)
            {
              v37 = v36;
              *errorCopy = v23;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        v34 = v48;
        goto LABEL_35;
      }

      v31 = v20;
      _HKInitializeLogging();
      v32 = HKLogMedication();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = objc_opt_class();
        *buf = 138543874;
        v57 = v45;
        v31 = v50;
        v58 = 2114;
        v59 = v46;
        v60 = 2114;
        v61 = v50;
        _os_log_error_impl(&dword_25181C000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
      }

      v33 = v31;
      v34 = v33;
      if (v33)
      {
        if (errorCopy)
        {
          v35 = v33;
          v21 = 0;
          *errorCopy = v34;
LABEL_35:

          goto LABEL_36;
        }

        _HKLogDroppedError();
      }

      v21 = 0;
      goto LABEL_35;
    }

    v27 = v17;
    _HKInitializeLogging();
    v28 = HKLogMedication();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = objc_opt_class();
      *buf = 138543874;
      v57 = v41;
      v58 = 2114;
      v59 = v42;
      v60 = 2114;
      v61 = v27;
      _os_log_error_impl(&dword_25181C000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
    }

    v29 = v27;
    v18 = v29;
    if (v29)
    {
      if (errorCopy)
      {
        v30 = v29;
        v21 = 0;
        *errorCopy = v18;
LABEL_36:

        goto LABEL_37;
      }

      _HKLogDroppedError();
    }

    v21 = 0;
    goto LABEL_36;
  }

  _HKInitializeLogging();
  v25 = HKLogMedication();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    *buf = 138543874;
    v57 = v39;
    error = errorCopy2;
    v58 = 2114;
    v59 = v40;
    v60 = 2114;
    v61 = v14;
    _os_log_error_impl(&dword_25181C000, v25, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
  }

  v15 = v14;
  if (!v15)
  {
    goto LABEL_23;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_23:
    v21 = 0;
    goto LABEL_37;
  }

  v26 = v15;
  v21 = 0;
  *error = v15;
LABEL_37:

  v43 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)_windowUpdaterConfiguration
{
  objc_opt_self();
  v0 = objc_alloc(MEMORY[0x277D105F8]);
  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  medicationDoseEventSyncEntityClass = [MEMORY[0x277D106A8] medicationDoseEventSyncEntityClass];
  v3 = +[HDMedicationsCloudSyncStateEntity _timeWindow];
  v4 = HKLogMedication();
  v5 = [v0 initWithDomain:@"CloudSyncStateEntityDomainMedications" key:@"MedicationsCloudSyncStateEntityDoseEventWindowKey" sampleOriginKey:@"MedicationsCloudSyncStateEntitySampleOriginKey" sampleType:medicationDoseEventType syncEntityClass:medicationDoseEventSyncEntityClass timeWindow:v3 loggingCategory:v4 sampleUUIDsFunction:MEMORY[0x277D10438]];

  return v5;
}

+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _HKInitializeLogging();
  v8 = HKLogMedication();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [(HDMedicationsCloudSyncStateEntity *)self _stringFromSyncResult:result];
    profileIdentifier = [profileCopy profileIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = profileIdentifier;
    _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] state sync result '%{public}@' for %{public}@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (__CFString)_stringFromSyncResult:(uint64_t)result
{
  objc_opt_self();
  if (a2 == 1)
  {
    v3 = @"Failure";
  }

  else if (a2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown (%ld)", a2];
  }

  else
  {
    v3 = @"Success";
  }

  return v3;
}

+ (id)_timeWindow
{
  objc_opt_self();
  date = [MEMORY[0x277CBEAA8] date];
  v1 = [date dateByAddingTimeInterval:-172800.0];
  v2 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v1 duration:172800.0];

  return v2;
}

@end