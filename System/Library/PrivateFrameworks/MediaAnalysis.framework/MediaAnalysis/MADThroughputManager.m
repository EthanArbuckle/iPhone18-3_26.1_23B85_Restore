@interface MADThroughputManager
+ (id)throughputManagerForTask:(unint64_t)a3 BGSystemTask:(id)a4;
- (id)initManagerForTask:(unint64_t)a3 BGSystemTask:(id)a4;
- (id)metricsForActivity:(unint64_t)a3;
- (id)sessionLogFromCoreAnalyticsManager:(unint64_t)a3;
- (id)sessionLogFromDB:(unint64_t)a3;
- (void)finish;
@end

@implementation MADThroughputManager

- (id)initManagerForTask:(unint64_t)a3 BGSystemTask:(id)a4
{
  v7 = a4;
  v34.receiver = self;
  v34.super_class = MADThroughputManager;
  v8 = [(MADThroughputManager *)&v34 init];
  v9 = v8;
  if (v8)
  {
    v8->_taskID = a3;
    v10 = a3 - 1;
    if (a3 - 1 < 0xC && ((0xA07u >> v10) & 1) != 0)
    {
      v11 = (&off_100288870)[v10];
    }

    else
    {
      v12 = [NSNumber numberWithUnsignedInteger:a3];
      v36 = v12;
      v11 = [NSArray arrayWithObjects:&v36 count:1];
    }

    v13 = [NSSet setWithArray:v11];
    reportingTasks = v9->_reportingTasks;
    v9->_reportingTasks = v13;

    objc_storeStrong(&v9->_systemTask, a4);
    v15 = +[NSMutableArray array];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v9->_reportingTasks;
    v17 = [(NSSet *)v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        v20 = 0;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = -[MADThroughputManager metricsForActivity:](v9, "metricsForActivity:", [*(*(&v30 + 1) + 8 * v20) unsignedIntegerValue]);
          [(NSArray *)v15 addObjectsFromArray:v21];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [(NSSet *)v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v18);
    }

    metrics = v9->_metrics;
    v9->_metrics = v15;
    v23 = v15;

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001B6544;
    v28[3] = &unk_100285BC0;
    v24 = v9;
    v29 = v24;
    v25 = [VCPTimer timerWithIntervalSeconds:180 isOneShot:0 andBlock:v28];
    reportingTimer = v24->_reportingTimer;
    v24->_reportingTimer = v25;
  }

  return v9;
}

+ (id)throughputManagerForTask:(unint64_t)a3 BGSystemTask:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initManagerForTask:a3 BGSystemTask:v6];

  return v7;
}

- (id)metricsForActivity:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  if (a3 <= 18)
  {
    if (a3 <= 9)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          if (a3 != 3)
          {
            goto LABEL_27;
          }

          v6 = [MADBGSTAtomicThroughputMetric metricForTask:3 subCategory:MADThroughputSubCategory_Clustering startsKey:@"NumberOfClusterStartEvents" durationKey:@"TotalPersonProcessingTimeInSeconds" BGSystemTask:self->_systemTask];
          [v5 addObject:v6];
        }

        goto LABEL_15;
      }

      v46[0] = @"NumberOfPhotosAnalyzedFullResource";
      v46[1] = @"NumberOfPhotosAnalyzedPartialResource";
      v14 = [NSArray arrayWithObjects:v46 count:2];
      v15 = [NSSet setWithArray:v14];

      v16 = [MADBGSTThroughputMetric metricForTask:1 subCategory:MADThroughputSubCategory_Images keys:v15 BGSystemTask:self->_systemTask];
      [v5 addObject:v16];

      v45[0] = @"NumberOfLivePhotosAnalyzedFullResource";
      v45[1] = @"NumberOfLivePhotosAnalyzedPartialResource";
      v17 = [NSArray arrayWithObjects:v45 count:2];
      v18 = [NSSet setWithArray:v17];

      v19 = [MADBGSTThroughputMetric metricForTask:1 subCategory:MADThroughputSubCategory_LivePhotos keys:v18 BGSystemTask:self->_systemTask];
      [v5 addObject:v19];

      v44[0] = @"NumberOfMoviesAnalyzedFullResource";
      v44[1] = @"NumberOfMoviesAnalyzedPartialResource";
      v20 = [NSArray arrayWithObjects:v44 count:2];
      v21 = [NSSet setWithArray:v20];

      v22 = [MADBGSTThroughputMetric metricForTask:1 subCategory:MADThroughputSubCategory_Videos keys:v21 BGSystemTask:self->_systemTask];
      [v5 addObject:v22];

      v23 = +[NSMutableSet set];
      [v23 unionSet:v15];
      [v23 unionSet:v18];
      [v23 unionSet:v21];
      v24 = [MADBGSTThroughputMetric metricForTask:1 subCategory:MADThroughputSubCategory_Assets keys:v23 BGSystemTask:self->_systemTask];
      [v5 addObject:v24];

      goto LABEL_21;
    }

    if (a3 == 10 || a3 == 12 || a3 == 16)
    {
LABEL_15:
      v7 = MADThroughputSubCategory_Assets;
      v8 = [NSSet setWithObject:@"NumberOfAssetsAnalyzed"];
      v9 = [MADBGSTThroughputMetric metricForTask:a3 subCategory:v7 keys:v8 BGSystemTask:self->_systemTask];
      [v5 addObject:v9];

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (a3 > 256)
  {
    if (a3 == 257)
    {
      v29 = MADThroughputSubCategory_Backup;
      v30 = @"BackupStart";
      v31 = @"BackupDuration";
      systemTask = self->_systemTask;
      v33 = 257;
    }

    else
    {
      if (a3 != 258)
      {
        if (a3 == 259)
        {
          v10 = VCPAnalyticsFieldMigrationInsertedForTable(@"Overall");
          v11 = MADThroughputSubCategory_Migration;
          v12 = [NSSet setWithObject:v10];
          v13 = [MADBGSTThroughputMetric metricForTask:259 subCategory:v11 keys:v12 BGSystemTask:self->_systemTask];
          [v5 addObject:v13];
        }

        goto LABEL_27;
      }

      v29 = MADThroughputSubCategory_Telemetry;
      v30 = @"ProgressCheckStart";
      v31 = @"ProgressCheckDuration";
      systemTask = self->_systemTask;
      v33 = 258;
    }

LABEL_26:
    v41 = [MADBGSTAtomicThroughputMetric metricForTask:v33 subCategory:v29 startsKey:v30 durationKey:v31 BGSystemTask:systemTask];
    [v5 addObject:v41];

    goto LABEL_27;
  }

  switch(a3)
  {
    case 0x13uLL:
      v28 = [MADBGSTAtomicThroughputMetric metricForTask:19 subCategory:MADThroughputSubCategory_ComputeSync startsKey:@"ComputeSyncStart" durationKey:@"ComputeSyncDuration" BGSystemTask:self->_systemTask];
      [v5 addObject:v28];

      v29 = MADThroughputSubCategory_Clustering;
      v30 = @"VSKSyncStart";
      v31 = @"VSKSyncDuration";
      systemTask = self->_systemTask;
      v33 = 19;
      goto LABEL_26;
    case 0x15uLL:
      v34 = [MADBGSTAtomicThroughputMetric metricForTask:21 subCategory:MADThroughputSubCategory_Clustering startsKey:0 durationKey:@"FaceVUSyncElapsedTimeInSeconds" BGSystemTask:self->_systemTask];
      [v5 addObject:v34];

      v35 = MADThroughputSubCategory_Clustering;
      v36 = [NSSet setWithObject:@"PeopleVIPGenerated"];
      v37 = [MADBGSTThroughputMetric metricForTask:21 subCategory:v35 keys:v36 BGSystemTask:self->_systemTask];
      [v5 addObject:v37];

      v38 = MADThroughputSubCategory_Clustering;
      v39 = [NSSet setWithObject:@"PetsVIPGenerated"];
      v40 = [MADBGSTThroughputMetric metricForTask:21 subCategory:v38 keys:v39 BGSystemTask:self->_systemTask];
      [v5 addObject:v40];

      v29 = MADThroughputSubCategory_Clustering;
      v30 = @"NumberOfClusterStartEvents";
      v31 = @"TotalPersonProcessingTimeInSeconds";
      systemTask = self->_systemTask;
      v33 = 21;
      goto LABEL_26;
    case 0x16uLL:
LABEL_21:
      v43[0] = @"NumberOfSceneClusterFullEvents";
      v43[1] = @"NumberOfSceneClusterFastEvents";
      v25 = [NSArray arrayWithObjects:v43 count:2];
      v26 = [NSSet setWithArray:v25];

      v27 = [MADBGSTThroughputMetric metricForTask:a3 subCategory:MADThroughputSubCategory_Clustering keys:v26 BGSystemTask:self->_systemTask];
      [v5 addObject:v27];

      break;
  }

LABEL_27:

  return v5;
}

- (id)sessionLogFromCoreAnalyticsManager:(unint64_t)a3
{
  if (a3 == 16)
  {
    +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
  }

  else
  {
    +[VCPMADCoreAnalyticsManager sharedManager];
  }
  v4 = ;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_reportingTasks;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) unsignedIntegerValue];
        v12 = VCPTaskIDDescription();
        v13 = VCPCoreAnalyticsSessionEventName(v11);
        v14 = [v4 fetchSessionEvent:v13];
        [v5 setObject:v14 forKeyedSubscript:v12];
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)sessionLogFromDB:(unint64_t)a3
{
  if (!_os_feature_enabled_impl())
  {
    v8 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    v9 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v8];

    v28 = 0;
    v10 = [(NSDate *)self->_startTime dateByAddingTimeInterval:-10800.0];
    v11 = [v9 querySchedulingHistoryRecords:&v28 forActivityID:a3 sinceDate:v10];
    v6 = v28;

    if (v11)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v12 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = a3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MADThroughputManager] Unable to get scheduling history for task %d", &buf, 8u);
        }
      }

      v7 = 0;
      goto LABEL_31;
    }

    v14 = [v6 lastObject];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 sessionLog];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v15 sessionLog];
        v19 = [v18 dataUsingEncoding:4];
        v27 = 0;
        v20 = [NSJSONSerialization JSONObjectWithData:v19 options:0 error:&v27];
        v21 = v27;

        if (v21)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v22 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v22))
            {
              v23 = [v21 localizedDescription];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v23;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MADThroughputManager] Unable to decode session log - %@", &buf, 0xCu);
            }
          }

          v7 = 0;
        }

        else
        {
          v7 = v20;
        }

        goto LABEL_30;
      }

      if (MediaAnalysisLogLevel() < 3 || (v24 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v24)))
      {
LABEL_27:
        v7 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = a3;
      v25 = "[MADThroughputManager] Unable to get session log for task %d";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_27;
      }

      v24 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v24))
      {
        goto LABEL_27;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = a3;
      v25 = "[MADThroughputManager] Unable to get last scheduling record for task %d";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v24, v25, &buf, 8u);
    goto LABEL_27;
  }

  v5 = +[MADSystemDataStore systemDataStore];
  v6 = [v5 newManagedObjectContext];

  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = sub_1001B7558;
    v36 = sub_1001B7568;
    v37 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001B7570;
    v29[3] = &unk_100288850;
    v32 = a3;
    v6 = v6;
    v30 = v6;
    p_buf = &buf;
    [v6 performBlockAndWait:v29];
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADThroughputManager] Failed to create context", &buf, 2u);
      }
    }

    v7 = 0;
  }

LABEL_32:

  return v7;
}

- (void)finish
{
  [(VCPTimer *)self->_reportingTimer destroy];
  reportingTimer = self->_reportingTimer;
  self->_reportingTimer = 0;

  v4 = [(MADThroughputManager *)self sessionLogFromCoreAnalyticsManager:self->_taskID];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_metrics;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9) updateWithSessionLog:{v4, v11}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSArray *)self->_metrics removeAllObjects];
  metrics = self->_metrics;
  self->_metrics = 0;
}

@end