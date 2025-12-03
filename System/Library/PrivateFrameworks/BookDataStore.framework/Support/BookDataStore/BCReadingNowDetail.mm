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
  v3 = [BCMutableReadingNowDetail alloc];

  return [(BCMutableReadingNowDetail *)v3 initWithCloudData:self];
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
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C22A4();
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
  [(BCReadingNowDetail *)self setDifferentString:assetID forKey:@"assetID"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy isTrackedAsRecent]);
  [(BCReadingNowDetail *)self setDifferentNumber:v9 forKey:@"isTrackedAsRecent"];

  lastEngagedDate = [detailCopy lastEngagedDate];
  [(BCReadingNowDetail *)self setDifferentDate:lastEngagedDate forKey:@"lastEngagedDate"];

  cloudAssetType = [detailCopy cloudAssetType];
  [(BCReadingNowDetail *)self setDifferentString:cloudAssetType forKey:@"cloudAssetType"];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000616F0;
  v13[3] = &unk_100241920;
  v13[4] = self;
  [mergersCopy enumerateKeysAndObjectsUsingBlock:v13];

  v12 = sub_100002660();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C22D8(self, detailCopy, v12);
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v39.receiver = self;
  v39.super_class = BCReadingNowDetail;
  [(BCCloudData *)&v39 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = [(BCReadingNowDetail *)self assetID];
    v9 = [assetID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C23BC(self, v7, v10);
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
      v16 = sub_100002660();
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
        v41 = assetID2;
        if (v22 == v25)
        {
          v24 = @"the same";
        }

        v42 = 2112;
        v43 = recordName;
        v44 = 2114;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
LABEL_29:

      goto LABEL_30;
    }

LABEL_19:
    v29 = [recordCopy objectForKey:@"isTrackedAsRecent"];
    [(BCReadingNowDetail *)self setDifferentNumber:v29 forKey:@"isTrackedAsRecent"];
    [(BCReadingNowDetail *)self setDifferentDate:v11 forKey:@"lastEngagedDate"];
    v30 = [recordCopy objectForKey:@"cloudAssetType"];
    if (v30)
    {
      v31 = sub_100002660();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1001C246C(self, recordCopy);
      }

      [(BCReadingNowDetail *)self setDifferentString:v30 forKey:@"cloudAssetType"];
    }

    hasChanges = [(BCReadingNowDetail *)self hasChanges];
    v33 = sub_100002660();
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
        v41 = assetID3;
        v42 = 2112;
        v43 = recordName2;
        v44 = 2112;
        v45 = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving: Adopted properties from record: %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C2540(self, recordCopy);
    }

    goto LABEL_29;
  }

  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C2614(self, v7);
  }

LABEL_30:
}

- (NSString)debugDescription
{
  assetID = [(BCReadingNowDetail *)self assetID];
  if ([(BCReadingNowDetail *)self isTrackedAsRecent])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  lastEngagedDate = [(BCReadingNowDetail *)self lastEngagedDate];
  cloudAssetType = [(BCReadingNowDetail *)self cloudAssetType];
  v7 = [NSString stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType:%@", assetID, v4, lastEngagedDate, cloudAssetType];

  return v7;
}

@end