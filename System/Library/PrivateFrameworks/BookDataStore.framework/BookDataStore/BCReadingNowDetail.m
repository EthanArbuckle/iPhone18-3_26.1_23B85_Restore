@interface BCReadingNowDetail
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromReadingNowDetail:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCReadingNowDetail

- (id)mutableCopy
{
  v2 = [BCMutableReadingNowDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCReadingNowDetail *)self _configureFromReadingNowDetail:v6 withMergers:v5];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47086E4();
    }
  }
}

- (void)_configureFromReadingNowDetail:(id)a3 withMergers:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = BCReadingNowDetail;
  v7 = a4;
  [(BCCloudData *)&v14 configureFromCloudData:v6 withMergers:v7];
  v8 = [v6 assetID];
  [(NSManagedObject *)self setDifferentString:v8 forKey:@"assetID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isTrackedAsRecent")}];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"isTrackedAsRecent"];

  v10 = [v6 lastEngagedDate];
  [(NSManagedObject *)self setDifferentDate:v10 forKey:@"lastEngagedDate"];

  v11 = [v6 cloudAssetType];
  [(NSManagedObject *)self setDifferentString:v11 forKey:@"cloudAssetType"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E463AF88;
  v13[3] = &unk_1E875B130;
  v13[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v12 = BDSCloudKitLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4708718(self, v6, v12);
  }
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v40.receiver = self;
  v40.super_class = BCReadingNowDetail;
  [(BCCloudData *)&v40 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCReadingNowDetail *)self assetID];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E47087FC(self, v7, v10);
      }

      [(BCReadingNowDetail *)self setAssetID:v7];
    }

    v11 = [v6 objectForKey:@"lastEngagedDate"];
    v12 = [(BCReadingNowDetail *)self modificationDate];
    if (v12)
    {
    }

    else
    {
      v26 = [(BCReadingNowDetail *)self lastEngagedDate];

      if (v26)
      {
        if (!v11)
        {
          goto LABEL_9;
        }

        v27 = [(BCReadingNowDetail *)self lastEngagedDate];
        v28 = [v27 compare:v11];

        if (v28 == 1)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    v13 = [(BCReadingNowDetail *)self modificationDate];
    v14 = [v6 modificationDate];
    v15 = [v13 compare:v14];

    if (v15 == 1)
    {
LABEL_9:
      v16 = BDSCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(BCReadingNowDetail *)self assetID];
        v18 = [v6 recordID];
        v19 = [v18 recordName];
        v20 = [(BCReadingNowDetail *)self modificationDate];
        [v20 timeIntervalSinceReferenceDate];
        v22 = v21;
        v23 = [v6 modificationDate];
        [v23 timeIntervalSinceReferenceDate];
        v24 = @"newer";
        *buf = 138412802;
        v42 = v17;
        if (v22 == v25)
        {
          v24 = @"the same";
        }

        v43 = 2112;
        v44 = v19;
        v45 = 2114;
        v46 = v24;
        _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
LABEL_29:

      goto LABEL_30;
    }

LABEL_19:
    v29 = [v6 objectForKey:@"isTrackedAsRecent"];
    [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"isTrackedAsRecent"];
    [(NSManagedObject *)self setDifferentDate:v11 forKey:@"lastEngagedDate"];
    v30 = [v6 objectForKey:@"cloudAssetType"];
    if (v30)
    {
      v31 = BDSCloudKitLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1E47088AC(self, v6);
      }

      [(NSManagedObject *)self setDifferentString:v30 forKey:@"cloudAssetType"];
    }

    v32 = [(BCReadingNowDetail *)self hasChanges];
    v33 = BDSCloudKitLog();
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v35 = [(BCReadingNowDetail *)self assetID];
        v36 = [v6 recordID];
        v37 = [v36 recordName];
        v38 = [(BCReadingNowDetail *)self debugDescription];
        *buf = 138412802;
        v42 = v35;
        v43 = 2112;
        v44 = v37;
        v45 = 2112;
        v46 = v38;
        _os_log_impl(&dword_1E45E0000, v34, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving: Adopted properties from record: %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4708980(self, v6);
    }

    goto LABEL_29;
  }

  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E4708A54(self, v7);
  }

LABEL_30:

  v39 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCReadingNowDetail *)self assetID];
  if ([(BCReadingNowDetail *)self isTrackedAsRecent])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(BCReadingNowDetail *)self lastEngagedDate];
  v7 = [(BCReadingNowDetail *)self cloudAssetType];
  v8 = [v3 stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType:%@", v4, v5, v6, v7];

  return v8;
}

@end