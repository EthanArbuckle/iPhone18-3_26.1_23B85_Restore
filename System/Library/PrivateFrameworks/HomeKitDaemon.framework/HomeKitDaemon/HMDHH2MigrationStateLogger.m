@interface HMDHH2MigrationStateLogger
+ (BOOL)doesLogEventExistOnDisk;
+ (id)_getLowestError:(id)a3;
+ (id)allowedValues;
+ (id)autoMigrationAttempt;
+ (id)migrationLogEventRecord;
+ (int64_t)migrationAttempt;
+ (void)_addInfoFromCoreDataError:(id)a3 logEvent:(id)a4;
+ (void)commitMigrationLogEventToDisk:(id)a3;
+ (void)commitMigrationLogEventToDiskWithKey:(id)a3 value:(id)a4;
+ (void)incrementAutoMigrationAttempt;
+ (void)incrementMigrationAttempt;
+ (void)recordMigrationEndTimeWithValue:(unint64_t)a3;
+ (void)recordMigrationFailedWithError:(id)a3 withReason:(id)a4;
+ (void)recordMigrationStartTimeWithValue:(unint64_t)a3;
+ (void)removeMigrationLogEventRecordFromDisk;
- (BOOL)isAutoMigration;
- (BOOL)isDryRun;
- (BOOL)isMigrationSuccessful;
- (BOOL)shouldSubmitLogEvent;
- (HMDHH2MigrationStateLogger)init;
- (id)migrationDetailsLogEventFromDisk;
- (id)migrationEndLogEventFromDisk;
- (id)migrationError;
- (int64_t)migrationEndTime;
- (int64_t)migrationStartTime;
- (void)resetStoredMigrationState;
@end

@implementation HMDHH2MigrationStateLogger

- (BOOL)isMigrationSuccessful
{
  v2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [v2 hmf_numberForKey:@"migrationSuccess"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)migrationEndTime
{
  v2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [v2 hmf_numberForKey:@"migrationEndTime"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (int64_t)migrationStartTime
{
  v2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [v2 hmf_numberForKey:@"migrationStartTime"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)isDryRun
{
  v2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [v2 hmf_BOOLForKey:@"isDryRun"];

  return v3;
}

- (BOOL)isAutoMigration
{
  v2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [v2 hmf_BOOLForKey:@"isAutoMigration"];

  return v3;
}

- (id)migrationError
{
  v2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [v2 hmf_errorForKey:@"migrationError"];

  return v3;
}

- (BOOL)shouldSubmitLogEvent
{
  v2 = objc_opt_class();

  return [v2 doesLogEventExistOnDisk];
}

- (id)migrationDetailsLogEventFromDisk
{
  [(HMDHH2MigrationStateLogger *)self populateTotalMigrationTime];
  v19 = [HMDHH2MigrationLogEvent alloc];
  v18 = [(HMDHH2MigrationStateLogger *)self isAutoMigration];
  v17 = [(HMDHH2MigrationStateLogger *)self isDryRun];
  v16 = [(HMDHH2MigrationStateLogger *)self isMigrationSuccessful];
  v15 = [(HMDHH2MigrationStateLogger *)self totalTimeTakenForMigration];
  v3 = [objc_opt_class() migrationAttempt];
  v4 = [(HMDHH2MigrationStateLogger *)self migrationError];
  v5 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v6 = [v5 objectForKeyedSubscript:@"migrationFailureReason"];
  v7 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v8 = [v7 objectForKeyedSubscript:@"validationEntityClassName"];
  v9 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v10 = [v9 objectForKeyedSubscript:@"validationAttributeName"];
  v11 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v12 = [v11 objectForKeyedSubscript:@"localizedDescription"];
  v13 = [(HMDHH2MigrationLogEvent *)v19 initWithAutoMigration:v18 isDryRun:v17 migrationSuccessful:v16 totalMigrationTime:v15 totalMigrationAttempt:v3 migrationError:v4 failureReason:v6 coreDataValidationEntityClassName:v8 coreDataValidationAttributeName:v10 localizedErrorDescription:v12];

  return v13;
}

- (id)migrationEndLogEventFromDisk
{
  if ([(HMDHH2MigrationStateLogger *)self isAutoMigration])
  {
    v3 = [objc_opt_class() autoMigrationAttempt];
  }

  else
  {
    v3 = 0;
  }

  v4 = [HMDHH2MigrationDailyTotalsLogEvent alloc];
  v5 = [(HMDHH2MigrationStateLogger *)self isAutoMigration];
  v6 = [(HMDHH2MigrationStateLogger *)self isDryRun];
  v7 = [(HMDHH2MigrationStateLogger *)self migrationError];
  v8 = [(HMDHH2MigrationDailyTotalsLogEvent *)v4 initEndWithAutoMigration:v5 dryRun:v6 attemptCount:v3 error:v7];

  return v8;
}

- (void)resetStoredMigrationState
{
  if ([(HMDHH2MigrationStateLogger *)self isMigrationSuccessful])
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v2 removeObjectForKey:@"migrationAttemptCount"];
  }

  v3 = objc_opt_class();

  [v3 removeMigrationLogEventRecordFromDisk];
}

- (HMDHH2MigrationStateLogger)init
{
  v6.receiver = self;
  v6.super_class = HMDHH2MigrationStateLogger;
  v2 = [(HMDHH2MigrationStateLogger *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() migrationLogEventRecord];
    logEventRecord = v2->_logEventRecord;
    v2->_logEventRecord = v3;

    [(HMDHH2MigrationStateLogger *)v2 populateTotalMigrationTime];
  }

  return v2;
}

+ (void)removeMigrationLogEventRecordFromDisk
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = hh2MigrationLogEventPath;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v17];
  v6 = v17;

  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v11;
      v12 = "%{public}@Successfully deleted the HH2 migration log event record from disk";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v12 = "%{public}@Failed to delete the HH2 migration log event record from disk : %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
}

+ (id)migrationLogEventRecord
{
  v38 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() doesLogEventExistOnDisk])
  {
    v3 = hh2MigrationLogEventPath;
    v33 = 0;
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3 options:2 error:&v33];
    v5 = v33;
    if (v4)
    {
      v6 = MEMORY[0x277CCAAC8];
      v7 = [objc_opt_class() allowedValues];
      v32 = 0;
      v8 = [v6 unarchivedObjectOfClasses:v7 fromData:v4 error:&v32];
      v9 = v32;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        v12 = v11;
        objc_opt_class();
        v13 = objc_opt_isKindOfClass() & 1;
        if (v13)
        {
          v14 = v12;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v13)
        {
          v16 = v12;
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          v26 = a1;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v28 = v31 = v25;
            *buf = 138543618;
            v35 = v28;
            v36 = 2112;
            v37 = v12;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to open the migration log event record from archive data: %@", buf, 0x16u);

            v25 = v31;
          }

          objc_autoreleasePoolPop(v25);
          v8 = [MEMORY[0x277CBEAC0] dictionary];
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = a1;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v24;
          v36 = 2112;
          v37 = v9;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive migration log event record from archive data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v8 = [MEMORY[0x277CBEAC0] dictionary];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v20;
        v36 = 2112;
        v37 = v5;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the migration log event record due to an error: [%@]", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v8 = [MEMORY[0x277CBEAC0] dictionary];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)doesLogEventExistOnDisk
{
  v2 = hh2MigrationLogEventPath;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  return v4;
}

+ (id)allowedValues
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)commitMigrationLogEventToDisk:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = hh2MigrationLogEventPath;
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Going to write migration log event : [%@]", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = encodeRootObject();
  v11 = v10;
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v19 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v5;
      v16 = "%{public}@Unable to write migration log event at location : %@";
      v17 = v14;
      v18 = 22;
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  if (([v10 writeToFile:v5 atomically:1] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v15;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v5;
      v16 = "%{public}@Unable to write migration log event [%@] to location : %@";
      v17 = v14;
      v18 = 32;
LABEL_9:
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, v16, &v21, v18);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)commitMigrationLogEventToDiskWithKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() migrationLogEventRecord];
  v9 = [v8 mutableCopy];

  [v9 setObject:v6 forKeyedSubscript:v7];
  [a1 commitMigrationLogEventToDisk:v9];
}

+ (void)incrementAutoMigrationAttempt
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = [v4 softwareVersion];
  v6 = [v5 buildVersion];

  if (v6)
  {
    v7 = [objc_opt_class() autoMigrationAttempt];
    v8 = v7;
    if (v7)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v13;
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = v6;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Incrementing auto migration attempt to %{public}@ for build %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v26 = v6;
      v27 = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [v3 setObject:v14 forKey:@"autoMigrationAttemptCount"];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v22;
        v30 = 2114;
        v31 = v6;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Initializing first auto migration attempt for build %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = v6;
      v25 = &unk_283E71630;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v3 setObject:v9 forKey:@"autoMigrationAttemptCount"];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Should not get here, skipping incrementing auto migration attempt due to missing build version", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)autoMigrationAttempt
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 softwareVersion];
  v4 = [v3 buildVersion];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 dictionaryForKey:@"autoMigrationAttemptCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 objectForKey:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (int64_t)migrationAttempt
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"migrationAttemptCount"];

  return v3;
}

+ (void)incrementMigrationAttempt
{
  v2 = [objc_opt_class() migrationAttempt];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setInteger:v2 + 1 forKey:@"migrationAttemptCount"];
}

+ (void)recordMigrationEndTimeWithValue:(unint64_t)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v4 commitMigrationLogEventToDiskWithKey:@"migrationEndTime" value:v5];
}

+ (void)recordMigrationStartTimeWithValue:(unint64_t)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v4 commitMigrationLogEventToDiskWithKey:@"migrationStartTime" value:v5];
}

+ (id)_getLowestError:(id)a3
{
  v3 = a3;
  v4 = [v3 underlyingErrors];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = 4;
    while (1)
    {
      v7 = [v5 underlyingErrors];
      v8 = [v7 firstObject];

      if (!v8)
      {
        break;
      }

      v5 = v8;
      if (!--v6)
      {
        v9 = v8;
        goto LABEL_8;
      }
    }

    v9 = v5;
LABEL_8:
    v10 = v9;
  }

  else
  {
    v10 = v3;
    v9 = 0;
  }

  return v10;
}

+ (void)_addInfoFromCoreDataError:(id)a3 logEvent:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = [v18 localizedDescription];
  [v5 setObject:v6 forKeyedSubscript:@"localizedDescription"];

  v7 = [v18 userInfo];

  if (v7)
  {
    v8 = [v18 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE320]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [v11 entity];
      v13 = [v12 managedObjectClassName];
      [v5 setObject:v13 forKeyedSubscript:@"validationEntityClassName"];
    }

    v14 = [v18 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CBE318]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    [v5 setObject:v17 forKeyedSubscript:@"validationAttributeName"];
  }
}

+ (void)recordMigrationFailedWithError:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() migrationLogEventRecord];
  v8 = [v7 mutableCopy];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5874;
  v37 = __Block_byref_object_dispose__5875;
  v9 = v5;
  v38 = v9;
  v10 = [v9 userInfo];

  if (v10)
  {
    v11 = [v34[5] userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBE158]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __72__HMDHH2MigrationStateLogger_recordMigrationFailedWithError_withReason___block_invoke;
    v32[3] = &unk_27866E9A8;
    v32[4] = &v33;
    [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
    [objc_opt_class() _addInfoFromCoreDataError:v34[5] logEvent:v8];
  }

  v15 = [v34[5] domain];

  if (v15)
  {
    v16 = objc_opt_class();
    v17 = [v34[5] underlyingErrors];
    v18 = [v17 firstObject];
    v19 = [v16 _getLowestError:v18];

    if (v19)
    {
      v20 = [v34[5] domain];
      v21 = [v20 isEqual:*MEMORY[0x277CCFD28]];

      if (v21)
      {
        [objc_opt_class() _addInfoFromCoreDataError:v19 logEvent:v8];
      }

      v22 = [MEMORY[0x277CBEB38] dictionary];
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v24 = [v19 domain];
      v25 = [v23 initWithDomain:v24 code:objc_msgSend(v19 userInfo:{"code"), 0}];
      [v22 setObject:v25 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }

    else
    {
      v22 = 0;
    }

    v30 = objc_alloc(MEMORY[0x277CCA9B8]);
    v31 = [v34[5] domain];
    v29 = [v30 initWithDomain:v31 code:objc_msgSend(v34[5] userInfo:{"code"), v22}];
  }

  else
  {
    v22 = [MEMORY[0x277CBEB38] dictionary];
    v26 = MEMORY[0x277CCA9B8];
    v27 = [v34[5] code];
    v28 = *MEMORY[0x277CCFD28];
    v19 = [v26 errorWithDomain:*MEMORY[0x277CCFD28] code:v27 userInfo:0];
    [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v28 code:2717 userInfo:v22];
  }

  [v8 setObject:v29 forKeyedSubscript:@"migrationError"];
  [v8 setObject:v6 forKeyedSubscript:@"migrationFailureReason"];
  [objc_opt_class() commitMigrationLogEventToDisk:v8];

  _Block_object_dispose(&v33, 8);
}

void __72__HMDHH2MigrationStateLogger_recordMigrationFailedWithError_withReason___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v9;
  if (v9 && (isKindOfClass & 1) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

@end