@interface HKHRBloodPressureJournalStateSyncEntity
+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDStateSyncEntitySchema)stateEntitySchema;
+ (__CFString)_stringFromSyncResult:(uint64_t)result;
+ (id)_sevenDaysTimeWindow;
+ (id)_windowUpdaterConfigurationForBloodPressureSamplesWithKey:(void *)key sampleOriginKey:(void *)originKey sampleType:(uint64_t)type syncEntityClass:(uint64_t)class sampleUUIDSFunction:;
+ (id)bloodPressureJournalFromCodableJournal:(id)journal;
+ (id)codableJournalFromBloodPressureJournal:(id)journal;
+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile;
- (HKHRBloodPressureJournalStateSyncEntity)init;
@end

@implementation HKHRBloodPressureJournalStateSyncEntity

- (HKHRBloodPressureJournalStateSyncEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HDStateSyncEntitySchema)stateEntitySchema
{
  v8[7] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v8[0] = @"stateSyncBloodPressureJournalDelegateKey";
  v8[1] = @"StateSyncBloodPressureSystolicSampleWindowKey";
  v8[2] = @"StateSyncBloodPressureDiastolicSampleWindowKey";
  v8[3] = @"StateSyncBloodPressureSystolicSampleOriginKey";
  v8[4] = @"StateSyncBloodPressureDiastolicSampleOriginKey";
  v8[5] = @"StateSyncBloodPressureSampleCorrelationsWindowKey";
  v8[6] = @"StateSyncBloodPressureSampleCorrelationsOriginKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  v4 = [v2 initWithArray:v3];

  v5 = [objc_alloc(MEMORY[0x277D10888]) initWithWithDomain:@"CloudSyncStateEntityDomainBloodPressureJournal" dataKeys:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  profileCopy = profile;
  transactionCopy = transaction;
  v13 = objc_alloc_init(HKHRStateSyncBloodPressureJournalDelegate);
  v55 = 0;
  v14 = [MEMORY[0x277D10600] updateDataWithStateStore:storageCopy delegate:v13 profile:profileCopy transaction:transactionCopy error:&v55];
  v15 = v55;
  v16 = v15;
  if (v14)
  {
    v50 = v15;
    v17 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
    v18 = +[HKHRBloodPressureJournalStateSyncEntity _windowUpdaterConfigurationForBloodPressureSamplesWithKey:sampleOriginKey:sampleType:syncEntityClass:sampleUUIDSFunction:](self, @"StateSyncBloodPressureSystolicSampleWindowKey", @"StateSyncBloodPressureSystolicSampleOriginKey", v17, [MEMORY[0x277D106A8] quantitySampleSyncEntityClass], bloodPressureSystolicDiastolicSampleUUIDsFromCodableObjectCollection);

    v54 = 0;
    LOBYTE(v17) = [MEMORY[0x277D105F0] updateDataWithStateStorage:storageCopy configuration:v18 profile:profileCopy transaction:transactionCopy error:&v54];
    v51 = v54;
    if ((v17 & 1) == 0)
    {
      errorCopy = error;
      _HKInitializeLogging();
      v30 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        *buf = 138543874;
        v57 = v41;
        v58 = 2114;
        v59 = v18;
        v60 = 2114;
        v61 = v51;
        _os_log_error_impl(&dword_229486000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
      }

      v31 = v51;
      v32 = v51;
      v20 = v32;
      v16 = v50;
      if (v32)
      {
        if (errorCopy)
        {
          v33 = errorCopy;
          v34 = v32;
          LOBYTE(errorCopy) = 0;
          *v33 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      else
      {
        LOBYTE(errorCopy) = 0;
      }

      goto LABEL_35;
    }

    errorCopy2 = error;
    v19 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
    v20 = +[HKHRBloodPressureJournalStateSyncEntity _windowUpdaterConfigurationForBloodPressureSamplesWithKey:sampleOriginKey:sampleType:syncEntityClass:sampleUUIDSFunction:](self, @"StateSyncBloodPressureDiastolicSampleWindowKey", @"StateSyncBloodPressureDiastolicSampleOriginKey", v19, [MEMORY[0x277D106A8] quantitySampleSyncEntityClass], bloodPressureSystolicDiastolicSampleUUIDsFromCodableObjectCollection);

    v53 = 0;
    LOBYTE(v19) = [MEMORY[0x277D105F0] updateDataWithStateStorage:storageCopy configuration:v20 profile:profileCopy transaction:transactionCopy error:&v53];
    v21 = v53;
    v49 = v21;
    if (v19)
    {
      errorCopy = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
      v22 = +[HKHRBloodPressureJournalStateSyncEntity _windowUpdaterConfigurationForBloodPressureSamplesWithKey:sampleOriginKey:sampleType:syncEntityClass:sampleUUIDSFunction:](self, @"StateSyncBloodPressureSampleCorrelationsWindowKey", @"StateSyncBloodPressureSampleCorrelationsOriginKey", errorCopy, [MEMORY[0x277D106A8] correlationSampleSyncEntityClass], correlationSampleUUIDsFromCodableObjectCollection);

      v52 = 0;
      LOBYTE(errorCopy) = [MEMORY[0x277D105F0] updateDataWithStateStorage:storageCopy configuration:v22 profile:profileCopy transaction:transactionCopy error:&v52];
      v24 = v52;
      v16 = v50;
      if ((errorCopy & 1) == 0)
      {
        v47 = v24;
        _HKInitializeLogging();
        v46 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          *buf = 138543874;
          v57 = v45;
          v58 = 2114;
          v59 = v22;
          v60 = 2114;
          v61 = v47;
          _os_log_error_impl(&dword_229486000, v46, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
        }

        v25 = v47;
        v26 = v25;
        if (v25)
        {
          if (errorCopy2)
          {
            v27 = v25;
            *errorCopy2 = v26;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v24 = v47;
      }

      goto LABEL_34;
    }

    v35 = v21;
    _HKInitializeLogging();
    v36 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      *buf = 138543874;
      v57 = v44;
      v58 = 2114;
      v59 = v20;
      v60 = 2114;
      v61 = v35;
      _os_log_error_impl(&dword_229486000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
    }

    v37 = v35;
    v22 = v37;
    v16 = v50;
    if (v37)
    {
      if (errorCopy2)
      {
        v38 = v37;
        LOBYTE(errorCopy) = 0;
        *errorCopy2 = v22;
LABEL_34:

        v31 = v51;
LABEL_35:

        goto LABEL_36;
      }

      _HKLogDroppedError();
    }

    LOBYTE(errorCopy) = 0;
    goto LABEL_34;
  }

  _HKInitializeLogging();
  v28 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    *buf = 138543874;
    v57 = v39;
    v58 = 2114;
    v59 = v40;
    v60 = 2114;
    v61 = v16;
    _os_log_error_impl(&dword_229486000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ error: %{public}@", buf, 0x20u);
  }

  v18 = v16;
  if (!v18)
  {
    goto LABEL_26;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_26:
    LOBYTE(errorCopy) = 0;
    goto LABEL_36;
  }

  v29 = v18;
  LOBYTE(errorCopy) = 0;
  *error = v18;
LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
  return errorCopy;
}

+ (id)_windowUpdaterConfigurationForBloodPressureSamplesWithKey:(void *)key sampleOriginKey:(void *)originKey sampleType:(uint64_t)type syncEntityClass:(uint64_t)class sampleUUIDSFunction:
{
  originKeyCopy = originKey;
  keyCopy = key;
  v12 = a2;
  objc_opt_self();
  v13 = objc_alloc(MEMORY[0x277D105F8]);
  v14 = +[HKHRBloodPressureJournalStateSyncEntity _sevenDaysTimeWindow];
  v15 = HKLogBloodPressureJournal();
  v16 = [v13 initWithDomain:@"CloudSyncStateEntityDomainBloodPressureJournal" key:v12 sampleOriginKey:keyCopy sampleType:originKeyCopy syncEntityClass:type timeWindow:v14 loggingCategory:v15 sampleUUIDsFunction:class];

  return v16;
}

+ (id)bloodPressureJournalFromCodableJournal:(id)journal
{
  journalCopy = journal;
  if ([journalCopy timeIntervalsCount])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    timeIntervals = [journalCopy timeIntervals];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__HKHRBloodPressureJournalStateSyncEntity_bloodPressureJournalFromCodableJournal___block_invoke;
    v17[3] = &unk_278660BD8;
    v19 = 33022;
    v6 = v4;
    v18 = v6;
    [timeIntervals enumerateObjectsUsingBlock:v17];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277D12F70]);
  v8 = MEMORY[0x277CCAD78];
  uuid = [journalCopy uuid];
  v10 = [v8 hk_UUIDWithData:uuid];
  [journalCopy startDate];
  v11 = HDDecodeDateForValue();
  hasEndDate = [journalCopy hasEndDate];
  if (hasEndDate)
  {
    [journalCopy endDate];
    v13 = HDDecodeDateForValue();
  }

  else
  {
    v13 = 0;
  }

  [journalCopy timestamp];
  v15 = [v7 initWithUUID:v10 startDate:v11 endDate:v13 timestamp:objc_msgSend(journalCopy journalType:"journalType") scheduleType:objc_msgSend(journalCopy journalState:"scheduleType") timeIntervals:{objc_msgSend(journalCopy, "journalState"), v14, v6}];
  if (hasEndDate)
  {
  }

  return v15;
}

void __82__HKHRBloodPressureJournalStateSyncEntity_bloodPressureJournalFromCodableJournal___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a2;
  v5 = [v4 scheduledTime];
  v8 = [v3 hk_dateComponentsWithCodableDateComponents:v5 calendarUnits:*(a1 + 40)];

  v6 = objc_alloc(MEMORY[0x277D12F90]);
  LODWORD(v5) = [v4 dayWindowType];

  v7 = [v6 initWithDayWindowType:v5 scheduledTime:v8];
  [*(a1 + 32) addObject:v7];
}

+ (id)codableJournalFromBloodPressureJournal:(id)journal
{
  journalCopy = journal;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  timeIntervals = [journalCopy timeIntervals];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HKHRBloodPressureJournalStateSyncEntity_codableJournalFromBloodPressureJournal___block_invoke;
  v14[3] = &unk_278660C00;
  v6 = v4;
  v15 = v6;
  [timeIntervals enumerateObjectsUsingBlock:v14];

  v7 = objc_alloc_init(MEMORY[0x277D10610]);
  uUID = [journalCopy UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
  [v7 setUuid:hk_dataForUUIDBytes];

  startDate = [journalCopy startDate];
  MEMORY[0x22AACD170]();
  [v7 setStartDate:?];

  endDate = [journalCopy endDate];

  if (endDate)
  {
    endDate2 = [journalCopy endDate];
    MEMORY[0x22AACD170]();
    [v7 setEndDate:?];
  }

  [v7 setJournalType:{objc_msgSend(journalCopy, "journalType")}];
  [v7 setScheduleType:{objc_msgSend(journalCopy, "scheduleType")}];
  [v7 setJournalState:{objc_msgSend(journalCopy, "journalState")}];
  if ([v6 count])
  {
    [v7 setTimeIntervals:v6];
  }

  [journalCopy timestamp];
  [v7 setTimestamp:?];

  return v7;
}

void __82__HKHRBloodPressureJournalStateSyncEntity_codableJournalFromBloodPressureJournal___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D10618];
  v4 = a2;
  v7 = objc_alloc_init(v3);
  [v7 setDayWindowType:{objc_msgSend(v4, "dayWindowType")}];
  v5 = [v4 scheduledTime];

  v6 = [v5 hk_codableDateComponents];
  [v7 setScheduledTime:v6];

  [*(a1 + 32) addObject:v7];
}

+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _HKInitializeLogging();
  v8 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = [(HKHRBloodPressureJournalStateSyncEntity *)self _stringFromSyncResult:result];
    profileIdentifier = [profileCopy profileIdentifier];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = profileIdentifier;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] state sync result '%{public}@' for %{public}@", &v13, 0x20u);
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

+ (id)_sevenDaysTimeWindow
{
  objc_opt_self();
  date = [MEMORY[0x277CBEAA8] date];
  v1 = [date dateByAddingTimeInterval:-604800.0];
  v2 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v1 duration:604800.0];

  return v2;
}

@end