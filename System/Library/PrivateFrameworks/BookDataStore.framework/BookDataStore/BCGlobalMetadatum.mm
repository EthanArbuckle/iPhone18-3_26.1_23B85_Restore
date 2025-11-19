@interface BCGlobalMetadatum
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromMetadatum:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCGlobalMetadatum

- (id)mutableCopy
{
  v2 = [BCMutableGlobalMetadatum alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCGlobalMetadatum *)self _configureFromMetadatum:v6 withMergers:v5];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708FD4();
    }
  }
}

- (void)_configureFromMetadatum:(id)a3 withMergers:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = BCGlobalMetadatum;
  [(BCCloudData *)&v16 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 key];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"key"];

  v8 = [v6 value];
  [(NSManagedObject *)self setDifferentString:v8 forKey:@"value"];

  v9 = [MEMORY[0x1E698F550] shared];
  v10 = [v9 verboseLoggingEnabled];

  if (v10)
  {
    v11 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCGlobalMetadatum *)self key];
      v13 = [(BCGlobalMetadatum *)self debugDescription];
      v14 = [v6 key];
      *buf = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "\\BCGlobalMetadatum configured: %@ %@ from metadatum:%@\\"", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = BCGlobalMetadatum;
  [(BCCloudData *)&v51 resolveConflictsFromRecord:v6 withResolvers:v7];
  if (v6)
  {
    v8 = [BCCloudData localIdentifierFromRecord:v6];
    v9 = [(BCGlobalMetadatum *)self key];
    v10 = [v9 isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1E4709008(self, v8, v11);
      }

      [(BCGlobalMetadatum *)self setKey:v8];
    }

    v12 = [(BCGlobalMetadatum *)self modificationDate];
    if (v12)
    {
      v13 = v12;
      v14 = [(BCGlobalMetadatum *)self modificationDate];
      [v14 timeIntervalSinceReferenceDate];
      v16 = v15;
      v17 = [v6 modificationDate];
      [v17 timeIntervalSinceReferenceDate];
      v19 = v18;

      if (v16 > v19)
      {
        v20 = BDSCloudKitLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [(BCGlobalMetadatum *)self key];
          v22 = [v6 recordID];
          v23 = [v22 recordName];
          v24 = [(BCGlobalMetadatum *)self modificationDate];
          [v24 timeIntervalSinceReferenceDate];
          v26 = v25;
          v27 = [v6 modificationDate];
          [v27 timeIntervalSinceReferenceDate];
          v28 = @"newer";
          *buf = 138412802;
          v53 = v21;
          if (v26 == v29)
          {
            v28 = @"the same";
          }

          v54 = 2112;
          v55 = v23;
          v56 = 2114;
          v57 = v28;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_INFO, "BCGlobalMetadatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v30 = [v6 objectForKey:@"value"];
    v31 = [(BCGlobalMetadatum *)self value];
    v32 = v30;
    v33 = [(BCGlobalMetadatum *)self key];
    v34 = [v7 objectForKeyedSubscript:v33];
    v35 = v34;
    v36 = v32;
    if (v34)
    {
      v36 = (*(v34 + 16))(v34, v33, v31, v32);
    }

    v49 = v33;
    v50 = v31;
    [(NSManagedObject *)self setDifferentString:v36 forKey:@"value"];
    v48 = [v6 modificationDate];
    [NSManagedObject setDifferentDate:"setDifferentDate:forKey:" forKey:?];
    v37 = [(BCGlobalMetadatum *)self hasChanges];
    v38 = [MEMORY[0x1E698F550] shared];
    v39 = [v38 verboseLoggingEnabled];

    if (v37)
    {
      v40 = v50;
      if (v39)
      {
        v41 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(BCGlobalMetadatum *)self key];
          v47 = [v6 recordID];
          v42 = [v47 recordName];
          v43 = [(BCGlobalMetadatum *)self debugDescription];
          *buf = 138412802;
          v53 = v46;
          v54 = 2112;
          v55 = v42;
          v56 = 2112;
          v57 = v43;
          v44 = "\\BCGlobalMetadatum %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_24:
          _os_log_impl(&dword_1E45E0000, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 0x20u);

          v40 = v50;
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v40 = v50;
      if (v39)
      {
        v41 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(BCGlobalMetadatum *)self key];
          v47 = [v6 recordID];
          v42 = [v47 recordName];
          v43 = [(BCGlobalMetadatum *)self debugDescription];
          *buf = 138412802;
          v53 = v46;
          v54 = 2112;
          v55 = v42;
          v56 = 2112;
          v57 = v43;
          v44 = "\\BCGlobalMetadatum %@ Resolving: Identical properties from record: %@ %@\\"";
          goto LABEL_24;
        }

LABEL_25:
      }
    }

    goto LABEL_27;
  }

  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E47090B8(self, v8);
  }

LABEL_27:

  v45 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCGlobalMetadatum *)self key];
  v5 = [(BCGlobalMetadatum *)self value];
  v6 = [v3 stringWithFormat:@"key: %@, value: %@", v4, v5];

  return v6;
}

@end