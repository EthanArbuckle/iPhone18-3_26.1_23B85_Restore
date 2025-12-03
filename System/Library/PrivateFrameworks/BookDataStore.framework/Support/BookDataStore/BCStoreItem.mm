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
  v3 = [BCMutableStoreItem alloc];

  return [(BCMutableStoreItem *)v3 initWithCloudData:self];
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
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C327C();
    }
  }
}

- (void)_configureFromStoreItem:(id)item withMergers:(id)mergers
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = BCStoreItem;
  [(BCCloudData *)&v13 configureFromCloudData:itemCopy withMergers:mergers];
  v7 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v7 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v9 = sub_10000DB80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      storeID = [(BCStoreItem *)self storeID];
      storeID2 = [itemCopy storeID];
      *buf = 138412546;
      v15 = storeID;
      v16 = 2112;
      v17 = storeID2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\Configuring storeItem:%@ from storeItem:%@\\"", buf, 0x16u);
    }
  }

  storeID3 = [itemCopy storeID];
  [(BCStoreItem *)self setDifferentString:storeID3 forKey:@"storeID"];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v37.receiver = self;
  v37.super_class = BCStoreItem;
  [(BCCloudData *)&v37 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    storeID = [(BCStoreItem *)self storeID];
    v9 = [storeID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C32B0(self, v7, v10);
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
      v19 = sub_100002660();
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
        v39 = storeID2;
        if (v25 == v28)
        {
          v27 = @"the same";
        }

        v40 = 2112;
        v41 = recordName;
        v42 = 2114;
        v43 = v27;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BCStoreItem %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
    }

    else
    {
LABEL_13:
      v29 = +[BULogUtilities shared];
      verboseLoggingEnabled = [v29 verboseLoggingEnabled];

      if (verboseLoggingEnabled)
      {
        v31 = sub_10000DB80();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          storeID3 = [(BCStoreItem *)self storeID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          *buf = 138412546;
          v39 = storeID3;
          v40 = 2114;
          v41 = recordName2;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "\\BCStoreItem %@ Resolving conflicts from record %{public}@\\"", buf, 0x16u);
        }
      }

      storeID4 = [(BCStoreItem *)self storeID];
      [(BCStoreItem *)self setDifferentString:storeID4 forKey:@"storeID"];

      modificationDate6 = [recordCopy modificationDate];
      [(BCStoreItem *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    }
  }

  else
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3360(self, v7);
    }
  }
}

- (NSString)debugDescription
{
  storeID = [(BCStoreItem *)self storeID];
  v3 = [NSString stringWithFormat:@"storeID: %@, ", storeID];

  return v3;
}

@end