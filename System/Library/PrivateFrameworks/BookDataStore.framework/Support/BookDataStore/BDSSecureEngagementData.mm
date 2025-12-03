@interface BDSSecureEngagementData
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BDSSecureEngagementData

- (id)mutableCopy
{
  v3 = [BDSMutableSecureEngagementData alloc];

  return [(BDSMutableSecureEngagementData *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BDSSecureEngagementData *)self _configureFromEngagementData:v6 withMergers:mergersCopy];
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

- (void)_configureFromEngagementData:(id)data withMergers:(id)mergers
{
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v19 configureFromCloudData:dataCopy withMergers:mergers];
  startTimestampString = [dataCopy startTimestampString];
  [(BDSSecureEngagementData *)self setDifferentString:startTimestampString forKey:@"startTimestampString"];

  [dataCopy durationInterval];
  v8 = [NSNumber numberWithDouble:?];
  [(BDSSecureEngagementData *)self setDifferentNumber:v8 forKey:@"durationInterval"];

  value = [(BDSSecureEngagementData *)self value];
  value2 = [dataCopy value];
  v11 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:value2];

  if (v11)
  {
    [(BDSSecureEngagementData *)self setDifferentObject:v11 forKey:@"value"];
  }

  value3 = [dataCopy value];
  [(BDSSecureEngagementData *)self setDifferentObject:value3 forKey:@"value"];

  v13 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v13 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v15 = sub_10000DB80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
      v17 = [(BDSSecureEngagementData *)self debugDescription];
      startTimestampString3 = [dataCopy startTimestampString];
      *buf = 138412802;
      v21 = startTimestampString2;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = startTimestampString3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\\BDSSecureEngagementData configured: %@ %@ from engagementData:%@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v43.receiver = self;
  v43.super_class = BDSSecureEngagementData;
  [(BCCloudData *)&v43 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
    v9 = [startTimestampString isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C34D8(self, v7, v10);
      }

      [(BDSSecureEngagementData *)self setStartTimestampString:v7];
    }

    modificationDate = [(BDSSecureEngagementData *)self modificationDate];
    if (modificationDate)
    {
      v12 = modificationDate;
      modificationDate2 = [(BDSSecureEngagementData *)self modificationDate];
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
          startTimestampString2 = [(BDSSecureEngagementData *)self startTimestampString];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BDSSecureEngagementData *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v25 = v24;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v27 = @"newer";
          *buf = 138412802;
          v45 = startTimestampString2;
          if (v25 == v28)
          {
            v27 = @"the same";
          }

          v46 = 2112;
          v47 = recordName;
          v48 = 2114;
          v49 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BDSSecureEngagementData %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_27;
      }
    }

    v29 = [recordCopy objectForKey:@"durationInterval"];
    [(BDSSecureEngagementData *)self setDifferentNumber:v29 forKey:@"durationInterval"];
    v30 = [recordCopy objectForKey:@"value"];
    value = [(BDSSecureEngagementData *)self value];
    v32 = [BDSSecureEngagementDataHelper mergedTimeSliceDataLocal:value remote:v30];

    if (v32)
    {
      [(BDSSecureEngagementData *)self setDifferentObject:v32 forKey:@"value"];
    }

    modificationDate6 = [recordCopy modificationDate];
    [(BDSSecureEngagementData *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BDSSecureEngagementData *)self hasChanges];
    v35 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v35 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v37 = sub_10000DB80();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          startTimestampString3 = [(BDSSecureEngagementData *)self startTimestampString];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v40 = [(BDSSecureEngagementData *)self debugDescription];
          *buf = 138412802;
          v45 = startTimestampString3;
          v46 = 2112;
          v47 = recordName2;
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

    else if (verboseLoggingEnabled)
    {
      v37 = sub_10000DB80();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        startTimestampString3 = [(BDSSecureEngagementData *)self startTimestampString];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v40 = [(BDSSecureEngagementData *)self debugDescription];
        *buf = 138412802;
        v45 = startTimestampString3;
        v46 = 2112;
        v47 = recordName2;
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
  startTimestampString = [(BDSSecureEngagementData *)self startTimestampString];
  [(BDSSecureEngagementData *)self durationInterval];
  v5 = [NSString stringWithFormat:@"start timestamp: %@, duration: %.1lf", startTimestampString, v4];

  return v5;
}

@end