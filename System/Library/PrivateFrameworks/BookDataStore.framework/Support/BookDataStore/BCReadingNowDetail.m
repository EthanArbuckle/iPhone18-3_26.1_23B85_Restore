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
  v3 = [BCMutableReadingNowDetail alloc];

  return [(BCMutableReadingNowDetail *)v3 initWithCloudData:self];
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
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C22A4();
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
  [(BCReadingNowDetail *)self setDifferentString:v8 forKey:@"assetID"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isTrackedAsRecent]);
  [(BCReadingNowDetail *)self setDifferentNumber:v9 forKey:@"isTrackedAsRecent"];

  v10 = [v6 lastEngagedDate];
  [(BCReadingNowDetail *)self setDifferentDate:v10 forKey:@"lastEngagedDate"];

  v11 = [v6 cloudAssetType];
  [(BCReadingNowDetail *)self setDifferentString:v11 forKey:@"cloudAssetType"];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000616F0;
  v13[3] = &unk_100241920;
  v13[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v12 = sub_100002660();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C22D8(self, v6, v12);
  }
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v6 = a3;
  v39.receiver = self;
  v39.super_class = BCReadingNowDetail;
  [(BCCloudData *)&v39 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCReadingNowDetail *)self assetID];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C23BC(self, v7, v10);
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
      v16 = sub_100002660();
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
        v41 = v17;
        if (v22 == v25)
        {
          v24 = @"the same";
        }

        v42 = 2112;
        v43 = v19;
        v44 = 2114;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
LABEL_29:

      goto LABEL_30;
    }

LABEL_19:
    v29 = [v6 objectForKey:@"isTrackedAsRecent"];
    [(BCReadingNowDetail *)self setDifferentNumber:v29 forKey:@"isTrackedAsRecent"];
    [(BCReadingNowDetail *)self setDifferentDate:v11 forKey:@"lastEngagedDate"];
    v30 = [v6 objectForKey:@"cloudAssetType"];
    if (v30)
    {
      v31 = sub_100002660();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_1001C246C(self, v6);
      }

      [(BCReadingNowDetail *)self setDifferentString:v30 forKey:@"cloudAssetType"];
    }

    v32 = [(BCReadingNowDetail *)self hasChanges];
    v33 = sub_100002660();
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
        v41 = v35;
        v42 = 2112;
        v43 = v37;
        v44 = 2112;
        v45 = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "BCReadingNowDetail %@ Resolving: Adopted properties from record: %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C2540(self, v6);
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
  v3 = [(BCReadingNowDetail *)self assetID];
  if ([(BCReadingNowDetail *)self isTrackedAsRecent])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(BCReadingNowDetail *)self lastEngagedDate];
  v6 = [(BCReadingNowDetail *)self cloudAssetType];
  v7 = [NSString stringWithFormat:@"assetID: %@, isTrackedAsRecent: %@, lastEngagedDate: %@, cloudAssetType:%@", v3, v4, v5, v6];

  return v7;
}

@end