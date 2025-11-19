@interface MADTaskCoordinator
- (BOOL)scheduleNextAssetProcessingTask;
- (BOOL)scheduleNextClusterProcessingTask;
- (BOOL)scheduleNextDownloadAssetProcessingTask;
- (MADTaskCoordinator)initWithPhotoLibraries:(id)a3 taskProviderTypes:(id)a4 options:(id)a5 cancelBlock:(id)a6 progressReporter:(id)a7;
- (int)createTaskProvidersWithPhotoLibraries:(id)a3 taskProviderTypes:(id)a4;
- (int)run;
- (unint64_t)taskIDForProviderType:(int64_t)a3;
- (void)dealloc;
- (void)evaluateScheduling;
- (void)executeAssetProcessingTask:(id)a3 fromTaskProvider:(id)a4;
- (void)executeClusterProcessingTask:(id)a3 fromTaskProvider:(id)a4;
- (void)executeDownloadAssetProcessingTask:(id)a3 fromTaskProvider:(id)a4;
@end

@implementation MADTaskCoordinator

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_photoLibraries;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        MediaAnalysisDaemonReleaseSharedDataStores(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MADTaskCoordinator;
  [(MADTaskCoordinator *)&v8 dealloc];
}

- (unint64_t)taskIDForProviderType:(int64_t)a3
{
  if ((a3 - 1) < 5)
  {
    return qword_10024CDB0[a3 - 1];
  }

  v4 = a3;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Unknown task provider type: %d", v6, 8u);
    }
  }

  return 0;
}

- (int)createTaskProvidersWithPhotoLibraries:(id)a3 taskProviderTypes:(id)a4
{
  v6 = a3;
  v40 = a4;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (!v7)
  {
    goto LABEL_41;
  }

  v9 = v7;
  v10 = *v54;
  v38 = VCPLogToOSLogType[5];
  type = VCPLogToOSLogType[4];
  *&v8 = 138412546;
  v37 = v8;
  v39 = *v54;
  do
  {
    v11 = 0;
    v41 = v9;
    do
    {
      if (*v54 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v53 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      if ([v12 isReadyForAnalysis])
      {
        v43 = v13;
        v44 = v11;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = v40;
        v14 = [v47 countByEnumeratingWithState:&v49 objects:v63 count:16];
        if (!v14)
        {
          goto LABEL_35;
        }

        v15 = v14;
        v16 = *v50;
        while (1)
        {
          v17 = 0;
          do
          {
            if (*v50 != v16)
            {
              objc_enumerationMutation(v47);
            }

            v18 = [*(*(&v49 + 1) + 8 * v17) intValue];
            v19 = [(MADTaskCoordinator *)self taskIDForProviderType:v18];
            if ([v12 vcp_requiresProcessingForTask:v19])
            {
              v48[0] = _NSConcreteStackBlock;
              v48[1] = 3221225472;
              v48[2] = sub_1001A46EC;
              v48[3] = &unk_100288588;
              v48[5] = v12;
              v48[6] = v19;
              v48[4] = self;
              v20 = objc_retainBlock(v48);
              if (v19 <= 9)
              {
                if (v19 != 1)
                {
                  if (v19 == 3)
                  {
                    v21 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"SkipSyncGallery"];
                    v22 = [v21 BOOLValue];

                    v23 = [[MADPhotosFaceTaskProvider alloc] initWithPhotoLibrary:v12 skipSyncGallery:(_os_feature_enabled_impl() | v22) & 1 cancelBlock:self->_cancelBlock];
                    goto LABEL_28;
                  }

LABEL_20:
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
                  {
                    v25 = objc_opt_class();
                    v45 = v25;
                    v26 = [v12 photoLibraryURL];
                    v27 = [v26 path];
                    *buf = 138412802;
                    v58 = v25;
                    v59 = 2048;
                    v60 = v19;
                    v61 = 2112;
                    v62 = v27;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Unsupported task type %lu for Library %@; skipping", buf, 0x20u);
                  }

LABEL_30:

                  goto LABEL_31;
                }

                if (v18 == 5)
                {
                  v29 = [[MADPhotosFullTaskProvider alloc] initWithPhotoLibrary:v12 cancelBlock:self->_cancelBlock progressReporter:self->_progressReporter mediaType:1 mediaSubtype:8 imageOnlyAnalysis:0];
                  (v20[2])(v20, v29);

                  v28 = [[MADPhotosFullTaskProvider alloc] initWithPhotoLibrary:v12 cancelBlock:self->_cancelBlock progressReporter:self->_progressReporter mediaType:2 mediaSubtype:0 imageOnlyAnalysis:0];
                  (v20[2])(v20, v28);
                }

                else
                {
                  if (v18 != 4)
                  {
                    goto LABEL_30;
                  }

                  v23 = [[MADPhotosFullTaskProvider alloc] initWithPhotoLibrary:v12 cancelBlock:self->_cancelBlock progressReporter:self->_progressReporter mediaType:1 mediaSubtype:0 imageOnlyAnalysis:1];
LABEL_28:
                  v28 = v23;
                  (v20[2])(v20, v23);
                }

                goto LABEL_30;
              }

              if (v19 == 10)
              {
                v24 = MADPhotosOCRTaskProvider;
              }

              else
              {
                if (v19 != 12)
                {
                  goto LABEL_20;
                }

                v24 = MADPhotosVisualSearchTaskProvider;
              }

              v23 = [[v24 alloc] initWithPhotoLibrary:v12 cancelBlock:self->_cancelBlock];
              goto LABEL_28;
            }

LABEL_31:
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v30 = [v47 countByEnumeratingWithState:&v49 objects:v63 count:16];
          v15 = v30;
          if (!v30)
          {
LABEL_35:

            v9 = v41;
            v10 = v39;
            v13 = v43;
            v11 = v44;
            goto LABEL_39;
          }
        }
      }

      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v38))
      {
        v31 = objc_opt_class();
        v32 = v31;
        v33 = [v12 photoLibraryURL];
        v34 = [v33 path];
        *buf = v37;
        v58 = v31;
        v59 = 2112;
        v60 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[%@] Photo Library %@ is not ready; skipping", buf, 0x16u);
      }

LABEL_39:
      objc_autoreleasePoolPop(v13);
      v11 = v11 + 1;
    }

    while (v11 != v9);
    v9 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  }

  while (v9);
LABEL_41:

  if ([(NSMutableArray *)self->_taskProviders count])
  {
    [(NSMutableArray *)self->_taskProviders sortUsingComparator:&stru_1002885C8];
    v35 = 0;
  }

  else
  {
    v35 = -18;
  }

  return v35;
}

- (MADTaskCoordinator)initWithPhotoLibraries:(id)a3 taskProviderTypes:(id)a4 options:(id)a5 cancelBlock:(id)a6 progressReporter:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v51.receiver = self;
  v51.super_class = MADTaskCoordinator;
  v18 = [(MADTaskCoordinator *)&v51 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v18->_photoLibraries, a3);
  objc_storeStrong(&v19->_options, a5);
  v20 = objc_retainBlock(v16);
  cancelBlock = v19->_cancelBlock;
  v19->_cancelBlock = v20;

  objc_storeStrong(&v19->_progressReporter, a7);
  v22 = +[NSMutableArray array];
  taskProviders = v19->_taskProviders;
  v19->_taskProviders = v22;

  v24 = +[NSMutableSet set];
  taskTypes = v19->_taskTypes;
  v19->_taskTypes = v24;

  if (![(MADTaskCoordinator *)v19 createTaskProvidersWithPhotoLibraries:v13 taskProviderTypes:v14])
  {
    v30 = dispatch_queue_create("MADTaskCoordinator.schedulingQueue", 0);
    schedulingQueue = v19->_schedulingQueue;
    v19->_schedulingQueue = v30;

    v32 = dispatch_group_create();
    schedulingGroup = v19->_schedulingGroup;
    v19->_schedulingGroup = v32;

    v34 = dispatch_group_create();
    taskGroup = v19->_taskGroup;
    v19->_taskGroup = v34;

    v36 = dispatch_semaphore_create(0);
    completionSemaphore = v19->_completionSemaphore;
    v19->_completionSemaphore = v36;

    v38 = dispatch_semaphore_create(1);
    assetTaskPrepareSemaphore = v19->_assetTaskPrepareSemaphore;
    v19->_assetTaskPrepareSemaphore = v38;

    v40 = dispatch_semaphore_create(1);
    assetTaskProcessSemaphore = v19->_assetTaskProcessSemaphore;
    v19->_assetTaskProcessSemaphore = v40;

    v42 = dispatch_semaphore_create(1);
    assetTaskPublishSemaphore = v19->_assetTaskPublishSemaphore;
    v19->_assetTaskPublishSemaphore = v42;

    v44 = dispatch_semaphore_create(1);
    downloadTaskSemaphore = v19->_downloadTaskSemaphore;
    v19->_downloadTaskSemaphore = v44;

    v46 = dispatch_semaphore_create(1);
    downloadCompleteSemaphore = v19->_downloadCompleteSemaphore;
    v19->_downloadCompleteSemaphore = v46;

    v48 = dispatch_semaphore_create(1);
    clusterTaskSemaphore = v19->_clusterTaskSemaphore;
    v19->_clusterTaskSemaphore = v48;

LABEL_8:
    v29 = v19;
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v26 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v26))
    {
      v27 = objc_opt_class();
      *buf = 138412290;
      v53 = v27;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@] Failed to create task providers.", buf, 0xCu);
    }
  }

  v29 = 0;
LABEL_9:

  return v29;
}

- (void)executeAssetProcessingTask:(id)a3 fromTaskProvider:(id)a4
{
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A4CFC;
  v12[3] = &unk_100282E10;
  v13 = a4;
  v14 = v6;
  v15 = self;
  v7 = v6;
  v8 = v13;
  v9 = objc_retainBlock(v12);
  [v7 setCancelBlock:self->_cancelBlock];
  dispatch_group_enter(self->_taskGroup);
  v10 = qos_class_self();
  v11 = dispatch_get_global_queue(v10, 0);
  dispatch_async(v11, v9);
}

- (BOOL)scheduleNextAssetProcessingTask
{
  v3 = [(NSMutableArray *)self->_taskProviders count];
  if (v3)
  {
    v5 = 0;
    v6 = VCPLogToOSLogType[5];
    *&v4 = 138412546;
    v19 = v4;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(NSMutableArray *)self->_taskProviders objectAtIndexedSubscript:self->_assetTaskProviderIdx];
      v9 = [v8 nextAssetProcessingTask];
      v10 = MediaAnalysisLogLevel();
      if (v9)
      {
        break;
      }

      if (v10 >= 5 && os_log_type_enabled(&_os_log_default, v6))
      {
        v11 = [0 uuid];
        assetTaskProviderIdx = self->_assetTaskProviderIdx;
        *buf = v19;
        v21 = v11;
        v22 = 1024;
        v23 = assetTaskProviderIdx;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MADTaskCoordinator] No next asset task (%@) from provider %d", buf, 0x12u);
      }

      v13 = self->_assetTaskProviderIdx + 1;
      self->_assetTaskProviderIdx = v13 % [(NSMutableArray *)self->_taskProviders count];
      self->_assetTaskCounter = 0;

      objc_autoreleasePoolPop(v7);
      if (++v5 >= [(NSMutableArray *)self->_taskProviders count])
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    if (v10 >= 5 && os_log_type_enabled(&_os_log_default, v6))
    {
      v14 = [v9 uuid];
      v15 = self->_assetTaskProviderIdx;
      *buf = v19;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MADTaskCoordinator] Scheduling next asset task (%@) from provider %d", buf, 0x12u);
    }

    [(MADTaskCoordinator *)self executeAssetProcessingTask:v9 fromTaskProvider:v8, v19];
    v16 = self->_assetTaskCounter + 1;
    self->_assetTaskCounter = v16;
    if (v16 >= [v8 iterations])
    {
      v17 = self->_assetTaskProviderIdx + 1;
      self->_assetTaskProviderIdx = v17 % [(NSMutableArray *)self->_taskProviders count];
      self->_assetTaskCounter = 0;
    }

    objc_autoreleasePoolPop(v7);
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)executeDownloadAssetProcessingTask:(id)a3 fromTaskProvider:(id)a4
{
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A55A4;
  v12[3] = &unk_100282E10;
  v13 = a4;
  v14 = v6;
  v15 = self;
  v7 = v6;
  v8 = v13;
  v9 = objc_retainBlock(v12);
  [v7 setCancelBlock:self->_cancelBlock];
  dispatch_group_enter(self->_taskGroup);
  v10 = qos_class_self();
  v11 = dispatch_get_global_queue(v10, 0);
  dispatch_async(v11, v9);
}

- (BOOL)scheduleNextDownloadAssetProcessingTask
{
  v3 = [(NSMutableArray *)self->_taskProviders count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [(NSMutableArray *)self->_taskProviders objectAtIndexedSubscript:self->_downloadTaskProviderIdx];
      v7 = [v6 nextDownloadAssetProcessingTask];
      if (v7)
      {
        break;
      }

      v8 = self->_downloadTaskProviderIdx + 1;
      self->_downloadTaskProviderIdx = v8 % [(NSMutableArray *)self->_taskProviders count];
      self->_downloadTaskCounter = 0;

      objc_autoreleasePoolPop(v5);
      if (++v4 >= [(NSMutableArray *)self->_taskProviders count])
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    v9 = v7;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [v9 uuid];
        downloadTaskProviderIdx = self->_downloadTaskProviderIdx;
        v16 = 138412546;
        v17 = v11;
        v18 = 1024;
        v19 = downloadTaskProviderIdx;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADTaskCoordinator] Scheduling next download task (%@) from provider %d", &v16, 0x12u);
      }
    }

    [(MADTaskCoordinator *)self executeDownloadAssetProcessingTask:v9 fromTaskProvider:v6];
    v13 = self->_downloadTaskCounter + 1;
    self->_downloadTaskCounter = v13;
    if (v13 >= [v6 iterations])
    {
      v14 = self->_downloadTaskProviderIdx + 1;
      self->_downloadTaskProviderIdx = v14 % [(NSMutableArray *)self->_taskProviders count];
      self->_downloadTaskCounter = 0;
    }

    objc_autoreleasePoolPop(v5);
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)executeClusterProcessingTask:(id)a3 fromTaskProvider:(id)a4
{
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A5F24;
  v12[3] = &unk_100282E10;
  v13 = a4;
  v14 = v6;
  v15 = self;
  v7 = v6;
  v8 = v13;
  v9 = objc_retainBlock(v12);
  [v7 setCancelBlock:self->_cancelBlock];
  dispatch_group_enter(self->_taskGroup);
  v10 = qos_class_self();
  v11 = dispatch_get_global_queue(v10, 0);
  dispatch_async(v11, v9);
}

- (BOOL)scheduleNextClusterProcessingTask
{
  v3 = [(NSMutableArray *)self->_taskProviders count];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [(NSMutableArray *)self->_taskProviders objectAtIndexedSubscript:self->_clusterTaskProviderIdx];
      v7 = [v6 nextClusterProcessingTask];
      if (v7)
      {
        break;
      }

      v8 = self->_clusterTaskProviderIdx + 1;
      self->_clusterTaskProviderIdx = v8 % [(NSMutableArray *)self->_taskProviders count];
      self->_clusterTaskCounter = 0;

      objc_autoreleasePoolPop(v5);
      if (++v4 >= [(NSMutableArray *)self->_taskProviders count])
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    v9 = v7;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [v9 uuid];
        clusterTaskProviderIdx = self->_clusterTaskProviderIdx;
        v16 = 138412546;
        v17 = v11;
        v18 = 1024;
        v19 = clusterTaskProviderIdx;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MADTaskCoordinator] Scheduling next cluster task (%@) from provider %d", &v16, 0x12u);
      }
    }

    [(MADTaskCoordinator *)self executeClusterProcessingTask:v9 fromTaskProvider:v6];
    v13 = self->_clusterTaskCounter + 1;
    self->_clusterTaskCounter = v13;
    if (v13 >= [v6 iterations])
    {
      v14 = self->_clusterTaskProviderIdx + 1;
      self->_clusterTaskProviderIdx = v14 % [(NSMutableArray *)self->_taskProviders count];
      self->_clusterTaskCounter = 0;
    }

    objc_autoreleasePoolPop(v5);
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)evaluateScheduling
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MADTaskCoordinator] Evaluating Scheduling...", buf, 2u);
    }
  }

  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADTaskCoordinator_EvaluateScheduling", "", v18, 2u);
  }

  cancelBlock = self->_cancelBlock;
  if (cancelBlock && (cancelBlock[2]() & 1) != 0)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MADTaskCoordinator] Processing canceled", v17, 2u);
      }
    }
  }

  else
  {
    if (!dispatch_semaphore_wait(self->_assetTaskPrepareSemaphore, 0) && ![(MADTaskCoordinator *)self scheduleNextAssetProcessingTask])
    {
      dispatch_semaphore_signal(self->_assetTaskPrepareSemaphore);
    }

    v10 = +[VCPInternetReachability sharedInstance];
    if ([v10 hasWifiOrEthernetConnection])
    {
      v11 = dispatch_semaphore_wait(self->_downloadTaskSemaphore, 0);

      if (!v11 && ![(MADTaskCoordinator *)self scheduleNextDownloadAssetProcessingTask])
      {
        dispatch_semaphore_signal(self->_downloadTaskSemaphore);
      }
    }

    else
    {
    }

    if (!dispatch_semaphore_wait(self->_clusterTaskSemaphore, 0) && ![(MADTaskCoordinator *)self scheduleNextClusterProcessingTask])
    {
      dispatch_semaphore_signal(self->_clusterTaskSemaphore);
    }
  }

  dispatch_group_leave(self->_schedulingGroup);
  if (!dispatch_group_wait(self->_taskGroup, 0) && !dispatch_group_wait(self->_schedulingGroup, 0))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v12 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MADTaskCoordinator] All tasks complete", v16, 2u);
      }
    }

    dispatch_semaphore_signal(self->_completionSemaphore);
  }

  v13 = VCPSignPostLog();
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v5, "MADTaskCoordinator_EvaluateScheduling", "", v15, 2u);
  }
}

- (int)run
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[MADTaskCoordinator] Running...", buf, 2u);
    }
  }

  dispatch_group_enter(self->_schedulingGroup);
  schedulingQueue = self->_schedulingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A66FC;
  block[3] = &unk_100285BC0;
  block[4] = self;
  dispatch_async(schedulingQueue, block);
  dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  cancelBlock = self->_cancelBlock;
  if (cancelBlock && (cancelBlock[2]() & 1) != 0)
  {
    return -128;
  }

  else
  {
    return 0;
  }
}

@end