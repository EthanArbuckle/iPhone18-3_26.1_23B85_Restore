@interface MADUnifiedProcessingTask
+ (id)taskWithCancelBlock:(id)block options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (id)taskWithCancelBlock:(id)block taskID:(unint64_t)d options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (BOOL)run:(id *)run;
- (MADUnifiedProcessingTask)initWithCancelBlock:(id)block taskProviderTypes:(id)types options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)completeSceneProcessing;
@end

@implementation MADUnifiedProcessingTask

- (MADUnifiedProcessingTask)initWithCancelBlock:(id)block taskProviderTypes:(id)types options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  typesCopy = types;
  optionsCopy = options;
  handlerCopy = handler;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000E2528;
  v34[3] = &unk_100282858;
  completionHandlerCopy = completionHandler;
  v35 = completionHandlerCopy;
  v33.receiver = self;
  v33.super_class = MADUnifiedProcessingTask;
  v17 = [(MADUnifiedProcessingTask *)&v33 initWithCompletionHandler:v34];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_taskProviderTypes, types);
    objc_storeStrong(&v18->_options, options);
    v19 = objc_retainBlock(handlerCopy);
    progressHandler = v18->_progressHandler;
    v18->_progressHandler = v19;

    v32.receiver = v18;
    v32.super_class = MADUnifiedProcessingTask;
    [(MADUnifiedProcessingTask *)&v32 setCancelBlock:blockCopy];
    v21 = [(NSDictionary *)v18->_options objectForKeyedSubscript:@"PhotoLibrary"];

    if (v21)
    {
      v22 = [(NSDictionary *)v18->_options objectForKeyedSubscript:@"PhotoLibrary"];
      photoLibraries = v18->_photoLibraries;
      v18->_photoLibraries = v22;

      if (MediaAnalysisLogLevel() >= 6)
      {
        v24 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v25 = [(NSArray *)v18->_photoLibraries count];
          *buf = 134217984;
          v37 = v25;
          v26 = "[Unified] Initiating processing on provided %lu photo libraries";
LABEL_9:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, v26, buf, 0xCu);
        }
      }
    }

    else
    {
      v27 = +[VCPPhotoLibraryManager sharedManager];
      allPhotoLibraries = [v27 allPhotoLibraries];
      v29 = v18->_photoLibraries;
      v18->_photoLibraries = allPhotoLibraries;

      if (MediaAnalysisLogLevel() >= 6)
      {
        v24 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v30 = [(NSArray *)v18->_photoLibraries count];
          *buf = 134217984;
          v37 = v30;
          v26 = "[Unified] Initiating processing with all %lu photo libraries";
          goto LABEL_9;
        }
      }
    }
  }

  return v18;
}

+ (id)taskWithCancelBlock:(id)block options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  optionsCopy = options;
  blockCopy = block;
  v14 = [[self alloc] initWithCancelBlock:blockCopy taskProviderTypes:&off_100296200 options:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v14;
}

+ (id)taskWithCancelBlock:(id)block taskID:(unint64_t)d options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  switch(d)
  {
    case 3uLL:
      v16 = 1;
      goto LABEL_7;
    case 0xCuLL:
      v16 = 3;
      goto LABEL_7;
    case 0xAuLL:
      v16 = 2;
LABEL_7:
      v17 = [self alloc];
      v18 = [NSNumber numberWithInteger:v16];
      v23 = v18;
      v19 = [NSArray arrayWithObjects:&v23 count:1];
      v20 = [v17 initWithCancelBlock:blockCopy taskProviderTypes:v19 options:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

      goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v21 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[Unified] Unsupported taskID %llu given to task init, aborting", buf, 0xCu);
    }
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (int)completeSceneProcessing
{
  v3 = objc_autoreleasePoolPush();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E29A4;
  v11[3] = &unk_100285F40;
  v11[4] = self;
  v11[5] = v12;
  v4 = objc_retainBlock(v11);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E2AA8;
  v10[3] = &unk_100285F68;
  v10[4] = self;
  v10[5] = v12;
  v5 = objc_retainBlock(v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E2BC4;
  v9[3] = &unk_100285F90;
  v9[4] = self;
  v6 = objc_retainBlock(v9);
  v7 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:self->_photoLibraries cancelBlock:v6 progressHandler:v4 andCompletionHandler:v5];
  LODWORD(self) = [v7 run];

  _Block_object_dispose(v12, 8);
  objc_autoreleasePoolPop(v3);
  return self;
}

- (BOOL)run:(id *)run
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  completeSceneProcessing = [(MADUnifiedProcessingTask *)self completeSceneProcessing];
  v5 = *(v26 + 6);
  if (v5)
  {
    if (run)
    {
      v31 = NSLocalizedDescriptionKey;
      v6 = "failed";
      if (v5 == -128)
      {
        v6 = "canceled";
      }

      v7 = [NSString stringWithFormat:@"[Unified] Pre-Analysis %s", v6];
      v32 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v5 userInfo:v8];
      v10 = *run;
      *run = v9;
    }

    [(MADUnifiedProcessingTask *)self purgeCachedModels];
    v11 = 0;
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000E2F04;
    v24[3] = &unk_100285FB8;
    v24[4] = self;
    v24[5] = &v25;
    v24[6] = run;
    v12 = objc_retainBlock(v24);
    v13 = 0;
    v14 = 0;
    type = VCPLogToOSLogType[6];
    while (1)
    {
      v15 = [(NSArray *)self->_photoLibraries count];
      v11 = v14 >= v15;
      if (v14 >= v15)
      {
        break;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = [(NSArray *)self->_photoLibraries count];
      if (v13 + v17 >= 5)
      {
        v18 = 5;
      }

      else
      {
        v18 = v13 + v17;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 134217984;
        v30 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "@[Unified] Running on photo libraries idx=%llu", buf, 0xCu);
      }

      v19 = [(NSArray *)self->_photoLibraries subarrayWithRange:v14, v18];
      v20 = (v12[2])(v12, v19);

      objc_autoreleasePoolPop(v16);
      v14 += 5;
      v13 -= 5;
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    [(MADUnifiedProcessingTask *)self purgeCachedModels];
    completionHandler = [(MADUnifiedProcessingTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);

LABEL_18:
  }

  _Block_object_dispose(&v25, 8);
  return v11;
}

@end