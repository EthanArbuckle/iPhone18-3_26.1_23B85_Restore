@interface BCSecureUserDatum
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromUserDatum:(id)datum withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCSecureUserDatum

- (id)mutableCopy
{
  v2 = [BCMutableSecureUserDatum alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCSecureUserDatum *)self _configureFromUserDatum:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E470759C();
    }
  }
}

- (void)_configureFromUserDatum:(id)datum withMergers:(id)mergers
{
  v23 = *MEMORY[0x1E69E9840];
  datumCopy = datum;
  v16.receiver = self;
  v16.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v16 configureFromCloudData:datumCopy withMergers:mergers];
  v7 = [datumCopy key];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"key"];

  value = [datumCopy value];
  [(NSManagedObject *)self setDifferentString:value forKey:@"value"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v11 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCSecureUserDatum *)self key];
      v13 = [(BCSecureUserDatum *)self debugDescription];
      v14 = [datumCopy key];
      *buf = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "\\BCSecureUserDatum configured: %@ %@ from userDatum:%@\\"", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v48 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v41.receiver = self;
  v41.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v41 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    v8 = [(BCSecureUserDatum *)self key];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E47075D0(self, v7, v10);
      }

      [(BCSecureUserDatum *)self setKey:v7];
    }

    modificationDate = [(BCSecureUserDatum *)self modificationDate];
    if (modificationDate)
    {
      v12 = modificationDate;
      modificationDate2 = [(BCSecureUserDatum *)self modificationDate];
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
          v20 = [(BCSecureUserDatum *)self key];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCSecureUserDatum *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v25 = v24;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v43 = v20;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v44 = 2112;
          v45 = recordName;
          v46 = 2114;
          v47 = v27;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BCSecureUserDatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v29 = [recordCopy objectForKey:@"value"];
    [(NSManagedObject *)self setDifferentString:v29 forKey:@"value"];
    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCSecureUserDatum *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v34 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(BCSecureUserDatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v38 = [(BCSecureUserDatum *)self debugDescription];
          *buf = 138412802;
          v43 = v35;
          v44 = 2112;
          v45 = recordName2;
          v46 = 2112;
          v47 = v38;
          v39 = "\\BCSecureUserDatum %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_22:
          _os_log_impl(&dword_1E45E0000, v34, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v34 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(BCSecureUserDatum *)self key];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v38 = [(BCSecureUserDatum *)self debugDescription];
        *buf = 138412802;
        v43 = v35;
        v44 = 2112;
        v45 = recordName2;
        v46 = 2112;
        v47 = v38;
        v39 = "\\BCSecureUserDatum %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_22;
      }

LABEL_23:
    }

    goto LABEL_25;
  }

  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707680(self, v7);
  }

LABEL_25:

  v40 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCSecureUserDatum *)self key];
  value = [(BCSecureUserDatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, value];

  return v6;
}

@end