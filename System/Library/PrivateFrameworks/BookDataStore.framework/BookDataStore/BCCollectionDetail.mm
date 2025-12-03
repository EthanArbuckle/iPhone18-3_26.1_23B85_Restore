@interface BCCollectionDetail
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromCollectionDetail:(id)detail withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCCollectionDetail

- (id)mutableCopy
{
  v2 = [BCMutableCollectionDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCCollectionDetail *)self _configureFromCollectionDetail:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47041C4();
    }
  }
}

- (void)_configureFromCollectionDetail:(id)detail withMergers:(id)mergers
{
  v28 = *MEMORY[0x1E69E9840];
  detailCopy = detail;
  v21.receiver = self;
  v21.super_class = BCCollectionDetail;
  [(BCCloudData *)&v21 configureFromCloudData:detailCopy withMergers:mergers];
  collectionID = [detailCopy collectionID];
  [(NSManagedObject *)self setDifferentString:collectionID forKey:@"collectionID"];

  name = [detailCopy name];

  if (name)
  {
    name2 = [detailCopy name];
    [(NSManagedObject *)self setDifferentString:name2 forKey:@"name"];
  }

  else
  {
    [(NSManagedObject *)self setDifferentString:&stru_1F5E67610 forKey:@"name"];
  }

  collectionDescription = [detailCopy collectionDescription];
  [(NSManagedObject *)self setDifferentString:collectionDescription forKey:@"collectionDescription"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(detailCopy, "hidden")}];
  [(NSManagedObject *)self setDifferentNumber:v11 forKey:@"hidden"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(detailCopy, "sortOrder")}];
  [(NSManagedObject *)self setDifferentNumber:v12 forKey:@"sortOrder"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(detailCopy, "sortMode")}];
  [(NSManagedObject *)self setDifferentNumber:v13 forKey:@"sortMode"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v16 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      collectionID2 = [(BCCollectionDetail *)self collectionID];
      v18 = [(BCCollectionDetail *)self debugDescription];
      collectionID3 = [detailCopy collectionID];
      *buf = 138543874;
      v23 = collectionID2;
      v24 = 2112;
      v25 = v18;
      v26 = 2114;
      v27 = collectionID3;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "\\BCCollectionDetail configured: %{public}@ %@ from assetDetail:%{public}@\\"", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v55 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v48.receiver = self;
  v48.super_class = BCCollectionDetail;
  [(BCCloudData *)&v48 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    collectionID = [(BCCollectionDetail *)self collectionID];
    v9 = [collectionID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E47041F8(self);
      }

      [(BCCollectionDetail *)self setCollectionID:v7];
    }

    modificationDate = [(BCCollectionDetail *)self modificationDate];
    if (modificationDate)
    {
      v12 = modificationDate;
      modificationDate2 = [(BCCollectionDetail *)self modificationDate];
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
          collectionID2 = [(BCCollectionDetail *)self collectionID];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCCollectionDetail *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v25 = v24;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138543874;
          v50 = collectionID2;
          v51 = 2114;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v52 = recordName;
          v53 = 2114;
          v54 = v27;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BCCollectionDetail %{public}@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_32;
      }
    }

    v47 = [recordCopy objectForKey:@"hidden"];
    [NSManagedObject setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v46 = [recordCopy objectForKey:@"sortOrder"];
    [NSManagedObject setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v29 = [recordCopy objectForKey:@"sortMode"];
    [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"sortMode"];
    v30 = [recordCopy objectForKey:@"name"];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_1F5E67610;
    }

    [(NSManagedObject *)self setDifferentString:v32 forKey:@"name"];
    name = [(BCCollectionDetail *)self name];

    if (!name)
    {
      [(BCCollectionDetail *)self setName:&stru_1F5E67610];
    }

    v34 = [recordCopy objectForKey:@"collectionDescription"];
    if (v34)
    {
      [(NSManagedObject *)self setDifferentString:v34 forKey:@"collectionDescription"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCCollectionDetail *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v39 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          collectionID3 = [(BCCollectionDetail *)self collectionID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v42 = [(BCCollectionDetail *)self debugDescription];
          *buf = 138543874;
          v50 = collectionID3;
          v51 = 2112;
          v52 = recordName2;
          v53 = 2112;
          v54 = v42;
          v43 = "\\BCCollectionDetail %{public}@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_29:
          _os_log_impl(&dword_1E45E0000, v39, OS_LOG_TYPE_DEFAULT, v43, buf, 0x20u);

          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v39 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        collectionID3 = [(BCCollectionDetail *)self collectionID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v42 = [(BCCollectionDetail *)self debugDescription];
        *buf = 138543874;
        v50 = collectionID3;
        v51 = 2112;
        v52 = recordName2;
        v53 = 2112;
        v54 = v42;
        v43 = "\\BCCollectionDetail %{public}@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_29;
      }

LABEL_30:
    }

    goto LABEL_32;
  }

  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E47042A0(self);
  }

LABEL_32:

  v44 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  collectionID = [(BCCollectionDetail *)self collectionID];
  name = [(BCCollectionDetail *)self name];
  collectionDescription = [(BCCollectionDetail *)self collectionDescription];
  if ([(BCCollectionDetail *)self hidden])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode %d", collectionID, name, collectionDescription, v7, -[BCCollectionDetail sortOrder](self, "sortOrder"), -[BCCollectionDetail sortMode](self, "sortMode")];

  return v8;
}

@end