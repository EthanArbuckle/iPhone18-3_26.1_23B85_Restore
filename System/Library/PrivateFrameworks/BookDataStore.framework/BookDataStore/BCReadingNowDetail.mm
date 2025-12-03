@interface BCReadingNowDetail
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromReadingNowDetail:(id)detail withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCReadingNowDetail

- (id)mutableCopy
{
  v2 = [BCMutableReadingNowDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCReadingNowDetail *)self _configureFromReadingNowDetail:v6 withMergers:mergersCopy];
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

- (void)_configureFromReadingNowDetail:(id)detail withMergers:(id)mergers
{
  detailCopy = detail;
  v14.receiver = self;
  v14.super_class = BCReadingNowDetail;
  mergersCopy = mergers;
  [(BCCloudData *)&v14 configureFromCloudData:detailCopy withMergers:mergersCopy];
  assetID = [detailCopy assetID];
  [(NSManagedObject *)self setDifferentString:assetID forKey:@"assetID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(detailCopy, "isTrackedAsRecent")}];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"isTrackedAsRecent"];

  lastEngagedDate = [detailCopy lastEngagedDate];
  [(NSManagedObject *)self setDifferentDate:lastEngagedDate forKey:@"lastEngagedDate"];

  cloudAssetType = [detailCopy cloudAssetType];
  [(NSManagedObject *)self setDifferentString:cloudAssetType forKey:@"cloudAssetType"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E463AF88;
  v13[3] = &unk_1E875B130;
  v13[4] = self;
  [mergersCopy enumerateKeysAndObjectsUsingBlock:v13];

  v12 = BDSCloudKitLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4708718(self, detailCopy, v12);
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v47 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v40.receiver = self;
  v40.super_class = BCReadingNowDetail;
  [(BCCloudData *)&v40 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = [(BCReadingNowDetail *)self assetID];
    v9 = [assetID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E47087FC(self, v7, v10);
      }

      [(BCReadingNowDetail *)self setAssetID:v7];
    }

    v11 = [recordCopy objectForKey:@"lastEngagedDate"];
    modificationDate = [(BCReadingNowDetail *)self modificationDate];
    if (modificationDate)
    {
    }

    else
    {
      lastEngagedDate = [(BCReadingNowDetail *)self lastEngagedDate];

      if (lastEngagedDate)
      {
        if (!v11)
        {
          goto LABEL_9;
        }

        lastEngagedDate2 = [(BCReadingNowDetail *)self lastEngagedDate];
        v28 = [lastEngagedDate2 compare:v11];

        if (v28 == 1)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    modificationDate2 = [(BCReadingNowDetail *)self modificationDate];
    modificationDate3 = [recordCopy modificationDate];
    v15 = [modificationDate2 compare:modificationDate3];

    if (v15 == 1)
    {
LABEL_9:
      v16 = BDSCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        assetID2 = [(BCReadingNowDetail *)self assetID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate4 = [(BCReadingNowDetail *)self modificationDate];
        [modificationDate4 timeIntervalSinceReferenceDate];
        v22 = v21;
        modificationDate5 = [recordCopy modificationDate];
        [modificationDate5 timeIntervalSinceReferenceDate];
        v24 = @"newer";
        *buf = 138412802;
        v42 = assetID2;
        if (v22 == v25)
        {
          v24 = @"the same";
        }

        v43 = 2112;
        v44 = recordName;
        v45 = 2114;
        v46 = v24;
        _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
LABEL_29:

      goto LABEL_30;
    }

LABEL_19:
    v29 = [recordCopy objectForKey:@"isTrackedAsRecent"];
    [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"isTrackedAsRecent"];
    [(NSManagedObject *)self setDifferentDate:v11 forKey:@"lastEngagedDate"];
    v30 = [recordCopy objectForKey:@"cloudAssetType"];
    if (v30)
    {
      v31 = BDSCloudKitLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1E47088AC(self, recordCopy);
      }

      [(NSManagedObject *)self setDifferentString:v30 forKey:@"cloudAssetType"];
    }

    hasChanges = [(BCReadingNowDetail *)self hasChanges];
    v33 = BDSCloudKitLog();
    v34 = v33;
    if (hasChanges)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        assetID3 = [(BCReadingNowDetail *)self assetID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v38 = [(BCReadingNowDetail *)self debugDescription];
        *buf = 138412802;
        v42 = assetID3;
        v43 = 2112;
        v44 = recordName2;
        v45 = 2112;
        v46 = v38;
        _os_log_impl(&dword_1E45E0000, v34, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving: Adopted properties from record: %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4708980(self, recordCopy);
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
  assetID = [(BCReadingNowDetail *)self assetID];
  if ([(BCReadingNowDetail *)self isTrackedAsRecent])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  lastEngagedDate = [(BCReadingNowDetail *)self lastEngagedDate];
  cloudAssetType = [(BCReadingNowDetail *)self cloudAssetType];
  v8 = [v3 stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType:%@", assetID, v5, lastEngagedDate, cloudAssetType];

  return v8;
}

@end