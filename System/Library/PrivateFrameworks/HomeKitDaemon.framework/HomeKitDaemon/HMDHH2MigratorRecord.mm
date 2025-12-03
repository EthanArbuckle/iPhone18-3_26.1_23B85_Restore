@interface HMDHH2MigratorRecord
+ (BOOL)recordMigrationFailureWithError:(id)error;
+ (id)archiveMigratorDict:(id)dict;
+ (id)lastMigrationFailure;
+ (id)logCategory;
+ (id)prepareDictionary:(id)dictionary;
+ (id)singleRecord;
+ (id)unarchiveMigratorDict:(id)dict;
+ (void)removeMigrationFailureRecord;
- (BOOL)beginMigration;
- (BOOL)finishMigration;
- (BOOL)writeMigratorRecord:(id)record;
- (BOOL)writeNewMigrationRecord;
- (BOOL)writeToDisk;
- (HMDHH2MigratorRecord)initWithLocalStorePath:(id)path;
- (id)attributeDescriptions;
- (void)readMigratorRecord;
- (void)unarchiveRecordFromData:(id)data;
- (void)updateValuesFromDict:(id)dict;
@end

@implementation HMDHH2MigratorRecord

- (BOOL)finishMigration
{
  v21 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  hh2MigratorRecordDataStorePath = [(HMDHH2MigratorRecord *)self hh2MigratorRecordDataStorePath];
  v14 = 0;
  v5 = [defaultManager removeItemAtPath:hh2MigratorRecordDataStorePath error:&v14];
  v6 = v14;

  if ((v5 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      hh2MigratorRecordDataStorePath2 = [(HMDHH2MigratorRecord *)selfCopy hh2MigratorRecordDataStorePath];
      *buf = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = hh2MigratorRecordDataStorePath2;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove migration record from disk %@ (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)beginMigration
{
  v23 = *MEMORY[0x277D85DE8];
  if (![(HMDHH2MigratorRecord *)self isMigrationInProgress])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      objc_autoreleasePoolPop(v7);
      result = 0;
      goto LABEL_16;
    }

    v10 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v10;
    v11 = "%{public}@Cannot increment the migration attempt as this device is not the migrator";
LABEL_8:
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, v11, &v19, 0xCu);

    goto LABEL_9;
  }

  if ([(HMDHH2MigratorRecord *)self migrateFromTestDirectory])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Not enforcing the migration attempt as we are doing migration from test directory", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_13;
  }

  if ([(HMDHH2MigratorRecord *)self isMaximumMigrationAttemptReached])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v10 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v10;
    v11 = "%{public}@Maximum migration attempt reached";
    goto LABEL_8;
  }

LABEL_13:
  [(HMDHH2MigratorRecord *)self setCurrentMigrationAttempt:[(HMDHH2MigratorRecord *)self currentMigrationAttempt]+ 1];
  v13 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    currentMigrationAttempt = [(HMDHH2MigratorRecord *)selfCopy4 currentMigrationAttempt];
    v19 = 138543618;
    v20 = v16;
    v21 = 1024;
    v22 = currentMigrationAttempt;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Increased migration attempt to %u", &v19, 0x12u);
  }

  objc_autoreleasePoolPop(v13);
  result = [(HMDHH2MigratorRecord *)selfCopy4 writeToDisk];
LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)writeToDisk
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  isMigrationInProgress = [(HMDHH2MigratorRecord *)self isMigrationInProgress];
  currentMigrationAttempt = [(HMDHH2MigratorRecord *)self currentMigrationAttempt];
  shouldSkipKeyRollOperations = [(HMDHH2MigratorRecord *)self shouldSkipKeyRollOperations];
  forceMigrationFailureForTesting = [(HMDHH2MigratorRecord *)self forceMigrationFailureForTesting];
  migrateFromTestDirectory = [(HMDHH2MigratorRecord *)self migrateFromTestDirectory];
  dryRun = [(HMDHH2MigratorRecord *)self dryRun];
  LOBYTE(v18) = [(HMDHH2MigratorRecord *)self isAutoMigration];
  v10 = [v3 prepareDictionary:isMigrationInProgress attempt:currentMigrationAttempt skipKeyRoll:shouldSkipKeyRollOperations forceFailForTesting:forceMigrationFailureForTesting migrateFromTestDirectory:migrateFromTestDirectory dryRun:dryRun isAutoMigration:v18];
  if (v10)
  {
    v11 = [(HMDHH2MigratorRecord *)self writeMigratorRecord:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare HH2 migrator record dictionary", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)writeMigratorRecord:(id)record
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = [objc_opt_class() archiveMigratorDict:recordCopy];
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = recordCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to create an archive of the HH2 migrator record : %@", &v20, 0x16u);
LABEL_9:
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  hh2MigratorRecordDataStorePath = [(HMDHH2MigratorRecord *)self hh2MigratorRecordDataStorePath];
  v7 = [v5 writeToFile:hh2MigratorRecordDataStorePath atomically:1];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      hh2MigratorRecordDataStorePath2 = [(HMDHH2MigratorRecord *)selfCopy2 hh2MigratorRecordDataStorePath];
      v20 = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = hh2MigratorRecordDataStorePath2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to write the HH2 migrator record to %@", &v20, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v12 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    hh2MigratorRecordDataStorePath3 = [(HMDHH2MigratorRecord *)selfCopy2 hh2MigratorRecordDataStorePath];
    v20 = 138543874;
    v21 = v13;
    v22 = 2112;
    v23 = recordCopy;
    v24 = 2112;
    v25 = hh2MigratorRecordDataStorePath3;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully written HH2 migrator record to disk: %@ : %@", &v20, 0x20u);
  }

LABEL_11:

  objc_autoreleasePoolPop(v8);
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)writeNewMigrationRecord
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(HMDHH2MigratorRecord *)self isMigrationInProgress])
  {
    v4 = objc_opt_class();
    shouldSkipKeyRollOperations = [(HMDHH2MigratorRecord *)self shouldSkipKeyRollOperations];
    forceMigrationFailureForTesting = [(HMDHH2MigratorRecord *)self forceMigrationFailureForTesting];
    migrateFromTestDirectory = [(HMDHH2MigratorRecord *)self migrateFromTestDirectory];
    dryRun = [(HMDHH2MigratorRecord *)self dryRun];
    LOBYTE(v16) = [(HMDHH2MigratorRecord *)self isAutoMigration];
    v9 = [v4 prepareDictionary:1 attempt:0 skipKeyRoll:shouldSkipKeyRollOperations forceFailForTesting:forceMigrationFailureForTesting migrateFromTestDirectory:migrateFromTestDirectory dryRun:dryRun isAutoMigration:v16];
    if (v9)
    {
      if ([(HMDHH2MigratorRecord *)self writeMigratorRecord:v9])
      {
        [(HMDHH2MigratorRecord *)self updateValuesFromDict:v9];
        v3 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare HH2 migrator record", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    v3 = 0;
    goto LABEL_10;
  }

  v3 = 1;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2MigratorRecord *)self isMigrationInProgress];
  v26 = HMFBooleanToString();
  v25 = [v3 initWithName:@"isMigrationInProgress" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[HMDHH2MigratorRecord currentMigrationAttempt](self, "currentMigrationAttempt")];
  v23 = [v4 initWithName:@"migrationAttempt" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2MigratorRecord *)self shouldSkipKeyRollOperations];
  v22 = HMFBooleanToString();
  v6 = [v5 initWithName:@"skipKeyRoll" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2MigratorRecord *)self forceMigrationFailureForTesting];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"forceMigrationFailure" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2MigratorRecord *)self migrateFromTestDirectory];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"migrateFromTestDirectory" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2MigratorRecord *)self dryRun];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"isDryRun" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHH2MigratorRecord *)self isAutoMigration];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"isAutoMigration" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)updateValuesFromDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"HH2.MG.migrator"];
  -[HMDHH2MigratorRecord setIsMigrationInProgress:](self, "setIsMigrationInProgress:", [v4 BOOLValue]);

  v5 = [dictCopy objectForKeyedSubscript:@"HH2.MG.attempt"];
  -[HMDHH2MigratorRecord setCurrentMigrationAttempt:](self, "setCurrentMigrationAttempt:", [v5 unsignedIntValue]);

  v6 = [dictCopy objectForKeyedSubscript:@"HH2.MG.dry.run"];
  -[HMDHH2MigratorRecord setDryRun:](self, "setDryRun:", [v6 BOOLValue]);

  v7 = [dictCopy objectForKeyedSubscript:@"HH2.MG.auto"];
  -[HMDHH2MigratorRecord setIsAutoMigration:](self, "setIsAutoMigration:", [v7 BOOLValue]);

  if (isInternalBuild())
  {
    v8 = [dictCopy objectForKeyedSubscript:@"HH2.MG.skip.key.roll"];
    -[HMDHH2MigratorRecord setShouldSkipKeyRollOperations:](self, "setShouldSkipKeyRollOperations:", [v8 BOOLValue]);

    v9 = [dictCopy objectForKeyedSubscript:@"HH2.MG.simulate.migration.failure"];
    -[HMDHH2MigratorRecord setForceMigrationFailureForTesting:](self, "setForceMigrationFailureForTesting:", [v9 BOOLValue]);

    v10 = [dictCopy objectForKeyedSubscript:@"HH2.MG.migrate.test.directory"];
    -[HMDHH2MigratorRecord setMigrateFromTestDirectory:](self, "setMigrateFromTestDirectory:", [v10 BOOLValue]);
  }
}

- (void)unarchiveRecordFromData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [objc_opt_class() unarchiveMigratorDict:dataCopy];
  if (v5)
  {
    [(HMDHH2MigratorRecord *)self updateValuesFromDict:v5];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      attributeDescriptions = [(HMDHH2MigratorRecord *)selfCopy attributeDescriptions];
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = attributeDescriptions;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully got the HH2 Migrator record : %@", &v14, 0x16u);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the valid HH2 Migrator record from stored archive.", &v14, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)readMigratorRecord
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    hh2MigratorRecordDataStorePath = [(HMDHH2MigratorRecord *)selfCopy hh2MigratorRecordDataStorePath];
    *buf = 138543618;
    v18 = v6;
    v19 = 2112;
    v20 = hh2MigratorRecordDataStorePath;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Going to read migrator record from : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  hh2MigratorRecordDataStorePath2 = [(HMDHH2MigratorRecord *)selfCopy hh2MigratorRecordDataStorePath];
  v16 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:hh2MigratorRecordDataStorePath2 options:2 error:&v16];
  v10 = v16;
  if (v10 || !v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Current device is not the migrator: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    [(HMDHH2MigratorRecord *)selfCopy unarchiveRecordFromData:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDHH2MigratorRecord)initWithLocalStorePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = HMDHH2MigratorRecord;
  v6 = [(HMDHH2MigratorRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hh2MigratorRecordDataStorePath, path);
    v7->_isMigrationInProgress = 0;
    [(HMDHH2MigratorRecord *)v7 readMigratorRecord];
  }

  return v7;
}

+ (void)removeMigrationFailureRecord
{
  v2 = hh2MigrationFailureRecordStorePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = 0;
  [defaultManager removeItemAtPath:v2 error:&v4];
}

+ (id)lastMigrationFailure
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDHH2MigratorRecord_lastMigrationFailure__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (lastMigrationFailure_onceToken != -1)
  {
    dispatch_once(&lastMigrationFailure_onceToken, block);
  }

  v2 = lastMigrationFailure_migrationError;

  return v2;
}

void __44__HMDHH2MigratorRecord_lastMigrationFailure__block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = hh2MigrationFailureRecordStorePath;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v8;
      v57 = 2112;
      v58 = v2;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Found migration failure record on disk at %@. Going to read it.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v52 = 0;
    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2 options:2 error:&v52];
    v10 = v52;
    if (v9)
    {
      v11 = MEMORY[0x277CCAAC8];
      v12 = MEMORY[0x277CBEB98];
      v54 = objc_opt_class();
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v14 = [v12 setWithArray:v13];
      v15 = MEMORY[0x277CBEB98];
      v53 = objc_opt_class();
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      v17 = [v15 setWithArray:v16];
      v51 = 0;
      v18 = [v11 unarchivedDictionaryWithKeysOfClasses:v14 objectsOfClasses:v17 fromData:v9 error:&v51];
      v19 = v51;

      if (v18)
      {
        v20 = v18;
        objc_opt_class();
        v21 = objc_opt_isKindOfClass() & 1;
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (v21)
        {
          v24 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD0218]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v27 = lastMigrationFailure_migrationError;
          lastMigrationFailure_migrationError = v26;

          v28 = objc_autoreleasePoolPush();
          v29 = *(a1 + 32);
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v31 = v49 = v28;
            *buf = 138543618;
            v56 = v31;
            v57 = 2112;
            v58 = lastMigrationFailure_migrationError;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Successfully read the migration failure record %@", buf, 0x16u);

            v28 = v49;
          }

          objc_autoreleasePoolPop(v28);
        }

        else
        {
          v42 = objc_autoreleasePoolPush();
          v43 = *(a1 + 32);
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v45 = v50 = v42;
            *buf = 138543618;
            v56 = v45;
            v57 = 2112;
            v58 = v20;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Unable to open the migration failure record from archive data: %@", buf, 0x16u);

            v42 = v50;
          }

          objc_autoreleasePoolPop(v42);
          v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          v47 = lastMigrationFailure_migrationError;
          lastMigrationFailure_migrationError = v46;
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = *(a1 + 32);
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v40;
          v57 = 2112;
          v58 = v19;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive migration failure record from archive data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v41 = v19;
        v23 = lastMigrationFailure_migrationError;
        lastMigrationFailure_migrationError = v41;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v35;
        v57 = 2112;
        v58 = v10;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to read the migration failure record due to an error: [%@]", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v36 = v10;
      v19 = lastMigrationFailure_migrationError;
      lastMigrationFailure_migrationError = v36;
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (BOOL)recordMigrationFailureWithError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = errorCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CD0218]];
  v7 = hh2MigrationFailureRecordStorePath;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v28 = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = dictionary;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to write migration failure record : [%@] -> [%@]", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = encodeRootObject();
  v13 = v12;
  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v7;
      v23 = "%{public}@Unable to write migration failure record at location : %@";
      v24 = v18;
      v25 = 22;
LABEL_13:
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, v23, &v28, v25);
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v14 = [v12 writeToFile:v7 atomically:1];
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v7;
      v23 = "%{public}@Unable to write migration failure record [%@] to location : %@";
      v24 = v18;
      v25 = 32;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    v28 = 138543874;
    v29 = v19;
    v30 = 2112;
    v31 = dictionary;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully written migration failure record on disk : %@, %@", &v28, 0x20u);
  }

  v20 = 1;
LABEL_15:

  objc_autoreleasePoolPop(v15);
  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)unarchiveMigratorDict:(id)dict
{
  v29[1] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v29[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = MEMORY[0x277CBEB98];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v11 = [v9 setWithArray:v10];
  v23 = 0;
  v12 = [v5 unarchivedDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 fromData:dictCopy error:&v23];
  v13 = v23;

  if (!v12)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive HMDHH2MigratorRecord from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)archiveMigratorDict:(id)dict
{
  v16 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dictCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to archive : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = encodeRootObject();

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)prepareDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  isMigrationInProgress = [dictionaryCopy isMigrationInProgress];
  currentMigrationAttempt = [dictionaryCopy currentMigrationAttempt];
  shouldSkipKeyRollOperations = [dictionaryCopy shouldSkipKeyRollOperations];
  forceMigrationFailureForTesting = [dictionaryCopy forceMigrationFailureForTesting];
  migrateFromTestDirectory = [dictionaryCopy migrateFromTestDirectory];
  dryRun = [dictionaryCopy dryRun];
  isAutoMigration = [dictionaryCopy isAutoMigration];

  LOBYTE(v13) = isAutoMigration;
  return [v4 prepareDictionary:isMigrationInProgress attempt:currentMigrationAttempt skipKeyRoll:shouldSkipKeyRollOperations forceFailForTesting:forceMigrationFailureForTesting migrateFromTestDirectory:migrateFromTestDirectory dryRun:dryRun isAutoMigration:v13];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_129320 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_129320, &__block_literal_global_22_129321);
  }

  v3 = logCategory__hmf_once_v5_129322;

  return v3;
}

void __35__HMDHH2MigratorRecord_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_129322;
  logCategory__hmf_once_v5_129322 = v1;
}

+ (id)singleRecord
{
  if (singleRecord_onceToken != -1)
  {
    dispatch_once(&singleRecord_onceToken, &__block_literal_global_129327);
  }

  v3 = singleRecord_singleMigratorRecord;

  return v3;
}

void __36__HMDHH2MigratorRecord_singleRecord__block_invoke()
{
  v0 = [HMDHH2MigratorRecord alloc];
  v3 = hh2MigratorRecordStorePath;
  v1 = [(HMDHH2MigratorRecord *)v0 initWithLocalStorePath:v3];
  v2 = singleRecord_singleMigratorRecord;
  singleRecord_singleMigratorRecord = v1;
}

@end