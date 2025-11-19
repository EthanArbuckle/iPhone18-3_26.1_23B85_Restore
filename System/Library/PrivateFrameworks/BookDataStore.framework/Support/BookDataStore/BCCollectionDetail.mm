@interface BCCollectionDetail
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromCollectionDetail:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCCollectionDetail

- (id)mutableCopy
{
  v3 = [BCMutableCollectionDetail alloc];

  return [(BCMutableCollectionDetail *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCCollectionDetail *)self _configureFromCollectionDetail:v6 withMergers:v5];
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

- (void)_configureFromCollectionDetail:(id)a3 withMergers:(id)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = BCCollectionDetail;
  [(BCCloudData *)&v20 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 collectionID];
  [(BCCollectionDetail *)self setDifferentString:v7 forKey:@"collectionID"];

  v8 = [v6 name];

  if (v8)
  {
    v9 = [v6 name];
    [(BCCollectionDetail *)self setDifferentString:v9 forKey:@"name"];
  }

  else
  {
    [(BCCollectionDetail *)self setDifferentString:&stru_10024C800 forKey:@"name"];
  }

  v10 = [v6 collectionDescription];
  [(BCCollectionDetail *)self setDifferentString:v10 forKey:@"collectionDescription"];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 hidden]);
  [(BCCollectionDetail *)self setDifferentNumber:v11 forKey:@"hidden"];

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sortOrder]);
  [(BCCollectionDetail *)self setDifferentNumber:v12 forKey:@"sortOrder"];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sortMode]);
  [(BCCollectionDetail *)self setDifferentNumber:v13 forKey:@"sortMode"];

  v14 = +[BULogUtilities shared];
  v15 = [v14 verboseLoggingEnabled];

  if (v15)
  {
    v16 = sub_10000DB80();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(BCCollectionDetail *)self collectionID];
      v18 = [(BCCollectionDetail *)self debugDescription];
      v19 = [v6 collectionID];
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "\\BCCollectionDetail configured: %{public}@ %@ from assetDetail:%{public}@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v6 = a3;
  v47.receiver = self;
  v47.super_class = BCCollectionDetail;
  [(BCCloudData *)&v47 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCCollectionDetail *)self collectionID];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C4078(self);
      }

      [(BCCollectionDetail *)self setCollectionID:v7];
    }

    v11 = [(BCCollectionDetail *)self modificationDate];
    if (v11)
    {
      v12 = v11;
      v13 = [(BCCollectionDetail *)self modificationDate];
      [v13 timeIntervalSinceReferenceDate];
      v15 = v14;
      v16 = [v6 modificationDate];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17;

      if (v15 > v18)
      {
        v19 = sub_100002660();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(BCCollectionDetail *)self collectionID];
          v21 = [v6 recordID];
          v22 = [v21 recordName];
          v23 = [(BCCollectionDetail *)self modificationDate];
          [v23 timeIntervalSinceReferenceDate];
          v25 = v24;
          v26 = [v6 modificationDate];
          [v26 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138543874;
          v49 = v20;
          v50 = 2114;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v51 = v22;
          v52 = 2114;
          v53 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BCCollectionDetail %{public}@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_32;
      }
    }

    v46 = [v6 objectForKey:@"hidden"];
    [BCCollectionDetail setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v45 = [v6 objectForKey:@"sortOrder"];
    [BCCollectionDetail setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v29 = [v6 objectForKey:@"sortMode"];
    [(BCCollectionDetail *)self setDifferentNumber:v29 forKey:@"sortMode"];
    v30 = [v6 objectForKey:@"name"];
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
    v33 = [(BCCollectionDetail *)self name];

    if (!v33)
    {
      [(BCCollectionDetail *)self setName:&stru_10024C800];
    }

    v34 = [v6 objectForKey:@"collectionDescription"];
    if (v34)
    {
      [(BCCollectionDetail *)self setDifferentString:v34 forKey:@"collectionDescription"];
    }

    v35 = [v6 modificationDate];
    [(BCCollectionDetail *)self setDifferentDate:v35 forKey:@"modificationDate"];
    v36 = [(BCCollectionDetail *)self hasChanges];
    v37 = +[BULogUtilities shared];
    v38 = [v37 verboseLoggingEnabled];

    if (v36)
    {
      if (v38)
      {
        v39 = sub_10000DB80();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [(BCCollectionDetail *)self collectionID];
          v44 = [v6 recordID];
          v41 = [v44 recordName];
          v42 = [(BCCollectionDetail *)self debugDescription];
          *buf = 138543874;
          v49 = v40;
          v50 = 2112;
          v51 = v41;
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

    else if (v38)
    {
      v39 = sub_10000DB80();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(BCCollectionDetail *)self collectionID];
        v44 = [v6 recordID];
        v41 = [v44 recordName];
        v42 = [(BCCollectionDetail *)self debugDescription];
        *buf = 138543874;
        v49 = v40;
        v50 = 2112;
        v51 = v41;
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
  v3 = [(BCCollectionDetail *)self collectionID];
  v4 = [(BCCollectionDetail *)self name];
  v5 = [(BCCollectionDetail *)self collectionDescription];
  if ([(BCCollectionDetail *)self hidden])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode %d", v3, v4, v5, v6, [(BCCollectionDetail *)self sortOrder], [(BCCollectionDetail *)self sortMode]];

  return v7;
}

@end