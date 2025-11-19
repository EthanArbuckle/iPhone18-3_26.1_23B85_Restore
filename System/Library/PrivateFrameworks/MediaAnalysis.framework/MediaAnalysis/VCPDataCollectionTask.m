@interface VCPDataCollectionTask
+ (id)taskWithPhotoLibrary:(id)a3;
- (VCPDataCollectionTask)initWithPhotoLibrary:(id)a3;
- (int)checkBackgroundAnalysisMetrics;
- (int)resetBackgroundAnalysisMetrics;
- (int)resetDailyBackgroundAnalysisMetrics;
@end

@implementation VCPDataCollectionTask

- (VCPDataCollectionTask)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VCPDataCollectionTask;
  v5 = [(VCPTask *)&v9 initWithPhotoLibrary:v4];
  if (v5)
  {
    v6 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    database = v5->_database;
    v5->_database = v6;
  }

  return v5;
}

+ (id)taskWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v3];

  return v4;
}

- (int)resetDailyBackgroundAnalysisMetrics
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[DataCollection] Resetting daily background analysis metrics", buf, 2u);
    }
  }

  v4 = +[NSDate now];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  if (!+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v11 = [(VCPDatabaseWriter *)self->_database setValue:v6 forKey:@"DailyProcessTimeStamp"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfAssetsFullyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeRunningWithPendingAnalysisToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeRunningWithoutPendingAnalysisToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfTimesScheduledWithPendingAnalysisToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfMoviesFullyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfImagesFullyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfLivePhotosFullyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"MovieDurationFullyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfMoviesPartiallyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfImagesPartiallyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfLivePhotosPartiallyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"MovieDurationPartiallyAnalyzedToday"];
    if (v11)
    {
      return v11;
    }

    v11 = [(VCPDatabaseWriter *)self->_database commit];
    if (v11)
    {
      return v11;
    }

    return 0;
  }

  v7 = [(VCPTask *)self photoLibrary];
  v14 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DCFDC;
  v15[3] = &unk_100282F90;
  v15[4] = v6;
  v8 = [v7 mad_performAnalysisDataStoreChanges:v15 error:&v14];
  v9 = v14;

  if (v8)
  {

    return 0;
  }

  v10 = [v9 code];
  if (MediaAnalysisLogLevel() >= 3)
  {
    v12 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[DataCollection][MACD] Failed to reset daily background analysis metrics", buf, 2u);
    }
  }

  return v10;
}

- (int)resetBackgroundAnalysisMetrics
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[DataCollection] Initializing background analysis metrics", buf, 2u);
    }
  }

  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  v5 = MediaAnalysisVersion;
  v7 = v6;

  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v8 = [(VCPTask *)self photoLibrary];
    v23 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000DD648;
    v24[3] = &unk_100285E20;
    v24[4] = v5;
    v24[5] = v7;
    v9 = [v8 mad_performAnalysisDataStoreChanges:v24 error:&v23];
    v10 = v23;

    if (v9)
    {

      return [(VCPDataCollectionTask *)self resetDailyBackgroundAnalysisMetrics];
    }

    v12 = [v10 code];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[DataCollection][MACD] Failed to initialize background analysis metrics", buf, 2u);
      }
    }
  }

  else
  {
    database = self->_database;
    v14 = VCPVersionKeyForTask();
    v12 = [(VCPDatabaseWriter *)database setValue:v5 forKey:v14];

    if (!v12)
    {
      v15 = self->_database;
      v16 = VCPStartTimestampKeyForTask();
      v12 = [(VCPDatabaseWriter *)v15 setValue:v7 forKey:v16];

      if (!v12)
      {
        v17 = self->_database;
        v18 = VCPCompleteTimestampKeyForTask();
        v12 = [(VCPDatabaseWriter *)v17 removeKey:v18];

        if (!v12)
        {
          v19 = self->_database;
          v20 = VCPCompleteTimestampKeyForTask();
          v12 = [(VCPDatabaseWriter *)v19 removeKey:v20];

          if (!v12)
          {
            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeRunningWithPendingAnalysisInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeRunningWithoutPendingAnalysisInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfTimesScheduledWithPendingAnalysisInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfTimesScheduledWithoutPendingAnalysisInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfMoviesFullyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfImagesFullyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfLivePhotosFullyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeSpentFullyAnalyzingMovieInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeSpentFullyAnalyzingImageInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeSpentFullyAnalyzingLivePhotoInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"MovieDurationFullyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfMoviesPartiallyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfImagesPartiallyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"NumberOfLivePhotosPartiallyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeSpentPartiallyAnalyzingMovieInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeSpentPartiallyAnalyzingImageInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"TotalTimeSpentPartiallyAnalyzingLivePhotoInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database setValue:0 forKey:@"MovieDurationPartiallyAnalyzedInLatestVersion"];
            if (v11)
            {
              return v11;
            }

            v11 = [(VCPDatabaseWriter *)self->_database commit];
            if (v11)
            {
              return v11;
            }

            return [(VCPDataCollectionTask *)self resetDailyBackgroundAnalysisMetrics];
          }
        }
      }
    }
  }

  return v12;
}

- (int)checkBackgroundAnalysisMetrics
{
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v3 = [(VCPTask *)self photoLibrary];
    v4 = [v3 mad_fetchRequest];
    v28 = 0;
    [v4 fetchAllDataStoreKeyValuePairs:&v28];
    v5 = v28;
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    [(VCPDatabaseWriter *)self->_database loadAllKeyValuePairs:v5];
  }

  v6 = VCPVersionKeyForTask();
  v7 = VCPStartTimestampKeyForTask();
  if (![v5 count])
  {
    goto LABEL_14;
  }

  v8 = [v5 objectForKeyedSubscript:v6];
  if (![v8 intValue])
  {

    goto LABEL_14;
  }

  v9 = [v5 objectForKeyedSubscript:v7];
  v10 = [v9 longLongValue] == 0;

  if (v10)
  {
LABEL_14:
    if (MediaAnalysisLogLevel() >= 5)
    {
      v22 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[DataCollection] Initialize background analysis metric", buf, 2u);
      }
    }

    goto LABEL_20;
  }

  v11 = [v5 objectForKeyedSubscript:v6];
  v12 = [v11 intValue];
  v13 = MediaAnalysisVersion;
  v14 = v12 == MediaAnalysisVersion;

  if (!v14)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v23 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = [v5 objectForKeyedSubscript:v6];
        v25 = [v24 intValue];
        *buf = 67109376;
        v30 = v25;
        v31 = 1024;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[DataCollection] MediaAnalysisVersion changed (%d -> %d)", buf, 0xEu);
      }
    }

LABEL_20:
    v26 = [(VCPDataCollectionTask *)self resetBackgroundAnalysisMetrics];
LABEL_21:
    v21 = v26;
    goto LABEL_22;
  }

  v15 = [v5 objectForKeyedSubscript:@"DailyProcessTimeStamp"];
  v16 = [v15 longLongValue];

  v17 = +[NSDate now];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  if (v19 - v16 >= 86400.0)
  {
    v26 = [(VCPDataCollectionTask *)self resetDailyBackgroundAnalysisMetrics];
    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v20 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[DataCollection] Not met condition to reset daily background analysis metrics", buf, 2u);
    }
  }

  v21 = 0;
LABEL_22:

  return v21;
}

@end