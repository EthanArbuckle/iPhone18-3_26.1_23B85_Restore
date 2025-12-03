@interface MADProgressManager
+ (BOOL)_correctAnachronisticTimestampsForTask:(unint64_t)task completionDates:(id)dates photoLibrary:(id)library;
+ (BOOL)_reportBGSTCompletionCheckpoint:(unint64_t)checkpoint ForTask:(unint64_t)task photoLibrary:(id)library currentDate:(id)date;
+ (BOOL)_reportBGSTCustomCheckpoint:(unint64_t)checkpoint timestampKey:(id)key taskID:(unint64_t)d photoLibrary:(id)library currentDate:(id)date;
+ (BOOL)_reportBGSTFeatureCheckpointForTask:(unint64_t)task;
+ (BOOL)_reportFullAnalysisPerTypeWorkloadProgress:(id)progress;
+ (BOOL)_reportWorkloadProgressForTask:(unint64_t)task progressDetail:(id)detail;
+ (BOOL)_storeProgress:(id)progress forTask:(unint64_t)task photoLibrary:(id)library;
+ (BOOL)_storeProgress:(id)progress forTask:(unint64_t)task subtype:(unint64_t)subtype photoLibrary:(id)library;
+ (BOOL)taskHasReachedSteadyState:(unint64_t)state;
+ (id)_computeCompletionDatesWithProgress:(id)progress photoLibrary:(id)library taskID:(unint64_t)d currentDate:(id)date;
+ (id)_featureCodeWithTaskID:(unint64_t)d;
+ (id)_getOrSetCompletionDateForTask:(unint64_t)task completeThreshold:(unint64_t)threshold includeFailures:(BOOL)failures photoLibrary:(id)library currentDate:(id)date;
+ (id)_getOrSetDateWithKey:(id)key photoLibrary:(id)library currentDate:(id)date;
+ (id)_getOrSetStartDateForTask:(unint64_t)task photoLibrary:(id)library currentDate:(id)date;
+ (id)_queryAndReportProgressForAnalysis:(unint64_t)analysis photoLibrary:(id)library cancelOrExtendTimeoutBlock:(id)block;
+ (id)_queryProgressForTask:(unint64_t)task photoLibrary:(id)library cancelOrExtendTimeoutBlock:(id)block;
+ (int)cacheCurrentFaceProgressForPhotoLibrary:(id)library;
+ (int)cacheProcessedAssetCountAfterPromoter:(unint64_t)promoter photoLibrary:(id)library;
+ (void)_queryAndReportProgressForMediaAnalysisImageForPhotoLibrary:(id)library reuseCachedValue:(BOOL)value;
+ (void)_reportCompletionDates:(id)dates progressDetail:(id)detail photoLibrary:(id)library taskID:(unint64_t)d currentDate:(id)date;
+ (void)_reportFaceP1ProgressDetail:(id)detail photoLibrary:(id)library currentDate:(id)date;
+ (void)_reportMediaAnalysisSubcategoryWorkloadProgress:(id)progress totalAssetCount:(id)count subCategory:(id)category;
+ (void)_reportProgressDetail:(id)detail taskID:(unint64_t)d photoLibrary:(id)library;
+ (void)_reportProgressMetricForIdentifier:(id)identifier itemsCompleted:(id)completed totalCount:(id)count;
+ (void)clearLastProgressReportTimestampForTasks:(id)tasks;
+ (void)clearProgressUpdateRequestForTask:(unint64_t)task;
+ (void)requestProgressUpdateForTasks:(id)tasks;
+ (void)resetProcessingCheckpointForTask:(unint64_t)task;
+ (void)updateProgressForTask:(unint64_t)task photoLibrary:(id)library reuseCachedValue:(BOOL)value cancelOrExtendTimeoutBlock:(id)block;
+ (void)updateProgressIfRequestedForTasks:(id)tasks photoLibrary:(id)library reuseCachedValue:(BOOL)value cancelOrExtendTimeoutBlock:(id)block;
- (MADProgressManager)initWithPhotoLibrary:(id)library;
@end

@implementation MADProgressManager

- (MADProgressManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = MADProgressManager;
  v6 = [(MADProgressManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

+ (id)_getOrSetDateWithKey:(id)key photoLibrary:(id)library currentDate:(id)date
{
  keyCopy = key;
  libraryCopy = library;
  dateCopy = date;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
    v11 = [mad_fetchRequest fetchDataStoreValueIfKeyExists:keyCopy];

    if (v11)
    {
      v12 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v11 longLongValue]);
      if (MediaAnalysisLogLevel() >= 7)
      {
        v13 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          *buf = 138412546;
          v26 = v12;
          v27 = 2112;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADProgressManager][MACD] found date %@ (timestamp: %@)", buf, 0x16u);
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
  if (![v11 keyExistsInKeyValueStore:keyCopy])
  {
    goto LABEL_10;
  }

  v14 = [v11 valueForKey:keyCopy];
  v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:v14];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v15 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      v16 = [v12 description];
      *buf = 138412546;
      v26 = v16;
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADProgressManager] found date %@ (timestamp: %lld)", buf, 0x16u);
    }
  }

LABEL_11:

  if (!v12)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v18 = v17;
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100164FC0;
      v22[3] = &unk_100285478;
      v24 = v18;
      v23 = keyCopy;
      [libraryCopy mad_performAnalysisDataStoreChanges:v22 error:0];
      v19 = v23;
    }

    else
    {
      v19 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
      [v19 setValue:v18 forKey:keyCopy];
      [v19 commit];
    }

    v12 = dateCopy;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v20 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 138412802;
        v26 = keyCopy;
        v27 = 2112;
        v28 = v12;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MADProgressManager] No previous date for key %@, setting as now (%@, timestamp: %lld)", buf, 0x20u);
      }
    }
  }

  return v12;
}

+ (id)_getOrSetStartDateForTask:(unint64_t)task photoLibrary:(id)library currentDate:(id)date
{
  libraryCopy = library;
  dateCopy = date;
  v9 = VCPStartTimestampKeyForTask();
  if (v9)
  {
    v10 = [self _getOrSetDateWithKey:v9 photoLibrary:libraryCopy currentDate:dateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_getOrSetCompletionDateForTask:(unint64_t)task completeThreshold:(unint64_t)threshold includeFailures:(BOOL)failures photoLibrary:(id)library currentDate:(id)date
{
  libraryCopy = library;
  dateCopy = date;
  v11 = VCPPercentCompleteTimestampKeyForTask();
  v12 = [self _getOrSetDateWithKey:v11 photoLibrary:libraryCopy currentDate:dateCopy];

  return v12;
}

+ (id)_featureCodeWithTaskID:(unint64_t)d
{
  if (d == 2)
  {
    v5 = off_100280FD0;
LABEL_5:
    featureCodes = [(__objc2_class *)*v5 featureCodes];

    return featureCodes;
  }

  if (d == 3)
  {
    v5 = off_100280FC0;
    goto LABEL_5;
  }

  featureCodes = 0;

  return featureCodes;
}

+ (BOOL)_reportBGSTCustomCheckpoint:(unint64_t)checkpoint timestampKey:(id)key taskID:(unint64_t)d photoLibrary:(id)library currentDate:(id)date
{
  keyCopy = key;
  libraryCopy = library;
  dateCopy = date;
  if (([libraryCopy isSystemPhotoLibrary] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_14;
    }

    v21 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v21))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v18 = "[MADProgressManager] Unable to report BGST checkpoint for photo library";
    v19 = v21;
    v20 = 2;
    goto LABEL_13;
  }

  v14 = BGSystemTaskCustomCheckpointMax;
  v15 = BGSystemTaskCustomCheckpointMin;
  if (BGSystemTaskCustomCheckpointMax >= checkpoint && BGSystemTaskCustomCheckpointMin <= checkpoint)
  {
    v23 = MADTaskIdentifierForBackgroundTask(d);
    v24 = v23;
    if (!v23)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v30 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          *buf = 67109120;
          *v41 = d;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[MADProgressManager] taskIdentifier not found for task %u", buf, 8u);
        }
      }

      v22 = 0;
      goto LABEL_34;
    }

    v25 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      mad_fetchRequest = [libraryCopy mad_fetchRequest];
      v27 = [mad_fetchRequest dataStoreValueForKey:keyCopy];

      if (!v27)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v27 = [v25 valueForKey:keyCopy];
      if (!v27)
      {
LABEL_18:
        v39 = 0;
        v22 = [BGSystemTaskCheckpoints reportCustomCheckpoint:checkpoint forTask:v24 error:&v39];
        v28 = v39;
        if (v22)
        {
          if (MediaAnalysisLogLevel() >= 5)
          {
            v29 = VCPLogToOSLogType[5];
            if (os_log_type_enabled(&_os_log_default, v29))
            {
              *buf = 67109378;
              *v41 = checkpoint;
              *&v41[4] = 2112;
              *&v41[6] = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[MADProgressManager] Reported BGST Custom Checkpoint %d for task taskIdentifier %@", buf, 0x12u);
            }
          }

          if (+[MADManagedKeyValueStore isMACDPersistEnabled])
          {
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10016572C;
            v36[3] = &unk_100282938;
            v37 = dateCopy;
            v38 = keyCopy;
            [libraryCopy mad_performAnalysisDataStoreChanges:v36 error:0];
          }

          else
          {
            [dateCopy timeIntervalSinceReferenceDate];
            [v25 setValue:v35 forKey:keyCopy];
          }
        }

        else if (MediaAnalysisLogLevel() >= 3)
        {
          v34 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v34))
          {
            *buf = 67109634;
            *v41 = checkpoint;
            *&v41[4] = 2112;
            *&v41[6] = v24;
            *&v41[14] = 2112;
            *&v41[16] = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[MADProgressManager] Failed to report BGST Custom Checkpoint %d for taskIdentifier %@ - %@", buf, 0x1Cu);
          }
        }

LABEL_33:

LABEL_34:
        goto LABEL_35;
      }
    }

    v28 = [NSDate dateWithTimeIntervalSinceReferenceDate:v27];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v31 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        v32 = [v28 description];
        *buf = 138412546;
        *v41 = v32;
        *&v41[8] = 2048;
        *&v41[10] = v27;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[MADProgressManager] checkpoint reported on %@ (timestamp: %lld)", buf, 0x16u);
      }
    }

    v22 = 0;
    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v17 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 67109632;
      *v41 = checkpoint;
      *&v41[4] = 1024;
      *&v41[6] = v15;
      *&v41[10] = 1024;
      *&v41[12] = v14;
      v18 = "[MADProgressManager] MADBGCheckpoint %d is not within range [%d, %d]";
      v19 = v17;
      v20 = 20;
LABEL_13:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, v18, buf, v20);
    }
  }

LABEL_14:
  v22 = 0;
LABEL_35:

  return v22;
}

+ (BOOL)_reportBGSTCompletionCheckpoint:(unint64_t)checkpoint ForTask:(unint64_t)task photoLibrary:(id)library currentDate:(id)date
{
  libraryCopy = library;
  dateCopy = date;
  v12 = VCPBGSTCheckpointTimestampKeyForTask();
  if (v12)
  {
    v13 = [self _reportBGSTCustomCheckpoint:checkpoint timestampKey:v12 taskID:task photoLibrary:libraryCopy currentDate:dateCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v16[0] = 67109120;
        v16[1] = task;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MADProgessManager] Unable to report completion checkpoint for unknown task %u", v16, 8u);
      }
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)_reportBGSTFeatureCheckpointForTask:(unint64_t)task
{
  v20 = MADTaskIdentifierForBackgroundTask(task);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [self _featureCodeWithTaskID:task];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = *v24;
    type = VCPLogToOSLogType[5];
    v19 = VCPLogToOSLogType[3];
    v21 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if ([v9 unsignedIntegerValue])
        {
          unsignedIntegerValue = [v9 unsignedIntegerValue];
          v22 = 0;
          v12 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:50 forFeature:unsignedIntegerValue error:&v22];
          v13 = v22;
          if (v12)
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 67109634;
              *v28 = 50;
              *&v28[4] = 2112;
              *&v28[6] = v9;
              v29 = 2112;
              v30 = v20;
              v14 = type;
              v15 = "[MADProgressManager] Reported BGST Checkpoint %d for feature code %@ - %@";
              v16 = 28;
              goto LABEL_17;
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v19))
          {
            *buf = 67109890;
            *v28 = 50;
            *&v28[4] = 2112;
            *&v28[6] = v9;
            v29 = 2112;
            v30 = v20;
            v31 = 2112;
            v32 = v13;
            v14 = v19;
            v15 = "[MADProgressManager] Failed to report BGST Checkpoint %d for feature code %@ - %@ - %@";
            v16 = 38;
LABEL_17:
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, v15, buf, v16);
          }

          goto LABEL_19;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v21))
        {
          *buf = 138412290;
          *v28 = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MADProgressManager] Skip reporting BGST Checkpoint for %@: no feature code", buf, 0xCu);
        }

LABEL_19:
        objc_autoreleasePoolPop(v10);
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  return 1;
}

+ (void)_reportProgressMetricForIdentifier:(id)identifier itemsCompleted:(id)completed totalCount:(id)count
{
  identifierCopy = identifier;
  completedCopy = completed;
  countCopy = count;
  v10 = [[BGSystemTaskProgressMetrics alloc] initWithIdentifier:identifierCopy qos:0 workloadCategory:10 expectedMetricValue:0 itemsCompleted:completedCopy totalItemCount:countCopy];
  v11 = +[BGSystemTaskScheduler sharedScheduler];
  v23 = 0;
  v12 = [v11 reportProgressMetrics:v10 error:&v23];
  v13 = v23;

  if (v12)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v14 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        intValue = [completedCopy intValue];
        intValue2 = [countCopy intValue];
        *buf = 67109634;
        v25 = intValue;
        v26 = 1024;
        v27 = intValue2;
        v28 = 2112;
        v29 = identifierCopy;
        v17 = "[MADProgressManager] Reported progress (%d/%d) for %@";
        v18 = v14;
        v19 = 24;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, v17, buf, v19);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v20 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      intValue3 = [completedCopy intValue];
      intValue4 = [countCopy intValue];
      *buf = 67109890;
      v25 = intValue3;
      v26 = 1024;
      v27 = intValue4;
      v28 = 2112;
      v29 = identifierCopy;
      v30 = 2112;
      v31 = v13;
      v17 = "[MADProgressManager] Failed to report progress (%d/%d) for %@ - %@";
      v18 = v20;
      v19 = 34;
      goto LABEL_8;
    }
  }
}

+ (BOOL)_reportWorkloadProgressForTask:(unint64_t)task progressDetail:(id)detail
{
  detailCopy = detail;
  v7 = VCPTaskIDDescription();
  v8 = MADTaskIdentifierForBackgroundTask(task);
  if (v8)
  {
    v9 = [detailCopy objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
    v10 = [detailCopy objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
    v11 = [detailCopy objectForKeyedSubscript:VCPAnalysisCountFailedKey];
    integerValue = [v11 integerValue];

    integerValue2 = [v10 integerValue];
    integerValue3 = [v9 integerValue];
    if (integerValue >= integerValue2 - integerValue3)
    {
      v15 = (integerValue2 - integerValue3);
    }

    else
    {
      v15 = integerValue;
    }

    v16 = [NSNumber numberWithInteger:v15];
    bOOLValue = [v10 BOOLValue];
    if (bOOLValue)
    {
      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s.processed", [v8 UTF8String]);
      [self _reportProgressMetricForIdentifier:v18 itemsCompleted:v9 totalCount:v10];

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s.failed", [v8 UTF8String]);
      [self _reportProgressMetricForIdentifier:v19 itemsCompleted:v16 totalCount:v10];
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v21 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412802;
        *v24 = v7;
        *&v24[8] = 1024;
        *&v24[10] = [v9 unsignedIntegerValue];
        v25 = 1024;
        unsignedIntValue = [v10 unsignedIntValue];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MADProgressManagers] totalCount for %@ equal to zero, skipping reporting (%d/%d)", buf, 0x18u);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v20 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 67109378;
        *v24 = task;
        *&v24[4] = 2112;
        *&v24[6] = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MADProgressManager] unable to determine BGST identifier for task %d (%@)", buf, 0x12u);
      }
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)_reportMediaAnalysisSubcategoryWorkloadProgress:(id)progress totalAssetCount:(id)count subCategory:(id)category
{
  progressCopy = progress;
  countCopy = count;
  categoryCopy = category;
  v11 = VCPTaskIDDescription();
  v12 = MADTaskIdentifierForBackgroundTask(1);
  v13 = v12;
  if (countCopy)
  {
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s.%s", [v12 UTF8String], objc_msgSend(categoryCopy, "UTF8String"));
    [self _reportProgressMetricForIdentifier:v14 itemsCompleted:progressCopy totalCount:countCopy];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v15 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = categoryCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[MADProgressManager] Total assets for %@ (%@) equal to zero, skipping reporting", buf, 0x16u);
    }
  }
}

+ (BOOL)_reportFullAnalysisPerTypeWorkloadProgress:(id)progress
{
  progressCopy = progress;
  v5 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisStillImageCountKey];
  v6 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisStillImageProcessedKey];
  if ([v5 unsignedIntegerValue])
  {
    [self _reportMediaAnalysisSubcategoryWorkloadProgress:v6 totalAssetCount:v5 subCategory:@"stillImages-processed"];
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADProgressManager] Still Image count equal to 0, skipping reporting.", buf, 2u);
    }
  }

  v8 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLivePhotoCountKey];

  v9 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLivePhotoProcessedKey];

  if ([v8 unsignedIntegerValue])
  {
    [self _reportMediaAnalysisSubcategoryWorkloadProgress:v9 totalAssetCount:v8 subCategory:@"livePhotos-processed"];
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v10 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADProgressManager] Live Photo count equal to 0, skipping reporting.", v21, 2u);
    }
  }

  v11 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoCountKey];

  v12 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoProcessedKey];

  if ([v11 unsignedIntegerValue])
  {
    [self _reportMediaAnalysisSubcategoryWorkloadProgress:v12 totalAssetCount:v11 subCategory:@"videos-processed"];
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v13 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADProgressManager] Video count equal to 0, skipping reporting.", v20, 2u);
    }
  }

  v14 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisVideoDurationKey];
  v15 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedVideoDurationKey];
  v16 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedVideoDurationKey];
  if (v14)
  {
    [self _reportMediaAnalysisSubcategoryWorkloadProgress:v15 totalAssetCount:v14 subCategory:@"videoDuration-processed"];
    [self _reportMediaAnalysisSubcategoryWorkloadProgress:v16 totalAssetCount:v14 subCategory:@"videoDuration-failed"];
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v17 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MADProgressManager] Video duration equal to 0, skipping reporting.", v19, 2u);
    }
  }

  return 1;
}

+ (id)_queryProgressForTask:(unint64_t)task photoLibrary:(id)library cancelOrExtendTimeoutBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v32 = 0;
  v9 = [VCPAnalysisProgressQuery queryProgressDetail:&v32 photoLibrary:libraryCopy taskID:task cancelOrExtendTimeoutBlock:blockCopy];
  v10 = v32;
  v11 = v10;
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 67109120;
        taskCopy = task;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MADProgressManager] Failed to query progress in default photo library for task %u", buf, 8u);
      }
    }

    v13 = 0;
  }

  else
  {
    v14 = [v10 objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    v16 = [v11 objectForKeyedSubscript:VCPAnalysisCountStickyFailedKey];
    unsignedIntegerValue2 = [v16 unsignedIntegerValue];

    v18 = [v11 objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
    unsignedIntegerValue3 = [v18 unsignedIntegerValue];

    if (unsignedIntegerValue3)
    {
      *&v20 = (unsignedIntegerValue / unsignedIntegerValue3) * 100.0;
      v21 = [NSNumber numberWithFloat:v20];
      [v11 setObject:v21 forKeyedSubscript:@"progressPercentageQueryKey"];

      *&v22 = ((unsignedIntegerValue + unsignedIntegerValue2) / unsignedIntegerValue3) * 100.0;
      v23 = [NSNumber numberWithFloat:v22];
      [v11 setObject:v23 forKeyedSubscript:@"progressOrFailedPercentageQueryKey"];
    }

    if (task == 3)
    {
      v25 = [v11 objectForKeyedSubscript:VCPAnalysisCountPrioritizedProcessedKey];
      unsignedIntegerValue4 = [v25 unsignedIntegerValue];

      v27 = [v11 objectForKeyedSubscript:VCPAnalysisCountPrioritizedTotalAllowedKey];
      unsignedIntegerValue5 = [v27 unsignedIntegerValue];

      if (unsignedIntegerValue5)
      {
        *&v29 = (unsignedIntegerValue4 / unsignedIntegerValue5) * 100.0;
        v30 = [NSNumber numberWithFloat:v29];
        [v11 setObject:v30 forKeyedSubscript:VCPKeyValuePrioritizedFaceAnalysisProgressPercentage];
      }
    }

    else if (task == 1)
    {
      if ([VCPAnalysisProgressQuery queryVideoCountAndDurationBreakdown:v11 photoLibrary:libraryCopy taskID:1 cancelOrExtendTimeoutBlock:blockCopy])
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v24 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[MADProgressManager] Failed to query video durations for full analysis", buf, 2u);
          }
        }
      }
    }

    v13 = v11;
  }

  return v13;
}

+ (BOOL)_storeProgress:(id)progress forTask:(unint64_t)task subtype:(unint64_t)subtype photoLibrary:(id)library
{
  progressCopy = progress;
  libraryCopy = library;
  v11 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v13 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
  unsignedIntegerValue2 = [v13 unsignedIntegerValue];

  if (subtype == 1)
  {
    v15 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountPrioritizedProcessedKey];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    v16 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountPrioritizedTotalAllowedKey];
    unsignedIntegerValue2 = [v16 unsignedIntegerValue];
  }

  if (task > 9)
  {
    if (task <= 15)
    {
      if (task != 10)
      {
        if (task == 12)
        {
          mad_faceProcessingInternalVersion = VCPPhotosVisualSearchAlgorithmVersion();
LABEL_23:
          v21 = mad_faceProcessingInternalVersion;
LABEL_24:
          v22 = +[NSDate now];
          if (+[MADManagedBackgroundAnalysisProgressHistory isMACDPersistEnabled])
          {
            v102[0] = _NSConcreteStackBlock;
            v102[1] = 3221225472;
            v102[2] = sub_1001678E4;
            v102[3] = &unk_1002876E0;
            taskCopy = task;
            subtypeCopy = subtype;
            v106 = v21;
            v107 = unsignedIntegerValue;
            v108 = unsignedIntegerValue2;
            v103 = v22;
            [libraryCopy mad_performAnalysisDataStoreChanges:v102 error:0];
          }

          else
          {
            v23 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
            v24 = [v23 storeProgressForActivityID:task withAnalysisSubtype:subtype version:v21 processedAssetCount:unsignedIntegerValue totalAssetCount:unsignedIntegerValue2 storeDate:v22];

            if (v24)
            {
              if (MediaAnalysisLogLevel() < 3)
              {
                goto LABEL_38;
              }

              v25 = VCPLogToOSLogType[3];
              if (!os_log_type_enabled(&_os_log_default, v25))
              {
                goto LABEL_38;
              }

              *buf = 67109632;
              taskCopy3 = v24;
              v111 = 1024;
              taskCopy2 = task;
              v113 = 1024;
              subtypeCopy3 = subtype;
              v26 = "[MADProgressManager] Error %d in storing progress for task:subtask %u:%u";
              v27 = v25;
              goto LABEL_37;
            }
          }

          if (task != 1)
          {
LABEL_39:
            v20 = 1;
            goto LABEL_40;
          }

          if (+[MADManagedKeyValueStore isMACDPersistEnabled])
          {
            v100[0] = _NSConcreteStackBlock;
            v100[1] = 3221225472;
            v100[2] = sub_1001678F8;
            v100[3] = &unk_100283AD0;
            v101 = progressCopy;
            [libraryCopy mad_performAnalysisDataStoreChanges:v100 error:0];

            goto LABEL_39;
          }

          v28 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
          v29 = VCPAnalysisCountFullAnalysisStillImageCountKey;
          v30 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisStillImageCountKey];
          [v28 setValue:objc_msgSend(v30 forKey:{"longLongValue"), v29}];

          v31 = VCPAnalysisCountFullAnalysisStillImageProcessedKey;
          v32 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisStillImageProcessedKey];
          [v28 setValue:objc_msgSend(v32 forKey:{"longLongValue"), v31}];

          v33 = VCPAnalysisCountFullAnalysisLivePhotoCountKey;
          v34 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLivePhotoCountKey];
          [v28 setValue:objc_msgSend(v34 forKey:{"longLongValue"), v33}];

          v35 = VCPAnalysisCountFullAnalysisLivePhotoProcessedKey;
          v36 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLivePhotoProcessedKey];
          [v28 setValue:objc_msgSend(v36 forKey:{"longLongValue"), v35}];

          v37 = VCPAnalysisCountFullAnalysisVideoCountKey;
          v38 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoCountKey];
          [v28 setValue:objc_msgSend(v38 forKey:{"longLongValue"), v37}];

          v39 = VCPAnalysisCountFullAnalysisSlowmoVideoCountKey;
          v40 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoCountKey];
          [v28 setValue:objc_msgSend(v40 forKey:{"longLongValue"), v39}];

          v41 = VCPAnalysisCountFullAnalysisLongVideoCountKey;
          v42 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoCountKey];
          [v28 setValue:objc_msgSend(v42 forKey:{"longLongValue"), v41}];

          v43 = VCPAnalysisCountFullAnalysisVideoProcessedKey;
          v44 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoProcessedKey];
          [v28 setValue:objc_msgSend(v44 forKey:{"longLongValue"), v43}];

          v45 = VCPAnalysisCountFullAnalysisSlowmoVideoProcessedKey;
          v46 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoProcessedKey];
          [v28 setValue:objc_msgSend(v46 forKey:{"longLongValue"), v45}];

          v47 = VCPAnalysisCountFullAnalysisLongVideoProcessedKey;
          v48 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoProcessedKey];
          [v28 setValue:objc_msgSend(v48 forKey:{"longLongValue"), v47}];

          v49 = VCPAnalysisCountFullAnalysisVideoFailedKey;
          v50 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoFailedKey];
          [v28 setValue:objc_msgSend(v50 forKey:{"longLongValue"), v49}];

          v51 = VCPAnalysisCountFullAnalysisSlowmoVideoFailedKey;
          v52 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoFailedKey];
          [v28 setValue:objc_msgSend(v52 forKey:{"longLongValue"), v51}];

          v53 = VCPAnalysisCountFullAnalysisLongVideoFailedKey;
          v54 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoFailedKey];
          [v28 setValue:objc_msgSend(v54 forKey:{"longLongValue"), v53}];

          v55 = VCPAnalysisCountFullAnalysisVideoGatedKey;
          v56 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisVideoGatedKey];
          [v28 setValue:objc_msgSend(v56 forKey:{"longLongValue"), v55}];

          v57 = VCPAnalysisCountFullAnalysisSlowmoVideoGatedKey;
          v58 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisSlowmoVideoGatedKey];
          [v28 setValue:objc_msgSend(v58 forKey:{"longLongValue"), v57}];

          v59 = VCPAnalysisCountFullAnalysisLongVideoGatedKey;
          v60 = [progressCopy objectForKeyedSubscript:VCPAnalysisCountFullAnalysisLongVideoGatedKey];
          [v28 setValue:objc_msgSend(v60 forKey:{"longLongValue"), v59}];

          v61 = VCPAnalysisFullAnalysisVideoDurationKey;
          v62 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisVideoDurationKey];
          [v62 doubleValue];
          [v28 setValue:v63 forKey:v61];

          v64 = VCPAnalysisFullAnalysisSlowmoVideoDurationKey;
          v65 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisSlowmoVideoDurationKey];
          [v65 doubleValue];
          [v28 setValue:v66 forKey:v64];

          v67 = VCPAnalysisFullAnalysisLongVideoDurationKey;
          v68 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisLongVideoDurationKey];
          [v68 doubleValue];
          [v28 setValue:v69 forKey:v67];

          v70 = VCPAnalysisFullAnalysisProcessedVideoDurationKey;
          v71 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedVideoDurationKey];
          [v71 doubleValue];
          [v28 setValue:v72 forKey:v70];

          v73 = VCPAnalysisFullAnalysisProcessedSlowmoVideoDurationKey;
          v74 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedSlowmoVideoDurationKey];
          [v74 doubleValue];
          [v28 setValue:v75 forKey:v73];

          v76 = VCPAnalysisFullAnalysisProcessedLongVideoDurationKey;
          v77 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisProcessedLongVideoDurationKey];
          [v77 doubleValue];
          [v28 setValue:v78 forKey:v76];

          v79 = VCPAnalysisFullAnalysisFailedVideoDurationKey;
          v80 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedVideoDurationKey];
          [v80 doubleValue];
          [v28 setValue:v81 forKey:v79];

          v82 = VCPAnalysisFullAnalysisFailedSlowmoVideoDurationKey;
          v83 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedSlowmoVideoDurationKey];
          [v83 doubleValue];
          [v28 setValue:v84 forKey:v82];

          v85 = VCPAnalysisFullAnalysisFailedLongVideoDurationKey;
          v86 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisFailedLongVideoDurationKey];
          [v86 doubleValue];
          [v28 setValue:v87 forKey:v85];

          v88 = VCPAnalysisFullAnalysisGatedVideoDurationKey;
          v89 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisGatedVideoDurationKey];
          [v89 doubleValue];
          [v28 setValue:v90 forKey:v88];

          v91 = VCPAnalysisFullAnalysisGatedSlowmoVideoDurationKey;
          v92 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisGatedSlowmoVideoDurationKey];
          [v92 doubleValue];
          [v28 setValue:v93 forKey:v91];

          v94 = VCPAnalysisFullAnalysisGatedLongVideoDurationKey;
          v95 = [progressCopy objectForKeyedSubscript:VCPAnalysisFullAnalysisGatedLongVideoDurationKey];
          [v95 doubleValue];
          [v28 setValue:v96 forKey:v94];

          commit = [v28 commit];
          if (!commit)
          {
            goto LABEL_39;
          }

          if (MediaAnalysisLogLevel() < 3 || (v98 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v98)))
          {
LABEL_38:
            v20 = 0;
LABEL_40:

            goto LABEL_41;
          }

          *buf = 67109632;
          taskCopy3 = commit;
          v111 = 1024;
          taskCopy2 = 1;
          v113 = 1024;
          subtypeCopy3 = subtype;
          v26 = "[MADProgressManager] Error %d in storing additional progress for task:subtask %u:%u";
          v27 = v98;
LABEL_37:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, v26, buf, 0x14u);
          goto LABEL_38;
        }

        goto LABEL_15;
      }

      v18 = &VCPPhotosOCRProcessingVersion;
LABEL_21:
      v21 = *v18;
      goto LABEL_24;
    }

    if (task == 16)
    {
      v18 = &VCPPhotosPECProcessingVersion;
      goto LABEL_21;
    }

    if (task != 255)
    {
      goto LABEL_15;
    }

LABEL_14:
    v18 = &MediaAnalysisVersion;
    goto LABEL_21;
  }

  switch(task)
  {
    case 1uLL:
      goto LABEL_14;
    case 2uLL:
      mad_faceProcessingInternalVersion = VCPPhotosSceneProcessingVersionInternal();
      goto LABEL_23;
    case 3uLL:
      mad_faceProcessingInternalVersion = [libraryCopy mad_faceProcessingInternalVersion];
      goto LABEL_23;
  }

LABEL_15:
  if (MediaAnalysisLogLevel() >= 4)
  {
    v19 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      *buf = 67109120;
      taskCopy3 = task;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MADProgressManager] Unsupported analysis type %d", buf, 8u);
    }
  }

  v20 = 0;
LABEL_41:

  return v20;
}

+ (BOOL)_storeProgress:(id)progress forTask:(unint64_t)task photoLibrary:(id)library
{
  progressCopy = progress;
  libraryCopy = library;
  v10 = [self _storeProgress:progressCopy forTask:task subtype:0 photoLibrary:libraryCopy];
  v11 = v10 ^ 1;
  if (task != 3)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v10 = [self _storeProgress:progressCopy forTask:3 subtype:1 photoLibrary:libraryCopy];
  }

  return v10;
}

+ (BOOL)_correctAnachronisticTimestampsForTask:(unint64_t)task completionDates:(id)dates photoLibrary:(id)library
{
  datesCopy = dates;
  libraryCopy = library;
  v8 = [datesCopy objectForKeyedSubscript:@"Date50ProcessedOrFailed"];
  v9 = [datesCopy objectForKeyedSubscript:@"Date90ProcessedOrFailed"];
  [v9 timeIntervalSinceDate:v8];
  if (v10 < 0.0)
  {
    v11 = VCPPercentCompleteTimestampKeyForTask();
    [v8 timeIntervalSinceReferenceDate];
    v13 = v12;
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001683FC;
      v26[3] = &unk_100285478;
      v28 = v13;
      v27 = v11;
      [libraryCopy mad_performAnalysisDataStoreChanges:v26 error:0];
    }

    else
    {
      v14 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
      [v14 setValue:v13 forKey:v11];
      [v14 commit];
    }
  }

  v15 = [datesCopy objectForKeyedSubscript:@"Date50Processed"];

  v16 = [datesCopy objectForKeyedSubscript:@"Date90Processed"];

  [v16 timeIntervalSinceDate:v15];
  if (v17 < 0.0)
  {
    v18 = VCPPercentCompleteTimestampKeyForTask();
    [v15 timeIntervalSinceReferenceDate];
    v20 = v19;
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100168408;
      v23[3] = &unk_100285478;
      v25 = v20;
      v24 = v18;
      [libraryCopy mad_performAnalysisDataStoreChanges:v23 error:0];
      v21 = v24;
    }

    else
    {
      v21 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
      [v21 setValue:v20 forKey:v18];
      [v21 commit];
    }
  }

  return 0;
}

+ (id)_computeCompletionDatesWithProgress:(id)progress photoLibrary:(id)library taskID:(unint64_t)d currentDate:(id)date
{
  progressCopy = progress;
  libraryCopy = library;
  dateCopy = date;
  v13 = +[NSMutableDictionary dictionary];
  v28 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
  v14 = [progressCopy objectForKeyedSubscript:@"progressPercentageQueryKey"];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  v16 = [progressCopy objectForKeyedSubscript:@"progressOrFailedPercentageQueryKey"];
  unsignedIntegerValue2 = [v16 unsignedIntegerValue];

  v18 = VCPAnalysisComplete50Percentage;
  if (unsignedIntegerValue2 >= VCPAnalysisComplete50Percentage)
  {
    v19 = [self _getOrSetCompletionDateForTask:d completeThreshold:VCPAnalysisComplete50Percentage includeFailures:1 photoLibrary:libraryCopy currentDate:dateCopy];
    [v13 setObject:v19 forKeyedSubscript:@"Date50ProcessedOrFailed"];

    if (unsignedIntegerValue >= v18)
    {
      v20 = [self _getOrSetCompletionDateForTask:d completeThreshold:v18 includeFailures:0 photoLibrary:libraryCopy currentDate:dateCopy];
      [v13 setObject:v20 forKeyedSubscript:@"Date50Processed"];
    }
  }

  v21 = VCPAnalysisComplete90Percentage;
  if (unsignedIntegerValue2 >= VCPAnalysisComplete90Percentage)
  {
    v22 = [self _getOrSetCompletionDateForTask:d completeThreshold:VCPAnalysisComplete90Percentage includeFailures:1 photoLibrary:libraryCopy currentDate:dateCopy];
    [v13 setObject:v22 forKeyedSubscript:@"Date90ProcessedOrFailed"];

    if (unsignedIntegerValue >= v21)
    {
      v23 = [self _getOrSetCompletionDateForTask:d completeThreshold:v21 includeFailures:0 photoLibrary:libraryCopy currentDate:dateCopy];
      [v13 setObject:v23 forKeyedSubscript:@"Date90Processed"];
    }
  }

  v24 = VCPAnalysisComplete99Percentage;
  if (unsignedIntegerValue2 >= VCPAnalysisComplete99Percentage)
  {
    v25 = [self _getOrSetCompletionDateForTask:d completeThreshold:VCPAnalysisComplete99Percentage includeFailures:1 photoLibrary:libraryCopy currentDate:dateCopy];
    [v13 setObject:v25 forKeyedSubscript:@"Date99ProcessedOrFailed"];

    if (unsignedIntegerValue >= v24)
    {
      v26 = [self _getOrSetCompletionDateForTask:d completeThreshold:v24 includeFailures:0 photoLibrary:libraryCopy currentDate:dateCopy];
      [v13 setObject:v26 forKeyedSubscript:@"Date99Processed"];
    }
  }

  [self _correctAnachronisticTimestampsForTask:d completionDates:v13 photoLibrary:libraryCopy];

  return v13;
}

+ (void)_reportCompletionDates:(id)dates progressDetail:(id)detail photoLibrary:(id)library taskID:(unint64_t)d currentDate:(id)date
{
  datesCopy = dates;
  detailCopy = detail;
  libraryCopy = library;
  dateCopy = date;
  v32 = [datesCopy objectForKeyedSubscript:@"Date90ProcessedOrFailed"];
  v14 = [datesCopy objectForKeyedSubscript:@"Date90ProcessedOrFailed"];

  if (v14)
  {
    [self _reportBGSTCompletionCheckpoint:505 ForTask:d photoLibrary:libraryCopy currentDate:dateCopy];
  }

  v15 = [datesCopy objectForKeyedSubscript:@"Date90Processed"];

  if (v15 && [self _reportBGSTCompletionCheckpoint:509 ForTask:d photoLibrary:libraryCopy currentDate:dateCopy])
  {
    [self _reportBGSTFeatureCheckpointForTask:d];
  }

  v33 = VCPTaskIDDescription();
  v16 = [detailCopy objectForKeyedSubscript:@"progressPercentageQueryKey"];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v18 = [detailCopy objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
  unsignedIntegerValue2 = [v18 unsignedIntegerValue];

  v20 = [detailCopy objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
  unsignedIntegerValue3 = [v20 unsignedIntegerValue];
  v31 = unsignedIntegerValue2;

  v22 = [self _getOrSetStartDateForTask:d photoLibrary:libraryCopy currentDate:dateCopy];
  v23 = +[NSCalendar currentCalendar];
  v24 = [v23 components:16 fromDate:v22 toDate:dateCopy options:0];
  v25 = [v24 day];

  v26 = [datesCopy objectForKeyedSubscript:@"Date99ProcessedOrFailed"];
  if (v26)
  {
    v27 = +[NSCalendar currentCalendar];
    v28 = [v27 components:16 fromDate:v22 toDate:v26 options:0];
    v29 = [v28 day];
  }

  else
  {
    v29 = -1;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v30 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v30))
    {
      *buf = 138413570;
      v37 = v33;
      v38 = 1024;
      v39 = unsignedIntegerValue;
      v40 = 1024;
      v41 = v31;
      v42 = 1024;
      v43 = unsignedIntegerValue3;
      v44 = 1024;
      v45 = v25;
      v46 = 1024;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[%@] progress %du%% (%du analyzed assets, %du total assets, %du days since start, %du days spent to complete)", buf, 0x2Au);
    }
  }

  VCPCoreAnalyticsReportEventAnalysisProgress(v33, v25, v29, unsignedIntegerValue, unsignedIntegerValue3);
}

+ (void)_reportProgressDetail:(id)detail taskID:(unint64_t)d photoLibrary:(id)library
{
  detailCopy = detail;
  libraryCopy = library;
  v9 = +[NSDate now];
  v10 = [self _computeCompletionDatesWithProgress:detailCopy photoLibrary:libraryCopy taskID:d currentDate:v9];
  [self _reportCompletionDates:v10 progressDetail:detailCopy photoLibrary:libraryCopy taskID:d currentDate:v9];
  if (d == 3)
  {
    [self _reportFaceP1ProgressDetail:detailCopy photoLibrary:libraryCopy currentDate:v9];
  }

  if ([self _reportWorkloadProgressForTask:d progressDetail:detailCopy])
  {
    if (d == 1)
    {
      [self _reportFullAnalysisPerTypeWorkloadProgress:detailCopy];
    }

    [self clearProgressUpdateRequestForTask:d];
  }
}

+ (void)_reportFaceP1ProgressDetail:(id)detail photoLibrary:(id)library currentDate:(id)date
{
  detailCopy = detail;
  libraryCopy = library;
  dateCopy = date;
  v10 = [detailCopy objectForKeyedSubscript:VCPKeyValuePrioritizedFaceAnalysisProgressPercentage];
  [v10 doubleValue];
  v12 = v11;

  v13 = [detailCopy objectForKeyedSubscript:VCPAnalysisCountPrioritizedTotalAllowedKey];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  if (v12 <= VCPAnalysisComplete90Percentage)
  {
    v16 = 0;
  }

  else
  {
    v15 = VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp;
    v16 = [self _getOrSetDateWithKey:VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp photoLibrary:libraryCopy currentDate:dateCopy];
    [dateCopy timeIntervalSinceDate:v16];
    if (fabs(v17) < 1.0)
    {
      [self _reportBGSTCustomCheckpoint:501 timestampKey:v15 taskID:3 photoLibrary:libraryCopy currentDate:dateCopy];
    }
  }

  v18 = [self _getOrSetStartDateForTask:3 photoLibrary:libraryCopy currentDate:dateCopy];
  v19 = +[NSCalendar currentCalendar];
  v20 = [v19 components:16 fromDate:v18 toDate:dateCopy options:0];
  v21 = [v20 day];

  if (v16)
  {
    v22 = +[NSCalendar currentCalendar];
    v23 = [v22 components:16 fromDate:v18 toDate:v16 options:0];
    v24 = [v23 day];
  }

  else
  {
    v24 = -1;
  }

  VCPCoreAnalyticsReportEventAnalysisProgress(@"PrioritizedFaceAnalysis", v21, v24, v12, unsignedIntegerValue);
}

+ (id)_queryAndReportProgressForAnalysis:(unint64_t)analysis photoLibrary:(id)library cancelOrExtendTimeoutBlock:(id)block
{
  libraryCopy = library;
  v9 = [self _queryProgressForTask:analysis photoLibrary:libraryCopy cancelOrExtendTimeoutBlock:block];
  [self _storeProgress:v9 forTask:analysis photoLibrary:libraryCopy];
  if ([libraryCopy isSystemPhotoLibrary])
  {
    [self _reportProgressDetail:v9 taskID:analysis photoLibrary:libraryCopy];
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v10 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADProgressManager] Skipping progress report for non-system-photo-library", v12, 2u);
    }
  }

  return v9;
}

+ (void)_queryAndReportProgressForMediaAnalysisImageForPhotoLibrary:(id)library reuseCachedValue:(BOOL)value
{
  valueCopy = value;
  libraryCopy = library;
  v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
  v8 = +[NSDate now];
  v36 = 0;
  longLongValue = 0;
  if (valueCopy)
  {
    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      mad_fetchRequest = [libraryCopy mad_fetchRequest];
      v10 = [mad_fetchRequest fetchDataStoreValueIfKeyExists:VCPKeyValueMediaAnalysisImagePriority1ProgressPercentage];

      if (v10)
      {
        longLongValue = [v10 longLongValue];
        mad_fetchRequest2 = [libraryCopy mad_fetchRequest];
        v36 = [mad_fetchRequest2 dataStoreValueForKey:VCPKeyValueMediaAnalysisImagePriority1TotalAssetCount];
      }
    }

    else
    {
      v15 = VCPKeyValueMediaAnalysisImagePriority1ProgressPercentage;
      if ([v7 keyExistsInKeyValueStore:VCPKeyValueMediaAnalysisImagePriority1ProgressPercentage])
      {
        longLongValue = [v7 valueForKey:v15];
        v13 = 0;
        v36 = [v7 valueForKey:VCPKeyValueMediaAnalysisImagePriority1TotalAssetCount];
        goto LABEL_13;
      }
    }

    v13 = 0;
  }

  else
  {
    v35 = 0;
    v12 = [libraryCopy mad_calculateProgressPercentage:&longLongValue totalAssetCount:&v36 progressPercentageWithFailure:0 taskID:1 phTaskID:17 priority:1 failedAssetCount:0 error:&v35];
    v13 = v35;
    if ((v12 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_48;
      }

      v14 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v14))
      {
        goto LABEL_48;
      }

      *buf = 138412802;
      v39 = @"MediaAnalysisImage";
      v40 = 1024;
      v41 = 1;
      v42 = 2112;
      v43 = v13;
LABEL_30:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@] Failed to query progress for priority %u: %@", buf, 0x1Cu);
      goto LABEL_48;
    }
  }

LABEL_13:
  v16 = VCPAnalysisComplete90Percentage;
  if (longLongValue >= VCPAnalysisComplete90Percentage)
  {
    [self _reportBGSTCustomCheckpoint:507 timestampKey:VCPKeyValueMediaAnalysisImagePriority1CheckpointReportedTimestamp taskID:1 photoLibrary:libraryCopy currentDate:v8];
  }

  else
  {
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      [libraryCopy mad_performAnalysisDataStoreChanges:&stru_100287700 error:0];
    }

    else
    {
      [v7 removeKey:VCPKeyValueMediaAnalysisImagePriority1CheckpointReportedTimestamp];
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 138412290;
        v39 = @"MediaAnalysisImage";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@] not completed yet", buf, 0xCu);
      }
    }
  }

  v18 = [NSNumber numberWithUnsignedInt:((longLongValue * v36) / 100.0)];
  v19 = [NSNumber numberWithUnsignedInteger:v36];
  [self _reportMediaAnalysisSubcategoryWorkloadProgress:v18 totalAssetCount:v19 subCategory:@"prioritized"];

  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest3 = [libraryCopy mad_fetchRequest];
    v21 = [mad_fetchRequest3 fetchAssetCountForTaskID:255];
  }

  else
  {
    v21 = [v7 queryAssetCountForTaskID:255];
  }

  v22 = v21;
  v31 = v13;
  v23 = [libraryCopy mad_calculateProgressPercentage:&v34 totalAssetCount:&v33 progressPercentageWithFailure:&v32 taskID:1 phTaskID:17 priority:0 failedAssetCount:v21 error:&v31];
  v24 = v31;

  v13 = v24;
  if ((v23 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_48;
    }

    v14 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v14))
    {
      goto LABEL_48;
    }

    *buf = 138412802;
    v39 = @"MediaAnalysisImage";
    v40 = 1024;
    v41 = 0;
    v42 = 2112;
    v43 = v24;
    goto LABEL_30;
  }

  if (v34 <= v16)
  {
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      [libraryCopy mad_performAnalysisDataStoreChanges:&stru_100287720 error:0];
    }

    else
    {
      [v7 removeKey:VCPKeyValueMediaAnalysisImageCheckpointReportedTimestamp];
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v25 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        *buf = 138412290;
        v39 = @"MediaAnalysisImage";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[%@] not completed yet", buf, 0xCu);
      }
    }
  }

  else
  {
    [self _reportBGSTCustomCheckpoint:508 timestampKey:VCPKeyValueMediaAnalysisImageCheckpointReportedTimestamp taskID:1 photoLibrary:libraryCopy currentDate:v8];
  }

  if (v32 <= v16)
  {
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      [libraryCopy mad_performAnalysisDataStoreChanges:&stru_100287740 error:0];
    }

    else
    {
      [v7 removeKey:VCPKeyValueMediaAnalysisImageCheckpointWithFailureReportedTimestamp];
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v26 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v39 = @"MediaAnalysisImage";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@] not completed yet", buf, 0xCu);
      }
    }
  }

  else
  {
    [self _reportBGSTCustomCheckpoint:504 timestampKey:VCPKeyValueMediaAnalysisImageCheckpointWithFailureReportedTimestamp taskID:1 photoLibrary:libraryCopy currentDate:v8];
  }

  if ((+[MADManagedKeyValueStore isMACDPersistEnabled]& 1) == 0)
  {
    [v7 commit];
  }

  0x64 = [NSNumber numberWithUnsignedInteger:v33 * v34 / 0x64];
  v28 = [NSNumber numberWithUnsignedInteger:v33];
  [self _reportMediaAnalysisSubcategoryWorkloadProgress:0x64 totalAssetCount:v28 subCategory:@"image"];

  v29 = [NSNumber numberWithUnsignedInteger:v22];
  v30 = [NSNumber numberWithUnsignedInteger:v33];
  [self _reportMediaAnalysisSubcategoryWorkloadProgress:v29 totalAssetCount:v30 subCategory:@"failedImage"];

LABEL_48:
}

+ (int)cacheCurrentFaceProgressForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v33 = 0;
  commit = [VCPAnalysisProgressQuery queryProgressDetail:&v33 photoLibrary:libraryCopy taskID:3 cancelOrExtendTimeoutBlock:&stru_100287760];
  v5 = v33;
  if (commit)
  {
    goto LABEL_18;
  }

  if (!+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v13 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    v14 = [v5 objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
    longLongValue = [v14 longLongValue];
    commit = [v13 setValue:longLongValue forKey:VCPKeyValueNumberOfAssetsAllowedForPhotosFaceProcessing];

    if (commit || ([v5 objectForKeyedSubscript:VCPAnalysisCountProcessedKey], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "longLongValue"), commit = objc_msgSend(v13, "setValue:forKey:", v17, VCPKeyValueNumberOfAssetsAnalyzedForPhotosFaceProcessing), v16, commit) || (objc_msgSend(v5, "objectForKeyedSubscript:", VCPAnalysisCountPrioritizedProcessedKey), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "longLongValue"), commit = objc_msgSend(v13, "setValue:forKey:", v19, VCPKeyValuePrioritizedProcessedForPhotosFaceProcessing), v18, commit) || (objc_msgSend(v5, "objectForKeyedSubscript:", VCPAnalysisCountPrioritizedTotalAllowedKey), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "longLongValue"), commit = objc_msgSend(v13, "setValue:forKey:", v21, VCPKeyValuePrioritizedTotalAllowedForPhotosFaceProcessing), v20, commit))
    {

      goto LABEL_18;
    }

    commit = [v13 commit];

    if (commit)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100169E98;
  v31 = &unk_100283AD0;
  v6 = v5;
  v32 = v6;
  v7 = [libraryCopy mad_performAnalysisDataStoreChanges:&v28 error:0];
  if (v7)
  {

LABEL_5:
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = [v5 objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
        v10 = [v5 objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
        v11 = [v5 objectForKeyedSubscript:VCPAnalysisCountPrioritizedProcessedKey];
        v12 = [v5 objectForKeyedSubscript:VCPAnalysisCountPrioritizedTotalAllowedKey];
        *buf = 138413058;
        v35 = v9;
        v36 = 2112;
        v37 = v10;
        v38 = 2112;
        v39 = v11;
        v40 = 2112;
        v41 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Cached face progress: %@ out of %@, and prioritized %@ out of %@", buf, 0x2Au);
      }
    }

    commit = 0;
    goto LABEL_18;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v22 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      v23 = [v6 objectForKeyedSubscript:{VCPAnalysisCountProcessedKey, v28, v29, v30, v31}];
      v24 = [v6 objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
      v25 = [v6 objectForKeyedSubscript:VCPAnalysisCountPrioritizedProcessedKey];
      v26 = [v6 objectForKeyedSubscript:VCPAnalysisCountPrioritizedTotalAllowedKey];
      *buf = 138413058;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Failed to cache face progress: %@ out of %@, and prioritized %@ out of %@", buf, 0x2Au);
    }
  }

  commit = v7 ^ 1;
LABEL_18:

  return commit;
}

+ (int)cacheProcessedAssetCountAfterPromoter:(unint64_t)promoter photoLibrary:(id)library
{
  libraryCopy = library;
  v6 = +[NSDate now];
  if (!+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v13 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    commit = [v13 setValue:promoter forKey:VCPKeyValueNumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing];
    if (commit || ([v6 timeIntervalSinceReferenceDate], (commit = objc_msgSend(v13, "setValue:forKey:", v14, VCPKeyValueLastPromoterTimestamp)) != 0))
    {

      goto LABEL_15;
    }

    commit = [v13 commit];

    if (commit)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10016A304;
  v18[3] = &unk_100285478;
  promoterCopy = promoter;
  v7 = v6;
  v19 = v7;
  v17 = 0;
  v8 = [libraryCopy mad_performAnalysisDataStoreChanges:v18 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v8)
  {

LABEL_4:
    if (MediaAnalysisLogLevel() >= 5)
    {
      v11 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 134218242;
        promoterCopy3 = promoter;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Cache processed asset count after promoter: %lu (promoter date: %@)", buf, 0x16u);
      }
    }

    commit = 0;
    goto LABEL_15;
  }

  commit = [v9 code];
  if (MediaAnalysisLogLevel() >= 3)
  {
    v15 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 134218498;
      promoterCopy3 = promoter;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to cache processed asset count after promoter: %lu (promoter date: %@): %@", buf, 0x20u);
    }
  }

LABEL_15:
  return commit;
}

+ (void)updateProgressForTask:(unint64_t)task photoLibrary:(id)library reuseCachedValue:(BOOL)value cancelOrExtendTimeoutBlock:(id)block
{
  valueCopy = value;
  libraryCopy = library;
  blockCopy = block;
  v46 = MADTaskIdentifierForBackgroundTask(task);
  v12 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
  if (task == 1)
  {
    v21 = mach_absolute_time();
    v22 = VCPSignPostLog();
    v23 = os_signpost_id_generate(v22);

    v24 = VCPSignPostLog();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VCPMADCollectAndReportAnalysisProgress_MediaAnalysisImage", "", buf, 2u);
    }

    [self _queryAndReportProgressForMediaAnalysisImageForPhotoLibrary:libraryCopy reuseCachedValue:valueCopy];
    v26 = VCPSignPostLog();
    v27 = v26;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v23, "VCPMADCollectAndReportAnalysisProgress_MediaAnalysisImage", "", buf, 2u);
    }

    if (v21)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (task != 16)
  {
    if (task != 3)
    {
      goto LABEL_31;
    }

    v13 = mach_absolute_time();
    v14 = VCPSignPostLog();
    v15 = os_signpost_id_generate(v14);

    v16 = VCPSignPostLog();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPMADCollectAndReportAnalysisProgress_CacheFaceProgress", "", buf, 2u);
    }

    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      mad_fetchRequest = [libraryCopy mad_fetchRequest];
      v19 = [mad_fetchRequest dataStoreValueForKey:VCPKeyValueNumberOfAssetsAllowedForPhotosFaceProcessing];

      if (!v19)
      {
        goto LABEL_25;
      }
    }

    else if (![v12 valueForKey:VCPKeyValueNumberOfAssetsAllowedForPhotosFaceProcessing])
    {
LABEL_25:
      [objc_opt_class() cacheCurrentFaceProgressForPhotoLibrary:libraryCopy];
    }

    v32 = VCPSignPostLog();
    v33 = v32;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v15, "VCPMADCollectAndReportAnalysisProgress_CacheFaceProgress", "", buf, 2u);
    }

    if (v13)
    {
LABEL_30:
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

LABEL_31:
    if (blockCopy && blockCopy[2](blockCopy))
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v34 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          *buf = 138412290;
          v48 = v46;
          v29 = "[%@] User cancelled during updateProgressForTask ...";
          v30 = v34;
          v31 = 12;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v35 = mach_absolute_time();
      v36 = VCPSignPostLog();
      v37 = os_signpost_id_generate(v36);

      v38 = VCPSignPostLog();
      v39 = v38;
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        v40 = VCPTaskIDDescription();
        *buf = 138412290;
        v48 = v40;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "VCPMADCollectAndReportAnalysisProgress", "_%@", buf, 0xCu);
      }

      v41 = [self _queryAndReportProgressForAnalysis:task photoLibrary:libraryCopy cancelOrExtendTimeoutBlock:blockCopy];
      v42 = VCPSignPostLog();
      v43 = v42;
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        v44 = VCPTaskIDDescription();
        *buf = 138412290;
        v48 = v44;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, v37, "VCPMADCollectAndReportAnalysisProgress", "_%@", buf, 0xCu);
      }

      if (v35)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if (+[MADManagedBackgroundAnalysisProgressHistory isMACDPersistEnabled])
      {
        [libraryCopy mad_performAnalysisDataStoreChanges:&stru_100287780 error:0];
      }

      else
      {
        [v12 removeProgressEntriesBeyondLimits];
        [v12 commit];
      }
    }

    goto LABEL_48;
  }

  if (MADIsPECProcessingEnabled())
  {
    v20 = objc_alloc_init(VIService);
    if (([v20 mad_isEncryptedSearchProxyEnabled] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v45 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v45))
        {
          *buf = 138412290;
          v48 = v46;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "[%@] PEC is disabled in this region, skipping progress update", buf, 0xCu);
        }
      }

      goto LABEL_48;
    }

    goto LABEL_31;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v28 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v28))
    {
      *buf = 0;
      v29 = "[MADProgressManager] PEC is disabled by user settings, skipping progress update";
      v30 = v28;
      v31 = 2;
LABEL_36:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v30, v29, buf, v31);
    }
  }

LABEL_48:
}

+ (void)updateProgressIfRequestedForTasks:(id)tasks photoLibrary:(id)library reuseCachedValue:(BOOL)value cancelOrExtendTimeoutBlock:(id)block
{
  tasksCopy = tasks;
  libraryCopy = library;
  blockCopy = block;
  v37 = libraryCopy;
  v39 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
  v10 = +[NSDate now];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = tasksCopy;
  v13 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v13)
  {
    v38 = v12;
    v14 = *v45;
    v35 = VCPLogToOSLogType[5];
    type = VCPLogToOSLogType[4];
    v34 = VCPLogToOSLogType[6];
    do
    {
      v15 = 0;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        unsignedIntegerValue = [v16 unsignedIntegerValue];
        v19 = VCPRequestBGSTProgressReportKeyForTask();
        v20 = VCPLastBGSTProgressReportAttemptKeyForTask();
        v21 = v20;
        if (v19)
        {
          v22 = v20 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 67109120;
            v49 = unsignedIntegerValue;
            v23 = type;
            v24 = "[MADProgressManager] Unable to report progress for unknown task %d";
            v25 = 8;
LABEL_14:
            _os_log_impl(&_mh_execute_header, &_os_log_default, v23, v24, buf, v25);
          }
        }

        else
        {
          if (unsignedIntegerValue != 16)
          {
            goto LABEL_19;
          }

          if (MADIsPECProcessingEnabled())
          {
            v26 = objc_alloc_init(VIService);
            if (([v26 mad_isEncryptedSearchProxyEnabled] & 1) == 0)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v35))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "[MADProgressManager] PEC is disabled in this region, skipping progress update", buf, 2u);
              }

              goto LABEL_39;
            }

LABEL_19:
            if (+[MADManagedProcessingStatus isMACDReadEnabled])
            {
              mad_fetchRequest = [v37 mad_fetchRequest];
              v26 = [mad_fetchRequest fetchDataStoreValueIfKeyExists:v21];
            }

            else if ([v39 keyExistsInKeyValueStore:v21])
            {
              v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v39 valueForKey:v21]);
            }

            else
            {
              v26 = 0;
            }

            v28 = v38 - [v26 longLongValue];
            if (v28 <= 14399)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v34))
              {
                *buf = 67109376;
                v49 = unsignedIntegerValue;
                v50 = 2048;
                v51 = v28;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[MADProgressManager][MACD] Skipping progress report request for task %d, last report was %lld seconds ago", buf, 0x12u);
              }

              goto LABEL_39;
            }

            if (+[MADManagedProcessingStatus isMACDPersistEnabled])
            {
              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_10016B084;
              v41[3] = &unk_100285478;
              v43 = v12;
              v42 = v21;
              [v37 mad_performAnalysisDataStoreChanges:v41 error:0];
            }

            else
            {
              [v39 setValue:v38 forKey:v21];
              [v39 commit];
            }

            if (+[MADManagedProcessingStatus isMACDReadEnabled])
            {
              mad_fetchRequest2 = [v37 mad_fetchRequest];
              v30 = [mad_fetchRequest2 dataStoreValueForKey:v19] == 0;

              if (v30)
              {
                goto LABEL_39;
              }

LABEL_38:
              [self updateProgressForTask:unsignedIntegerValue photoLibrary:v37 reuseCachedValue:0 cancelOrExtendTimeoutBlock:blockCopy];
            }

            else if ([v39 valueForKey:v19])
            {
              goto LABEL_38;
            }

LABEL_39:

            goto LABEL_40;
          }

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 0;
            v23 = v35;
            v24 = "[MADProgressManager] PEC is disabled by user settings, skipping progress update";
            v25 = 2;
            goto LABEL_14;
          }
        }

LABEL_40:

        objc_autoreleasePoolPop(v17);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v31 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      v13 = v31;
    }

    while (v31);
  }
}

+ (void)requestProgressUpdateForTasks:(id)tasks
{
  tasksCopy = tasks;
  v14 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10016B374;
    v19[3] = &unk_100283AD0;
    v20 = tasksCopy;
    [v14 mad_performAnalysisDataStoreChanges:v19 error:0];
    v3 = v20;
  }

  else
  {
    v3 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v14];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = tasksCopy;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = *v16;
      v7 = VCPLogToOSLogType[4];
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          unsignedIntegerValue = [v9 unsignedIntegerValue];
          v12 = VCPRequestBGSTProgressReportKeyForTask();
          if (v12)
          {
            [v3 setValue:1 forKey:v12];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v7))
          {
            *buf = 67109120;
            v22 = unsignedIntegerValue;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADProgressManager] Unable to request progress report for unknown task %d", buf, 8u);
          }

          objc_autoreleasePoolPop(v10);
        }

        v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v5);
    }

    [v3 commit];
  }
}

+ (void)clearProgressUpdateRequestForTask:(unint64_t)task
{
  v3 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v4 = VCPRequestBGSTProgressReportKeyForTask();
  v5 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v3];
  if (v4)
  {
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10016B6A8;
      v6[3] = &unk_100283AD0;
      v7 = v4;
      [v3 mad_performAnalysisDataStoreChanges:v6 error:0];
    }

    else
    {
      [v5 setValue:0 forKey:v4];
      [v5 commit];
    }
  }
}

+ (void)clearLastProgressReportTimestampForTasks:(id)tasks
{
  tasksCopy = tasks;
  v4 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10016B910;
    v17[3] = &unk_100283AD0;
    v18 = tasksCopy;
    [v4 mad_performAnalysisDataStoreChanges:v17 error:0];
    v5 = v18;
  }

  else
  {
    v5 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = tasksCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          [v10 unsignedIntegerValue];
          v12 = VCPLastBGSTProgressReportAttemptKeyForTask();
          if (v12)
          {
            [v5 setValue:0 forKey:v12];
          }

          objc_autoreleasePoolPop(v11);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }

    [v5 commit];
  }
}

+ (void)resetProcessingCheckpointForTask:(unint64_t)task
{
  v26 = MADTaskIdentifierForBackgroundTask(task);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [self _featureCodeWithTaskID:task];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = *v31;
    type = VCPLogToOSLogType[5];
    v25 = VCPLogToOSLogType[3];
    v27 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        if ([v8 unsignedIntegerValue])
        {
          unsignedIntegerValue = [v8 unsignedIntegerValue];
          v29 = 0;
          v11 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:3 forFeature:unsignedIntegerValue error:&v29];
          v12 = v29;
          if (v11)
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412546;
              *v35 = v8;
              *&v35[8] = 2112;
              *&v35[10] = v26;
              v13 = type;
              v14 = "[MADProgressManager] Reported BGST Checkpoint reset for feature code %@ - %@";
              v15 = 22;
              goto LABEL_17;
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
          {
            *buf = 138412802;
            *v35 = v8;
            *&v35[8] = 2112;
            *&v35[10] = v26;
            *&v35[18] = 2112;
            *&v35[20] = v12;
            v13 = v25;
            v14 = "[MADProgressManager] Failed to report BGST Checkpoint reset for feature code %@ - %@ - %@";
            v15 = 32;
LABEL_17:
            _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, buf, v15);
          }

          goto LABEL_19;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v27))
        {
          *buf = 138412290;
          *v35 = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[MADProgressManager] Skip reporting BGST Checkpoint reset for %@: no feature code", buf, 0xCu);
        }

LABEL_19:
        objc_autoreleasePoolPop(v9);
      }

      v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v5);
  }

  if (task == 3)
  {
    v28 = 0;
    v16 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:3 forFeature:802 error:&v28];
    v17 = v28;
    if (v16)
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_30;
      }

      v18 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v18))
      {
        goto LABEL_30;
      }

      *buf = 67109378;
      *v35 = 802;
      *&v35[4] = 2112;
      *&v35[6] = v26;
      v19 = "[MADProgressManager] Reported BGST Checkpoint reset for feature code %d - %@";
      v20 = v18;
      v21 = 18;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_30;
      }

      v22 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v22))
      {
        goto LABEL_30;
      }

      *buf = 67109634;
      *v35 = 802;
      *&v35[4] = 2112;
      *&v35[6] = v26;
      *&v35[14] = 2112;
      *&v35[16] = v17;
      v19 = "[MADProgressManager] Failed to report BGST Checkpoint reset for feature code %d - %@ - %@";
      v20 = v22;
      v21 = 28;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v20, v19, buf, v21);
LABEL_30:
  }
}

+ (BOOL)taskHasReachedSteadyState:(unint64_t)state
{
  stateCopy = state;
  v4 = VCPProgressPercentageKeyForTask();
  if (v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 persistentDomainForName:MediaAnalysisDaemonDomain];
    v7 = VCPProgressPercentageKeyForTask();
    v8 = [v6 objectForKey:v7];
    unsignedIntValue = [v8 unsignedIntValue];

    v10 = unsignedIntValue > 0x62;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v13[0] = 67109120;
        v13[1] = stateCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MADProgressManager] Unable to determine steady-state for unknown task %u", v13, 8u);
      }
    }

    v10 = 0;
  }

  return v10;
}

@end