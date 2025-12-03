@interface BCCollectionMember
+ (id)assetIDFromCollectionMemberID:(id)d;
+ (id)collectionIDFromCollectionMemberID:(id)d;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromCollectionMember:(id)member withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCCollectionMember

- (id)mutableCopy
{
  v3 = [BCMutableCollectionMember alloc];

  return [(BCMutableCollectionMember *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCCollectionMember *)self _configureFromCollectionMember:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C42DC();
    }
  }
}

- (void)_configureFromCollectionMember:(id)member withMergers:(id)mergers
{
  memberCopy = member;
  v15.receiver = self;
  v15.super_class = BCCollectionMember;
  [(BCCloudData *)&v15 configureFromCloudData:memberCopy withMergers:mergers];
  collectionMemberID = [memberCopy collectionMemberID];
  [(BCCollectionMember *)self setDifferentString:collectionMemberID forKey:@"collectionMemberID"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [memberCopy sortOrder]);
  [(BCCollectionMember *)self setDifferentNumber:v8 forKey:@"sortOrder"];

  v9 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v9 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v11 = sub_10000DB80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      collectionMemberID2 = [(BCCollectionMember *)self collectionMemberID];
      v13 = [(BCCollectionMember *)self debugDescription];
      collectionMemberID3 = [memberCopy collectionMemberID];
      *buf = 138412802;
      v17 = collectionMemberID2;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = collectionMemberID3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\\BCCollectionMember configured: %@ %@ from collectionMember:%@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  resolversCopy = resolvers;
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    if (v8)
    {
      collectionMemberID = [(BCCollectionMember *)self collectionMemberID];
      v10 = [collectionMemberID isEqualToString:v8];

      if ((v10 & 1) == 0)
      {
        v11 = sub_100002660();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001C4310(self, v8, v11);
        }

        [(BCCollectionMember *)self setCollectionMemberID:v8];
      }
    }

    else
    {
      v12 = sub_100002660();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001C43C0();
      }
    }

    v42.receiver = self;
    v42.super_class = BCCollectionMember;
    [(BCCloudData *)&v42 resolveConflictsFromRecord:recordCopy withResolvers:resolversCopy];
    modificationDate = [(BCCollectionMember *)self modificationDate];
    if (modificationDate)
    {
      v14 = modificationDate;
      modificationDate2 = [(BCCollectionMember *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v17 = v16;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v20 = v19;

      if (v17 > v20)
      {
        v21 = sub_100002660();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          collectionMemberID2 = [(BCCollectionMember *)self collectionMemberID];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCCollectionMember *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v27 = v26;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v29 = @"newer";
          *buf = 138412802;
          v44 = collectionMemberID2;
          v45 = 2114;
          if (v27 == v30)
          {
            v29 = @"the same";
          }

          v46 = recordName;
          v47 = 2114;
          v48 = v29;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "BCCollectionMember %@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v31 = [recordCopy objectForKey:@"sortOrder"];
    [(BCCollectionMember *)self setDifferentNumber:v31 forKey:@"sortOrder"];
    modificationDate6 = [recordCopy modificationDate];
    [(BCCollectionMember *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCCollectionMember *)self hasChanges];
    v34 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v34 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v36 = sub_10000DB80();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          collectionMemberID3 = [(BCCollectionMember *)self collectionMemberID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v40 = [(BCCollectionMember *)self debugDescription];
          *buf = 138412802;
          v44 = collectionMemberID3;
          v45 = 2112;
          v46 = recordName2;
          v47 = 2112;
          v48 = v40;
          v41 = "\\BCCollectionMember %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v41, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v36 = sub_10000DB80();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        collectionMemberID3 = [(BCCollectionMember *)self collectionMemberID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v40 = [(BCCollectionMember *)self debugDescription];
        *buf = 138412802;
        v44 = collectionMemberID3;
        v45 = 2112;
        v46 = recordName2;
        v47 = 2112;
        v48 = v40;
        v41 = "\\BCCollectionMember %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_24;
      }

LABEL_25:
    }

LABEL_27:
  }
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  collectionMemberID = [(BCCollectionMember *)self collectionMemberID];
  sortOrder = [(BCCollectionMember *)self sortOrder];
  modificationDate = [(BCCollectionMember *)self modificationDate];
  v8 = [NSString stringWithFormat:@"<%@: %p> collectionMemberID: %@, sortOrder:%d modificationDate:%@", v4, self, collectionMemberID, sortOrder, modificationDate];

  return v8;
}

+ (id)assetIDFromCollectionMemberID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [dCopy substringFromIndex:&v4[v5]];
  }

  return v6;
}

+ (id)collectionIDFromCollectionMemberID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [dCopy substringToIndex:v4];
  }

  return v5;
}

@end