@interface BCSecureUserDatum
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromUserDatum:(id)datum withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCSecureUserDatum

- (id)mutableCopy
{
  v3 = [BCMutableSecureUserDatum alloc];

  return [(BCMutableSecureUserDatum *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCSecureUserDatum *)self _configureFromUserDatum:v6 withMergers:mergersCopy];
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

- (void)_configureFromUserDatum:(id)datum withMergers:(id)mergers
{
  datumCopy = datum;
  v15.receiver = self;
  v15.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v15 configureFromCloudData:datumCopy withMergers:mergers];
  v7 = [datumCopy key];
  [(BCSecureUserDatum *)self setDifferentString:v7 forKey:@"key"];

  value = [datumCopy value];
  [(BCSecureUserDatum *)self setDifferentString:value forKey:@"value"];

  v9 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v9 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v11 = sub_10000DB80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCSecureUserDatum *)self key];
      v13 = [(BCSecureUserDatum *)self debugDescription];
      v14 = [datumCopy key];
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

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v40.receiver = self;
  v40.super_class = BCSecureUserDatum;
  [(BCCloudData *)&v40 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
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

    modificationDate = [(BCSecureUserDatum *)self modificationDate];
    if (modificationDate)
    {
      v12 = modificationDate;
      modificationDate2 = [(BCSecureUserDatum *)self modificationDate];
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
          v20 = [(BCSecureUserDatum *)self key];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCSecureUserDatum *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v25 = v24;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v42 = v20;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v43 = 2112;
          v44 = recordName;
          v45 = 2114;
          v46 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BCSecureUserDatum %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v29 = [recordCopy objectForKey:@"value"];
    [(BCSecureUserDatum *)self setDifferentString:v29 forKey:@"value"];
    modificationDate6 = [recordCopy modificationDate];
    [(BCSecureUserDatum *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCSecureUserDatum *)self hasChanges];
    v32 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v32 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v34 = sub_10000DB80();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(BCSecureUserDatum *)self key];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v38 = [(BCSecureUserDatum *)self debugDescription];
          *buf = 138412802;
          v42 = v35;
          v43 = 2112;
          v44 = recordName2;
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

    else if (verboseLoggingEnabled)
    {
      v34 = sub_10000DB80();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(BCSecureUserDatum *)self key];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v38 = [(BCSecureUserDatum *)self debugDescription];
        *buf = 138412802;
        v42 = v35;
        v43 = 2112;
        v44 = recordName2;
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
  value = [(BCSecureUserDatum *)self value];
  v5 = [NSString stringWithFormat:@"key: %@, value: %@", v3, value];

  return v5;
}

@end