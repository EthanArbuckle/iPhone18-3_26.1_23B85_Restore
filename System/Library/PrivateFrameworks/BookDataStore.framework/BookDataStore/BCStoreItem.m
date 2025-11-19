@interface BCStoreItem
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromStoreItem:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCStoreItem

- (id)mutableCopy
{
  v2 = [BCMutableStoreItem alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCStoreItem *)self _configureFromStoreItem:v6 withMergers:v5];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704E50();
    }
  }
}

- (void)_configureFromStoreItem:(id)a3 withMergers:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14.receiver = self;
  v14.super_class = BCStoreItem;
  [(BCCloudData *)&v14 configureFromCloudData:v6 withMergers:a4];
  v7 = [MEMORY[0x1E698F550] shared];
  v8 = [v7 verboseLoggingEnabled];

  if (v8)
  {
    v9 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(BCStoreItem *)self storeID];
      v11 = [v6 storeID];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "\\Configuring storeItem:%@ from storeItem:%@\\"", buf, 0x16u);
    }
  }

  v12 = [v6 storeID];
  [(NSManagedObject *)self setDifferentString:v12 forKey:@"storeID"];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v38.receiver = self;
  v38.super_class = BCStoreItem;
  [(BCCloudData *)&v38 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCStoreItem *)self storeID];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704E84(self, v7, v10);
      }

      [(BCStoreItem *)self setStoreID:v7];
    }

    v11 = [(BCStoreItem *)self modificationDate];
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    v13 = [(BCStoreItem *)self modificationDate];
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
        v20 = [(BCStoreItem *)self storeID];
        v21 = [v6 recordID];
        v22 = [v21 recordName];
        v23 = [(BCStoreItem *)self modificationDate];
        [v23 timeIntervalSinceReferenceDate];
        v25 = v24;
        v26 = [v6 modificationDate];
        [v26 timeIntervalSinceReferenceDate];
        v27 = @"newer";
        *buf = 138412802;
        v40 = v20;
        if (v25 == v28)
        {
          v27 = @"the same";
        }

        v41 = 2112;
        v42 = v22;
        v43 = 2114;
        v44 = v27;
        _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "BCStoreItem %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
      }

      [(BCCloudData *)self incrementEditGeneration];
    }

    else
    {
LABEL_13:
      v29 = [MEMORY[0x1E698F550] shared];
      v30 = [v29 verboseLoggingEnabled];

      if (v30)
      {
        v31 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(BCStoreItem *)self storeID];
          v33 = [v6 recordID];
          v34 = [v33 recordName];
          *buf = 138412546;
          v40 = v32;
          v41 = 2114;
          v42 = v34;
          _os_log_impl(&dword_1E45E0000, v31, OS_LOG_TYPE_DEFAULT, "\\BCStoreItem %@ Resolving conflicts from record %{public}@\\"", buf, 0x16u);
        }
      }

      v35 = [(BCStoreItem *)self storeID];
      [(NSManagedObject *)self setDifferentString:v35 forKey:@"storeID"];

      v36 = [v6 modificationDate];
      [(NSManagedObject *)self setDifferentDate:v36 forKey:@"modificationDate"];
    }
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704F34(self, v7);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BCStoreItem *)self storeID];
  v4 = [v2 stringWithFormat:@"storeID: %@, ", v3];

  return v4;
}

@end