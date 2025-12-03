@interface HMDHH2MigrationStateLogger
+ (BOOL)doesLogEventExistOnDisk;
+ (id)_getLowestError:(id)error;
+ (id)allowedValues;
+ (id)autoMigrationAttempt;
+ (id)migrationLogEventRecord;
+ (int64_t)migrationAttempt;
+ (void)_addInfoFromCoreDataError:(id)error logEvent:(id)event;
+ (void)commitMigrationLogEventToDisk:(id)disk;
+ (void)commitMigrationLogEventToDiskWithKey:(id)key value:(id)value;
+ (void)incrementAutoMigrationAttempt;
+ (void)incrementMigrationAttempt;
+ (void)recordMigrationEndTimeWithValue:(unint64_t)value;
+ (void)recordMigrationFailedWithError:(id)error withReason:(id)reason;
+ (void)recordMigrationStartTimeWithValue:(unint64_t)value;
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
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [logEventRecord hmf_numberForKey:@"migrationSuccess"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)migrationEndTime
{
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [logEventRecord hmf_numberForKey:@"migrationEndTime"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)migrationStartTime
{
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [logEventRecord hmf_numberForKey:@"migrationStartTime"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isDryRun
{
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [logEventRecord hmf_BOOLForKey:@"isDryRun"];

  return v3;
}

- (BOOL)isAutoMigration
{
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [logEventRecord hmf_BOOLForKey:@"isAutoMigration"];

  return v3;
}

- (id)migrationError
{
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v3 = [logEventRecord hmf_errorForKey:@"migrationError"];

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
  isAutoMigration = [(HMDHH2MigrationStateLogger *)self isAutoMigration];
  isDryRun = [(HMDHH2MigrationStateLogger *)self isDryRun];
  isMigrationSuccessful = [(HMDHH2MigrationStateLogger *)self isMigrationSuccessful];
  totalTimeTakenForMigration = [(HMDHH2MigrationStateLogger *)self totalTimeTakenForMigration];
  migrationAttempt = [objc_opt_class() migrationAttempt];
  migrationError = [(HMDHH2MigrationStateLogger *)self migrationError];
  logEventRecord = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v6 = [logEventRecord objectForKeyedSubscript:@"migrationFailureReason"];
  logEventRecord2 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v8 = [logEventRecord2 objectForKeyedSubscript:@"validationEntityClassName"];
  logEventRecord3 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v10 = [logEventRecord3 objectForKeyedSubscript:@"validationAttributeName"];
  logEventRecord4 = [(HMDHH2MigrationStateLogger *)self logEventRecord];
  v12 = [logEventRecord4 objectForKeyedSubscript:@"localizedDescription"];
  v13 = [(HMDHH2MigrationLogEvent *)v19 initWithAutoMigration:isAutoMigration isDryRun:isDryRun migrationSuccessful:isMigrationSuccessful totalMigrationTime:totalTimeTakenForMigration totalMigrationAttempt:migrationAttempt migrationError:migrationError failureReason:v6 coreDataValidationEntityClassName:v8 coreDataValidationAttributeName:v10 localizedErrorDescription:v12];

  return v13;
}

- (id)migrationEndLogEventFromDisk
{
  if ([(HMDHH2MigrationStateLogger *)self isAutoMigration])
  {
    autoMigrationAttempt = [objc_opt_class() autoMigrationAttempt];
  }

  else
  {
    autoMigrationAttempt = 0;
  }

  v4 = [HMDHH2MigrationDailyTotalsLogEvent alloc];
  isAutoMigration = [(HMDHH2MigrationStateLogger *)self isAutoMigration];
  isDryRun = [(HMDHH2MigrationStateLogger *)self isDryRun];
  migrationError = [(HMDHH2MigrationStateLogger *)self migrationError];
  v8 = [(HMDHH2MigrationDailyTotalsLogEvent *)v4 initEndWithAutoMigration:isAutoMigration dryRun:isDryRun attemptCount:autoMigrationAttempt error:migrationError];

  return v8;
}

- (void)resetStoredMigrationState
{
  if ([(HMDHH2MigrationStateLogger *)self isMigrationSuccessful])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:@"migrationAttemptCount"];
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
    migrationLogEventRecord = [objc_opt_class() migrationLogEventRecord];
    logEventRecord = v2->_logEventRecord;
    v2->_logEventRecord = migrationLogEventRecord;

    [(HMDHH2MigrationStateLogger *)v2 populateTotalMigrationTime];
  }

  return v2;
}

+ (void)removeMigrationLogEventRecordFromDisk
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = hh2MigrationLogEventPath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v5 = [defaultManager removeItemAtPath:v3 error:&v17];
  v6 = v17;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      allowedValues = [objc_opt_class() allowedValues];
      v32 = 0;
      dictionary = [v6 unarchivedObjectOfClasses:allowedValues fromData:v4 error:&v32];
      v9 = v32;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = dictionary;
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
          selfCopy = self;
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
          dictionary = [MEMORY[0x277CBEAC0] dictionary];
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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
        dictionary = [MEMORY[0x277CBEAC0] dictionary];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  v29 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (BOOL)doesLogEventExistOnDisk
{
  v2 = hh2MigrationLogEventPath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v2];

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

+ (void)commitMigrationLogEventToDisk:(id)disk
{
  v27 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  v5 = hh2MigrationLogEventPath;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = diskCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Going to write migration log event : [%@]", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = encodeRootObject();
  v11 = v10;
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v19 = selfCopy;
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
    v13 = selfCopy;
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

+ (void)commitMigrationLogEventToDiskWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  migrationLogEventRecord = [objc_opt_class() migrationLogEventRecord];
  v9 = [migrationLogEventRecord mutableCopy];

  [v9 setObject:valueCopy forKeyedSubscript:keyCopy];
  [self commitMigrationLogEventToDisk:v9];
}

+ (void)incrementAutoMigrationAttempt
{
  v34 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion = [productInfo softwareVersion];
  buildVersion = [softwareVersion buildVersion];

  if (buildVersion)
  {
    autoMigrationAttempt = [objc_opt_class() autoMigrationAttempt];
    v8 = autoMigrationAttempt;
    if (autoMigrationAttempt)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(autoMigrationAttempt, "integerValue") + 1}];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v13;
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = buildVersion;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Incrementing auto migration attempt to %{public}@ for build %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v26 = buildVersion;
      v27 = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [standardUserDefaults setObject:v14 forKey:@"autoMigrationAttemptCount"];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v22;
        v30 = 2114;
        v31 = buildVersion;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Initializing first auto migration attempt for build %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = buildVersion;
      v25 = &unk_283E71630;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [standardUserDefaults setObject:v9 forKey:@"autoMigrationAttemptCount"];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion = [productInfo softwareVersion];
  buildVersion = [softwareVersion buildVersion];

  if (buildVersion)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults dictionaryForKey:@"autoMigrationAttemptCount"];
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

    v9 = [v8 objectForKey:buildVersion];

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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"migrationAttemptCount"];

  return v3;
}

+ (void)incrementMigrationAttempt
{
  migrationAttempt = [objc_opt_class() migrationAttempt];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setInteger:migrationAttempt + 1 forKey:@"migrationAttemptCount"];
}

+ (void)recordMigrationEndTimeWithValue:(unint64_t)value
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  [v4 commitMigrationLogEventToDiskWithKey:@"migrationEndTime" value:v5];
}

+ (void)recordMigrationStartTimeWithValue:(unint64_t)value
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  [v4 commitMigrationLogEventToDiskWithKey:@"migrationStartTime" value:v5];
}

+ (id)_getLowestError:(id)error
{
  errorCopy = error;
  underlyingErrors = [errorCopy underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  if (firstObject)
  {
    v6 = 4;
    while (1)
    {
      underlyingErrors2 = [firstObject underlyingErrors];
      firstObject2 = [underlyingErrors2 firstObject];

      if (!firstObject2)
      {
        break;
      }

      firstObject = firstObject2;
      if (!--v6)
      {
        v9 = firstObject2;
        goto LABEL_8;
      }
    }

    v9 = firstObject;
LABEL_8:
    v10 = v9;
  }

  else
  {
    v10 = errorCopy;
    v9 = 0;
  }

  return v10;
}

+ (void)_addInfoFromCoreDataError:(id)error logEvent:(id)event
{
  errorCopy = error;
  eventCopy = event;
  localizedDescription = [errorCopy localizedDescription];
  [eventCopy setObject:localizedDescription forKeyedSubscript:@"localizedDescription"];

  userInfo = [errorCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [errorCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBE320]];

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
      entity = [v11 entity];
      managedObjectClassName = [entity managedObjectClassName];
      [eventCopy setObject:managedObjectClassName forKeyedSubscript:@"validationEntityClassName"];
    }

    userInfo3 = [errorCopy userInfo];
    v15 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBE318]];

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

    [eventCopy setObject:v17 forKeyedSubscript:@"validationAttributeName"];
  }
}

+ (void)recordMigrationFailedWithError:(id)error withReason:(id)reason
{
  errorCopy = error;
  reasonCopy = reason;
  migrationLogEventRecord = [objc_opt_class() migrationLogEventRecord];
  v8 = [migrationLogEventRecord mutableCopy];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5874;
  v37 = __Block_byref_object_dispose__5875;
  v9 = errorCopy;
  v38 = v9;
  userInfo = [v9 userInfo];

  if (userInfo)
  {
    userInfo2 = [v34[5] userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBE158]];

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

  domain = [v34[5] domain];

  if (domain)
  {
    v16 = objc_opt_class();
    underlyingErrors = [v34[5] underlyingErrors];
    firstObject = [underlyingErrors firstObject];
    v19 = [v16 _getLowestError:firstObject];

    if (v19)
    {
      domain2 = [v34[5] domain];
      v21 = [domain2 isEqual:*MEMORY[0x277CCFD28]];

      if (v21)
      {
        [objc_opt_class() _addInfoFromCoreDataError:v19 logEvent:v8];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      domain3 = [v19 domain];
      v25 = [v23 initWithDomain:domain3 code:objc_msgSend(v19 userInfo:{"code"), 0}];
      [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }

    else
    {
      dictionary = 0;
    }

    v30 = objc_alloc(MEMORY[0x277CCA9B8]);
    domain4 = [v34[5] domain];
    v29 = [v30 initWithDomain:domain4 code:objc_msgSend(v34[5] userInfo:{"code"), dictionary}];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v26 = MEMORY[0x277CCA9B8];
    code = [v34[5] code];
    v28 = *MEMORY[0x277CCFD28];
    v19 = [v26 errorWithDomain:*MEMORY[0x277CCFD28] code:code userInfo:0];
    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v28 code:2717 userInfo:dictionary];
  }

  [v8 setObject:v29 forKeyedSubscript:@"migrationError"];
  [v8 setObject:reasonCopy forKeyedSubscript:@"migrationFailureReason"];
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