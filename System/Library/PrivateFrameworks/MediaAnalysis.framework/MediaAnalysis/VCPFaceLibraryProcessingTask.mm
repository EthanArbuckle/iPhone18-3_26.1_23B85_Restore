@interface VCPFaceLibraryProcessingTask
+ (id)taskWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block;
- (BOOL)_readyToProcessProcessLibrary:(id)library;
- (BOOL)isCancelled;
- (VCPFaceLibraryProcessingTask)initWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block;
- (id)_processingTaskForPhotoLibrary:(id)library;
- (int)_addBatchWithAsset:(id)asset isRetry:(BOOL)retry withTask:(id)task;
- (int)_analyzeAllAssetsWithTask:(id)task;
- (int)_detectFacesForPhotoLibrary:(id)library;
- (int)_generateAndDetectFaceCropsForPhotoLibrary:(id)library;
- (int)_maintainProcessingStatusWithTask:(id)task;
- (int)_processAutoCounterForPhotoLibrary:(id)library;
- (int)_processFetchedAssets:(id)assets withProcessingTask:(id)task andProgressReporter:(id)reporter;
- (int)_processLibrary:(id)library;
- (int)_processLocalIdentifiers:(id)identifiers change:(id)change insert:(BOOL)insert withTask:(id)task;
- (int)_retryEligibleAssetsWithTask:(id)task andStatus:(unint64_t)status andReporter:(id)reporter;
- (int)_retryFailedAssetsWithTask:(id)task;
- (int)_screenLocalIdentifiers:(id)identifiers withTask:(id)task andPreviousStatus:(unint64_t)status andProgressReporter:(id)reporter;
- (int)_streamAnalysisWithTask:(id)task andProcessingStatus:(unint64_t)status;
- (int)_updateQuickFaceIDModelForPhotoLibrary:(id)library withContext:(id)context andQuickFaceIDManager:(id)manager;
- (int)completeSceneProcessing;
- (int)run;
- (int)runGalleryProcessingForPhotoLibrary:(id)library progressHandler:(id)handler;
- (void)dealloc;
@end

@implementation VCPFaceLibraryProcessingTask

- (VCPFaceLibraryProcessingTask)initWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block
{
  librariesCopy = libraries;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v43.receiver = self;
  v43.super_class = VCPFaceLibraryProcessingTask;
  v18 = [(VCPFaceLibraryProcessingTask *)&v43 init];
  v19 = v18;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_photoLibraries, libraries);
    v21 = +[NSMutableDictionary dictionary];
    processingTasks = v20->_processingTasks;
    v20->_processingTasks = v21;

    objc_storeStrong(&v19->_options, options);
    if (handlerCopy)
    {
      v23 = handlerCopy;
    }

    else
    {
      v23 = &stru_1002862A8;
    }

    v24 = objc_retainBlock(v23);
    progressHandler = v20->_progressHandler;
    v20->_progressHandler = v24;

    if (completionHandlerCopy)
    {
      v26 = completionHandlerCopy;
    }

    else
    {
      v26 = &stru_1002862C8;
    }

    v27 = objc_retainBlock(v26);
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v27;

    if (blockCopy)
    {
      v29 = blockCopy;
    }

    else
    {
      v29 = &stru_1002862E8;
    }

    v30 = objc_retainBlock(v29);
    cancelBlock = v20->_cancelBlock;
    v20->_cancelBlock = v30;

    v32 = +[NSMutableSet set];
    assetBatch = v20->_assetBatch;
    v20->_assetBatch = v32;

    v20->_subtasks = -1;
    v34 = [(NSDictionary *)v20->_options objectForKeyedSubscript:MADFaceLibraryProcessing_ModifyPersonRequest];
    bOOLValue = [v34 BOOLValue];

    if (bOOLValue)
    {
      v36 = 52;
    }

    else
    {
      v37 = [(NSDictionary *)v19->_options objectForKeyedSubscript:MADFaceLibraryProcessing_AutoCounterOnly];
      bOOLValue2 = [v37 BOOLValue];

      if (!bOOLValue2)
      {
        v40 = MADFaceLibraryProcessing_SubTasks;
        v41 = [(NSDictionary *)v19->_options objectForKeyedSubscript:MADFaceLibraryProcessing_SubTasks];

        if (v41)
        {
          v42 = [(NSDictionary *)v19->_options objectForKeyedSubscript:v40];
          v20->_subtasks = [v42 unsignedIntegerValue];
        }

        goto LABEL_16;
      }

      v36 = 128;
    }

    v20->_subtasks = v36;
LABEL_16:
    [objc_opt_class() _logSubtasks:v20->_subtasks];
  }

  return v20;
}

+ (id)taskWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block
{
  librariesCopy = libraries;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v16 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:librariesCopy andOptions:optionsCopy andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy andCancelBlock:blockCopy];

  return v16;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
  }

  v4.receiver = self;
  v4.super_class = VCPFaceLibraryProcessingTask;
  [(VCPFaceLibraryProcessingTask *)&v4 dealloc];
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_cancel);
  }

  return v3 & 1;
}

- (id)_processingTaskForPhotoLibrary:(id)library
{
  libraryCopy = library;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  processingTasks = selfCopy->_processingTasks;
  databaseUUID = [libraryCopy databaseUUID];
  v8 = [(NSMutableDictionary *)processingTasks objectForKeyedSubscript:databaseUUID];

  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v24 = libraryCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[FaceLibraryProcessing] Creating VCPFaceProcessingTask for library %@", buf, 0xCu);
      }
    }

    v10 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:libraryCopy];
    v11 = [(NSDictionary *)selfCopy->_options objectForKeyedSubscript:MADFaceLibraryProcessing_ModifyPersonRequest];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [v10 setSkipGallerySyncing:1];
    }

    objc_initWeak(buf, selfCopy);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F0240;
    v21[3] = &unk_100286310;
    objc_copyWeak(&v22, buf);
    v13 = objc_retainBlock(v21);
    v14 = [VCPFaceProcessingTask taskWithPhotoLibrary:libraryCopy andContext:v10 andCancelBlock:v13];
    v15 = selfCopy->_processingTasks;
    databaseUUID2 = [libraryCopy databaseUUID];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:databaseUUID2];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v17 = selfCopy->_processingTasks;
  databaseUUID3 = [libraryCopy databaseUUID];
  v19 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:databaseUUID3];

  objc_sync_exit(selfCopy);

  return v19;
}

- (int)_addBatchWithAsset:(id)asset isRetry:(BOOL)retry withTask:(id)task
{
  retryCopy = retry;
  assetCopy = asset;
  taskCopy = task;
  if (![(VCPFaceLibraryProcessingTask *)self isCancelled])
  {
    v11 = +[VCPWatchdog sharedWatchdog];
    [v11 pet];

    if (([assetCopy vcp_needsFaceProcessing] & 1) == 0)
    {
      if (retryCopy)
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v16 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v16))
            {
              localIdentifier = [assetCopy localIdentifier];
              *buf = 138412546;
              v63 = localIdentifier;
              v64 = 1024;
              *v65 = 3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[FaceLibraryProcessing][%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
            }
          }

          photoLibrary = [taskCopy photoLibrary];
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_1000F0C64;
          v60[3] = &unk_100283AD0;
          v19 = assetCopy;
          v61 = v19;
          v59 = 0;
          v20 = [photoLibrary mad_performAnalysisDataStoreChanges:v60 error:&v59];
          v21 = v59;

          if ((v20 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
          {
            v22 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v22))
            {
              localIdentifier2 = [v19 localIdentifier];
              *buf = 138412802;
              v63 = localIdentifier2;
              v64 = 1024;
              *v65 = 3;
              *&v65[4] = 2112;
              *&v65[6] = v21;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[FaceLibraryProcessing][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x1Cu);
            }
          }
        }

        else
        {
          database = [taskCopy database];
          localIdentifier3 = [assetCopy localIdentifier];
          [database removeProcessingStatusForLocalIdentifier:localIdentifier3 andTaskID:3];

          database2 = [taskCopy database];
          [database2 commit];
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v36 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            localIdentifier4 = [assetCopy localIdentifier];
            *buf = 138412290;
            v63 = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[FaceLibraryProcessing][%@] Analysis is up-to-date", buf, 0xCu);
          }
        }
      }

      goto LABEL_33;
    }

    photoLibrary2 = [assetCopy photoLibrary];
    if ([photoLibrary2 mad_pauseFCPeopleFurtherProcessing])
    {
      faceAnalysisVersion = [assetCopy faceAnalysisVersion];

      if (faceAnalysisVersion == 14)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v14 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v14))
          {
            localIdentifier5 = [assetCopy localIdentifier];
            *buf = 138412290;
            v63 = localIdentifier5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@][FaceAnalysisStateCheck] already with FC version; skip", buf, 0xCu);
          }
        }

LABEL_33:
        LODWORD(photoLibrary4) = 0;
        goto LABEL_66;
      }
    }

    else
    {
    }

    v58 = 0;
    v57 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      photoLibrary3 = [taskCopy photoLibrary];
      mad_fetchRequest = [photoLibrary3 mad_fetchRequest];
      v56 = 0;
      localIdentifier6 = [assetCopy localIdentifier];
      photoLibrary4 = [mad_fetchRequest fetchProcessingStatus:&v58 attempts:&v57 lastAttemptDate:0 nextAttemptDate:&v56 localIdentifier:localIdentifier6 taskID:3];
      v27 = v56;
    }

    else
    {
      database3 = [taskCopy database];
      v55 = 0;
      localIdentifier7 = [assetCopy localIdentifier];
      photoLibrary4 = [database3 queryProcessingStatus:&v58 attempts:&v57 lastAttemptDate:0 andNextAttemptDate:&v55 forLocalIdentifier:localIdentifier7 andTaskID:3];
      v27 = v55;
    }

    if (!photoLibrary4)
    {
      v30 = v58;
      if (v58 == 7 || v58 == 2)
      {
        photoLibrary4 = [taskCopy photoLibrary];
        if ([photoLibrary4 vcp_supportsCloudLibraryResourceDownload])
        {
          photoLibrary5 = [taskCopy photoLibrary];
          if ([photoLibrary5 vcp_allowsCloudLibraryResourceDownload])
          {
            v32 = [taskCopy allowStreaming] ^ 1;
          }

          else
          {
            v32 = 1;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }

      if (v30 == 7 || v30 == 2)
      {
      }

      if (v32)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v38 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v38))
          {
            localIdentifier8 = [assetCopy localIdentifier];
            v40 = VCPProcessingStatusDescription();
            v41 = v57;
            v42 = +[VCPLogManager dateFormatter];
            v43 = [v42 stringFromDate:v27];
            *buf = 138413058;
            v63 = localIdentifier8;
            v64 = 2112;
            *v65 = v40;
            *&v65[8] = 1024;
            *&v65[10] = v41;
            v66 = 2112;
            v67 = v43;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[FaceLibraryProcessing][%@] Analysis deferred (%@|%d): no Internet access or streaming is disabled; revisit date: %@", buf, 0x26u);
          }
        }

        goto LABEL_64;
      }

      v44 = +[NSDate now];
      if ([v27 compare:v44] == 1)
      {
        v46 = v58 != 2 || v57 != 1;

        if (v46)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v47 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v47))
            {
              localIdentifier9 = [assetCopy localIdentifier];
              v49 = VCPProcessingStatusDescription();
              v50 = v57;
              v51 = +[VCPLogManager dateFormatter];
              v52 = [v51 stringFromDate:v27];
              *buf = 138413058;
              v63 = localIdentifier9;
              v64 = 2112;
              *v65 = v49;
              *&v65[8] = 1024;
              *&v65[10] = v50;
              v66 = 2112;
              v67 = v52;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "[FaceLibraryProcessing][%@] Analysis deferred (%@|%d); revisit date: %@", buf, 0x26u);
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
      }

      assetBatch = self->_assetBatch;
      if (v58 == 4)
      {
        if ([(NSMutableSet *)assetBatch count])
        {
          LODWORD(photoLibrary4) = [taskCopy processAssets:self->_assetBatch];
          [(NSMutableSet *)self->_assetBatch removeAllObjects];
          if (photoLibrary4)
          {
            goto LABEL_65;
          }
        }

        [(NSMutableSet *)self->_assetBatch addObject:assetCopy];
        LODWORD(photoLibrary4) = [taskCopy processAssets:self->_assetBatch];
        [(NSMutableSet *)self->_assetBatch removeAllObjects];
      }

      else
      {
        [(NSMutableSet *)assetBatch addObject:assetCopy];
        if ([(NSMutableSet *)self->_assetBatch count]< 0x64)
        {
LABEL_64:
          LODWORD(photoLibrary4) = 0;
          goto LABEL_65;
        }

        LODWORD(photoLibrary4) = [taskCopy processAssets:self->_assetBatch];
        [(NSMutableSet *)self->_assetBatch removeAllObjects];
      }

      if (!photoLibrary4)
      {
        goto LABEL_64;
      }
    }

LABEL_65:

    goto LABEL_66;
  }

  LODWORD(photoLibrary4) = -128;
LABEL_66:

  return photoLibrary4;
}

- (int)_screenLocalIdentifiers:(id)identifiers withTask:(id)task andPreviousStatus:(unint64_t)status andProgressReporter:(id)reporter
{
  identifiersCopy = identifiers;
  taskCopy = task;
  v50 = identifiersCopy;
  reporterCopy = reporter;
  v52 = [[NSMutableSet alloc] initWithArray:identifiersCopy];
  photoLibrary = [taskCopy photoLibrary];
  v12 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary forTaskID:3];

  v49 = v12;
  v13 = [PHAsset fetchAssetsWithLocalIdentifiers:v50 options:v12];
  v14 = 0;
  v15 = [v13 count];
  if (!v15)
  {
LABEL_15:
    if (-[NSMutableSet count](self->_assetBatch, "count") && (v22 = [taskCopy processAssets:self->_assetBatch], -[NSMutableSet removeAllObjects](self->_assetBatch, "removeAllObjects"), v22))
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_57;
      }

      v23 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v23))
      {
        goto LABEL_57;
      }

      *buf = 67109120;
      *v62 = v22;
      v24 = "[FaceLibraryProcessing] Failed to process asset batch (error: %d)";
      v25 = v23;
      v26 = 8;
    }

    else
    {
      v27 = +[VCPMADCoreAnalyticsManager sharedManager];
      [v27 accumulateInt64Value:v15 forField:@"NumberOfAssetsOutFromBlacklist" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

      if (![v52 count])
      {
        goto LABEL_57;
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v28 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v28))
          {
            *buf = 67109378;
            *v62 = 3;
            *&v62[4] = 2112;
            *&v62[6] = v52;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[FaceLibraryProcessing][MACD] Removing processing status for taskID %d, localIdentifiers %@", buf, 0x12u);
          }
        }

        photoLibrary2 = [taskCopy photoLibrary];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1000F1444;
        v58[3] = &unk_100283AD0;
        v30 = v52;
        v59 = v30;
        v57 = 0;
        v31 = [photoLibrary2 mad_performAnalysisDataStoreChanges:v58 error:&v57];
        obj = v57;

        if ((v31 & 1) == 0)
        {
          LODWORD(v14) = [obj code];
          if (MediaAnalysisLogLevel() >= 3)
          {
            v44 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v44))
            {
              *buf = 67109634;
              *v62 = 3;
              *&v62[4] = 2112;
              *&v62[6] = v30;
              v63 = 2112;
              v64 = obj;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[FaceLibraryProcessing][MACD] Failed to remove processing status for taskID %d, localIdentifiers %@: %@", buf, 0x1Cu);
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v52;
        v32 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v32)
        {
          v33 = *v54;
LABEL_29:
          v34 = 0;
          v35 = v14;
          while (1)
          {
            if (*v54 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v53 + 1) + 8 * v34);
            database = [taskCopy database];
            v38 = [database removeProcessingStatusForLocalIdentifier:v36 andTaskID:3];

            v39 = 7;
            if (v38 == -108)
            {
              v14 = v38;
            }

            else
            {
              v40 = v38 == -36 || v38 == -23;
              v14 = v38;
              if (!v40)
              {
                v39 = 0;
                v14 = v35;
              }
            }

            if (v38 == -108)
            {
              break;
            }

            if (v38 == -36 || v38 == -23)
            {
              break;
            }

            v34 = v34 + 1;
            v35 = v14;
            if (v32 == v34)
            {
              v32 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
              if (v32)
              {
                goto LABEL_29;
              }

              goto LABEL_46;
            }
          }

          if (!v39)
          {
            goto LABEL_47;
          }

          goto LABEL_57;
        }
      }

LABEL_46:

LABEL_47:
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_57;
      }

      v42 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v42))
      {
        goto LABEL_57;
      }

      v43 = [v52 count];
      *buf = 134217984;
      *v62 = v43;
      v24 = "[FaceLibraryProcessing] Removed %lu unknown assets";
      v25 = v42;
      v26 = 12;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v25, v24, buf, v26);
    goto LABEL_57;
  }

  v16 = 0;
  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [v13 objectAtIndexedSubscript:v16];
    if ([(VCPFaceLibraryProcessingTask *)self isCancelled])
    {
      v14 = 4294967168;
      v19 = 7;
    }

    else
    {
      localIdentifier = [v18 localIdentifier];
      [v52 removeObject:localIdentifier];

      [reporterCopy increaseProcessedJobCountByOne];
      v21 = [(VCPFaceLibraryProcessingTask *)self _addBatchWithAsset:v18 isRetry:1 withTask:taskCopy];
      v19 = v21 ? 7 : 0;
      v14 = v21 ? v21 : v14;
    }

    objc_autoreleasePoolPop(v17);
    if (v19)
    {
      break;
    }

    if (v15 == ++v16)
    {
      goto LABEL_15;
    }
  }

LABEL_57:
  if (!+[VCPDatabaseWriter isLegacyPersistEnabled](VCPDatabaseWriter, "isLegacyPersistEnabled") || ([taskCopy database], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "commit"), v45, v46 != -108) && v46 != -36 && v46 != -23)
  {
    v46 = v14;
  }

  return v46;
}

- (int)_streamAnalysisWithTask:(id)task andProcessingStatus:(unint64_t)status
{
  taskCopy = task;
  photoLibrary = [taskCopy photoLibrary];
  vcp_allowsCloudLibraryResourceDownload = [photoLibrary vcp_allowsCloudLibraryResourceDownload];

  if ((vcp_allowsCloudLibraryResourceDownload & 1) == 0)
  {
LABEL_52:
    v30 = 0;
    goto LABEL_53;
  }

  photoLibrary2 = [taskCopy photoLibrary];
  mad_pauseFCPeopleFurtherProcessing = [photoLibrary2 mad_pauseFCPeopleFurtherProcessing];

  if (mad_pauseFCPeopleFurtherProcessing)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v12 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[FaceLibraryProcessing] Pause using large derivatives for FC people processing", buf, 2u);
      }
    }

    goto LABEL_52;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    mad_fetchRequest = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[5]))
    {
      photoLibrary3 = [taskCopy photoLibrary];
      photoLibraryURL = [photoLibrary3 photoLibraryURL];
      path = [photoLibraryURL path];
      v16 = VCPProcessingStatusDescription();
      *buf = 138412546;
      v41 = path;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, mad_fetchRequest, "[FaceLibraryProcessing] Stream Library %@ for eligible %@ assets", buf, 0x16u);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary4 = [taskCopy photoLibrary];
    mad_fetchRequest = [photoLibrary4 mad_fetchRequest];
    v18 = [mad_fetchRequest fetchAssetCountForTaskID:3 status:status attempts:1];
  }

  else
  {
    photoLibrary4 = [taskCopy database];
    v18 = [photoLibrary4 queryAssetCountForTaskID:3 withStatus:status andAttempts:1];
  }

  if (!v18)
  {
    goto LABEL_52;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000F1B94;
  v39[3] = &unk_1002837E8;
  v39[4] = self;
  v35 = objc_retainBlock(v39);
  v36 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v18 andBlock:v35];
  v33 = VCPLogToOSLogType[7];
  type = VCPLogToOSLogType[3];
  *&v19 = 134218242;
  v32 = v19;
  do
  {
    v20 = objc_autoreleasePoolPush();
    if ([(VCPFaceLibraryProcessingTask *)self isCancelled])
    {
      mad_fetchRequest = 4294967168;
      v21 = 1;
      goto LABEL_47;
    }

    if (!+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      database = [taskCopy database];
      v37 = 0;
      v27 = [database fetchLocalIdentifiers:&v37 withProcessingStatus:status andTaskID:3 andAttempts:1 andFetchLimit:100];
      v25 = v37;

      if (v27 == -108 || v27 == -36)
      {
        v24 = v27;
      }

      else
      {
        v24 = v27;
        if (v27 != -23)
        {
          v24 = mad_fetchRequest;
        }
      }

      v21 = 1;
      if (v27 == -108 || v27 == -36 || v27 == -23)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    }

    photoLibrary5 = [taskCopy photoLibrary];
    mad_fetchRequest2 = [photoLibrary5 mad_fetchRequest];
    v38 = 0;
    v24 = [mad_fetchRequest2 fetchLocalIdentifiers:&v38 processingStatus:status taskID:3 attempts:1 fetchLimit:100];
    v25 = v38;

    if (!v24)
    {
      v24 = mad_fetchRequest;
LABEL_32:
      if ([v25 count])
      {
        [taskCopy setAllowStreaming:1];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v33))
        {
          v28 = [v25 count];
          *buf = v32;
          v41 = v28;
          v42 = 2112;
          v43 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[FaceLibraryProcessing] Screening %lu assets: %@", buf, 0x16u);
        }

        v29 = [(VCPFaceLibraryProcessingTask *)self _screenLocalIdentifiers:v25 withTask:taskCopy andPreviousStatus:status andProgressReporter:v36];
        if (v29)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceLibraryProcessing] Failed to screen assets", buf, 2u);
          }

          v21 = 1;
          v24 = v29;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v33))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[FaceLibraryProcessing] No qualified assets", buf, 2u);
        }

        v21 = 11;
      }

      goto LABEL_46;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceLibraryProcessing][MACD] Failed to fetch local identifiers that failed once", buf, 2u);
    }

    v21 = 1;
LABEL_46:

    mad_fetchRequest = v24;
LABEL_47:
    objc_autoreleasePoolPop(v20);
  }

  while (!v21);
  if (v21 == 11)
  {
    v30 = 0;
  }

  else
  {
    v30 = mad_fetchRequest;
  }

LABEL_53:
  return v30;
}

- (int)_retryEligibleAssetsWithTask:(id)task andStatus:(unint64_t)status andReporter:(id)reporter
{
  taskCopy = task;
  reporterCopy = reporter;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary = [taskCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v12 = [mad_fetchRequest fetchEligibleToRetryAssetCountWithProcessingStatus:status taskID:3];
  }

  else
  {
    photoLibrary = [taskCopy database];
    v12 = [photoLibrary queryEligibleToRetryAssetCountWithProcessingStatus:status andTaskID:3];
  }

  if (!v12)
  {
LABEL_9:
    reporterCopy4 = 0;
    goto LABEL_70;
  }

  photoLibrary2 = [taskCopy photoLibrary];
  mad_pauseFCPeopleFurtherProcessing = [photoLibrary2 mad_pauseFCPeopleFurtherProcessing];

  if (mad_pauseFCPeopleFurtherProcessing)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[FaceLibraryProcessing] Pause using large derivatives for FC people processing", buf, 2u);
      }
    }

    goto LABEL_9;
  }

  if (status <= 7 && ((1 << status) & 0x9C) != 0)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v18 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        photoLibrary3 = [taskCopy photoLibrary];
        photoLibraryURL = [photoLibrary3 photoLibraryURL];
        path = [photoLibraryURL path];
        v5 = VCPProcessingStatusDescription();
        *buf = 138412802;
        v50 = path;
        v51 = 2048;
        v52 = v12;
        v53 = 2112;
        v54 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[FaceLibraryProcessing] Retry Library %@ with %lu eligible %@ assets", buf, 0x20u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v22 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      photoLibrary4 = [taskCopy photoLibrary];
      photoLibraryURL2 = [photoLibrary4 photoLibraryURL];
      path2 = [photoLibraryURL2 path];
      v5 = VCPProcessingStatusDescription();
      *buf = 138412802;
      v50 = path2;
      v51 = 2048;
      v52 = v12;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[FaceLibraryProcessing][UNEXPECTED] Retry Library %@ with %lu eligible %@ assets", buf, 0x20u);
    }
  }

  v43 = VCPLogToOSLogType[7];
  v44 = VCPLogToOSLogType[3];
  type = VCPLogToOSLogType[6];
  *&v17 = 134218242;
  v42 = v17;
  do
  {
    v26 = objc_autoreleasePoolPush();
    if ([(VCPFaceLibraryProcessingTask *)self isCancelled])
    {
      reporter = 4294967168;
LABEL_34:
      v31 = 1;
      goto LABEL_66;
    }

    if ((status == 7 || status == 2) && ([taskCopy photoLibrary], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "vcp_supportsCloudLibraryResourceDownload")))
    {
      photoLibrary5 = [taskCopy photoLibrary];
      vcp_allowsCloudLibraryResourceDownload = [photoLibrary5 vcp_allowsCloudLibraryResourceDownload];

      v29 = vcp_allowsCloudLibraryResourceDownload ^ 1;
    }

    else
    {
      v29 = 0;
    }

    if (status == 7 || status == 2)
    {
    }

    if (v29)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        v30 = VCPProcessingStatusDescription();
        *buf = 138412290;
        v50 = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceLibraryProcessing] Internet unavailable; skip %@ assets", buf, 0xCu);
      }

      reporter = 0;
      goto LABEL_34;
    }

    if (!+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      database = [taskCopy database];
      v47 = 0;
      v37 = [database fetchEligibleToRetryLocalIdentifiers:&v47 withProcessingStatus:status andTaskID:3 andFetchLimit:100];
      v35 = v47;

      if (v37 == -108 || v37 == -36)
      {
        reporterCopy3 = v37;
      }

      else
      {
        reporterCopy3 = v37;
        if (v37 != -23)
        {
          reporterCopy3 = reporter;
        }
      }

      v31 = 1;
      if (v37 == -108 || v37 == -36 || v37 == -23)
      {
        goto LABEL_65;
      }

      goto LABEL_51;
    }

    photoLibrary6 = [taskCopy photoLibrary];
    mad_fetchRequest2 = [photoLibrary6 mad_fetchRequest];
    v48 = 0;
    reporterCopy3 = [mad_fetchRequest2 fetchEligibleToRetryLocalIdentifiers:&v48 processingStatus:status taskID:3 fetchLimit:100];
    v35 = v48;

    if (!reporterCopy3)
    {
      reporterCopy3 = reporter;
LABEL_51:
      if ([v35 count])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v43))
        {
          v38 = [v35 count];
          *buf = v42;
          v50 = v38;
          v51 = 2112;
          v52 = v35;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[FaceLibraryProcessing] Screening %lu assets: %@", buf, 0x16u);
        }

        photoLibrary7 = [taskCopy photoLibrary];
        [taskCopy setAllowStreaming:{objc_msgSend(photoLibrary7, "vcp_allowsCloudLibraryResourceDownload")}];

        v40 = [(VCPFaceLibraryProcessingTask *)self _screenLocalIdentifiers:v35 withTask:taskCopy andPreviousStatus:status andProgressReporter:reporterCopy];
        if (v40)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[FaceLibraryProcessing] Failed to screen assets", buf, 2u);
          }

          v31 = 1;
          reporterCopy3 = v40;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v43))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[FaceLibraryProcessing] No qualified assets", buf, 2u);
        }

        v31 = 11;
      }

      goto LABEL_65;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[MACD] Failed to fetch local identifiers that failed once", buf, 2u);
    }

    v31 = 1;
LABEL_65:

    reporter = reporterCopy3;
LABEL_66:
    objc_autoreleasePoolPop(v26);
  }

  while (!v31);
  if (v31 == 11)
  {
    reporterCopy4 = 0;
  }

  else
  {
    reporterCopy4 = reporter;
  }

LABEL_70:

  return reporterCopy4;
}

- (int)_retryFailedAssetsWithTask:(id)task
{
  taskCopy = task;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      photoLibrary = [taskCopy photoLibrary];
      photoLibraryURL = [photoLibrary photoLibraryURL];
      path = [photoLibraryURL path];
      *buf = 138412290;
      v18 = path;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[FaceLibraryProcessing] Retry Library %@ for eligible failed assets", buf, 0xCu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary2 = [taskCopy photoLibrary];
    mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
    v11 = [mad_fetchRequest fetchEligibleToRetryAssetCountWithTaskID:3];
  }

  else
  {
    photoLibrary2 = [taskCopy database];
    v11 = [photoLibrary2 queryEligibleToRetryAssetCountWithTaskID:3];
  }

  if (v11)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F2704;
    v16[3] = &unk_1002837E8;
    v16[4] = self;
    v12 = objc_retainBlock(v16);
    v13 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v11 andBlock:v12];
    v14 = [(VCPFaceLibraryProcessingTask *)self _retryEligibleAssetsWithTask:taskCopy andStatus:0 andReporter:v13];
    if (!v14)
    {
      v14 = [(VCPFaceLibraryProcessingTask *)self _retryEligibleAssetsWithTask:taskCopy andStatus:1 andReporter:v13];
      if (!v14)
      {
        v14 = [(VCPFaceLibraryProcessingTask *)self _retryEligibleAssetsWithTask:taskCopy andStatus:2 andReporter:v13];
        if (!v14)
        {
          v14 = [(VCPFaceLibraryProcessingTask *)self _retryEligibleAssetsWithTask:taskCopy andStatus:7 andReporter:v13];
          if (!v14)
          {
            v14 = [(VCPFaceLibraryProcessingTask *)self _retryEligibleAssetsWithTask:taskCopy andStatus:3 andReporter:v13];
            if (!v14)
            {
              v14 = [(VCPFaceLibraryProcessingTask *)self _retryEligibleAssetsWithTask:taskCopy andStatus:4 andReporter:v13];
            }
          }
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int)_processFetchedAssets:(id)assets withProcessingTask:(id)task andProgressReporter:(id)reporter
{
  assetsCopy = assets;
  taskCopy = task;
  reporterCopy = reporter;
  v38 = +[NSMutableArray array];
  v10 = 0;
  type = VCPLogToOSLogType[5];
  v34 = VCPLogToOSLogType[7];
  v33 = VCPLogToOSLogType[3];
  *&v11 = 138412546;
  v32 = v11;
  while (v10 < [assetsCopy count])
  {
    v12 = objc_autoreleasePoolPush();
    if ([(VCPFaceLibraryProcessingTask *)self isCancelled])
    {
      v5 = -128;
      v13 = 1;
    }

    else
    {
      v14 = [assetsCopy objectAtIndexedSubscript:v10];
      [reporterCopy increaseProcessedJobCountByOne];
      if (([PHPhotoLibrary mad_isProcessingNeededOnAsset:v14 forTaskID:3]& 1) != 0)
      {
        v15 = [(VCPFaceLibraryProcessingTask *)self _addBatchWithAsset:v14 isRetry:0 withTask:taskCopy];
        v13 = v15 != 0;
        if (v15)
        {
          v5 = v15;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          v16 = objc_opt_class();
          localIdentifier = [v14 localIdentifier];
          *buf = 138412802;
          v43 = v16;
          v44 = 2112;
          *v45 = localIdentifier;
          *&v45[8] = 2048;
          *&v45[10] = 3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Asset does not need processing in task %lu, ignoring... ", buf, 0x20u);
        }

        [v38 addObject:v14];
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v34))
          {
            localIdentifier2 = [v14 localIdentifier];
            *buf = v32;
            v43 = localIdentifier2;
            v44 = 1024;
            *v45 = 3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[FaceLibraryProcessing][%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
          }

          photoLibrary = [taskCopy photoLibrary];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000F2DD0;
          v40[3] = &unk_100283AD0;
          v20 = v14;
          v41 = v20;
          v39 = 0;
          v21 = [photoLibrary mad_performAnalysisDataStoreChanges:v40 error:&v39];
          database2 = v39;

          if ((v21 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v33))
          {
            localIdentifier3 = [v20 localIdentifier];
            *buf = 138412802;
            v43 = localIdentifier3;
            v44 = 1024;
            *v45 = 3;
            *&v45[4] = 2112;
            *&v45[6] = database2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[FaceLibraryProcessing][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x1Cu);
          }
        }

        else
        {
          database = [taskCopy database];
          localIdentifier4 = [v14 localIdentifier];
          [database removeProcessingStatusForLocalIdentifier:localIdentifier4 andTaskID:3];

          database2 = [taskCopy database];
          [database2 commit];
        }

        v26 = [v38 count];
        if (v26 >= +[PHPhotoLibrary mad_maxIgnoredAssetsToMarkAsProcessed])
        {
          v27 = +[VCPWatchdog sharedWatchdog];
          [v27 pet];

          photoLibrary2 = [taskCopy photoLibrary];
          [photoLibrary2 mad_markAsProcessedByTask:3 forAssets:v38 cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_100286330];

          [v38 removeAllObjects];
        }

        v13 = 4;
      }
    }

    objc_autoreleasePoolPop(v12);
    if ((v13 | 4) != 4)
    {
      goto LABEL_36;
    }

    ++v10;
  }

  if ([v38 count])
  {
    v29 = +[VCPWatchdog sharedWatchdog];
    [v29 pet];

    photoLibrary3 = [taskCopy photoLibrary];
    [photoLibrary3 mad_markAsProcessedByTask:3 forAssets:v38 cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_100286350];

    [v38 removeAllObjects];
  }

  if ([(NSMutableSet *)self->_assetBatch count])
  {
    v5 = [taskCopy processAssets:self->_assetBatch];
    [(NSMutableSet *)self->_assetBatch removeAllObjects];
    if (v5 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v33))
    {
      *buf = 67109120;
      LODWORD(v43) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[FaceLibraryProcessing] Failed to process asset batch: %d", buf, 8u);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_36:

  return v5;
}

- (int)_analyzeAllAssetsWithTask:(id)task
{
  taskCopy = task;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      photoLibrary = [taskCopy photoLibrary];
      photoLibraryURL = [photoLibrary photoLibraryURL];
      path = [photoLibraryURL path];
      *buf = 138412290;
      v47[0] = path;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[FaceLibraryProcessing] Analyzing Library %@", buf, 0xCu);
    }
  }

  photoLibrary2 = [taskCopy photoLibrary];
  v8 = [photoLibrary2 vcp_assetCountForTaskID:3];

  if (v8)
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000F35B0;
    v45[3] = &unk_1002837E8;
    v45[4] = self;
    v31 = objc_retainBlock(v45);
    v34 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v8 andBlock:v31];
    [taskCopy setAllowStreaming:0];
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[FaceLibraryProcessing] Analyzing with local resources ... ", buf, 2u);
      }
    }

    photoLibrary3 = [taskCopy photoLibrary];
    v38 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:photoLibrary3];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = [&off_100296290 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v11)
    {
      v37 = *v42;
      type = VCPLogToOSLogType[5];
      v32 = VCPLogToOSLogType[6];
      v33 = VCPLogToOSLogType[3];
      *&v12 = 134217984;
      v30 = v12;
LABEL_10:
      v13 = 0;
      while (1)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(&off_100296290);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        unsignedIntegerValue = [v14 unsignedIntegerValue];
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 67109120;
          LODWORD(v47[0]) = unsignedIntegerValue;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceLibraryProcessing] Processing P%d assets ... ", buf, 8u);
        }

        v17 = VCPSignPostLog();
        v18 = os_signpost_id_generate(v17);

        v19 = VCPSignPostLog();
        v20 = v19;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPFaceLibraryProcessingTask_FetchAssets", "", buf, 2u);
        }

        photoLibrary4 = [taskCopy photoLibrary];
        +[PHAsset mad_peopleThreshold];
        v40 = 0;
        v22 = [photoLibrary4 fetchAssetsForMediaProcessingTaskID:3 priority:unsignedIntegerValue algorithmVersion:v38 sceneConfidenceThreshold:&v40 error:?];
        v23 = v40;

        v24 = VCPSignPostLog();
        v25 = v24;
        if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v18, "VCPFaceLibraryProcessingTask_FetchAssets", "", buf, 2u);
        }

        if (v23)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v33))
          {
            *buf = 67109378;
            LODWORD(v47[0]) = unsignedIntegerValue;
            WORD2(v47[0]) = 2112;
            *(v47 + 6) = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[FaceLibraryProcessing] Failed to fetch P%d assets: %@", buf, 0x12u);
          }

          v26 = 0;
          LODWORD(photoLibraryURL) = -18;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v32))
          {
            v27 = [v22 count];
            *buf = v30;
            v47[0] = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[FaceLibraryProcessing] Fetched %lu assets", buf, 0xCu);
          }

          v28 = [(VCPFaceLibraryProcessingTask *)self _processFetchedAssets:v22 withProcessingTask:taskCopy andProgressReporter:v34, v30];
          v26 = v28 == 0;
          if (v28)
          {
            LODWORD(photoLibraryURL) = v28;
          }
        }

        objc_autoreleasePoolPop(v15);
        if (!v26)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [&off_100296290 countByEnumeratingWithState:&v41 objects:v48 count:16];
          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      LODWORD(photoLibraryURL) = 0;
    }
  }

  else
  {
    LODWORD(photoLibraryURL) = 0;
  }

  return photoLibraryURL;
}

- (int)_processLocalIdentifiers:(id)identifiers change:(id)change insert:(BOOL)insert withTask:(id)task
{
  insertCopy = insert;
  identifiersCopy = identifiers;
  changeCopy = change;
  taskCopy = task;
  photoLibrary = [taskCopy photoLibrary];
  v11 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary forTaskID:3];

  v45 = v11;
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v59 = v12;
  v13 = [NSArray arrayWithObjects:&v59 count:1];
  [v11 setSortDescriptors:v13];

  allObjects = [identifiersCopy allObjects];
  v15 = [PHAsset fetchAssetsWithLocalIdentifiers:allObjects options:v11];

  v17 = 0;
  type = VCPLogToOSLogType[6];
  if (insertCopy)
  {
    v18 = @"inserted";
  }

  else
  {
    v18 = @"editted";
  }

  v43 = v18;
  v41 = VCPLogToOSLogType[3];
  v42 = VCPLogToOSLogType[7];
  *&v16 = 138412802;
  v40 = v16;
  while (v17 < [v15 count])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v15 objectAtIndexedSubscript:v17];
    if ([(VCPFaceLibraryProcessingTask *)self isCancelled])
    {
      v21 = 0;
      v6 = -128;
      goto LABEL_41;
    }

    if (!insertCopy)
    {
      objectID = [v20 objectID];
      if (([changeCopy contentOrThumbnailChangedForPHAssetOID:objectID] & 1) == 0)
      {
        objectID2 = [v20 objectID];
        if (![changeCopy trashedStateChangedForPHAssetOID:objectID2] || (objc_msgSend(v20, "isTrashed") & 1) != 0)
        {
          objectID3 = [v20 objectID];
          if (([changeCopy hiddenStateChangedForPHAssetOID:objectID3] & 1) == 0)
          {

LABEL_40:
            v21 = 1;
            goto LABEL_41;
          }

          isHidden = [v20 isHidden];

          if (isHidden)
          {
            goto LABEL_40;
          }

          goto LABEL_11;
        }
      }
    }

LABEL_11:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
    {
      localIdentifier = [v20 localIdentifier];
      *buf = 138412546;
      v56 = localIdentifier;
      v57 = 2112;
      v58[0] = v43;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceLibraryProcessing][%@] Asset %@", buf, 0x16u);
    }

    v54 = 0;
    v53 = 0;
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      photoLibrary2 = [taskCopy photoLibrary];
      mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
      localIdentifier2 = [v20 localIdentifier];
      v27 = [mad_fetchRequest fetchProcessingStatus:&v54 attempts:&v53 lastAttemptDate:0 nextAttemptDate:0 localIdentifier:localIdentifier2 taskID:3];
    }

    else
    {
      photoLibrary2 = [taskCopy database];
      mad_fetchRequest = [v20 localIdentifier];
      v27 = [photoLibrary2 queryProcessingStatus:&v54 attempts:&v53 lastAttemptDate:0 andNextAttemptDate:0 forLocalIdentifier:mad_fetchRequest andTaskID:3];
    }

    if (!v27 && v53 && (v54 == 7 || v54 == 2))
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v42))
        {
          localIdentifier3 = [v20 localIdentifier];
          *buf = 138412546;
          v56 = localIdentifier3;
          v57 = 1024;
          LODWORD(v58[0]) = 3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[FaceLibraryProcessing][%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
        }

        photoLibrary3 = [taskCopy photoLibrary];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000F3D58;
        v51[3] = &unk_100283AD0;
        v30 = v20;
        v52 = v30;
        v50 = 0;
        v31 = [photoLibrary3 mad_performAnalysisDataStoreChanges:v51 error:&v50];
        database = v50;

        if ((v31 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v41))
        {
          localIdentifier4 = [v30 localIdentifier];
          *buf = v40;
          v56 = localIdentifier4;
          v57 = 1024;
          LODWORD(v58[0]) = 3;
          WORD2(v58[0]) = 2112;
          *(v58 + 6) = database;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[FaceLibraryProcessing][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x1Cu);
        }

        localIdentifier5 = v52;
      }

      else
      {
        database = [taskCopy database];
        localIdentifier5 = [v20 localIdentifier];
        [database removeProcessingStatusForLocalIdentifier:localIdentifier5 andTaskID:3];
      }
    }

    v38 = [(VCPFaceLibraryProcessingTask *)self _addBatchWithAsset:v20 isRetry:0 withTask:taskCopy];
    if (!v38)
    {
      goto LABEL_40;
    }

    v21 = 0;
    v6 = v38;
LABEL_41:

    objc_autoreleasePoolPop(v19);
    ++v17;
    if ((v21 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  v6 = 0;
LABEL_45:

  return v6;
}

- (int)_maintainProcessingStatusWithTask:(id)task
{
  taskCopy = task;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary = [taskCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v56 = 0;
    [mad_fetchRequest fetchLocalIdentifiers:&v56 taskID:3 processingStatus:1];
    v48 = v56;
  }

  else
  {
    photoLibrary = [taskCopy database];
    v55 = 0;
    [photoLibrary fetchLocalIdentifiers:&v55 withTaskID:3 andProcessingStatus:1];
    v48 = v55;
  }

  v6 = [v48 count];
  if (v6)
  {
    photoLibrary2 = [taskCopy photoLibrary];
    v8 = v6;
    v45 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary2 forTaskID:3];

    v9 = [PHAsset fetchAssetsWithLocalIdentifiers:v48 options:v45];
    v10 = 0;
    type = VCPLogToOSLogType[5];
    v44 = VCPLogToOSLogType[3];
    v46 = VCPLogToOSLogType[6];
    v47 = VCPLogToOSLogType[7];
    *&v11 = 138412802;
    v43 = v11;
    v12 = v8;
    while (1)
    {
      v13 = v12;
      if (v10 >= [v9 count])
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v46))
        {
          *buf = 134217984;
          v58 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "[FaceLibraryProcessing] Change %lu processing status to Hard Failure", buf, 0xCu);
        }

        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v47))
          {
            *buf = 134217984;
            v58 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "[FaceLibraryProcessing][MACD] Change %lu processing status to Hard Failure", buf, 0xCu);
          }

          photoLibrary3 = [taskCopy photoLibrary];
          v51 = 0;
          v33 = [photoLibrary3 mad_performAnalysisDataStoreChanges:&stru_100286370 error:&v51];
          v34 = v51;

          if (v33)
          {

LABEL_50:
            v35 = +[VCPMADCoreAnalyticsManager sharedManager];
            [v35 accumulateInt64Value:v13 forField:@"NumberOfAssetsHardFailure" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

            break;
          }

          LODWORD(code) = [v34 code];
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
          {
            *buf = 134218242;
            v58 = v13;
            v59 = 2112;
            v60[0] = v34;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[FaceLibraryProcessing][MACD] Failed to change processing status of %lu assets to Hard Failure: %@", buf, 0x16u);
          }
        }

        else
        {
          database = [taskCopy database];
          v38 = [database hardFailAllRunningProcessingStatusForTaskID:3];

          if (v38 == -108 || v38 == -36)
          {
            v39 = v38;
          }

          else
          {
            v39 = v38;
            if (v38 != -23)
            {
              v39 = v3;
            }
          }

          if (v38 == -108 || v38 == -36 || v38 == -23)
          {
            LODWORD(code) = v39;
          }

          else
          {
            database2 = [taskCopy database];
            commit = [database2 commit];

            if (commit == -108 || commit == -36)
            {
              LODWORD(code) = commit;
            }

            else
            {
              LODWORD(code) = commit;
              if (commit != -23)
              {
                LODWORD(code) = v39;
              }
            }

            if (commit != -108 && commit != -36 && commit != -23)
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_70;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = [v9 objectAtIndexedSubscript:v10];
      photoLibrary4 = [v15 photoLibrary];
      if ([photoLibrary4 mad_pauseFCPeopleFurtherProcessing])
      {
        v17 = [v15 faceAnalysisVersion] == 14;

        if (v17)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier = [v15 localIdentifier];
            *buf = 138412290;
            v58 = localIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[FaceLibraryProcessing][%@] already with FC version; skip", buf, 0xCu);
          }

          v19 = 4;
          goto LABEL_16;
        }
      }

      else
      {
      }

      if ([v15 vcp_needsFaceProcessing])
      {
        v19 = 0;
LABEL_16:
        code = v3;
        goto LABEL_17;
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v47))
        {
          localIdentifier2 = [v15 localIdentifier];
          *buf = 138412546;
          v58 = localIdentifier2;
          v59 = 1024;
          LODWORD(v60[0]) = 3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "[FaceLibraryProcessing][%@][MACD] Removing processing status for taskID %d", buf, 0x12u);
        }

        photoLibrary5 = [taskCopy photoLibrary];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1000F47E8;
        v53[3] = &unk_100283AD0;
        v23 = v15;
        v54 = v23;
        v52 = 0;
        v24 = [photoLibrary5 mad_performAnalysisDataStoreChanges:v53 error:&v52];
        v25 = v52;

        if (v24)
        {

          code = v3;
          v26 = v13;
LABEL_37:
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v46))
          {
            localIdentifier3 = [v15 localIdentifier];
            *buf = 138412290;
            v58 = localIdentifier3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "[FaceLibraryProcessing][%@] Analysis is up-to-date", buf, 0xCu);

            v26 = v13;
          }

          v19 = 0;
          v13 = v26 - 1;
          goto LABEL_17;
        }

        code = [v25 code];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
        {
          localIdentifier4 = [v23 localIdentifier];
          *buf = v43;
          v58 = localIdentifier4;
          v59 = 1024;
          LODWORD(v60[0]) = 3;
          WORD2(v60[0]) = 2112;
          *(v60 + 6) = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[FaceLibraryProcessing][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x1Cu);
        }

        v19 = 1;
      }

      else
      {
        database3 = [taskCopy database];
        localIdentifier5 = [v15 localIdentifier];
        v29 = [database3 removeProcessingStatusForLocalIdentifier:localIdentifier5 andTaskID:3];

        if (v29 == -108 || v29 == -36)
        {
          code = v29;
          v26 = v13;
        }

        else
        {
          code = v29;
          v26 = v13;
          if (v29 != -23)
          {
            code = v3;
          }
        }

        v19 = 1;
        if (v29 != -108 && v29 != -36 && v29 != -23)
        {
          goto LABEL_37;
        }
      }

LABEL_17:

      objc_autoreleasePoolPop(v14);
      if ((v19 | 4) != 4)
      {

        goto LABEL_70;
      }

      v12 = v13;
      ++v10;
      v3 = code;
    }
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v36 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v36))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[FaceLibraryProcessing] Processing status is up-to-date", buf, 2u);
    }
  }

  LODWORD(code) = 0;
LABEL_70:

  return code;
}

- (int)_processLibrary:(id)library
{
  libraryCopy = library;
  v5 = [(VCPFaceLibraryProcessingTask *)self _processingTaskForPhotoLibrary:libraryCopy];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000F4D90;
  v28[3] = &unk_100283000;
  v28[4] = self;
  v6 = objc_retainBlock(v28);
  photoLibrary = [v5 photoLibrary];
  [VCPAnalysisProgressQuery reportProgressForPhotoLibrary:photoLibrary taskID:3 logMessage:@"[FaceLibraryProcessing] Before task" cancelOrExtendTimeoutBlock:v6];

  v8 = objc_alloc_init(VCPTimeMeasurement);
  [v8 start];
  v9 = [(VCPFaceLibraryProcessingTask *)self _maintainProcessingStatusWithTask:v5];
  if (!v9)
  {
    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      photoLibrary2 = [v5 photoLibrary];
      mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
      v12 = [mad_fetchRequest fetchAssetCountForTaskID:3];
    }

    else
    {
      photoLibrary2 = [v5 database];
      v12 = [photoLibrary2 queryAssetCountForTaskID:3];
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v13 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 67109120;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[FaceLibraryProcessing] Start with %d failed assets", buf, 8u);
      }
    }

    v14 = objc_autoreleasePoolPush();
    v9 = [(VCPFaceLibraryProcessingTask *)self _analyzeAllAssetsWithTask:v5];
    if (!v9)
    {
      v9 = [(VCPFaceLibraryProcessingTask *)self _streamAnalysisWithTask:v5 andProcessingStatus:2];
      if (!v9)
      {
        v9 = [(VCPFaceLibraryProcessingTask *)self _retryFailedAssetsWithTask:v5];
      }
    }

    objc_autoreleasePoolPop(v14);
  }

  flush = [v5 flush];
  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    database = [v5 database];
    commit = [database commit];

    if (commit == -108 || commit == -36 || commit == -23)
    {
      goto LABEL_27;
    }

    database2 = [v5 database];
    [database2 flush];
  }

  [v8 stop];
  [v8 elapsedTimeSeconds];
  v20 = [NSString stringWithFormat:@"[FaceLibraryProcessing] Checking progress after task (%.2f seconds)", v19];
  photoLibrary3 = [v5 photoLibrary];
  [VCPAnalysisProgressQuery reportProgressForPhotoLibrary:photoLibrary3 taskID:3 logMessage:v20 cancelOrExtendTimeoutBlock:v6];

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    photoLibrary4 = [v5 photoLibrary];
    mad_fetchRequest2 = [photoLibrary4 mad_fetchRequest];
    v24 = [mad_fetchRequest2 fetchAssetCountForTaskID:3];
  }

  else
  {
    photoLibrary4 = [v5 database];
    v24 = [photoLibrary4 queryAssetCountForTaskID:3];
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v25 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v25))
    {
      *buf = 67109120;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[FaceLibraryProcessing] Finished with %d failed assets", buf, 8u);
    }
  }

  photoLibrary5 = [v5 photoLibrary];
  [MADProgressManager cacheCurrentFaceProgressForPhotoLibrary:photoLibrary5];

  if (flush)
  {
    commit = flush;
  }

  else
  {
    commit = v9;
  }

LABEL_27:
  return commit;
}

- (int)completeSceneProcessing
{
  v3 = objc_autoreleasePoolPush();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F4FFC;
  v10[3] = &unk_1002837E8;
  v10[4] = self;
  v4 = objc_retainBlock(v10);
  photoLibraries = self->_photoLibraries;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F50E4;
  v9[3] = &unk_100283000;
  v9[4] = self;
  v6 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:photoLibraries cancelBlock:v9 progressHandler:v4 andCompletionHandler:&stru_100286390];
  v7 = [v6 run];

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (BOOL)_readyToProcessProcessLibrary:(id)library
{
  libraryCopy = library;
  if (([libraryCopy isReadyForAnalysis] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v5 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        photoLibraryURL = [libraryCopy photoLibraryURL];
        path = [photoLibraryURL path];
        v12 = 138412290;
        v13 = path;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[FaceLibraryProcessing] Photo Library is not ready for analysis; skipping library (%@)", &v12, 0xCu);
      }
    }

    goto LABEL_10;
  }

  if (([libraryCopy vcp_anyAssetsForTaskID:3] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        photoLibraryURL2 = [libraryCopy photoLibraryURL];
        path2 = [photoLibraryURL2 path];
        v12 = 138412290;
        v13 = path2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[FaceLibraryProcessing] Photo library is empty; skipping library (%@)", &v12, 0xCu);
      }
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = 1;
LABEL_11:

  return v4;
}

- (int)_detectFacesForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[FaceLibraryProcessing] Start face detect and feature extraction", buf, 2u);
    }
  }

  v6 = [(VCPFaceLibraryProcessingTask *)self _processLibrary:libraryCopy];
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v12 = 0;
        v8 = "Finished face detect and feature extraction";
        v9 = &v12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v8, v9, 2u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v11 = 0;
      v8 = "[FaceLibraryProcessing] Finished face detect and feature extraction";
      v9 = &v11;
      goto LABEL_11;
    }
  }

  return v6;
}

- (int)_generateAndDetectFaceCropsForPhotoLibrary:(id)library
{
  libraryCopy = library;
  countOfFaceCropsToBeGenerated = [libraryCopy countOfFaceCropsToBeGenerated];
  countOfUnprocessedFaceCrops = [libraryCopy countOfUnprocessedFaceCrops];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[FaceLibraryProcessing] Start FaceCrop generation and detection", &v18, 2u);
    }
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v8 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v18 = 134218240;
      v19 = countOfFaceCropsToBeGenerated;
      v20 = 2048;
      v21 = countOfUnprocessedFaceCrops;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[FaceLibraryProcessing] countOfFaceCropsToBeGenerated: %lu, countOfUnprocessedFaceCrops: %lu", &v18, 0x16u);
    }
  }

  if (countOfFaceCropsToBeGenerated | countOfUnprocessedFaceCrops)
  {
    v9 = [(VCPFaceLibraryProcessingTask *)self _processingTaskForPhotoLibrary:libraryCopy];
    photoLibrary = [v9 photoLibrary];
    vcp_supportsCloudLibraryResourceDownload = [photoLibrary vcp_supportsCloudLibraryResourceDownload];

    if ((!vcp_supportsCloudLibraryResourceDownload || ([v9 photoLibrary], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "vcp_allowsCloudLibraryResourceDownload"), v12, v13)) && (objc_msgSend(v9, "setAllowStreaming:", vcp_supportsCloudLibraryResourceDownload), (v14 = objc_msgSend(v9, "processFaceCrops")) != 0))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v15 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v18 = 67109120;
          LODWORD(v19) = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[FaceLibraryProcessing] Failed to generate and detect FaceCrops - %d", &v18, 8u);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v16 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[FaceLibraryProcessing] Finished FaceCrop generation and detection", &v18, 2u);
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int)_updateQuickFaceIDModelForPhotoLibrary:(id)library withContext:(id)context andQuickFaceIDManager:(id)manager
{
  managerCopy = manager;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000F5A6C;
  v18[3] = &unk_100283000;
  v18[4] = self;
  v7 = objc_retainBlock(v18);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F5A74;
  v17[3] = &unk_100283210;
  v17[4] = self;
  v8 = objc_retainBlock(v17);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[FaceLibraryProcessing] Start QuickFaceID model update", buf, 2u);
    }
  }

  v16 = 0;
  v10 = [managerCopy generateVIPModelWithType:0 ignoreLastGenerationTime:0 evaluationMode:0 allowUnverifiedPerson:0 modelGenerated:&v16 extendTimeout:v8 andCancel:v7];
  if (v10)
  {
    goto LABEL_20;
  }

  if (v16 == 1)
  {
    v11 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v11 accumulateInt64Value:1 forField:@"PeopleVIPGenerated" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  }

  v10 = [managerCopy generateVIPModelWithType:1 ignoreLastGenerationTime:0 evaluationMode:0 allowUnverifiedPerson:0 modelGenerated:&v16 extendTimeout:v8 andCancel:v7];
  if (v10)
  {
LABEL_20:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 67109120;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[FaceLibraryProcessing] Failed to update QuickFaceID model - %d", buf, 8u);
      }
    }
  }

  else
  {
    if (v16 == 1)
    {
      v13 = +[VCPMADCoreAnalyticsManager sharedManager];
      [v13 accumulateInt64Value:1 forField:@"PetsVIPGenerated" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v14 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[FaceLibraryProcessing] Finished QuickFaceID model update", buf, 2u);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (int)_processAutoCounterForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = _os_feature_enabled_impl();
  if ([libraryCopy isSystemPhotoLibrary] & v5) == 1 && (VCPMAIsAppleInternal())
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000F65B0;
    v52[3] = &unk_100283000;
    v52[4] = self;
    v6 = objc_retainBlock(v52);
    v7 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"SkipAutoCounters"];
    if (v7)
    {
      v8 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"SkipAutoCounters"];
      v9 = [v8 integerValue] == 1;
    }

    else
    {
      v9 = 0;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v11 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = @"NO";
        if (v9)
        {
          v12 = @"YES";
        }

        *buf = 138412546;
        v54 = @"[FaceLibraryProcessing][AutoCounter]";
        v55 = 2112;
        v56 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Skipping - %@", buf, 0x16u);
      }
    }

    if (v9)
    {
      v10 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000F65B8;
    v51[3] = &unk_100283000;
    v51[4] = self;
    v46 = objc_retainBlock(v51);
    v50 = 0;
    [VCPAnalysisProgressQuery queryProgressDetail:&v50 photoLibrary:libraryCopy taskID:3 cancelOrExtendTimeoutBlock:v46];
    v13 = v50;
    v14 = [v13 objectForKeyedSubscript:VCPAnalysisCountTotalAllowedKey];
    integerValue = [v14 integerValue];

    v16 = [v13 objectForKeyedSubscript:VCPAnalysisCountProcessedKey];
    integerValue2 = [v16 integerValue];

    v18 = [v13 objectForKeyedSubscript:VCPAnalysisCountFailedKey];
    integerValue3 = [v18 integerValue];

    if (integerValue < 1)
    {
      v21 = 0;
      v20 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      if (!integerValue)
      {
LABEL_18:
        if (MediaAnalysisLogLevel() >= 7)
        {
          v25 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            *buf = 138413058;
            v54 = @"[FaceLibraryProcessing][AutoCounter]";
            v55 = 2048;
            v56 = integerValue;
            v57 = 2048;
            v58 = integerValue2;
            v59 = 2048;
            v60 = integerValue3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Progress: totalCount = %ld, processed = %ld, failed = %ld", buf, 0x2Au);
          }
        }

        if (MediaAnalysisLogLevel() >= 7)
        {
          v26 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            v27 = [NSNumber numberWithBool:v23];
            v28 = [NSNumber numberWithBool:v22];
            *buf = 138412802;
            v54 = @"[FaceLibraryProcessing][AutoCounter]";
            v55 = 2112;
            v56 = v27;
            v57 = 2112;
            v58 = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Progress: isFaceProcessingDone = %@, tooManyFailed = %@", buf, 0x20u);
          }
        }

        if (!v24)
        {
          v10 = 0;
LABEL_60:

          goto LABEL_61;
        }

        v29 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:libraryCopy];
        optInPersonCount = [v29 optInPersonCount];
        if (MediaAnalysisLogLevel() >= 7)
        {
          v31 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v31))
          {
            *buf = 138412546;
            v54 = @"[FaceLibraryProcessing][AutoCounter]";
            v55 = 2048;
            v56 = optInPersonCount;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ Opt-in person count - %lu", buf, 0x16u);
          }
        }

        if (!optInPersonCount)
        {
          v10 = 0;
LABEL_59:

          goto LABEL_60;
        }

        v48 = 0;
        v49 = 0;
        v32 = [v29 exportVUGalleryClusterStates:&v49 error:&v48 extendTimeoutBlock:&stru_1002863B0 cancelBlock:v6];
        v33 = v49;
        v34 = v48;
        if (v32)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v35 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v35))
            {
              *buf = 138412546;
              v54 = @"[FaceLibraryProcessing][AutoCounter]";
              v55 = 2112;
              v56 = v34;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Failed to export cluster state - %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v36 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v36))
            {
              *buf = 138412546;
              v54 = @"[FaceLibraryProcessing][AutoCounter]";
              v55 = 2112;
              v56 = v33;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "%@ Exported cluster state to %@", buf, 0x16u);
            }
          }

          v47[1] = 0;
          VCPFetchPersonPromoterClusterForEvaluation();
          v37 = 0;
          v38 = [v29 calculateAndReportClusterAccuracyWithVisionClusterURL:v33 andPersonClusters:v37 results:0 extendTimeoutBlock:&stru_1002863B0 cancelBlock:v6];
          if (v38)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v39 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v39))
              {
                *buf = 138412546;
                v54 = @"[FaceLibraryProcessing][AutoCounter]";
                v55 = 1024;
                LODWORD(v56) = v38;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "%@ Failed to process cluster state (%d)", buf, 0x12u);
              }
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 7)
            {
              v40 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v40))
              {
                *buf = 138412290;
                v54 = @"[FaceLibraryProcessing][AutoCounter]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "%@ Successfully calculate and report AutoCounter", buf, 0xCu);
              }
            }

            v41 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:libraryCopy];
            if ([v41 currentProcessingVersion] <= 14)
            {
              v47[0] = 0;
              v10 = [libraryCopy vcp_bumpFaceProcessingToVersion:15 withError:v47];
              v42 = v47[0];
              if (v10)
              {
                if (MediaAnalysisLogLevel() >= 3)
                {
                  type = VCPLogToOSLogType[3];
                  if (os_log_type_enabled(&_os_log_default, type))
                  {
                    *buf = 138412546;
                    v54 = @"[FaceLibraryProcessing][AutoCounter]";
                    v55 = 2112;
                    v56 = v42;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to bump face processing version - %@", buf, 0x16u);
                  }
                }

                goto LABEL_58;
              }

              if (MediaAnalysisLogLevel() >= 7)
              {
                v43 = VCPLogToOSLogType[7];
                if (os_log_type_enabled(&_os_log_default, v43))
                {
                  *buf = 138412290;
                  v54 = @"[FaceLibraryProcessing][AutoCounter]";
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Successfully bumpped face processing version", buf, 0xCu);
                }
              }
            }
          }
        }

        v10 = 0;
LABEL_58:

        goto LABEL_59;
      }
    }

    else
    {
      v20 = 100 * (integerValue2 + integerValue3) / integerValue > 98;
      v21 = 100 * integerValue3 / integerValue > 5;
    }

    v24 = v20 && !v21;
    v22 = v21;
    v23 = v20;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_62:

  return v10;
}

- (int)runGalleryProcessingForPhotoLibrary:(id)library progressHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v30 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:libraryCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000F6C60;
  v33[3] = &unk_100283000;
  v33[4] = self;
  v28 = objc_retainBlock(v33);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000F6C68;
  v32[3] = &unk_100283210;
  v32[4] = self;
  v29 = objc_retainBlock(v32);
  if ((self->_subtasks & 2) != 0)
  {
    v8 = [(VCPFaceLibraryProcessingTask *)self _detectFacesForPhotoLibrary:libraryCopy];
    if (v8)
    {
      goto LABEL_39;
    }
  }

  if ([libraryCopy vcp_isSyndicationLibrary] && (_os_feature_enabled_impl() & 1) == 0)
  {
    v22 = +[VCPDefaultPhotoLibraryManager sharedManager];
    defaultPhotoLibrary = [v22 defaultPhotoLibrary];

    v11 = [[VCPPhotosQuickFaceIdentificationManager alloc] initWithPhotoLibrary:defaultPhotoLibrary];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000F6CE8;
    v31[3] = &unk_100283000;
    v31[4] = self;
    [v11 personIdentificationForSyndicationPhotoLibrary:libraryCopy withCancelOrExtendTimeoutBlock:v31];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v23 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        photoLibraryURL = [libraryCopy photoLibraryURL];
        path = [photoLibraryURL path];
        *buf = 138412290;
        v35 = path;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[FaceLibraryProcessing] Skipping clustering and person processing for syndication library (%@)", buf, 0xCu);
      }
    }

    goto LABEL_36;
  }

  if ((self->_subtasks & 8) != 0 && ([libraryCopy vcp_isSyndicationLibrary] & 1) == 0)
  {
    defaultPhotoLibrary = [[VCPPhotosQuickFaceIdentificationManager alloc] initWithPhotoLibrary:libraryCopy];
    v27 = [defaultPhotoLibrary fetchEntityForModelType:0 evaluationMode:0 allowUnverifiedPerson:0];
    v10 = [v27 count];

    v8 = [(VCPFaceLibraryProcessingTask *)self _updateQuickFaceIDModelForPhotoLibrary:libraryCopy withContext:v30 andQuickFaceIDManager:defaultPhotoLibrary];
    if (v8)
    {
      goto LABEL_38;
    }
  }

  else
  {
    defaultPhotoLibrary = 0;
    v10 = -1;
  }

  v11 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:1 andBlock:handlerCopy];
  v8 = 0;
  do
  {
    v12 = objc_autoreleasePoolPush();
    buf[0] = 0;
    subtasks = self->_subtasks;
    if ((subtasks & 4) != 0)
    {
      v14 = [(VCPFaceLibraryProcessingTask *)self _generateAndDetectFaceCropsForPhotoLibrary:libraryCopy];
      if (v14)
      {
        v15 = 1;
        v8 = v14;
        goto LABEL_19;
      }

      subtasks = self->_subtasks;
    }

    if ((subtasks & 0x70) != 0 && (-[VCPFaceLibraryProcessingTask _processingTaskForPhotoLibrary:](self, "_processingTaskForPhotoLibrary:", libraryCopy), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 processGalleryPersons:buf], v16, v17))
    {
      v15 = 1;
      v8 = v17;
    }

    else if (buf[0])
    {
      v15 = 0;
    }

    else
    {
      [v11 increaseProcessedJobCountByOne];
      v15 = 9;
    }

LABEL_19:
    objc_autoreleasePoolPop(v12);
  }

  while (!v15);
  if (v15 == 9)
  {
    if ((self->_subtasks & 8) == 0)
    {
      goto LABEL_30;
    }

    if (v10 == -1)
    {
      goto LABEL_30;
    }

    v18 = [defaultPhotoLibrary fetchEntityForModelType:0 evaluationMode:0 allowUnverifiedPerson:0];
    v19 = 10 * [v18 count] > (11 * v10);

    if (!v19)
    {
      goto LABEL_30;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v20 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[FaceLibraryProcessing] Catch up VIP Persons Model", buf, 2u);
      }
    }

    buf[0] = 0;
    v8 = [defaultPhotoLibrary generateVIPModelWithType:0 ignoreLastGenerationTime:1 evaluationMode:0 allowUnverifiedPerson:0 modelGenerated:buf extendTimeout:v29 andCancel:v28];
    if (!v8)
    {
      if (buf[0] == 1)
      {
        v21 = +[VCPMADCoreAnalyticsManager sharedManager];
        [v21 accumulateInt64Value:1 forField:@"PeopleVIPGenerated" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
      }

LABEL_30:
      if ((self->_subtasks & 0x80) != 0)
      {
        [(VCPFaceLibraryProcessingTask *)self _processAutoCounterForPhotoLibrary:libraryCopy];
      }

      (*(self->_progressHandler + 2))(100.0);
LABEL_36:
      v8 = 0;
    }
  }

LABEL_38:
LABEL_39:

  return v8;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  if (self->_subtasks)
  {
    completeSceneProcessing = [(VCPFaceLibraryProcessingTask *)self completeSceneProcessing];
    if (completeSceneProcessing)
    {
      v4 = completeSceneProcessing;
      (*(self->_completionHandler + 2))();
      return v4;
    }
  }

  v5 = VCPSignPostLog();
  spid = os_signpost_id_generate(v5);

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceLibraryProcessingTask", "", buf, 2u);
  }

  v9 = objc_alloc_init(VCPTimeMeasurement);
  [v9 start];
  (*(self->_progressHandler + 2))(10.0);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F7264;
  v31[3] = &unk_1002837E8;
  v31[4] = self;
  v10 = objc_retainBlock(v31);
  v11 = 0;
  v4 = 0;
  while (v11 < [(NSArray *)self->_photoLibraries count])
  {
    v12 = objc_autoreleasePoolPush();
    if ([(VCPFaceLibraryProcessingTask *)self isCancelled])
    {
      goto LABEL_10;
    }

    v14 = +[VCPWatchdog sharedWatchdog];
    [v14 pet];

    v15 = [(NSArray *)self->_photoLibraries objectAtIndexedSubscript:v11];
    v16 = [(VCPFaceLibraryProcessingTask *)self _readyToProcessProcessLibrary:v15];

    if (v16)
    {
      v17 = [(NSArray *)self->_photoLibraries objectAtIndexedSubscript:v11];
      v18 = [(VCPFaceLibraryProcessingTask *)self runGalleryProcessingForPhotoLibrary:v17 progressHandler:v10];

      if (v18)
      {
        v4 = v18;
      }

      if (v4 == -128)
      {
LABEL_10:
        v4 = -128;
        v13 = 2;
        goto LABEL_17;
      }

      v13 = 0;
    }

    else
    {
      v13 = 4;
    }

LABEL_17:
    objc_autoreleasePoolPop(v12);
    if ((v13 | 4) != 4)
    {
      break;
    }

    ++v11;
  }

  [v9 stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v19 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      [v9 elapsedTimeSeconds];
      v21 = @"interrupted";
      *buf = 138412802;
      if (!v4)
      {
        v21 = @"finished";
      }

      v33 = v21;
      v34 = 2048;
      v35 = v20;
      v36 = 1024;
      v37 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "Face Processing %@ after %0.6fs (%d)", buf, 0x1Cu);
    }
  }

  v22 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v9 elapsedTimeSeconds];
  v24 = [NSNumber numberWithLongLong:vcvtpd_s64_f64(v23)];
  [v22 setValue:v24 forField:@"TimeAnalyzingInSeconds" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

  v25 = VCPSignPostLog();
  v26 = v25;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceLibraryProcessingTask", "", buf, 2u);
  }

  VCPPerformance_ReportSummary();
  if ((self->_subtasks & 2) != 0)
  {
    if (_os_feature_enabled_impl())
    {
      v27 = objc_alloc_init(MADContactsPersonProcessingTask);
      [(MADProcessingTask *)v27 setCancelBlock:self->_cancelBlock];
      [(MADContactsPersonProcessingTask *)v27 process];
    }

    if (_os_feature_enabled_impl())
    {
      v28 = objc_alloc_init(MADHomePersonProcessingTask);
      [(MADProcessingTask *)v28 setCancelBlock:self->_cancelBlock];
      [(MADHomePersonProcessingTask *)v28 process];
    }
  }

  (*(self->_completionHandler + 2))();

  return v4;
}

@end