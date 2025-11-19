@interface BCCollectionMember
+ (id)assetIDFromCollectionMemberID:(id)a3;
+ (id)collectionIDFromCollectionMemberID:(id)a3;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromCollectionMember:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCCollectionMember

- (id)mutableCopy
{
  v2 = [BCMutableCollectionMember alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCCollectionMember *)self _configureFromCollectionMember:v6 withMergers:v5];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708BAC();
    }
  }
}

- (void)_configureFromCollectionMember:(id)a3 withMergers:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = BCCollectionMember;
  [(BCCloudData *)&v16 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 collectionMemberID];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"collectionMemberID"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "sortOrder")}];
  [(NSManagedObject *)self setDifferentNumber:v8 forKey:@"sortOrder"];

  v9 = [MEMORY[0x1E698F550] shared];
  v10 = [v9 verboseLoggingEnabled];

  if (v10)
  {
    v11 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCCollectionMember *)self collectionMemberID];
      v13 = [(BCCollectionMember *)self debugDescription];
      v14 = [v6 collectionMemberID];
      *buf = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "\\BCCollectionMember configured: %@ %@ from collectionMember:%@\\"", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [BCCloudData localIdentifierFromRecord:v6];
    if (v8)
    {
      v9 = [(BCCollectionMember *)self collectionMemberID];
      v10 = [v9 isEqualToString:v8];

      if ((v10 & 1) == 0)
      {
        v11 = BDSCloudKitLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1E4708BE0(self, v8, v11);
        }

        [(BCCollectionMember *)self setCollectionMemberID:v8];
      }
    }

    else
    {
      v12 = BDSCloudKitLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708C90();
      }
    }

    v43.receiver = self;
    v43.super_class = BCCollectionMember;
    [(BCCloudData *)&v43 resolveConflictsFromRecord:v6 withResolvers:v7];
    v13 = [(BCCollectionMember *)self modificationDate];
    if (v13)
    {
      v14 = v13;
      v15 = [(BCCollectionMember *)self modificationDate];
      [v15 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v6 modificationDate];
      [v18 timeIntervalSinceReferenceDate];
      v20 = v19;

      if (v17 > v20)
      {
        v21 = BDSCloudKitLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [(BCCollectionMember *)self collectionMemberID];
          v23 = [v6 recordID];
          v24 = [v23 recordName];
          v25 = [(BCCollectionMember *)self modificationDate];
          [v25 timeIntervalSinceReferenceDate];
          v27 = v26;
          v28 = [v6 modificationDate];
          [v28 timeIntervalSinceReferenceDate];
          v29 = @"newer";
          *buf = 138412802;
          v45 = v22;
          v46 = 2114;
          if (v27 == v30)
          {
            v29 = @"the same";
          }

          v47 = v24;
          v48 = 2114;
          v49 = v29;
          _os_log_impl(&dword_1E45E0000, v21, OS_LOG_TYPE_INFO, "BCCollectionMember %@ Resolving conflicts from record %{public}@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v31 = [v6 objectForKey:@"sortOrder"];
    [(NSManagedObject *)self setDifferentNumber:v31 forKey:@"sortOrder"];
    v32 = [v6 modificationDate];
    [(NSManagedObject *)self setDifferentDate:v32 forKey:@"modificationDate"];
    v33 = [(BCCollectionMember *)self hasChanges];
    v34 = [MEMORY[0x1E698F550] shared];
    v35 = [v34 verboseLoggingEnabled];

    if (v33)
    {
      if (v35)
      {
        v36 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(BCCollectionMember *)self collectionMemberID];
          v38 = [v6 recordID];
          v39 = [v38 recordName];
          v40 = [(BCCollectionMember *)self debugDescription];
          *buf = 138412802;
          v45 = v37;
          v46 = 2112;
          v47 = v39;
          v48 = 2112;
          v49 = v40;
          v41 = "\\BCCollectionMember %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_24:
          _os_log_impl(&dword_1E45E0000, v36, OS_LOG_TYPE_DEFAULT, v41, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (v35)
    {
      v36 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(BCCollectionMember *)self collectionMemberID];
        v38 = [v6 recordID];
        v39 = [v38 recordName];
        v40 = [(BCCollectionMember *)self debugDescription];
        *buf = 138412802;
        v45 = v37;
        v46 = 2112;
        v47 = v39;
        v48 = 2112;
        v49 = v40;
        v41 = "\\BCCollectionMember %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_24;
      }

LABEL_25:
    }

LABEL_27:
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BCCollectionMember *)self collectionMemberID];
  v7 = [(BCCollectionMember *)self sortOrder];
  v8 = [(BCCollectionMember *)self modificationDate];
  v9 = [v3 stringWithFormat:@"<%@: %p> collectionMemberID: %@, sortOrder:%d modificationDate:%@", v5, self, v6, v7, v8];

  return v9;
}

+ (id)assetIDFromCollectionMemberID:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + v5];
  }

  return v6;
}

+ (id)collectionIDFromCollectionMemberID:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  return v5;
}

@end