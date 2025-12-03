@interface VCPLibraryProcessingTask
+ (id)taskWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block;
- (BOOL)isCancelled;
- (VCPLibraryProcessingTask)initWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block;
- (id)createTaskBacklogForPhotoLibrary:(id)library withDatabase:(id)database;
- (int)run;
- (void)dealloc;
@end

@implementation VCPLibraryProcessingTask

- (VCPLibraryProcessingTask)initWithPhotoLibraries:(id)libraries andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block
{
  librariesCopy = libraries;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = VCPLibraryProcessingTask;
  v18 = [(VCPLibraryProcessingTask *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_photoLibraries, libraries);
    v20 = objc_retainBlock(handlerCopy);
    progressHandler = v19->_progressHandler;
    v19->_progressHandler = v20;

    if (completionHandlerCopy)
    {
      v22 = completionHandlerCopy;
    }

    else
    {
      v22 = &stru_100286880;
    }

    v23 = objc_retainBlock(v22);
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v23;

    if (blockCopy)
    {
      v25 = blockCopy;
    }

    else
    {
      v25 = &stru_1002868A0;
    }

    v26 = objc_retainBlock(v25);
    cancelBlock = v19->_cancelBlock;
    v19->_cancelBlock = v26;

    objc_storeStrong(&v19->_options, options);
  }

  return v19;
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
  v4.super_class = VCPLibraryProcessingTask;
  [(VCPLibraryProcessingTask *)&v4 dealloc];
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

- (id)createTaskBacklogForPhotoLibrary:(id)library withDatabase:(id)database
{
  libraryCopy = library;
  databaseCopy = database;
  v8 = +[NSMutableArray array];
  if (_os_feature_enabled_impl() || [databaseCopy exists])
  {
    v9 = [VCPBackgroundProcessingMetrics sharedMetricsWithPhotoLibrary:libraryCopy];
    [v9 loadMetrics];

    v10 = [VCPAssetMaintenanceTask taskWithPhotoLibrary:libraryCopy];
    [v8 addObject:v10];
  }

  if ([libraryCopy vcp_anyAssetsForTaskID:1])
  {
    if (_os_feature_enabled_impl())
    {
      v11 = [MADFullAnalysisResultsSynchronizationTask taskWithPhotoLibrary:libraryCopy];
      [v8 addObject:v11];

      v12 = [VCPUnifiedFullAnalysisTask taskWithPhotoLibrary:libraryCopy options:self->_options];
      [v8 addObject:v12];

      v13 = [(NSDictionary *)self->_options objectForKeyedSubscript:VCPTurboProcessing_ImageOnlyKey];
      bOOLValue = [v13 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_13;
      }

      v15 = [VCPResumePausedAnalysisTask taskWithPhotoLibrary:libraryCopy];
      [v8 addObject:v15];

      v16 = [VCPFailedAssetAnalysisTask taskWithPhotoLibrary:libraryCopy options:self->_options];
      [v8 addObject:v16];

      v17 = [VCPMediaTypeAnalysisTask taskWithPhotoLibrary:libraryCopy mediaType:2];
      [v8 addObject:v17];
    }

    else
    {
      v19 = [VCPResumePausedAnalysisTask taskWithPhotoLibrary:libraryCopy];
      [v8 addObject:v19];

      v20 = [VCPFailedAssetAnalysisTask taskWithPhotoLibrary:libraryCopy options:self->_options];
      [v8 addObject:v20];

      v21 = [VCPMediaTypeAnalysisTask taskWithPhotoLibrary:libraryCopy mediaType:1];
      [v8 addObject:v21];

      v17 = [VCPMediaTypeAnalysisTask taskWithPhotoLibrary:libraryCopy mediaType:2];
      [v8 addObject:v17];
    }
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v18 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v18))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "Photo library is empty", v23, 2u);
    }
  }

LABEL_13:

  return v8;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100116918;
  v26[3] = &unk_1002837E8;
  v26[4] = self;
  v3 = objc_retainBlock(v26);
  photoLibraries = self->_photoLibraries;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001169FC;
  v25[3] = &unk_100283000;
  v25[4] = self;
  v5 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:photoLibraries cancelBlock:v25 progressHandler:v3 andCompletionHandler:&stru_1002868C0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = [v5 run];
  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPLibraryProcessingTask", "", buf, 2u);
  }

  v10 = objc_alloc_init(VCPTimeMeasurement);
  [v10 start];
  if ([(NSArray *)self->_photoLibraries count]&& !*(v22 + 6))
  {
    v11 = 90.0 / [(NSArray *)self->_photoLibraries count];
    v12 = self->_photoLibraries;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100116A04;
    v19[3] = &unk_100286910;
    *&v19[6] = v11;
    v19[4] = self;
    v19[5] = &v21;
    [(NSArray *)v12 enumerateObjectsUsingBlock:v19];
  }

  [v10 stop];
  v13 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v10 elapsedTimeSeconds];
  v14 = [NSNumber numberWithDouble:?];
  [v13 setValue:v14 forField:@"TimeAnalyzingInSeconds" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];

  v15 = VCPSignPostLog();
  v16 = v15;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v7, "VCPLibraryProcessingTask", "", buf, 2u);
  }

  VCPPerformance_ReportSummary();
  (*(self->_completionHandler + 2))();
  v17 = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return v17;
}

@end