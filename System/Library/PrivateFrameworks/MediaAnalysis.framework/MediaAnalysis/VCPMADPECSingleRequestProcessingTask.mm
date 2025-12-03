@interface VCPMADPECSingleRequestProcessingTask
+ (double)currentScheduleDelay;
+ (id)taskWithPhotoLibraries:(id)libraries progressHandler:(id)handler completionHandler:(id)completionHandler cancelBlock:(id)block;
+ (void)reschedule;
- (BOOL)_isAssetEligible:(id)eligible withAnalysisDatabase:(id)database previousStatus:(unint64_t *)status previousAttempts:(int *)attempts lastAttemptDate:(id *)date allowDownload:(BOOL)download;
- (VCPMADPECSingleRequestProcessingTask)initWithPhotoLibraries:(id)libraries progressHandler:(id)handler completionHandler:(id)completionHandler cancelBlock:(id)block;
- (id)resultFromVISearchResults:(id)results entityStore:(id)store;
- (int)_checkHardFailuresForPhotoLibrary:(id)library withAnalysisDatabase:(id)database;
- (int)_propagateAssetProcessingStatusForEntries:(id)entries;
- (int)_publishEntries:(id)entries photoLibrary:(id)library;
- (int)_publishProcessingStatusForPhotoLibrary:(id)library entries:(id)entries;
- (int)_publishProcessingStatusToLegacyDatabaseForEntries:(id)entries database:(id)database;
- (int)entriesByLibraryPointerAddEntry:(id)entry;
- (int)prepareEntry:(id)entry withDatabase:(id)database;
- (int)processAssetEntry:(id)entry entityStore:(id)store hasFiredServerRequest:(BOOL *)request;
- (int)publishEntries;
- (int)run;
- (unint64_t)entryCount;
- (void)_reportRunSessionAnalyticsForEntries:(id)entries;
- (void)dealloc;
@end

@implementation VCPMADPECSingleRequestProcessingTask

- (VCPMADPECSingleRequestProcessingTask)initWithPhotoLibraries:(id)libraries progressHandler:(id)handler completionHandler:(id)completionHandler cancelBlock:(id)block
{
  librariesCopy = libraries;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v38.receiver = self;
  v38.super_class = VCPMADPECSingleRequestProcessingTask;
  v15 = [(VCPMADPECSingleRequestProcessingTask *)&v38 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibraries, libraries);
    if (handlerCopy)
    {
      v17 = handlerCopy;
    }

    else
    {
      v17 = &stru_1002863D0;
    }

    v18 = objc_retainBlock(v17);
    progressHandler = v16->_progressHandler;
    v16->_progressHandler = v18;

    if (blockCopy)
    {
      v20 = blockCopy;
    }

    else
    {
      v20 = &stru_1002863F0;
    }

    v21 = objc_retainBlock(v20);
    cancelBlock = v16->_cancelBlock;
    v16->_cancelBlock = v21;

    v23 = dispatch_semaphore_create(0);
    processSemaphore = v16->_processSemaphore;
    v16->_processSemaphore = v23;

    v25 = objc_alloc_init(VIService);
    service = v16->_service;
    v16->_service = v25;

    v27 = +[NSMutableDictionary dictionary];
    domainProcessedCounts = v16->_domainProcessedCounts;
    v16->_domainProcessedCounts = v27;

    v29 = +[NSMutableDictionary dictionary];
    domainSuccessesCounts = v16->_domainSuccessesCounts;
    v16->_domainSuccessesCounts = v29;

    v31 = +[NSMutableDictionary dictionary];
    entriesByLibraryPointer = v16->_entriesByLibraryPointer;
    v16->_entriesByLibraryPointer = v31;

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000F7520;
    v36[3] = &unk_100286418;
    v37 = completionHandlerCopy;
    v33 = objc_retainBlock(v36);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v33;
  }

  return v16;
}

+ (id)taskWithPhotoLibraries:(id)libraries progressHandler:(id)handler completionHandler:(id)completionHandler cancelBlock:(id)block
{
  librariesCopy = libraries;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:librariesCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy cancelBlock:blockCopy];

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
  }

  v4.receiver = self;
  v4.super_class = VCPMADPECSingleRequestProcessingTask;
  [(VCPMADPECSingleRequestProcessingTask *)&v4 dealloc];
}

+ (double)currentScheduleDelay
{
  v2 = arc4random_uniform(0x8Cu);
  if (!MADIsPECProcessingEnabled())
  {
    return 86400.0;
  }

  v3 = objc_alloc_init(VIService);
  if ([v3 mad_isEncryptedSearchProxyEnabled])
  {
    v4 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      mad_fetchRequest = [v4 mad_fetchRequest];
      v6 = [mad_fetchRequest dataStoreValueForKey:VCPKeyValuePECAnalysisIsInProgress];
    }

    else
    {
      mad_fetchRequest = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
      v6 = [mad_fetchRequest valueForKey:VCPKeyValuePECAnalysisIsInProgress];
    }

    v8 = v6;

    v7 = (v2 + 1);
    if (MediaAnalysisLogLevel() >= 7)
    {
      v9 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = @"short";
        if (!v8)
        {
          v10 = @"long";
        }

        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[PECSingleRequest] reschedule will be %@", &v12, 0xCu);
      }
    }

    if (!v8)
    {
      v7 = 86400.0;
    }
  }

  else
  {
    v7 = 86400.0;
  }

  return v7;
}

+ (void)reschedule
{
  v2 = +[MADPhotosPECBackgroundSystemTask identifier];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 138412290;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[PECSingleRequest] Attempting reschedule for %@", buf, 0xCu);
    }
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:v2];
  v6 = v5 == 0;

  if (v6)
  {
    v8 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];
    [v8 setGroupName:MediaAnalysisDaemonDomain];
    [v8 setRequiresBuddyComplete:{+[MADBackgroundSystemTask buddyCheckRequired](MADPhotosPECBackgroundSystemTask, "buddyCheckRequired")}];
    [v8 setGroupConcurrencyLimit:1];
    [v8 setRequiresInexpensiveNetworkConnectivity:1];
    [v8 setRequiresExternalPower:1];
    [v8 setRequiresUserInactivity:1];
    [v8 setPriority:1];
    [v8 setBacklogged:1];
    [v8 setRateLimitConfigurationName:_BGSTPECRateLimitConfigurationName];
    +[VCPMADPECSingleRequestProcessingTask currentScheduleDelay];
    [v8 setScheduleAfter:?];
    [v8 setExpectedDuration:600.0];
    [MADPhotosPECBackgroundSystemTask updateTaskSpecificBGSystemTaskRequest:v8];
    v9 = +[BGSystemTaskScheduler sharedScheduler];
    v14 = 0;
    v10 = [v9 submitTaskRequest:v8 error:&v14];
    v11 = v14;

    if (v10)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_16;
      }

      v12 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v16 = v2;
      v13 = "Successfully submitted task %@";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_16;
      }

      v12 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v16 = v11;
      v13 = "Failed to submit task with error: %@";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v7 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Attempted reschedule while task already exists", buf, 2u);
    }
  }

LABEL_17:
}

- (int)_checkHardFailuresForPhotoLibrary:(id)library withAnalysisDatabase:(id)database
{
  libraryCopy = library;
  databaseCopy = database;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[PECSingleRequest] Checking processing status from previous runs", buf, 2u);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
    v50 = 0;
    LODWORD(code) = [mad_fetchRequest fetchLocalIdentifiers:&v50 taskID:16 processingStatus:1];
    v42 = v50;

    if (code)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[PECSingleRequest] Failed to fetch assets with running status from previous runs", buf, 2u);
        }
      }

      goto LABEL_68;
    }

    v9 = v42;
  }

  else
  {
    v49 = 0;
    [databaseCopy fetchLocalIdentifiers:&v49 withTaskID:16 andProcessingStatus:1];
    v9 = v49;
  }

  v42 = v9;
  v10 = [v9 count];
  if (!v10)
  {
LABEL_50:
    if (MediaAnalysisLogLevel() >= 7)
    {
      v32 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v32))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[PECSingleRequest] Processing status is up-to-date", buf, 2u);
      }
    }

    LODWORD(code) = 0;
    goto LABEL_68;
  }

  v38 = [PHAsset vcp_fetchOptionsForLibrary:libraryCopy forTaskID:16];
  v11 = [PHAsset fetchAssetsWithLocalIdentifiers:v42 options:?];
  v12 = 0;
  v13 = 0;
  v39 = VCPLogToOSLogType[3];
  v40 = VCPLogToOSLogType[6];
  type = VCPLogToOSLogType[7];
  *&v14 = 138412802;
  v37 = v14;
  while (v12 < [v11 count])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = +[VCPWatchdog sharedWatchdog];
    [v16 pet];

    v17 = [v11 objectAtIndexedSubscript:v12];
    if ([v17 vcp_needsPECProcessing])
    {
      v18 = 1;
      code = v13;
    }

    else
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier = [v17 localIdentifier];
          *buf = 138412546;
          v52 = localIdentifier;
          v53 = 1024;
          v54 = 16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
        }

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000F8568;
        v47[3] = &unk_100283AD0;
        v20 = v17;
        v48 = v20;
        v46 = 0;
        v21 = [libraryCopy mad_performAnalysisDataStoreChanges:v47 error:&v46];
        v22 = v46;
        v23 = v22;
        if ((v21 & 1) == 0)
        {
          code = [v22 code];
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v39))
          {
            localIdentifier2 = [v20 localIdentifier];
            *buf = v37;
            v52 = localIdentifier2;
            v53 = 1024;
            v54 = 16;
            v55 = 2112;
            v56 = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[PECSingleRequest][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x1Cu);
          }

          v18 = 0;
          goto LABEL_38;
        }

        code = v13;
      }

      else
      {
        localIdentifier3 = [v17 localIdentifier];
        v25 = [databaseCopy removeProcessingStatusForLocalIdentifier:localIdentifier3 andTaskID:16];

        if (v25 == -108 || v25 == -36)
        {
          code = v25;
        }

        else
        {
          code = v25;
          if (v25 != -23)
          {
            code = v13;
          }
        }

        v18 = 0;
        if (v25 == -108 || v25 == -36 || v25 == -23)
        {
          goto LABEL_38;
        }
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v40))
      {
        localIdentifier4 = [v17 localIdentifier];
        *buf = 138412290;
        v52 = localIdentifier4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[PECSingleRequest][%@] Asset is processed; clearing failure status", buf, 0xCu);
      }

      --v10;
      v18 = 1;
    }

LABEL_38:

    objc_autoreleasePoolPop(v15);
    ++v12;
    v13 = code;
    if ((v18 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v40))
  {
    *buf = 134217984;
    v52 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[PECSingleRequest] %lu assets processing status changed to Hard Failure", buf, 0xCu);
  }

  v28 = +[VCPWatchdog sharedWatchdog];
  [v28 pet];

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 134217984;
      v52 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][MACD] %lu assets processing status changed to Hard Failure", buf, 0xCu);
    }

    v45 = 0;
    v29 = [libraryCopy mad_performAnalysisDataStoreChanges:&stru_100286438 error:&v45];
    v30 = v45;
    v31 = v30;
    if (v29)
    {

LABEL_49:
      goto LABEL_50;
    }

    LODWORD(code) = [v30 code];
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v39))
    {
      *buf = 134217984;
      v52 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[PECSingleRequest][MACD] Failed to change processing status of %lu assets to Hard Failure", buf, 0xCu);
    }
  }

  else
  {
    v33 = [databaseCopy hardFailAllRunningProcessingStatusForTaskID:16];
    if (v33 == -108 || v33 == -36)
    {
      v34 = v33;
    }

    else
    {
      v34 = v33;
      if (v33 != -23)
      {
        v34 = v13;
      }
    }

    if (v33 == -108 || v33 == -36 || v33 == -23)
    {
      LODWORD(code) = v34;
    }

    else
    {
      commit = [databaseCopy commit];
      if (commit == -108 || commit == -36)
      {
        LODWORD(code) = commit;
      }

      else
      {
        LODWORD(code) = commit;
        if (commit != -23)
        {
          LODWORD(code) = v34;
        }
      }

      if (commit != -108 && commit != -23 && commit != -36)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_67:

LABEL_68:
  return code;
}

- (BOOL)_isAssetEligible:(id)eligible withAnalysisDatabase:(id)database previousStatus:(unint64_t *)status previousAttempts:(int *)attempts lastAttemptDate:(id *)date allowDownload:(BOOL)download
{
  downloadCopy = download;
  eligibleCopy = eligible;
  databaseCopy = database;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary = [eligibleCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v33 = 0;
    localIdentifier = [eligibleCopy localIdentifier];
    v18 = [mad_fetchRequest fetchProcessingStatus:status attempts:attempts lastAttemptDate:date nextAttemptDate:&v33 localIdentifier:localIdentifier taskID:16];
    v19 = v33;
  }

  else
  {
    v32 = 0;
    photoLibrary = [eligibleCopy localIdentifier];
    v18 = [databaseCopy queryProcessingStatus:status attempts:attempts lastAttemptDate:date andNextAttemptDate:&v32 forLocalIdentifier:photoLibrary andTaskID:16];
    v19 = v32;
  }

  if (v18)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        localIdentifier2 = [eligibleCopy localIdentifier];
        *buf = 138412546;
        v35 = localIdentifier2;
        v36 = 1024;
        LODWORD(v37) = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[PECSingleRequest][%@] Failed to query processing status due to DB error %d", buf, 0x12u);
      }
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  if (*attempts)
  {
    v22 = +[NSDate date];
    v23 = [v19 compare:v22] == 1;

    if (v23 && (!downloadCopy || *attempts != 1 || *status != 2))
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v25 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          localIdentifier3 = [eligibleCopy localIdentifier];
          v27 = VCPProcessingStatusDescription();
          v28 = *attempts;
          v29 = +[VCPLogManager dateFormatter];
          v30 = [v29 stringFromDate:v19];
          *buf = 138413058;
          v35 = localIdentifier3;
          v36 = 2112;
          v37 = v27;
          v38 = 1024;
          v39 = v28;
          v40 = 2112;
          v41 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[PECSingleRequest][%@] Asset skipped (%@|%d); revisit date: %@", buf, 0x26u);
        }
      }

      goto LABEL_17;
    }
  }

  v24 = 1;
LABEL_18:

  return v24;
}

- (id)resultFromVISearchResults:(id)results entityStore:(id)store
{
  resultsCopy = results;
  storeCopy = store;
  v37 = objc_alloc_init(NSMutableDictionary);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = resultsCopy;
  v32 = [obj countByEnumeratingWithState:&v42 objects:v51 count:{16, resultsCopy}];
  if (v32)
  {
    v31 = *v43;
    type = VCPLogToOSLogType[7];
    v40 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        regionOfInterestResults = [*(*(&v42 + 1) + 8 * i) regionOfInterestResults];
        if (MediaAnalysisLogLevel() > 6 && os_log_type_enabled(&_os_log_default, type))
        {
          v6 = [regionOfInterestResults count];
          *buf = 67109120;
          *v47 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest] %d ROIs", buf, 8u);
        }

        v38 = 0;
        while (2)
        {
          if (v38 < [regionOfInterestResults count])
          {
            context = objc_autoreleasePoolPush();
            v7 = [regionOfInterestResults objectAtIndexedSubscript:v38];
            resultItems = [v7 resultItems];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v9 = [resultItems count];
              *buf = 67109376;
              *v47 = v9;
              *&v47[4] = 1024;
              *&v47[6] = v38;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest] %d items in ROI-%d", buf, 0xEu);
            }

            v10 = 0;
LABEL_15:
            if (v10 >= [resultItems count])
            {

              objc_autoreleasePoolPop(context);
              ++v38;
              continue;
            }

            v11 = [resultItems objectAtIndexedSubscript:v10];
            searchableKnowledgeObject = [v11 searchableKnowledgeObject];

            if (searchableKnowledgeObject)
            {
              v13 = +[PHSceneClassification mad_typeFromCSUIdType:](PHSceneClassification, "mad_typeFromCSUIdType:", [searchableKnowledgeObject idType]);
              if (v13 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v40))
                {
                  idType = [searchableKnowledgeObject idType];
                  *buf = 67109120;
                  *v47 = idType;
                  v15 = v40;
                  v16 = "[PECSingleRequest] Unexpected CSUSearchableKnowledgeObjectIdType %d";
                  v17 = 8;
                  goto LABEL_24;
                }
              }

              else
              {
                v41 = 0;
                [storeCopy storeEntity:searchableKnowledgeObject uniqueIdWriteback:0 error:&v41];
                v18 = v41;
                if (v18)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v40))
                  {
                    v19 = [searchableKnowledgeObject qid];
                    localizedLabelDictionary = [searchableKnowledgeObject localizedLabelDictionary];
                    allValues = [localizedLabelDictionary allValues];
                    *buf = 134218498;
                    *v47 = v19;
                    *&v47[8] = 2112;
                    v48 = allValues;
                    v49 = 2112;
                    v50 = v18;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[PECSingleRequest] Failed to store entity (%llu, %@) with error (%@)", buf, 0x20u);
                  }
                }

                else
                {
                  v22 = [PHSceneClassification alloc];
                  v23 = [searchableKnowledgeObject qid];
                  [searchableKnowledgeObject confidenceValue];
                  v24 = [v22 initWithExtendedSceneIdentifier:v23 confidence:v13 boundingBox:? startTime:? duration:? classificationType:?];
                  if (v24)
                  {
                    v25 = [NSNumber numberWithInteger:v13];
                    v26 = [v37 objectForKeyedSubscript:v25];
                    v27 = [NSMutableArray arrayWithArray:v26];

                    [v27 addObject:v24];
                    v28 = [NSNumber numberWithInteger:v13];
                    [v37 setObject:v27 forKeyedSubscript:v28];
                  }

                  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v40))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[PECSingleRequest] failed to create the sceneClassification object", buf, 2u);
                  }
                }
              }
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v40))
            {
              *buf = 67109376;
              *v47 = v38;
              *&v47[4] = 1024;
              *&v47[6] = v10;
              v15 = v40;
              v16 = "[PECSingleRequest] ROI-%d item-%d: Empty CSUSearchableKnowledgeObject";
              v17 = 14;
LABEL_24:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v15, v16, buf, v17);
            }

            ++v10;
            goto LABEL_15;
          }

          break;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v32);
  }

  return v37;
}

- (int)prepareEntry:(id)entry withDatabase:(id)database
{
  entryCopy = entry;
  databaseCopy = database;
  v41 = +[NSDate now];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      asset = [entryCopy asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412290;
      v48 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[PECSingleRequest][%@] Preparing asset", buf, 0xCu);
    }
  }

  v10 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v11 = VCPSignPostLog();
    v12 = os_signpost_id_generate(v11);

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "VCPMADServerSearch_Prepare", "", buf, 2u);
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v15 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        asset2 = [entryCopy asset];
        localIdentifier2 = [asset2 localIdentifier];
        *buf = 138412290;
        v48 = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[PECSingleRequest][%@][MACD] Setting processing status to running", buf, 0xCu);
      }
    }

    asset3 = [entryCopy asset];
    photoLibrary = [asset3 photoLibrary];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000F9794;
    v44[3] = &unk_100282938;
    v20 = entryCopy;
    v45 = v20;
    v46 = v10;
    v43 = 0;
    v21 = [photoLibrary mad_performAnalysisDataStoreChanges:v44 error:&v43];
    v22 = v43;

    if (v21)
    {
      v23 = VCPSignPostLog();
      v24 = v23;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v12, "VCPMADServerSearch_Prepare", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(v12) = [v22 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v32 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          asset4 = [v20 asset];
          localIdentifier3 = [asset4 localIdentifier];
          *buf = 138412546;
          v48 = localIdentifier3;
          v49 = 2112;
          v50 = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[PECSingleRequest][%@][MACD] Failed to prepare asset: %@", buf, 0x16u);
        }
      }
    }

    if (v21)
    {
LABEL_27:
      v35 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
      [v42 timeIntervalSinceNow];
      [v35 accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.PECAnalysisRunSession" andEvent:-v36];

      LODWORD(v12) = 0;
    }
  }

  else
  {
    v25 = VCPSignPostLog();
    v26 = os_signpost_id_generate(v25);

    v27 = VCPSignPostLog();
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VCPMADServerSearch_LegacyPrepare", "", buf, 2u);
    }

    previousAttempts = [entryCopy previousAttempts];
    asset5 = [entryCopy asset];
    v31 = [databaseCopy setAttempts:previousAttempts + 1 asset:asset5 taskID:16 status:1 lastAttemptDate:v10];

    if (v31 == -108 || v31 == -36 || v31 == -23)
    {
      LODWORD(v12) = v31;
    }

    else
    {
      commit = [databaseCopy commit];
      if (commit == -108 || commit == -36)
      {
        LODWORD(v12) = commit;
      }

      else
      {
        LODWORD(v12) = commit;
        if (commit != -23)
        {
          LODWORD(v12) = v31;
        }
      }

      if (commit != -108 && commit != -36 && commit != -23)
      {
        v39 = VCPSignPostLog();
        v40 = v39;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v26, "VCPMADServerSearch_LegacyPrepare", "", buf, 2u);
        }

        goto LABEL_27;
      }
    }
  }

  return v12;
}

- (int)entriesByLibraryPointerAddEntry:(id)entry
{
  entryCopy = entry;
  asset = [entryCopy asset];
  photoLibrary = [asset photoLibrary];
  v7 = [NSValue valueWithPointer:photoLibrary];

  v8 = [(NSMutableDictionary *)self->_entriesByLibraryPointer objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = +[NSMutableArray array];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  [v8 addObject:entryCopy];
  if ([(VCPMADPECSingleRequestProcessingTask *)self entryCount]< 0x64)
  {
    publishEntries = 0;
  }

  else
  {
    publishEntries = [(VCPMADPECSingleRequestProcessingTask *)self publishEntries];
  }

  return publishEntries;
}

- (unint64_t)entryCount
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_entriesByLibraryPointer allValues];
  v3 = 0;
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v3 += [*(*(&v8 + 1) + 8 * v6) count];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (int)publishEntries
{
  if ([(VCPMADPECSingleRequestProcessingTask *)self entryCount])
  {
    v29 = +[NSDate now];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v4 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        entryCount = [(VCPMADPECSingleRequestProcessingTask *)self entryCount];
        qos_class_self();
        v6 = VCPMAQoSDescription();
        *buf = 67109378;
        v37 = entryCount;
        v38 = 2112;
        v39 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[PECSingleRequest] Persisting %d assets (QoS: %@)", buf, 0x12u);
      }
    }

    v7 = VCPSignPostLog();
    spid = os_signpost_id_generate(v7);

    v8 = VCPSignPostLog();
    v9 = v8;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServerSearch_Publish", "", buf, 2u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    allValues = [(NSMutableDictionary *)self->_entriesByLibraryPointer allValues];
    v11 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = *v32;
      obj = allValues;
      while (2)
      {
        v13 = 0;
        v14 = v2;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * v13);
          v16 = objc_autoreleasePoolPush();
          firstObject = [v15 firstObject];
          asset = [firstObject asset];
          photoLibrary = [asset photoLibrary];

          v20 = [(VCPMADPECSingleRequestProcessingTask *)self _publishEntries:v15 photoLibrary:photoLibrary];
          v21 = v20;
          if (v20 == -108)
          {
            v2 = v20;
          }

          else
          {
            v22 = v20 == -36 || v20 == -23;
            v2 = v20;
            if (!v22)
            {
              v2 = v14;
            }
          }

          objc_autoreleasePoolPop(v16);
          if (v21 == -108 || v21 == -36 || v21 == -23)
          {
            v25 = obj;
            goto LABEL_30;
          }

          v13 = v13 + 1;
          v14 = v2;
        }

        while (v11 != v13);
        allValues = obj;
        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableDictionary *)self->_entriesByLibraryPointer removeAllObjects];
    v23 = VCPSignPostLog();
    v24 = v23;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServerSearch_Publish", "", buf, 2u);
    }

    v25 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
    [v29 timeIntervalSinceNow];
    [v25 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.PECAnalysisRunSession" andEvent:-v26];
    LODWORD(v2) = 0;
LABEL_30:
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

- (int)_propagateAssetProcessingStatusForEntries:(id)entries
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  entriesCopy = entries;
  v4 = 0;
  v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(entriesCopy);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      status = [v8 status];
      if (status == -128)
      {
        v4 = -128;
      }

      else if ([v8 status] == -23808)
      {
        v4 = -23808;
      }

      objc_autoreleasePoolPop(v9);
      if (status == -128)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v4;
}

- (int)_publishProcessingStatusForPhotoLibrary:(id)library entries:(id)entries
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FA108;
  v12[3] = &unk_100283AD0;
  entriesCopy = entries;
  v13 = entriesCopy;
  v11 = 0;
  v6 = [library mad_performAnalysisDataStoreChanges:v12 error:&v11];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    code = 0;
  }

  else
  {
    code = [v7 code];
  }

  return code;
}

- (int)_publishProcessingStatusToLegacyDatabaseForEntries:(id)entries database:(id)database
{
  entriesCopy = entries;
  databaseCopy = database;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v7)
  {
    goto LABEL_50;
  }

  v34 = *v37;
  type = VCPLogToOSLogType[7];
  do
  {
    v8 = 0;
    v9 = v4;
    do
    {
      if (*v37 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v36 + 1) + 8 * v8);
      v11 = objc_autoreleasePoolPush();
      asset = [v10 asset];
      localIdentifier = [asset localIdentifier];
      v14 = [NSString stringWithFormat:@"[PECSingleRequest][%@][Legacy]", localIdentifier];

      if (![v10 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

LABEL_32:
        asset2 = [v10 asset];
        localIdentifier2 = [asset2 localIdentifier];
        v26 = [databaseCopy removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:16];

        if (v26 == -108 || v26 == -36)
        {
          v4 = v26;
        }

        else
        {
          v4 = v26;
          if (v26 != -23)
          {
            v4 = v9;
          }
        }

LABEL_37:
        v29 = 0;
        if (v26 != -108 && v26 != -36 && v26 != -23)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      if ([v10 status] != -128)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
        }

        [v10 status];
        v20 = MADProcessingStatusForOSStatus();
        asset3 = [v10 asset];
        currentAttemptDate = [v10 currentAttemptDate];
        v23 = [asset3 mad_nextAttemptDateForStatus:v20 currentAttemptDate:currentAttemptDate attemptCount:{objc_msgSend(v10, "previousAttempts") + 1}];

        asset4 = [v10 asset];
        localIdentifier3 = [asset4 localIdentifier];
        v26 = [databaseCopy updateProcessingStatus:v20 andNextAttemptDate:v23 forLocalIdentifier:localIdentifier3 andTaskID:16];

        if (v26 == -108 || v26 == -36)
        {
          v4 = v26;
        }

        else
        {
          v4 = v26;
          if (v26 != -23)
          {
            v4 = v9;
          }
        }

        goto LABEL_37;
      }

      if (![v10 previousAttempts])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        goto LABEL_32;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v41 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      previousAttempts = [v10 previousAttempts];
      asset5 = [v10 asset];
      previousStatus = [v10 previousStatus];
      lastAttemptDate = [v10 lastAttemptDate];
      v19 = [databaseCopy setAttempts:previousAttempts asset:asset5 taskID:16 status:previousStatus lastAttemptDate:lastAttemptDate];

      if (v19 == -108 || v19 == -36)
      {
        v4 = v19;
      }

      else
      {
        v4 = v19;
        if (v19 != -23)
        {
          v4 = v9;
        }
      }

      v29 = 0;
      if (v19 != -108 && v19 != -36 && v19 != -23)
      {
LABEL_40:
        v29 = 1;
      }

LABEL_41:

      objc_autoreleasePoolPop(v11);
      if (!v29)
      {
        goto LABEL_51;
      }

      v8 = v8 + 1;
      v9 = v4;
    }

    while (v7 != v8);
    v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    v7 = v30;
  }

  while (v30);
LABEL_50:
  LODWORD(v4) = 0;
LABEL_51:

  return v4;
}

- (void)_reportRunSessionAnalyticsForEntries:(id)entries
{
  entriesCopy = entries;
  v3 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = entriesCopy;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        if ([v7 status])
        {
          if ([v7 status] == -128)
          {
            goto LABEL_17;
          }

          if ([v7 status] == -23802)
          {
            v9 = @"NumberOfAssetsNoResource";
          }

          else
          {
            v9 = @"NumberOfAssetsSoftFailure";
          }
        }

        else
        {
          result = [v7 result];
          v11 = [result count] == 0;

          v12 = @"NumberOfAssetsLabeled";
          if (v11)
          {
            result2 = [v7 result];
            v14 = result2 == 0;

            if (v14)
            {
              v12 = @"NumberOfAssetsIneligibleDomains";
            }

            else
            {
              v12 = @"NumberOfAssetsMissingCSUObject";
            }
          }

          [v3 accumulateInt64Value:1 forField:v12 andEvent:@"com.apple.mediaanalysisd.PECAnalysisRunSession"];
          v9 = @"NumberOfAssetsAnalyzed";
        }

        [v3 accumulateInt64Value:1 forField:v9 andEvent:@"com.apple.mediaanalysisd.PECAnalysisRunSession"];
LABEL_17:
        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

- (int)_publishEntries:(id)entries photoLibrary:(id)library
{
  entriesCopy = entries;
  libraryCopy = library;
  v7 = [(VCPMADPECSingleRequestProcessingTask *)self _propagateAssetProcessingStatusForEntries:entriesCopy];
  v8 = +[MADStateHandler sharedStateHandler];
  [v8 addBreadcrumb:{@"[PECSingleRequest] Persisting %d assets to Photos", objc_msgSend(entriesCopy, "count")}];

  v9 = +[VCPWatchdog sharedWatchdog];
  [v9 pet];

  v10 = +[MADStateHandler sharedStateHandler];
  [v10 enterKnownTimeoutRisk:1];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000FB3A4;
  v43[3] = &unk_100283210;
  v11 = entriesCopy;
  v44 = v11;
  v35 = objc_retainBlock(v43);
  cancelBlock = self->_cancelBlock;
  v42 = 0;
  v13 = [libraryCopy mad_performChangesAndWait:v35 activity:16 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100286458 error:&v42];
  v37 = v42;
  v14 = +[MADStateHandler sharedStateHandler];
  [v14 exitKnownTimeoutRisk];

  v15 = +[MADStateHandler sharedStateHandler];
  [v15 addBreadcrumb:{@"[PECSingleRequest] Finished persisting %d assets to Photos", objc_msgSend(v11, "count")}];

  if ((v13 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        v47 = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[PECSingleRequest] Failed to persist results to Photos (%@)", buf, 0xCu);
      }
    }

    v40 = 0u;
    v41 = 0u;
    if ([v37 code] == -128)
    {
      v17 = 4294967168;
    }

    else
    {
      v17 = 4294967278;
    }

    v38 = 0uLL;
    v39 = 0uLL;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v19)
    {
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          if (![v22 status])
          {
            [v22 setStatus:v17];
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v18 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v19);
    }

    code = [v37 code];
    if (v7)
    {
      v25 = 1;
    }

    else
    {
      v25 = code == 0;
    }

    if (!v25)
    {
      v7 = code;
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v26 = [(VCPMADPECSingleRequestProcessingTask *)self _publishProcessingStatusForPhotoLibrary:libraryCopy entries:v11];
    if (!v7 && v26 != 0)
    {
      v7 = v26;
    }
  }

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    v28 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    v29 = [(VCPMADPECSingleRequestProcessingTask *)self _publishProcessingStatusToLegacyDatabaseForEntries:v11 database:v28];
    commit = [v28 commit];
    if (v7)
    {
      v31 = 1;
    }

    else
    {
      v31 = v29 == 0;
    }

    if (v31)
    {
      v32 = v7;
    }

    else
    {
      v32 = v29;
    }

    if (v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = commit == 0;
    }

    if (v33)
    {
      v7 = v32;
    }

    else
    {
      v7 = commit;
    }
  }

  [(VCPMADPECSingleRequestProcessingTask *)self _reportRunSessionAnalyticsForEntries:v11];

  return v7;
}

- (int)processAssetEntry:(id)entry entityStore:(id)store hasFiredServerRequest:(BOOL *)request
{
  entryCopy = entry;
  storeCopy = store;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      asset = [entryCopy asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412290;
      *&buf[4] = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[PECSingleRequest][%@] processing asset.", buf, 0xCu);
    }
  }

  v10 = atomic_load(&self->_cancel);
  if ((v10 & 1) == 0)
  {
    asset2 = [entryCopy asset];
    photoLibrary = [asset2 photoLibrary];
    v113 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary];

    [(VCPMADPECSingleRequestProcessingTask *)self prepareEntry:entryCopy withDatabase:v113];
    asset3 = [entryCopy asset];
    v112 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset3];

    vcp_thumbnailResource = [v112 vcp_thumbnailResource];
    v111 = vcp_thumbnailResource;
    if (vcp_thumbnailResource)
    {
      if ([vcp_thumbnailResource isLocallyAvailable])
      {
        v17 = VCPSignPostLog();
        v18 = os_signpost_id_generate(v17);

        v19 = VCPSignPostLog();
        v20 = v19;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPMADPECAssetBatch_Decode", "", buf, 2u);
        }

        v21 = +[VCPImageManager sharedImageManager];
        privateFileURL = [v111 privateFileURL];
        v144 = [v21 pixelBufferWithFormat:875704438 fromImageURL:privateFileURL flushCache:0];

        v23 = VCPSignPostLog();
        v24 = v23;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v18, "VCPMADPECAssetBatch_Decode", "", buf, 2u);
        }

        if (!v144)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v48 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v48))
            {
              asset4 = [entryCopy asset];
              localIdentifier2 = [asset4 localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier2;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "[PECSingleRequest][%@] Failed to decode thumbnail", buf, 0xCu);
            }
          }

          status = -23802;
          [entryCopy setStatus:4294943494];
          goto LABEL_106;
        }

        asset5 = [entryCopy asset];
        v108 = [VCPMADServiceImageAsset assetWithPhotosAsset:asset5 clientBundleID:0 clientTeamID:0];

        if (!v108)
        {
          v51 = 0;
          if (MediaAnalysisLogLevel() >= 4)
          {
            v52 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v52))
            {
              asset6 = [entryCopy asset];
              localIdentifier3 = [asset6 localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "[PECSingleRequest][%@] Failed to create imageAsset", buf, 0xCu);

              v51 = 0;
            }
          }

          status = -18;
          [entryCopy setStatus:4294967278];
          goto LABEL_105;
        }

        v106 = [v108 vcp_annotationWithTypes:7];
        if (!v106)
        {
          v55 = 0;
          if (MediaAnalysisLogLevel() >= 4)
          {
            v56 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v56))
            {
              asset7 = [entryCopy asset];
              localIdentifier4 = [asset7 localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier4;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[PECSingleRequest][%@] Failed to create annotation", buf, 0xCu);

              v55 = 0;
            }
          }

          status = -18;
          [entryCopy setStatus:4294967278];
          goto LABEL_104;
        }

        v107 = +[NSMutableDictionary dictionary];
        location = [v108 location];
        v27 = location == 0;

        if (!v27)
        {
          location2 = [v108 location];
          [v107 setObject:location2 forKeyedSubscript:VIQueryContextLocationKey];
        }

        if ([v108 isScreenshot])
        {
          [v107 setObject:&off_100294A28 forKeyedSubscript:VIQueryContextImageTypeKey];
        }

        v143 = 0;
        v29 = [VIQueryContext contextWithDictionary:v107 error:&v143];
        v105 = v143;
        if (v105 || !v29)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v59 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v59))
            {
              asset8 = [entryCopy asset];
              localIdentifier5 = [asset8 localIdentifier];
              *buf = 138412546;
              *&buf[4] = localIdentifier5;
              *&buf[12] = 2112;
              *&buf[14] = v105;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v59, "[PECSingleRequest][%@] Failed to create query context (%@)", buf, 0x16u);
            }
          }

          status = -18;
          [entryCopy setStatus:4294967278];
          goto LABEL_103;
        }

        v104 = v29;
        v30 = [VIVisualQuery queryWithPixelBuffer:v144 orientation:1 normalizedRegionOfInterest:v106 annotation:v29 queryContext:0.0, 0.0, 1.0, 1.0];
        if (!v30)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v62 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v62))
            {
              asset9 = [entryCopy asset];
              localIdentifier6 = [asset9 localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier6;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "[PECSingleRequest][%@] Failed to create the query", buf, 0xCu);
            }
          }

          status = -18;
          [entryCopy setStatus:4294967278];
          goto LABEL_102;
        }

        v103 = v30;
        asset10 = [entryCopy asset];
        visualSearchProperties = [asset10 visualSearchProperties];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v154 = sub_1000FCF70;
        v155 = sub_1000FCF80;
        v156 = 0;
        v137 = 0;
        v138 = &v137;
        v139 = 0x3032000000;
        v140 = sub_1000FCF70;
        v141 = sub_1000FCF80;
        v142 = 0;
        v32 = VCPSignPostLog();
        v33 = os_signpost_id_generate(v32);

        v34 = VCPSignPostLog();
        v35 = v34;
        if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          LOWORD(v148) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "VIService_PECParsing", "", &v148, 2u);
        }

        service = self->_service;
        visualSearchData = [visualSearchProperties visualSearchData];
        v130[0] = _NSConcreteStackBlock;
        v130[1] = 3221225472;
        v130[2] = sub_1000FCF88;
        v130[3] = &unk_100286480;
        v135 = v33;
        v136 = 0;
        v133 = buf;
        v134 = &v137;
        v115 = entryCopy;
        v131 = v115;
        selfCopy = self;
        v38 = [(VIService *)service getEncryptedSearchDomainsWithVisualQuery:v30 cachedResults:visualSearchData completion:v130];

        dispatch_semaphore_wait(self->_processSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        if ([v115 status])
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v39 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v39))
            {
              asset11 = [v115 asset];
              localIdentifier7 = [asset11 localIdentifier];
              LODWORD(v148) = 138412290;
              *(&v148 + 4) = localIdentifier7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[PECSingleRequest][%@] Failed with parseWithVisualQuery", &v148, 0xCu);
            }
          }
        }

        else
        {
          v65 = *(*&buf[8] + 40);
          if (!v65 || ([v65 visualUnderstanding], v66 = objc_claimAutoreleasedReturnValue(), v67 = v66 == 0, v66, v67))
          {
            if (MediaAnalysisLogLevel() >= 4)
            {
              v78 = VCPLogToOSLogType[4];
              if (os_log_type_enabled(&_os_log_default, v78))
              {
                asset12 = [v115 asset];
                localIdentifier8 = [asset12 localIdentifier];
                LODWORD(v148) = 138412290;
                *(&v148 + 4) = localIdentifier8;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v78, "[PECSingleRequest][%@] Failed to obtain VI parsing result", &v148, 0xCu);
              }
            }

            status = -18;
            [v115 setStatus:{4294967278, visualSearchProperties}];
            goto LABEL_101;
          }

          if (![v138[5] count])
          {
            if (MediaAnalysisLogLevel() >= 7)
            {
              v98 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v98))
              {
                asset13 = [v115 asset];
                localIdentifier9 = [asset13 localIdentifier];
                LODWORD(v148) = 138412290;
                *(&v148 + 4) = localIdentifier9;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v98, "[PECSingleRequest][%@] getEncryptedSearchDomainsWithVisualQuery found no supported encrypted search domain", &v148, 0xCu);
              }
            }

            [v115 setVersion:{VCPPhotosPECProcessingVersion, visualSearchProperties}];
            status = 0;
            goto LABEL_101;
          }
        }

        v68 = v144;
        visualUnderstanding = [*(*&buf[8] + 40) visualUnderstanding];
        imageRegions = [visualUnderstanding imageRegions];
        visualUnderstanding2 = [*(*&buf[8] + 40) visualUnderstanding];
        payload = [visualUnderstanding2 payload];
        v114 = [VIParsedVisualQuery queryWithPixelBuffer:v68 orientation:1 imageRegions:imageRegions textBlockAnnotation:0 queryContext:v29 payload:payload];

        if (v114)
        {
          v73 = atomic_load(&self->_cancel);
          if (v73)
          {
            if (MediaAnalysisLogLevel() >= 7)
            {
              v74 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v74))
              {
                LOWORD(v148) = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "[PECSingleRequest] Processing has been canceled", &v148, 2u);
              }
            }

            status = -128;
            [v115 setStatus:4294967168];
          }

          else
          {
            *&v148 = 0;
            *(&v148 + 1) = &v148;
            v149 = 0x3032000000;
            v150 = sub_1000FCF70;
            v151 = sub_1000FCF80;
            v152 = +[NSMutableArray array];
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            obj = v138[5];
            v81 = [obj countByEnumeratingWithState:&v126 objects:v147 count:16];
            if (v81)
            {
              v82 = *v127;
              v83 = kVIDomainLandmark;
              v84 = kVIDomainStorefront;
              type = VCPLogToOSLogType[7];
              do
              {
                for (i = 0; i != v81; i = i + 1)
                {
                  if (*v127 != v82)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v86 = *(*(&v126 + 1) + 8 * i);
                  if (v86 == v83 || v86 == v84)
                  {
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
                    {
                      *v145 = 138412290;
                      v146 = v86;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest] Detected server request domain: %@", v145, 0xCu);
                    }

                    *request = 1;
                  }

                  v88 = [(NSMutableDictionary *)self->_domainProcessedCounts objectForKeyedSubscript:v86];
                  v89 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 integerValue] + 1);
                  [(NSMutableDictionary *)self->_domainProcessedCounts setObject:v89 forKeyedSubscript:v86];

                  v90 = VCPSignPostLog();
                  v91 = os_signpost_id_generate(v90);

                  v92 = VCPSignPostLog();
                  v93 = v92;
                  if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
                  {
                    *v145 = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_BEGIN, v91, "VIService_ServerSearchVISearch", "", v145, 2u);
                  }

                  v94 = self->_service;
                  v119[0] = _NSConcreteStackBlock;
                  v119[1] = 3221225472;
                  v119[2] = sub_1000FD254;
                  v119[3] = &unk_1002864A8;
                  v124 = v91;
                  v125 = 0;
                  v120 = v115;
                  v121 = v86;
                  selfCopy2 = self;
                  v123 = &v148;
                  v95 = [(VIService *)v94 encryptedSearchWithParsedVisualQuery:v114 domain:v86 completion:v119];
                  dispatch_semaphore_wait(self->_processSemaphore, 0xFFFFFFFFFFFFFFFFLL);
                }

                v81 = [obj countByEnumeratingWithState:&v126 objects:v147 count:16];
              }

              while (v81);
            }

            if ([v138[5] count])
            {
              v96 = [(VCPMADPECSingleRequestProcessingTask *)self resultFromVISearchResults:*(*(&v148 + 1) + 40) entityStore:storeCopy];
              [v115 setResult:v96];
            }

            status = [v115 status];
            _Block_object_dispose(&v148, 8);
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v75 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v75))
            {
              asset14 = [v115 asset];
              localIdentifier10 = [asset14 localIdentifier];
              LODWORD(v148) = 138412290;
              *(&v148 + 4) = localIdentifier10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "[PECSingleRequest][%@] Failed to create the parsed query", &v148, 0xCu);
            }
          }

          status = -18;
          [v115 setStatus:4294967278];
        }

LABEL_101:
        _Block_object_dispose(&v137, 8);

        _Block_object_dispose(buf, 8);
        v30 = v103;
LABEL_102:

        v29 = v104;
LABEL_103:

        v55 = v106;
LABEL_104:

        v51 = v108;
LABEL_105:

LABEL_106:
        sub_100002CBC(&v144);
        goto LABEL_107;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v45 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v45))
        {
          asset15 = [entryCopy asset];
          localIdentifier11 = [asset15 localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "[PECSingleRequest][%@] Thumbnail resource not locally available", buf, 0xCu);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v42 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v42))
      {
        asset16 = [entryCopy asset];
        localIdentifier12 = [asset16 localIdentifier];
        *buf = 138412290;
        *&buf[4] = localIdentifier12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[PECSingleRequest][%@] No thumbnail resource", buf, 0xCu);
      }
    }

    status = -23802;
    [entryCopy setStatus:4294943494];
LABEL_107:

    goto LABEL_108;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v11 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[PECSingleRequest] Processing has been canceled", buf, 2u);
    }
  }

  status = -128;
  [entryCopy setStatus:4294967168];
LABEL_108:

  return status;
}

- (int)run
{
  v86 = +[NSDate now];
  selfCopy6 = self;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[PECSingleRequest] Running", buf, 2u);
    }
  }

  atomic_store(1u, &self->_started);
  v118 = 0;
  if ((MADIsPECProcessingEnabled() & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_16;
    }

    v6 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v6))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v7 = "[PECSingleRequest] PEC settings toggle is off. Skipping processing";
    goto LABEL_15;
  }

  if (([(VIService *)self->_service mad_isEncryptedSearchProxyEnabled]& 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_16;
    }

    v6 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v6))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v7 = "[PECSingleRequest] Encrypted search proxy is not enabled. Skipping processing";
LABEL_15:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v6, v7, buf, 2u);
LABEL_16:
    (*(self->_completionHandler + 2))();
    code = 0;
    goto LABEL_162;
  }

  v83 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v85 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:?];
  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    mad_fetchRequest = [v83 mad_fetchRequest];
    v5 = [mad_fetchRequest dataStoreValueForKey:VCPKeyValuePECAnalysisIsInProgress] == 0;

    selfCopy6 = self;
    if (v5)
    {
      [v83 mad_performAnalysisDataStoreChanges:&stru_1002864C8 error:0];
    }
  }

  else
  {
    v8 = VCPKeyValuePECAnalysisIsInProgress;
    if (![v85 backup_valueForKey:VCPKeyValuePECAnalysisIsInProgress])
    {
      [v85 setValue:1 forKey:v8];
      [v85 commit];
    }
  }

  v96 = 0;
  v80 = 0;
  v9 = VCPLogToOSLogType[3];
  v10 = VCPLogToOSLogType[7];
  v81 = VCPLogToOSLogType[6];
  v82 = VCPLogToOSLogType[4];
  v84 = VCPLogToOSLogType[5];
  v79 = VCPPhotosPECProcessingVersion;
  code = VCPPhotosPECProcessingVersion;
  type = v10;
  while (2)
  {
    if ([(NSArray *)selfCopy6->_photoLibraries count]<= v96)
    {
      goto LABEL_129;
    }

    context = objc_autoreleasePoolPush();
    v11 = +[VCPWatchdog sharedWatchdog];
    [v11 pet];

    selfCopy6 = self;
    v12 = atomic_load(&self->_cancel);
    if (v12)
    {
      v10 = type;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest] library processing canceled", buf, 2u);
      }

      v13 = 8;
      goto LABEL_125;
    }

    v14 = [(NSArray *)self->_photoLibraries objectAtIndexedSubscript:v96];
    v99 = v14;
    v89 = [CSUSearchableKnowledgeObjectStore mad_sharedStoreForPhotoLibrary:v14];
    if (!v89)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[PECSingleRequest] Failed to get entity store", buf, 2u);
      }

      v13 = 10;
      goto LABEL_124;
    }

    if ([(VCPMADPECSingleRequestProcessingTask *)self _checkHardFailuresForPhotoLibrary:v14 withAnalysisDatabase:v85]&& MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v82))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v82, "[PECSingleRequest] Failed to check hard failures from previous run", buf, 2u);
    }

    v90 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v14];
    v88 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:v14];
    [PHAsset mad_sceneConfidenceThresholdForTask:16];
    v16 = v15;
    v17 = VCPSignPostLog();
    v18 = os_signpost_id_generate(v17);

    v19 = VCPSignPostLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPMADPECSingleAssetTask_FetchAssets", "", buf, 2u);
    }

    v117 = 0;
    LODWORD(v21) = v16;
    v22 = [v14 fetchUnprocessedAssetsForMediaProcessingTaskID:16 priority:0 algorithmVersion:v88 sceneConfidenceThreshold:&v117 error:v21];
    v91 = v117;
    v23 = VCPSignPostLog();
    v24 = v23;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v18, "VCPMADPECSingleAssetTask_FetchAssets", "", buf, 2u);
    }

    if (v91)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v9))
      {
        photoLibraryURL = [v14 photoLibraryURL];
        *buf = 138412546;
        *v122 = photoLibraryURL;
        *&v122[8] = 2112;
        *&v122[10] = v91;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[PECSingleRequest] Failed to fetch assets from PL at url: %@. Error: %@", buf, 0x16u);
      }

      v13 = 10;
      goto LABEL_123;
    }

    v26 = v14;
    if ([v22 count] <= 0x3E7)
    {
      if ([v22 count])
      {
        v91 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest] Zero non-failed assets. Fetching previously failed assets", buf, 2u);
        }

        v116 = 0;
        LODWORD(v27) = v16;
        v28 = [v14 fetchAssetsForMediaProcessingTaskID:16 priority:0 algorithmVersion:v88 sceneConfidenceThreshold:&v116 error:v27];
        v91 = v116;

        v22 = v28;
        v26 = v14;
      }
    }

    else
    {
      v91 = 0;
      v80 = 1;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v81))
    {
      v29 = [v22 count];
      photoLibraryURL2 = [v26 photoLibraryURL];
      *buf = 67109378;
      *v122 = v29;
      *&v122[4] = 2112;
      *&v122[6] = photoLibraryURL2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v81, "[PECSingleRequest] Fetched %d assets from PL at url: %@", buf, 0x12u);

      v26 = v14;
    }

    obj = +[NSMutableArray array];
    for (i = 0; i < [v22 count]; ++i)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = +[VCPWatchdog sharedWatchdog];
      [v33 pet];

      v34 = [v22 objectAtIndexedSubscript:i];
      [v34 fetchPropertySetsIfNeeded];
      v35 = atomic_load(&self->_cancel);
      if (v35)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier = [v34 localIdentifier];
          *buf = 138412290;
          *v122 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Asset processing canceled", buf, 0xCu);
        }

        v13 = 25;
      }

      else if (([PHPhotoLibrary mad_isProcessingNeededOnAsset:v34 forTaskID:16]& 1) != 0)
      {
        if (([v34 vcp_needsPECProcessing] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier2 = [v34 localIdentifier];
            *buf = 138412290;
            *v122 = localIdentifier2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Asset does not need PEC Processing. Skipping...", buf, 0xCu);
          }

          goto LABEL_85;
        }

        if ([v34 vcp_needsVisualSearchProcessing])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier3 = [v34 localIdentifier];
            *buf = 138412290;
            *v122 = localIdentifier3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Asset does not have up-to-date VS Processing. Skipping...", buf, 0xCu);
          }

          goto LABEL_85;
        }

        v112 = 0;
        v111 = 0;
        v110 = 0;
        v48 = [(VCPMADPECSingleRequestProcessingTask *)self _isAssetEligible:v34 withAnalysisDatabase:v90 previousStatus:&v112 previousAttempts:&v111 lastAttemptDate:&v110 allowDownload:0];
        v49 = v110;
        if (v48)
        {
          v50 = [VCPMADPECAssetEntry entryWithAsset:v34 previousStatus:v112 previousAttempts:v111 andLastAttemptDate:v49];
          adjustmentVersion = [v34 adjustmentVersion];
          v52 = adjustmentVersion == 0;

          if (v52)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v82))
            {
              localIdentifier4 = [v34 localIdentifier];
              *buf = 138412290;
              *v122 = localIdentifier4;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v82, "[PECSingleRequest][%@] Asset has no adjustment version", buf, 0xCu);
            }

            [v50 setStatus:4294943493];
            [(VCPMADPECSingleRequestProcessingTask *)self entriesByLibraryPointerAddEntry:v50];
            v13 = 27;
          }

          else
          {
            visualSearchProperties = [v34 visualSearchProperties];
            visualSearchData = [visualSearchProperties visualSearchData];
            v54 = visualSearchData == 0;

            if (v54)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                localIdentifier5 = [v34 localIdentifier];
                *buf = 138412290;
                *v122 = localIdentifier5;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Asset visual search data is empty", buf, 0xCu);
              }

              [v50 setVersion:v79];
              [(VCPMADPECSingleRequestProcessingTask *)self entriesByLibraryPointerAddEntry:v50];
              v13 = 27;
            }

            else
            {
              v77 = +[NSDate now];
              [(VCPMADPECSingleRequestProcessingTask *)self processAssetEntry:v50 entityStore:v89 hasFiredServerRequest:&v118];
              v55 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
              [v77 timeIntervalSinceNow];
              [v55 accumulateDoubleValue:@"TotalProcessTimeInSeconds" forField:@"com.apple.mediaanalysisd.PECAnalysisRunSession" andEvent:-v56];

              [(VCPMADPECSingleRequestProcessingTask *)self entriesByLibraryPointerAddEntry:v50];
              if (v118 == 1)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v81))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v81, "[PECSingleRequest] Sent server request, finishing run", buf, 2u);
                }

                [(VCPMADPECSingleRequestProcessingTask *)self publishEntries];
                v57 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
                [v86 timeIntervalSinceNow];
                [v57 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.PECAnalysisRunSession" andEvent:-v58];

                MADBMSendPECProcessedCounts(self->_domainProcessedCounts, self->_domainSuccessesCounts);
                (*(self->_completionHandler + 2))();
                code = 0;
                v13 = 1;
              }

              else
              {
                v13 = 0;
              }
            }
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier6 = [v34 localIdentifier];
            *buf = 138412290;
            *v122 = localIdentifier6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Asset not eligible for processing; skipping", buf, 0xCu);
          }

          v13 = 27;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v84))
        {
          localIdentifier7 = [v34 localIdentifier];
          *buf = 138412546;
          *v122 = localIdentifier7;
          *&v122[8] = 2048;
          *&v122[10] = 16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[PECSingleRequest][%@] Asset does not need processing in task %lu, ignoring... ", buf, 0x16u);
        }

        [obj addObject:v34];
        if (!+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          localIdentifier8 = [v34 localIdentifier];
          [v90 removeProcessingStatusForLocalIdentifier:localIdentifier8 andTaskID:16];

          [v90 commit];
          goto LABEL_83;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier9 = [v34 localIdentifier];
          *buf = 138412546;
          *v122 = localIdentifier9;
          *&v122[8] = 1024;
          *&v122[10] = 16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
        }

        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_1000FEC84;
        v114[3] = &unk_100283AD0;
        v40 = v34;
        v115 = v40;
        v113 = 0;
        v41 = [v83 mad_performAnalysisDataStoreChanges:v114 error:&v113];
        v42 = v113;
        v43 = v42;
        if (v41)
        {

LABEL_83:
          v46 = [obj count];
          if (v46 >= +[PHPhotoLibrary mad_maxIgnoredAssetsToMarkAsProcessed])
          {
            v47 = +[VCPWatchdog sharedWatchdog];
            [v47 pet];

            [v99 mad_markAsProcessedByTask:16 forAssets:obj cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_1002864E8];
            [obj removeAllObjects];
          }

LABEL_85:
          v13 = 27;
          goto LABEL_86;
        }

        code = [v42 code];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v9))
        {
          localIdentifier10 = [v40 localIdentifier];
          *buf = 138412802;
          *v122 = localIdentifier10;
          *&v122[8] = 1024;
          *&v122[10] = 16;
          *&v122[14] = 2112;
          *&v122[16] = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[PECSingleRequest][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x1Cu);
        }

        v13 = 1;
      }

LABEL_86:

      v26 = v99;
      objc_autoreleasePoolPop(v32);
      if (v13 && v13 != 27)
      {
        if (v13 != 25)
        {
          goto LABEL_122;
        }

        break;
      }
    }

    selfCopy5 = self;
    if ([obj count])
    {
      v64 = +[VCPWatchdog sharedWatchdog];
      [v64 pet];

      selfCopy5 = self;
      v26 = v99;
      [v99 mad_markAsProcessedByTask:16 forAssets:obj cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_100286508];
      [obj removeAllObjects];
    }

    [(VCPMADPECSingleRequestProcessingTask *)selfCopy5 publishEntries];
    MediaAnalysisDaemonReleaseSharedDataStores(v26);
    v13 = 0;
LABEL_122:

LABEL_123:
LABEL_124:

    selfCopy6 = self;
    v10 = type;
LABEL_125:
    objc_autoreleasePoolPop(context);
    if (!v13 || v13 == 10)
    {
      ++v96;
      continue;
    }

    break;
  }

  if (v13 == 8)
  {
LABEL_129:
    v65 = atomic_load(&selfCopy6->_cancel);
    if (v65)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[PECSingleRequest] run canceled", buf, 2u);
      }

      if ([(VCPMADPECSingleRequestProcessingTask *)selfCopy6 entryCount])
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        obja = [(NSMutableDictionary *)selfCopy6->_entriesByLibraryPointer allValues];
        v97 = [obja countByEnumeratingWithState:&v106 objects:v120 count:16];
        if (v97)
        {
          contexta = *v107;
          do
          {
            for (j = 0; j != v97; j = j + 1)
            {
              if (*v107 != contexta)
              {
                objc_enumerationMutation(obja);
              }

              v66 = *(*(&v106 + 1) + 8 * j);
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v105 = 0u;
              v67 = v66;
              v68 = [v67 countByEnumeratingWithState:&v102 objects:v119 count:16];
              if (v68)
              {
                v69 = *v103;
                do
                {
                  for (k = 0; k != v68; k = k + 1)
                  {
                    if (*v103 != v69)
                    {
                      objc_enumerationMutation(v67);
                    }

                    v71 = *(*(&v102 + 1) + 8 * k);
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
                    {
                      asset = [v71 asset];
                      localIdentifier11 = [asset localIdentifier];
                      *buf = 138412290;
                      *v122 = localIdentifier11;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PECSingleRequest][%@] Marking asset as canceled", buf, 0xCu);
                    }

                    [v71 setStatus:4294967168];
                  }

                  v68 = [v67 countByEnumeratingWithState:&v102 objects:v119 count:16];
                }

                while (v68);
              }
            }

            v97 = [obja countByEnumeratingWithState:&v106 objects:v120 count:16];
          }

          while (v97);
        }

        [(VCPMADPECSingleRequestProcessingTask *)self publishEntries];
      }
    }

    else if ((v80 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v84))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[PECSingleRequest] Finished looping through assets, marking PEC analysis as complete", buf, 2u);
      }

      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        [v83 mad_performAnalysisDataStoreChanges:&stru_100286528 error:0];
      }

      else
      {
        [v85 removeKey:VCPKeyValuePECAnalysisIsInProgress];
        [v85 commit];
      }
    }

    v74 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
    [v86 timeIntervalSinceNow];
    [v74 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.PECAnalysisRunSession" andEvent:-v75];

    MADBMSendPECProcessedCounts(self->_domainProcessedCounts, self->_domainSuccessesCounts);
    (*(self->_completionHandler + 2))();
    code = 0;
  }

LABEL_162:
  return code;
}

@end