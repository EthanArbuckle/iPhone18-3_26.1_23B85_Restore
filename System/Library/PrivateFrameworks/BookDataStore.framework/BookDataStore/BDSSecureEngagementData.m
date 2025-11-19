@interface BDSSecureEngagementData
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromEngagementData:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BDSSecureEngagementData

- (id)mutableCopy
{
  v2 = [BDSMutableSecureEngagementData alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BDSSecureEngagementData *)self _configureFromEngagementData:v6 withMergers:v5];
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

- (void)_configureFromEngagementData:(id)a3 withMergers:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v21 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 startTimestampString];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"startTimestampString"];

  v8 = MEMORY[0x1E696AD98];
  [v6 durationInterval];
  v9 = [v8 numberWithDouble:?];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"durationInterval"];

  v10 = [(BDSSecureEngagementData *)self value];
  v11 = [v6 value];
  v12 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:v10 remote:v11];

  if (v12)
  {
    [(NSManagedObject *)self setDifferentObject:v12 forKey:@"value"];
  }

  v13 = [v6 value];
  [(NSManagedObject *)self setDifferentObject:v13 forKey:@"value"];

  v14 = [MEMORY[0x1E698F550] shared];
  v15 = [v14 verboseLoggingEnabled];

  if (v15)
  {
    v16 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(BDSSecureEngagementData *)self startTimestampString];
      v18 = [(BDSSecureEngagementData *)self debugDescription];
      v19 = [v6 startTimestampString];
      *buf = 138412802;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "\\BDSSecureEngagementData configured: %@ %@ from engagementData:%@\\"", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v44.receiver = self;
  v44.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v44 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BDSSecureEngagementData *)self startTimestampString];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704C6C(self, v7, v10);
      }

      [(BDSSecureEngagementData *)self setStartTimestampString:v7];
    }

    v11 = [(BDSSecureEngagementData *)self modificationDate];
    if (v11)
    {
      v12 = v11;
      v13 = [(BDSSecureEngagementData *)self modificationDate];
      [v13 timeIntervalSinceReferenceDate];
      v15 = v14;
      v16 = [v6 modificationDate];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;

      if (v15 > v18)
      {
        v19 = BDSCloudKitLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(BDSSecureEngagementData *)self startTimestampString];
          v21 = [v6 recordID];
          v22 = [v21 recordName];
          v23 = [(BDSSecureEngagementData *)self modificationDate];
          [v23 timeIntervalSinceReferenceDate];
          v25 = v24;
          v26 = [v6 modificationDate];
          [v26 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v46 = v20;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v47 = 2112;
          v48 = v22;
          v49 = 2114;
          v50 = v27;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BDSSecureEngagementData %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v29 = [v6 objectForKey:@"durationInterval"];
    [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"durationInterval"];
    v30 = [v6 objectForKey:@"value"];
    v31 = [(BDSSecureEngagementData *)self value];
    v32 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:v31 remote:v30];

    if (v32)
    {
      [(NSManagedObject *)self setDifferentObject:v32 forKey:@"value"];
    }

    v33 = [v6 modificationDate];
    [(NSManagedObject *)self setDifferentDate:v33 forKey:@"modificationDate"];
    v34 = [(BDSSecureEngagementData *)self hasChanges];
    v35 = [MEMORY[0x1E698F550] shared];
    v36 = [v35 verboseLoggingEnabled];

    if (v34)
    {
      if (v36)
      {
        v37 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(BDSSecureEngagementData *)self startTimestampString];
          v43 = [v6 recordID];
          v39 = [v43 recordName];
          v40 = [(BDSSecureEngagementData *)self debugDescription];
          *buf = 138412802;
          v46 = v38;
          v47 = 2112;
          v48 = v39;
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

    else if (v36)
    {
      v37 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(BDSSecureEngagementData *)self startTimestampString];
        v43 = [v6 recordID];
        v39 = [v43 recordName];
        v40 = [(BDSSecureEngagementData *)self debugDescription];
        *buf = 138412802;
        v46 = v38;
        v47 = 2112;
        v48 = v39;
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
  v4 = [(BDSSecureEngagementData *)self startTimestampString];
  [(BDSSecureEngagementData *)self durationInterval];
  v6 = [v3 stringWithFormat:@"start timestamp: %@, duration: %.1lf", v4, v5];

  return v6;
}

@end