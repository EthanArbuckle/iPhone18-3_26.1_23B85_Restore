@interface BCSecureUserDatum
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromUserDatum:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCSecureUserDatum

- (id)mutableCopy
{
  v3 = [BCMutableSecureUserDatum alloc];

  return [(BCMutableSecureUserDatum *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCSecureUserDatum *)self _configureFromUserDatum:v6 withMergers:v5];
  }

  else
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2BF8();
    }
  }
}

- (void)_configureFromUserDatum:(id)a3 withMergers:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v15 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 key];
  [(BCSecureUserDatum *)self setDifferentString:v7 forKey:@"key"];

  v8 = [v6 value];
  [(BCSecureUserDatum *)self setDifferentString:v8 forKey:@"value"];

  v9 = +[BULogUtilities shared];
  v10 = [v9 verboseLoggingEnabled];

  if (v10)
  {
    v11 = sub_10000DB80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCSecureUserDatum *)self key];
      v13 = [(BCSecureUserDatum *)self debugDescription];
      v14 = [v6 key];
      *buf = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\\BCSecureUserDatum configured: %@ %@ from userDatum:%@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v6 = a3;
  v40.receiver = self;
  v40.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v40 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCSecureUserDatum *)self key];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C2C2C(self, v7, v10);
      }

      [(BCSecureUserDatum *)self setKey:v7];
    }

    v11 = [(BCSecureUserDatum *)self modificationDate];
    if (v11)
    {
      v12 = v11;
      v13 = [(BCSecureUserDatum *)self modificationDate];
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
          v20 = [(BCSecureUserDatum *)self key];
          v21 = [v6 recordID];
          v22 = [v21 recordName];
          v23 = [(BCSecureUserDatum *)self modificationDate];
          [v23 timeIntervalSinceReferenceDate];
          v25 = v24;
          v26 = [v6 modificationDate];
          [v26 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v42 = v20;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v43 = 2112;
          v44 = v22;
          v45 = 2114;
          v46 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BCSecureUserDatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v29 = [v6 objectForKey:@"value"];
    [(BCSecureUserDatum *)self setDifferentString:v29 forKey:@"value"];
    v30 = [v6 modificationDate];
    [(BCSecureUserDatum *)self setDifferentDate:v30 forKey:@"modificationDate"];
    v31 = [(BCSecureUserDatum *)self hasChanges];
    v32 = +[BULogUtilities shared];
    v33 = [v32 verboseLoggingEnabled];

    if (v31)
    {
      if (v33)
      {
        v34 = sub_10000DB80();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(BCSecureUserDatum *)self key];
          v36 = [v6 recordID];
          v37 = [v36 recordName];
          v38 = [(BCSecureUserDatum *)self debugDescription];
          *buf = 138412802;
          v42 = v35;
          v43 = 2112;
          v44 = v37;
          v45 = 2112;
          v46 = v38;
          v39 = "\\BCSecureUserDatum %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v39, buf, 0x20u);

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (v33)
    {
      v34 = sub_10000DB80();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(BCSecureUserDatum *)self key];
        v36 = [v6 recordID];
        v37 = [v36 recordName];
        v38 = [(BCSecureUserDatum *)self debugDescription];
        *buf = 138412802;
        v42 = v35;
        v43 = 2112;
        v44 = v37;
        v45 = 2112;
        v46 = v38;
        v39 = "\\BCSecureUserDatum %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_22;
      }

LABEL_23:
    }

    goto LABEL_25;
  }

  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C2CDC(self, v7);
  }

LABEL_25:
}

- (NSString)debugDescription
{
  v3 = [(BCSecureUserDatum *)self key];
  v4 = [(BCSecureUserDatum *)self value];
  v5 = [NSString stringWithFormat:@"key: %@, value: %@", v3, v4];

  return v5;
}

@end