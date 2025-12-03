@interface BCStoreItem
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromStoreItem:(id)item withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCStoreItem

- (id)mutableCopy
{
  v2 = [BCMutableStoreItem alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCStoreItem *)self _configureFromStoreItem:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704E50();
    }
  }
}

- (void)_configureFromStoreItem:(id)item withMergers:(id)mergers
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = BCStoreItem;
  [(BCCloudData *)&v14 configureFromCloudData:itemCopy withMergers:mergers];
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v9 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      storeID = [(BCStoreItem *)self storeID];
      storeID2 = [itemCopy storeID];
      *buf = 138412546;
      v16 = storeID;
      v17 = 2112;
      v18 = storeID2;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "\\Configuring storeItem:%@ from storeItem:%@\\"", buf, 0x16u);
    }
  }

  storeID3 = [itemCopy storeID];
  [(NSManagedObject *)self setDifferentString:storeID3 forKey:@"storeID"];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v45 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v38.receiver = self;
  v38.super_class = BCStoreItem;
  [(BCCloudData *)&v38 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    storeID = [(BCStoreItem *)self storeID];
    v9 = [storeID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704E84(self, v7, v10);
      }

      [(BCStoreItem *)self setStoreID:v7];
    }

    modificationDate = [(BCStoreItem *)self modificationDate];
    if (!modificationDate)
    {
      goto LABEL_13;
    }

    v12 = modificationDate;
    modificationDate2 = [(BCStoreItem *)self modificationDate];
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
        storeID2 = [(BCStoreItem *)self storeID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate4 = [(BCStoreItem *)self modificationDate];
        [modificationDate4 timeIntervalSinceReferenceDate];
        v25 = v24;
        modificationDate5 = [recordCopy modificationDate];
        [modificationDate5 timeIntervalSinceReferenceDate];
        v27 = @"newer";
        *buf = 138412802;
        v40 = storeID2;
        if (v25 == v28)
        {
          v27 = @"the same";
        }

        v41 = 2112;
        v42 = recordName;
        v43 = 2114;
        v44 = v27;
        _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BCStoreItem %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
    }

    else
    {
LABEL_13:
      mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
      verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

      if (verboseLoggingEnabled)
      {
        v31 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          storeID3 = [(BCStoreItem *)self storeID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          *buf = 138412546;
          v40 = storeID3;
          v41 = 2114;
          v42 = recordName2;
          _os_log_impl(&dword_1E45E0000, v31, OS_LOG_TYPE_DEFAULT, "\\BCStoreItem %@ Resolving conflicts from record %{public}@\\"", buf, 0x16u);
        }
      }

      storeID4 = [(BCStoreItem *)self storeID];
      [(NSManagedObject *)self setDifferentString:storeID4 forKey:@"storeID"];

      modificationDate6 = [recordCopy modificationDate];
      [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    }
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704F34(self, v7);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  storeID = [(BCStoreItem *)self storeID];
  v4 = [v2 stringWithFormat:@"storeID: %@, ", storeID];

  return v4;
}

@end