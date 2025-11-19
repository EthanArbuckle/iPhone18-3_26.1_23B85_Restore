@interface MADPhotosRequestFullClusterProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (BOOL)run:(id *)a3;
- (MADPhotosRequestFullClusterProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation MADPhotosRequestFullClusterProcessingTask

- (MADPhotosRequestFullClusterProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100117604;
  v23[3] = &unk_100284038;
  v14 = a6;
  v24 = v14;
  v22.receiver = self;
  v22.super_class = MADPhotosRequestFullClusterProcessingTask;
  v15 = [(MADPhotosRequestFullClusterProcessingTask *)&v22 initWithCompletionHandler:v23];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibraries, a3);
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = &stru_100286950;
    }

    v18 = objc_retainBlock(v17);
    progressHandler = v16->_progressHandler;
    v16->_progressHandler = v18;

    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = &stru_100286970;
    }

    [(MADPhotosRequestFullClusterProcessingTask *)v16 setCancelBlock:v20];
  }

  return v16;
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:v9 cancelBlock:v10 progressHandler:v11 completionHandler:v12];

  return v13;
}

- (BOOL)run:(id *)a3
{
  if (![(NSArray *)self->_photoLibraries count])
  {
    v4 = +[VCPPhotoLibraryManager sharedManager];
    v5 = [v4 allPhotoLibraries];
    photoLibraries = self->_photoLibraries;
    self->_photoLibraries = v5;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSArray *)self->_photoLibraries count];
      *buf = 134217984;
      v46 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADPhotosRequestFullClusterProcessingTask] Checking %lu photo libraries ...", buf, 0xCu);
    }
  }

  (*(self->_progressHandler + 2))(0.0);
  if ([(NSArray *)self->_photoLibraries count])
  {
    v9 = 0;
    v37 = VCPKeyValueMediaAnalysisFullClusterProgressQuery;
    type = VCPLogToOSLogType[6];
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [(NSArray *)self->_photoLibraries objectAtIndexedSubscript:v9];
      v12 = [v11 vcp_description];
      v39 = [NSString stringWithFormat:@"[MADPhotosRequestFullClusterProcessingTask][%@]", v12];

      if ([(MADPhotosRequestFullClusterProcessingTask *)self isCanceled])
      {
        break;
      }

      v13 = +[VCPWatchdog sharedWatchdog];
      [v13 pet];

      v14 = [MADPhotosFullClusterProcessingTask taskWithPhotoLibrary:v11];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100117F20;
      v40[3] = &unk_100283000;
      v40[4] = self;
      [v14 setCancelBlock:v40];
      v15 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11];
      if (+[MADManagedKeyValueStore isMACDReadEnabled])
      {
        v16 = [v11 mad_fetchRequest];
        v17 = [v16 dataStoreValueForKey:v37];
      }

      else
      {
        v17 = [v15 valueForKey:v37];
      }

      [v14 setRequiresProgressQuery:v17 != 0];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v46 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Start processing ...", buf, 0xCu);
      }

      v18 = VCPSignPostLog();
      v19 = os_signpost_id_generate(v18);

      v20 = VCPSignPostLog();
      v21 = v20;
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MADPhotosFullClusterProcessingTask_process", "", buf, 2u);
      }

      [v14 process];
      v22 = VCPSignPostLog();
      v23 = v22;
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v19, "MADPhotosFullClusterProcessingTask_process", "", buf, 2u);
      }

      v24 = [(MADPhotosRequestFullClusterProcessingTask *)self isCanceled];
      v25 = v24;
      if (v24)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v46 = v39;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ User cancelled", buf, 0xCu);
        }

        if (a3)
        {
          v41 = NSLocalizedDescriptionKey;
          v26 = [NSString stringWithFormat:@"[MADPhotosRequestFullClusterProcessingTask] User cancelled"];
          v42 = v26;
          v27 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v28 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v27];
          v29 = *a3;
          *a3 = v28;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v46 = v39;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Finished processing", buf, 0xCu);
        }

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          [v11 mad_performAnalysisDataStoreChanges:&stru_100286990 error:0];
        }

        else
        {
          [v15 removeKey:v37];
        }
      }

      objc_autoreleasePoolPop(v10);
      if (v25)
      {
        return 0;
      }

      if (++v9 >= [(NSArray *)self->_photoLibraries count])
      {
        goto LABEL_35;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412290;
      v46 = v39;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ User cancelled", buf, 0xCu);
    }

    if (a3)
    {
      v43 = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithFormat:@"%@ User cancelled", v39];
      v44 = v32;
      v33 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v34 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v33];
      v35 = *a3;
      *a3 = v34;
    }

    objc_autoreleasePoolPop(v10);
    return 0;
  }

  else
  {
LABEL_35:
    v30 = [(MADPhotosRequestFullClusterProcessingTask *)self completionHandler];
    v30[2](v30, 0, 0);

    return 1;
  }
}

@end