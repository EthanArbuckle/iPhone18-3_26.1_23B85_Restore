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
  v3 = [BCMutableCollectionDetail alloc];

  return [(BCMutableCollectionDetail *)v3 initWithCloudData:self];
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
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4044();
    }
  }
}

- (void)_configureFromCollectionDetail:(id)detail withMergers:(id)mergers
{
  detailCopy = detail;
  v20.receiver = self;
  v20.super_class = BCCollectionDetail;
  [(BCCloudData *)&v20 configureFromCloudData:detailCopy withMergers:mergers];
  collectionID = [detailCopy collectionID];
  [(BCCollectionDetail *)self setDifferentString:collectionID forKey:@"collectionID"];

  name = [detailCopy name];

  if (name)
  {
    name2 = [detailCopy name];
    [(BCCollectionDetail *)self setDifferentString:name2 forKey:@"name"];
  }

  else
  {
    [(BCCollectionDetail *)self setDifferentString:&stru_10024C800 forKey:@"name"];
  }

  collectionDescription = [detailCopy collectionDescription];
  [(BCCollectionDetail *)self setDifferentString:collectionDescription forKey:@"collectionDescription"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy hidden]);
  [(BCCollectionDetail *)self setDifferentNumber:v11 forKey:@"hidden"];

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailCopy sortOrder]);
  [(BCCollectionDetail *)self setDifferentNumber:v12 forKey:@"sortOrder"];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailCopy sortMode]);
  [(BCCollectionDetail *)self setDifferentNumber:v13 forKey:@"sortMode"];

  v14 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v14 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v16 = sub_10000DB80();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      collectionID2 = [(BCCollectionDetail *)self collectionID];
      v18 = [(BCCollectionDetail *)self debugDescription];
      collectionID3 = [detailCopy collectionID];
      *buf = 138543874;
      v22 = collectionID2;
      v23 = 2112;
      v24 = v18;
      v25 = 2114;
      v26 = collectionID3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "\\BCCollectionDetail configured: %{public}@ %@ from assetDetail:%{public}@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v47.receiver = self;
  v47.super_class = BCCollectionDetail;
  [(BCCloudData *)&v47 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    collectionID = [(BCCollectionDetail *)self collectionID];
    v9 = [collectionID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C4078(self);
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
        v19 = sub_100002660();
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
          v49 = collectionID2;
          v50 = 2114;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v51 = recordName;
          v52 = 2114;
          v53 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BCCollectionDetail %{public}@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_32;
      }
    }

    v46 = [recordCopy objectForKey:@"hidden"];
    [BCCollectionDetail setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v45 = [recordCopy objectForKey:@"sortOrder"];
    [BCCollectionDetail setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v29 = [recordCopy objectForKey:@"sortMode"];
    [(BCCollectionDetail *)self setDifferentNumber:v29 forKey:@"sortMode"];
    v30 = [recordCopy objectForKey:@"name"];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_10024C800;
    }

    [(BCCollectionDetail *)self setDifferentString:v32 forKey:@"name"];
    name = [(BCCollectionDetail *)self name];

    if (!name)
    {
      [(BCCollectionDetail *)self setName:&stru_10024C800];
    }

    v34 = [recordCopy objectForKey:@"collectionDescription"];
    if (v34)
    {
      [(BCCollectionDetail *)self setDifferentString:v34 forKey:@"collectionDescription"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(BCCollectionDetail *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCCollectionDetail *)self hasChanges];
    v37 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v37 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v39 = sub_10000DB80();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          collectionID3 = [(BCCollectionDetail *)self collectionID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v42 = [(BCCollectionDetail *)self debugDescription];
          *buf = 138543874;
          v49 = collectionID3;
          v50 = 2112;
          v51 = recordName2;
          v52 = 2112;
          v53 = v42;
          v43 = "\\BCCollectionDetail %{public}@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v43, buf, 0x20u);

          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v39 = sub_10000DB80();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        collectionID3 = [(BCCollectionDetail *)self collectionID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v42 = [(BCCollectionDetail *)self debugDescription];
        *buf = 138543874;
        v49 = collectionID3;
        v50 = 2112;
        v51 = recordName2;
        v52 = 2112;
        v53 = v42;
        v43 = "\\BCCollectionDetail %{public}@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_29;
      }

LABEL_30:
    }

    goto LABEL_32;
  }

  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C4120(self);
  }

LABEL_32:
}

- (NSString)debugDescription
{
  collectionID = [(BCCollectionDetail *)self collectionID];
  name = [(BCCollectionDetail *)self name];
  collectionDescription = [(BCCollectionDetail *)self collectionDescription];
  if ([(BCCollectionDetail *)self hidden])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode %d", collectionID, name, collectionDescription, v6, [(BCCollectionDetail *)self sortOrder], [(BCCollectionDetail *)self sortMode]];

  return v7;
}

@end