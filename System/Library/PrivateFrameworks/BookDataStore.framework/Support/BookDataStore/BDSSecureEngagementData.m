@interface BDSSecureEngagementData
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromEngagementData:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BDSSecureEngagementData

- (id)mutableCopy
{
  v3 = [BDSMutableSecureEngagementData alloc];

  return [(BDSMutableSecureEngagementData *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BDSSecureEngagementData *)self _configureFromEngagementData:v6 withMergers:v5];
  }

  else
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C34A4();
    }
  }
}

- (void)_configureFromEngagementData:(id)a3 withMergers:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v19 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 startTimestampString];
  [(BDSSecureEngagementData *)self setDifferentString:v7 forKey:@"startTimestampString"];

  [v6 durationInterval];
  v8 = [NSNumber numberWithDouble:?];
  [(BDSSecureEngagementData *)self setDifferentNumber:v8 forKey:@"durationInterval"];

  v9 = [(BDSSecureEngagementData *)self value];
  v10 = [v6 value];
  v11 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:v9 remote:v10];

  if (v11)
  {
    [(BDSSecureEngagementData *)self setDifferentObject:v11 forKey:@"value"];
  }

  v12 = [v6 value];
  [(BDSSecureEngagementData *)self setDifferentObject:v12 forKey:@"value"];

  v13 = +[BULogUtilities shared];
  v14 = [v13 verboseLoggingEnabled];

  if (v14)
  {
    v15 = sub_10000DB80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(BDSSecureEngagementData *)self startTimestampString];
      v17 = [(BDSSecureEngagementData *)self debugDescription];
      v18 = [v6 startTimestampString];
      *buf = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\\BDSSecureEngagementData configured: %@ %@ from engagementData:%@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v6 = a3;
  v43.receiver = self;
  v43.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v43 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BDSSecureEngagementData *)self startTimestampString];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C34D8(self, v7, v10);
      }

      [(BDSSecureEngagementData *)self setStartTimestampString:v7];
    }

    v11 = [(BDSSecureEngagementData *)self modificationDate];
    if (v11)
    {
      v12 = v11;
      v13 = [(BDSSecureEngagementData *)self modificationDate];
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
          v20 = [(BDSSecureEngagementData *)self startTimestampString];
          v21 = [v6 recordID];
          v22 = [v21 recordName];
          v23 = [(BDSSecureEngagementData *)self modificationDate];
          [v23 timeIntervalSinceReferenceDate];
          v25 = v24;
          v26 = [v6 modificationDate];
          [v26 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v45 = v20;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v46 = 2112;
          v47 = v22;
          v48 = 2114;
          v49 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BDSSecureEngagementData %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v29 = [v6 objectForKey:@"durationInterval"];
    [(BDSSecureEngagementData *)self setDifferentNumber:v29 forKey:@"durationInterval"];
    v30 = [v6 objectForKey:@"value"];
    v31 = [(BDSSecureEngagementData *)self value];
    v32 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:v31 remote:v30];

    if (v32)
    {
      [(BDSSecureEngagementData *)self setDifferentObject:v32 forKey:@"value"];
    }

    v33 = [v6 modificationDate];
    [(BDSSecureEngagementData *)self setDifferentDate:v33 forKey:@"modificationDate"];
    v34 = [(BDSSecureEngagementData *)self hasChanges];
    v35 = +[BULogUtilities shared];
    v36 = [v35 verboseLoggingEnabled];

    if (v34)
    {
      if (v36)
      {
        v37 = sub_10000DB80();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(BDSSecureEngagementData *)self startTimestampString];
          v42 = [v6 recordID];
          v39 = [v42 recordName];
          v40 = [(BDSSecureEngagementData *)self debugDescription];
          *buf = 138412802;
          v45 = v38;
          v46 = 2112;
          v47 = v39;
          v48 = 2112;
          v49 = v40;
          v41 = "\\BDSSecureEngagementData %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v41, buf, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else if (v36)
    {
      v37 = sub_10000DB80();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(BDSSecureEngagementData *)self startTimestampString];
        v42 = [v6 recordID];
        v39 = [v42 recordName];
        v40 = [(BDSSecureEngagementData *)self debugDescription];
        *buf = 138412802;
        v45 = v38;
        v46 = 2112;
        v47 = v39;
        v48 = 2112;
        v49 = v40;
        v41 = "\\BDSSecureEngagementData %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_24;
      }

LABEL_25:
    }

    goto LABEL_27;
  }

  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C3588(self, v7);
  }

LABEL_27:
}

- (NSString)debugDescription
{
  v3 = [(BDSSecureEngagementData *)self startTimestampString];
  [(BDSSecureEngagementData *)self durationInterval];
  v5 = [NSString stringWithFormat:@"start timestamp: %@, duration: %.1lf", v3, v4];

  return v5;
}

@end