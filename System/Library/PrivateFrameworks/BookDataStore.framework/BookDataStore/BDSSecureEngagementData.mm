@interface BDSSecureEngagementData
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BDSSecureEngagementData

- (id)mutableCopy
{
  v2 = [BDSMutableSecureEngagementData alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BDSSecureEngagementData *)self _configureFromEngagementData:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704C38();
    }
  }
}

- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v21 configureFromCloudData:dataCopy withMergers:mergers];
  startTimestampString = [dataCopy startTimestampString];
  [(NSManagedObject *)self setDifferentString:startTimestampString forKey:@"startTimestampString"];

  v8 = MEMORY[0x1E696AD98];
  [dataCopy durationInterval];
  v9 = [v8 numberWithDouble:?];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"durationInterval"];

  value = [(BDSSecureEngagementData *)self value];
  value2 = [dataCopy value];
  v12 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:value2];

  if (v12)
  {
    [(NSManagedObject *)self setDifferentObject:v12 forKey:@"value"];
  }

  value3 = [dataCopy value];
  [(NSManagedObject *)self setDifferentObject:value3 forKey:@"value"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v16 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
      v18 = [(BDSSecureEngagementData *)self debugDescription];
      startTimestampString3 = [dataCopy startTimestampString];
      *buf = 138412802;
      v23 = startTimestampString2;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = startTimestampString3;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "\\BDSSecureEngagementData configured: %@ %@ from engagementData:%@\\"", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v51 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v44.receiver = self;
  v44.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v44 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
    v9 = [startTimestampString isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704C6C(self, v7, v10);
      }

      [(BDSSecureEngagementData *)self setStartTimestampString:v7];
    }

    modificationDate = [(BDSSecureEngagementData *)self modificationDate];
    if (modificationDate)
    {
      v12 = modificationDate;
      modificationDate2 = [(BDSSecureEngagementData *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v15 = v14;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v18 = v17;

      if (v15 > v18)
      {
        v19 = BDSCloudKitLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BDSSecureEngagementData *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v25 = v24;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v46 = startTimestampString2;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v47 = 2112;
          v48 = recordName;
          v49 = 2114;
          v50 = v27;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BDSSecureEngagementData %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v29 = [recordCopy objectForKey:@"durationInterval"];
    [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"durationInterval"];
    v30 = [recordCopy objectForKey:@"value"];
    value = [(BDSSecureEngagementData *)self value];
    v32 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:v30];

    if (v32)
    {
      [(NSManagedObject *)self setDifferentObject:v32 forKey:@"value"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BDSSecureEngagementData *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v37 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          startTimestampString3 = [(BDSSecureEngagementData *)self startTimestampString];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v40 = [(BDSSecureEngagementData *)self debugDescription];
          *buf = 138412802;
          v46 = startTimestampString3;
          v47 = 2112;
          v48 = recordName2;
          v49 = 2112;
          v50 = v40;
          v41 = "\\BDSSecureEngagementData %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_24:
          _os_log_impl(&dword_1E45E0000, v37, OS_LOG_TYPE_DEFAULT, v41, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v37 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        startTimestampString3 = [(BDSSecureEngagementData *)self startTimestampString];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v40 = [(BDSSecureEngagementData *)self debugDescription];
        *buf = 138412802;
        v46 = startTimestampString3;
        v47 = 2112;
        v48 = recordName2;
        v49 = 2112;
        v50 = v40;
        v41 = "\\BDSSecureEngagementData %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_24;
      }

LABEL_25:
    }

    goto LABEL_27;
  }

  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E4704D1C(self, v7);
  }

LABEL_27:

  v42 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
  [(BDSSecureEngagementData *)self durationInterval];
  v6 = [v3 stringWithFormat:@"start timestamp: %@, duration: %.1lf", startTimestampString, v5];

  return v6;
}

@end