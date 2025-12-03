@interface MADMomentsDeferredProcessingTask
+ (id)_allProcessingTypes;
+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (BOOL)run:(id *)run;
- (MADMomentsDeferredProcessingTask)initWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (id)_earliestRequestDateFromAssetEntries:(id)entries;
- (id)_earliestRequestDateFromManagedAssetEntries:(id)entries;
- (void)_cleanupRequestedAssets:(id)assets fromDatabase:(id)database withProcessingType:(unint64_t)type photoLibrary:(id)library unprocessedAssets:(id *)unprocessedAssets earliestAssetModificationDate:(id *)date;
@end

@implementation MADMomentsDeferredProcessingTask

- (MADMomentsDeferredProcessingTask)initWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100055244;
  v17[3] = &unk_100284038;
  completionHandlerCopy = completionHandler;
  v18 = completionHandlerCopy;
  v16.receiver = self;
  v16.super_class = MADMomentsDeferredProcessingTask;
  v11 = [(MADMomentsDeferredProcessingTask *)&v16 initWithCompletionHandler:v17];
  if (v11)
  {
    if (handlerCopy)
    {
      v12 = handlerCopy;
    }

    else
    {
      v12 = &stru_100284058;
    }

    v13 = objc_retainBlock(v12);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v13;

    [(MADMomentsDeferredProcessingTask *)v11 setCancelBlock:blockCopy];
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = [[self alloc] initWithCancelBlock:blockCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v11;
}

+ (id)_allProcessingTypes
{
  v2 = [NSNumber numberWithUnsignedInteger:MADDeferredProcessingTypeScene];
  v6[0] = v2;
  v3 = [NSNumber numberWithUnsignedInteger:MADDeferredProcessingTypeQuickFaceIdentification];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_earliestRequestDateFromAssetEntries:(id)entries
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
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        requestDate = [*(*(&v12 + 1) + 8 * i) requestDate];
        [requestDate timeIntervalSinceReferenceDate];
        if (v9 != 0.0 && (!v4 || [v4 compare:requestDate] == 1))
        {
          v10 = requestDate;

          v4 = v10;
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v4;
}

- (id)_earliestRequestDateFromManagedAssetEntries:(id)entries
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
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        requestDate = [*(*(&v12 + 1) + 8 * i) requestDate];
        [requestDate timeIntervalSinceReferenceDate];
        if (v9 != 0.0 && (!v4 || [v4 compare:requestDate] == 1))
        {
          v10 = requestDate;

          v4 = v10;
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v4;
}

- (void)_cleanupRequestedAssets:(id)assets fromDatabase:(id)database withProcessingType:(unint64_t)type photoLibrary:(id)library unprocessedAssets:(id *)unprocessedAssets earliestAssetModificationDate:(id *)date
{
  assetsCopy = assets;
  databaseCopy = database;
  libraryCopy = library;
  v11 = VCPSignPostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = VCPSignPostLog();
  v14 = v13;
  spid = v12;
  v46 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MADMoments_CleanupProcessedAssets", "", buf, 2u);
  }

  v51 = +[NSMutableArray array];
  v48 = [PHAsset vcp_fetchOptionsForLibrary:libraryCopy forTaskID:type];
  v15 = VCPSignPostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = VCPSignPostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MADMoments_FetchPHAssets", "", buf, 2u);
  }

  v54 = [PHAsset fetchAssetsWithLocalIdentifiers:assetsCopy options:v48];
  v19 = VCPSignPostLog();
  v20 = v19;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v16, "MADMoments_FetchPHAssets", "", buf, 2u);
  }

  v50 = [NSMutableSet setWithArray:assetsCopy];
  v21 = 0;
  v52 = 0;
  v22 = MADDeferredProcessingTypeScene;
  v23 = MADDeferredProcessingTypeQuickFaceIdentification;
  while (v21 < [v54 count])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = [v54 objectAtIndexedSubscript:v21];
    v26 = v25;
    if (date)
    {
      adjustmentTimestamp = [v25 adjustmentTimestamp];
      if (adjustmentTimestamp)
      {
        [v26 adjustmentTimestamp];
      }

      else
      {
        [v26 creationDate];
      }
      v28 = ;

      if (v28)
      {
        v29 = v52;
        if (!v52 || (v29 = v52, [v52 compare:v28] == 1))
        {
          v30 = v28;

          v52 = v30;
        }
      }
    }

    if ((v22 != type || [v26 vcp_needSceneProcessing]) && (v23 != type || (objc_msgSend(v26, "vcp_quickFaceClassificationDone") & 1) == 0))
    {
      localIdentifier = [v26 localIdentifier];
      [v51 addObject:localIdentifier];

      localIdentifier2 = [v26 localIdentifier];
      [v50 removeObject:localIdentifier2];
    }

    objc_autoreleasePoolPop(v24);
    ++v21;
  }

  if (+[MADManagedMomentsScheduledAsset isMACDPersistEnabled])
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100055E94;
    v61[3] = &unk_100284080;
    v62 = v50;
    v63 = libraryCopy;
    typeCopy = type;
    [v63 mad_performAnalysisDataStoreChanges:v61 error:0];
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v33 = v50;
    v34 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v34)
    {
      v35 = *v58;
      v36 = VCPLogToOSLogType[4];
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v58 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v57 + 1) + 8 * i);
          v39 = objc_autoreleasePoolPush();
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v36))
          {
            photoLibraryURL = [libraryCopy photoLibraryURL];
            *buf = 138412546;
            v66 = v38;
            v67 = 2112;
            v68 = photoLibraryURL;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[Moments] Invalid/Completed local identifier %@ in Photo Library %@", buf, 0x16u);
          }

          [databaseCopy removeMomentsScheduledAssetWithLocalIdentifier:v38 andTaskID:type];
          objc_autoreleasePoolPop(v39);
        }

        v34 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v34);
    }

    [databaseCopy commit];
  }

  if (unprocessedAssets)
  {
    v41 = v51;
    *unprocessedAssets = v51;
  }

  if (date)
  {
    v42 = v52;
    *date = v52;
  }

  v43 = VCPSignPostLog();
  v44 = v43;
  if (v46 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "MADMoments_CleanupProcessedAssets", "", buf, 2u);
  }
}

- (BOOL)run:(id *)run
{
  v64 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  v63 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v64];
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    mad_fetchRequest = [v64 mad_fetchRequest];
    v4 = mad_fetchRequest;
    if (mad_fetchRequest)
    {
      v5 = [mad_fetchRequest keyExistsInKeyValueStore:@"PFSkipChecksumTimestamp"];

      if ((v5 & 1) == 0)
      {
LABEL_11:
        if (MediaAnalysisLogLevel() >= 6)
        {
          v7 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v7))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Moments] Skip checksum for PFCachingArchiveIndex ... ", buf, 2u);
          }
        }

        PFCachingArchiveIndexSetSkipChecksumValidation();
        v8 = +[NSDate now];
        [v8 timeIntervalSinceReferenceDate];
        v10 = v9;

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          v110[0] = _NSConcreteStackBlock;
          v110[1] = 3221225472;
          v110[2] = sub_1000571E8;
          v110[3] = &unk_100282F90;
          v110[4] = v10;
          [v64 mad_performAnalysisDataStoreChanges:v110 error:0];
        }

        else
        {
          [v63 setValue:v10 forKey:@"PFSkipChecksumTimestamp"];
          [v63 commit];
        }

        v61 = 0;
        goto LABEL_18;
      }
    }
  }

  else if (v63 && ![v63 keyExistsInKeyValueStore:@"PFSkipChecksumTimestamp"])
  {
    goto LABEL_11;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v6 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[Moments] Detected previous crash after skipping checksum for PFCachingArchiveIndex, restoring checksum", buf, 2u);
    }
  }

  PFCachingArchiveIndexSetSkipChecksumValidation();
  v61 = 1;
LABEL_18:
  v11 = +[VCPPhotoLibraryManager sharedManager];
  allPhotoLibraries = [v11 allPhotoLibraries];

  _allProcessingTypes = [objc_opt_class() _allProcessingTypes];
  v12 = [allPhotoLibraries count];
  v13 = [_allProcessingTypes count];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = allPhotoLibraries;
  v14 = [obj countByEnumeratingWithState:&v106 objects:v121 count:16];
  if (v14)
  {
    v85 = 0;
    v75 = v13 * v12;
    v68 = *v107;
    v74 = MADDeferredProcessingTypeScene;
    v73 = MADDeferredProcessingTypeQuickFaceIdentification;
    v72 = VCPLogToOSLogType[3];
    type = VCPLogToOSLogType[6];
    while (2)
    {
      v71 = 0;
      v67 = v14;
      do
      {
        if (*v107 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v89 = *(*(&v106 + 1) + 8 * v71);
        context = objc_autoreleasePoolPush();
        v82 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v89];
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v77 = _allProcessingTypes;
        v15 = [v77 countByEnumeratingWithState:&v102 objects:v120 count:16];
        if (v15)
        {
          v80 = *v103;
          while (2)
          {
            v79 = v15;
            for (i = 0; i != v79; i = i + 1)
            {
              if (*v103 != v80)
              {
                objc_enumerationMutation(v77);
              }

              v17 = *(*(&v102 + 1) + 8 * i);
              v18 = +[NSDate now];
              [v18 timeIntervalSince1970];
              v20 = v19;

              unsignedIntegerValue = [v17 unsignedIntegerValue];
              v84 = VCPTaskIDDescription();
              v22 = +[NSMutableArray array];
              if (+[MADManagedMomentsScheduledAsset isMACDReadEnabled])
              {
                mad_fetchRequest2 = [v89 mad_fetchRequest];
                v101 = 0;
                [mad_fetchRequest2 fetchMomentsScheduledAssetEntries:&v101 forTaskID:unsignedIntegerValue];
                v24 = v101;

                v25 = v24;
              }

              else
              {
                v100 = 0;
                [v82 fetchMomentsScheduledAssetEntries:&v100 forTaskID:unsignedIntegerValue];
                v25 = v100;
              }

              v88 = v25;
              v26 = [v25 count];
              ++v85;
              if (v26)
              {
                v83 = [(MADMomentsDeferredProcessingTask *)self _earliestRequestDateFromAssetEntries:v88];
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                v27 = v88;
                v28 = [v27 countByEnumeratingWithState:&v96 objects:v119 count:16];
                if (v28)
                {
                  v29 = *v97;
                  do
                  {
                    for (j = 0; j != v28; j = j + 1)
                    {
                      if (*v97 != v29)
                      {
                        objc_enumerationMutation(v27);
                      }

                      localIdentifier = [*(*(&v96 + 1) + 8 * j) localIdentifier];
                      [v22 addObject:localIdentifier];
                    }

                    v28 = [v27 countByEnumeratingWithState:&v96 objects:v119 count:16];
                  }

                  while (v28);
                }

                v94 = 0;
                v95 = 0;
                [(MADMomentsDeferredProcessingTask *)self _cleanupRequestedAssets:v22 fromDatabase:v82 withProcessingType:unsignedIntegerValue photoLibrary:v89 unprocessedAssets:&v95 earliestAssetModificationDate:&v94];
                v32 = v95;
                v87 = v94;
                if ([v32 count])
                {
                  [v32 count];
                  v93[0] = _NSConcreteStackBlock;
                  v93[1] = 3221225472;
                  v93[2] = sub_1000571FC;
                  v93[3] = &unk_1002840A8;
                  v93[4] = self;
                  v93[5] = v85;
                  v93[6] = v75;
                  v81 = objc_retainBlock(v93);
                  v33 = VCPSignPostLog();
                  v34 = os_signpost_id_generate(v33);

                  v35 = VCPSignPostLog();
                  v36 = v35;
                  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "MADMoments_ProcessAssets", "", buf, 2u);
                  }

                  if (unsignedIntegerValue == v74)
                  {
                    v37 = [VCPMADSceneAssetProcessingTask alloc];
                    photoLibraryURL = [v89 photoLibraryURL];
                    v92[0] = _NSConcreteStackBlock;
                    v92[1] = 3221225472;
                    v92[2] = sub_10005723C;
                    v92[3] = &unk_100283000;
                    v92[4] = self;
                    v39 = [(VCPMADSceneAssetProcessingTask *)v37 initWithLocalIdentifiers:v32 fromPhotoLibraryWithURL:photoLibraryURL cancelBlock:v92 progressHandler:v81 completionHandler:&stru_1002840E8];

                    v78 = [(VCPMADSceneAssetProcessingTask *)v39 run];
                  }

                  else
                  {
                    if (unsignedIntegerValue != v73)
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v72))
                      {
                        *buf = 67109120;
                        *v116 = unsignedIntegerValue;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v72, "[Moments] Unexpected processing type: %u", buf, 8u);
                      }

                      v117 = NSLocalizedDescriptionKey;
                      v46 = [NSString stringWithFormat:@"[Moments] Unexpected processing type: %u", unsignedIntegerValue];
                      v118 = v46;
                      photoLibraryURL4 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
                      v56 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:photoLibraryURL4];
                      v51 = *run;
                      *run = v56;
                      goto LABEL_76;
                    }

                    v42 = [VCPMADQuickFaceIDAssetProcessingTask alloc];
                    photoLibraryURL2 = [v89 photoLibraryURL];
                    v91[0] = _NSConcreteStackBlock;
                    v91[1] = 3221225472;
                    v91[2] = sub_100057248;
                    v91[3] = &unk_100283000;
                    v91[4] = self;
                    v39 = [(VCPMADQuickFaceIDAssetProcessingTask *)v42 initWithLocalIdentifiers:v32 fromPhotoLibraryWithURL:photoLibraryURL2 cancelBlock:v91 progressHandler:v81 completionHandler:&stru_100284108];

                    v78 = [(VCPMADSceneAssetProcessingTask *)v39 run];
                  }

                  v44 = VCPSignPostLog();
                  v45 = v44;
                  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, v34, "MADMoments_ProcessAssets", "", buf, 2u);
                  }

                  v90 = 0;
                  [(MADMomentsDeferredProcessingTask *)self _cleanupRequestedAssets:v32 fromDatabase:v82 withProcessingType:unsignedIntegerValue photoLibrary:v89 unprocessedAssets:&v90 earliestAssetModificationDate:0];
                  v46 = v90;
                  if ([v46 count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v72))
                  {
                    v47 = [v46 count];
                    photoLibraryURL3 = [v89 photoLibraryURL];
                    *buf = 67109634;
                    *v116 = v47;
                    *&v116[4] = 2112;
                    *&v116[6] = v84;
                    *&v116[14] = 2112;
                    *&v116[16] = photoLibraryURL3;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v72, "[Moments] Failed to process %u assets for %@ in Photo Library %@", buf, 0x1Cu);
                  }

                  VCPCoreAnalyticsReportEventMomentsDeferredProcessing(v26, [v32 count] - objc_msgSend(v46, "count"), v26 - objc_msgSend(v32, "count"), objc_msgSend(v46, "count"), v83, v87, unsignedIntegerValue, v89, v20);
                  if (v78)
                  {
                    if (v78 == -128)
                    {
                      if (run)
                      {
                        v113 = NSLocalizedDescriptionKey;
                        photoLibraryURL4 = [NSString stringWithFormat:@"[Moments] Deferred processing %@ cancelled", v84];
                        v114 = photoLibraryURL4;
                        v51 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
                        v52 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v51];
                        v53 = *run;
                        *run = v52;
                        goto LABEL_71;
                      }

LABEL_77:

                      v49 = 0;
                      goto LABEL_78;
                    }

                    if (!run)
                    {
                      goto LABEL_77;
                    }

                    v111 = NSLocalizedDescriptionKey;
                    photoLibraryURL4 = [v89 photoLibraryURL];
                    v51 = [NSString stringWithFormat:@"[Moments] Deferred processing %@ failed for assets in Photo Library %@", v84, photoLibraryURL4];
                    v112 = v51;
                    v53 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
                    v54 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v78 userInfo:v53];
                    v55 = *run;
                    *run = v54;

LABEL_71:
LABEL_76:

                    goto LABEL_77;
                  }
                }

                else
                {
                  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
                  {
                    photoLibraryURL5 = [v89 photoLibraryURL];
                    *buf = 138412546;
                    *v116 = v84;
                    *&v116[8] = 2112;
                    *&v116[10] = photoLibraryURL5;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Moments] All assets scheduled for %@ in Photo Library %@ have already been processed", buf, 0x16u);
                  }

                  VCPCoreAnalyticsReportEventMomentsDeferredProcessing(v26, 0, v26, 0, v83, v87, unsignedIntegerValue, v89, v20);
                }
              }

              else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
              {
                photoLibraryURL6 = [v89 photoLibraryURL];
                *buf = 138412546;
                *v116 = v84;
                *&v116[8] = 2112;
                *&v116[10] = photoLibraryURL6;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Moments] No assets scheduled for %@ in Photo Library %@", buf, 0x16u);
              }
            }

            v15 = [v77 countByEnumeratingWithState:&v102 objects:v120 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        MediaAnalysisDaemonReleaseSharedDataStores(v89);
        v49 = 1;
LABEL_78:

        objc_autoreleasePoolPop(context);
        if (!v49)
        {

          v59 = 0;
          goto LABEL_90;
        }

        v71 = v71 + 1;
      }

      while (v71 != v67);
      v14 = [obj countByEnumeratingWithState:&v106 objects:v121 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  completionHandler = [(MADMomentsDeferredProcessingTask *)self completionHandler];
  completionHandler[2](completionHandler, 0, 0);

  if ((v61 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v58 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v58))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[Moments] Restore checksum for PFCachingArchiveIndex ... ", buf, 2u);
      }
    }

    PFCachingArchiveIndexSetSkipChecksumValidation();
    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      [v64 mad_performAnalysisDataStoreChanges:&stru_100284148 error:0];
    }

    else
    {
      [v63 removeKey:@"PFSkipChecksumTimestamp"];
      [v63 commit];
    }
  }

  v59 = 1;
LABEL_90:

  return v59;
}

@end