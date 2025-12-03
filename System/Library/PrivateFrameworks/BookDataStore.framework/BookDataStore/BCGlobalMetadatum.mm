@interface BCGlobalMetadatum
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromMetadatum:(id)metadatum withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCGlobalMetadatum

- (id)mutableCopy
{
  v2 = [BCMutableGlobalMetadatum alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCGlobalMetadatum *)self _configureFromMetadatum:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708FD4();
    }
  }
}

- (void)_configureFromMetadatum:(id)metadatum withMergers:(id)mergers
{
  v23 = *MEMORY[0x1E69E9840];
  metadatumCopy = metadatum;
  v16.receiver = self;
  v16.super_class = BCGlobalMetadatum;
  [(BCCloudData *)&v16 configureFromCloudData:metadatumCopy withMergers:mergers];
  v7 = [metadatumCopy key];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"key"];

  value = [metadatumCopy value];
  [(NSManagedObject *)self setDifferentString:value forKey:@"value"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v11 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCGlobalMetadatum *)self key];
      v13 = [(BCGlobalMetadatum *)self debugDescription];
      v14 = [metadatumCopy key];
      *buf = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "\\BCGlobalMetadatum configured: %@ %@ from metadatum:%@\\"", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v58 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  resolversCopy = resolvers;
  v51.receiver = self;
  v51.super_class = BCGlobalMetadatum;
  [(BCCloudData *)&v51 resolveConflictsFromRecord:recordCopy withResolvers:resolversCopy];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    v9 = [(BCGlobalMetadatum *)self key];
    v10 = [v9 isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4709008(self, v8, v11);
      }

      [(BCGlobalMetadatum *)self setKey:v8];
    }

    modificationDate = [(BCGlobalMetadatum *)self modificationDate];
    if (modificationDate)
    {
      v13 = modificationDate;
      modificationDate2 = [(BCGlobalMetadatum *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v16 = v15;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v19 = v18;

      if (v16 > v19)
      {
        v20 = BDSCloudKitLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [(BCGlobalMetadatum *)self key];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCGlobalMetadatum *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v26 = v25;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v28 = @"newer";
          *buf = 138412802;
          v53 = v21;
          if (v26 == v29)
          {
            v28 = @"the same";
          }

          v54 = 2112;
          v55 = recordName;
          v56 = 2114;
          v57 = v28;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_INFO, "BCGlobalMetadatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v30 = [recordCopy objectForKey:@"value"];
    value = [(BCGlobalMetadatum *)self value];
    v32 = v30;
    v33 = [(BCGlobalMetadatum *)self key];
    v34 = [resolversCopy objectForKeyedSubscript:v33];
    v35 = v34;
    v36 = v32;
    if (v34)
    {
      v36 = (*(v34 + 16))(v34, v33, value, v32);
    }

    v49 = v33;
    v50 = value;
    [(NSManagedObject *)self setDifferentString:v36 forKey:@"value"];
    modificationDate6 = [recordCopy modificationDate];
    [NSManagedObject setDifferentDate:"setDifferentDate:forKey:" forKey:?];
    hasChanges = [(BCGlobalMetadatum *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      v40 = v50;
      if (verboseLoggingEnabled)
      {
        v41 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(BCGlobalMetadatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v43 = [(BCGlobalMetadatum *)self debugDescription];
          *buf = 138412802;
          v53 = v46;
          v54 = 2112;
          v55 = recordName2;
          v56 = 2112;
          v57 = v43;
          v44 = "\\BCGlobalMetadatum %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_24:
          _os_log_impl(&dword_1E45E0000, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 0x20u);

          v40 = v50;
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v40 = v50;
      if (verboseLoggingEnabled)
      {
        v41 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(BCGlobalMetadatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v43 = [(BCGlobalMetadatum *)self debugDescription];
          *buf = 138412802;
          v53 = v46;
          v54 = 2112;
          v55 = recordName2;
          v56 = 2112;
          v57 = v43;
          v44 = "\\BCGlobalMetadatum %@ Resolving: Identical properties from record: %@ %@\\"";
          goto LABEL_24;
        }

LABEL_25:
      }
    }

    goto LABEL_27;
  }

  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E47090B8(self, v8);
  }

LABEL_27:

  v45 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCGlobalMetadatum *)self key];
  value = [(BCGlobalMetadatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, value];

  return v6;
}

@end