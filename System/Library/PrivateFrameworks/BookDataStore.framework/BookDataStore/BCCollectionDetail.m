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
  v2 = [BCMutableCollectionDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
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
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47041C4();
    }
  }
}

- (void)_configureFromCollectionDetail:(id)a3 withMergers:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = BCCollectionDetail;
  [(BCCloudData *)&v21 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 collectionID];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"collectionID"];

  v8 = [v6 name];

  if (v8)
  {
    v9 = [v6 name];
    [(NSManagedObject *)self setDifferentString:v9 forKey:@"name"];
  }

  else
  {
    [(NSManagedObject *)self setDifferentString:&stru_1F5E67610 forKey:@"name"];
  }

  v10 = [v6 collectionDescription];
  [(NSManagedObject *)self setDifferentString:v10 forKey:@"collectionDescription"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "hidden")}];
  [(NSManagedObject *)self setDifferentNumber:v11 forKey:@"hidden"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "sortOrder")}];
  [(NSManagedObject *)self setDifferentNumber:v12 forKey:@"sortOrder"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "sortMode")}];
  [(NSManagedObject *)self setDifferentNumber:v13 forKey:@"sortMode"];

  v14 = [MEMORY[0x1E698F550] shared];
  v15 = [v14 verboseLoggingEnabled];

  if (v15)
  {
    v16 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(BCCollectionDetail *)self collectionID];
      v18 = [(BCCollectionDetail *)self debugDescription];
      v19 = [v6 collectionID];
      *buf = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "\\BCCollectionDetail configured: %{public}@ %@ from assetDetail:%{public}@\\"", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48.receiver = self;
  v48.super_class = BCCollectionDetail;
  [(BCCloudData *)&v48 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCCollectionDetail *)self collectionID];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E47041F8(self);
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
        v19 = BDSCloudKitLog();
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
          v50 = v20;
          v51 = 2114;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v52 = v22;
          v53 = 2114;
          v54 = v27;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BCCollectionDetail %{public}@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_32;
      }
    }

    v47 = [v6 objectForKey:@"hidden"];
    [NSManagedObject setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v46 = [v6 objectForKey:@"sortOrder"];
    [NSManagedObject setDifferentNumber:"setDifferentNumber:forKey:" forKey:?];
    v29 = [v6 objectForKey:@"sortMode"];
    [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"sortMode"];
    v30 = [v6 objectForKey:@"name"];
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
    v33 = [(BCCollectionDetail *)self name];

    if (!v33)
    {
      [(BCCollectionDetail *)self setName:&stru_1F5E67610];
    }

    v34 = [v6 objectForKey:@"collectionDescription"];
    if (v34)
    {
      [(NSManagedObject *)self setDifferentString:v34 forKey:@"collectionDescription"];
    }

    v35 = [v6 modificationDate];
    [(NSManagedObject *)self setDifferentDate:v35 forKey:@"modificationDate"];
    v36 = [(BCCollectionDetail *)self hasChanges];
    v37 = [MEMORY[0x1E698F550] shared];
    v38 = [v37 verboseLoggingEnabled];

    if (v36)
    {
      if (v38)
      {
        v39 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [(BCCollectionDetail *)self collectionID];
          v45 = [v6 recordID];
          v41 = [v45 recordName];
          v42 = [(BCCollectionDetail *)self debugDescription];
          *buf = 138543874;
          v50 = v40;
          v51 = 2112;
          v52 = v41;
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

    else if (v38)
    {
      v39 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(BCCollectionDetail *)self collectionID];
        v45 = [v6 recordID];
        v41 = [v45 recordName];
        v42 = [(BCCollectionDetail *)self debugDescription];
        *buf = 138543874;
        v50 = v40;
        v51 = 2112;
        v52 = v41;
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
  v4 = [(BCCollectionDetail *)self collectionID];
  v5 = [(BCCollectionDetail *)self name];
  v6 = [(BCCollectionDetail *)self collectionDescription];
  if ([(BCCollectionDetail *)self hidden])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"collectionID: %@, Name: %@, Description: %@ hidden:%@ sortOrder:%d sortMode %d", v4, v5, v6, v7, -[BCCollectionDetail sortOrder](self, "sortOrder"), -[BCCollectionDetail sortMode](self, "sortMode")];

  return v8;
}

@end