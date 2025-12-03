@interface VCPRequestPersonProcessingTask
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (BOOL)run:(id *)run;
- (VCPRequestPersonProcessingTask)initWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation VCPRequestPersonProcessingTask

- (VCPRequestPersonProcessingTask)initWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10017D284;
  v23[3] = &unk_100284038;
  completionHandlerCopy = completionHandler;
  v24 = completionHandlerCopy;
  v22.receiver = self;
  v22.super_class = VCPRequestPersonProcessingTask;
  v15 = [(VCPRequestPersonProcessingTask *)&v22 initWithCompletionHandler:v23];
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
      v17 = &stru_100287E10;
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
      v20 = &stru_100287E30;
    }

    [(VCPRequestPersonProcessingTask *)v16 setCancelBlock:v20];
  }

  return v16;
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:librariesCopy cancelBlock:blockCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v13;
}

- (BOOL)run:(id *)run
{
  if (![(NSArray *)self->_photoLibraries count])
  {
    v4 = +[VCPPhotoLibraryManager sharedManager];
    allPhotoLibraries = [v4 allPhotoLibraries];
    photoLibraries = self->_photoLibraries;
    self->_photoLibraries = allPhotoLibraries;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSArray *)self->_photoLibraries count];
      *buf = 134217984;
      v54 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VCPRequestPersonProcessingTask] Checking %lu photo libraries ...", buf, 0xCu);
    }
  }

  if ([(NSArray *)self->_photoLibraries count])
  {
    v9 = 0;
    v42 = VCPLogToOSLogType[3];
    type = VCPLogToOSLogType[6];
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [(NSArray *)self->_photoLibraries objectAtIndexedSubscript:v9];
      vcp_description = [v11 vcp_description];
      v45 = [NSString stringWithFormat:@"[VCPRequestPersonProcessingTask][%@]", vcp_description];

      if ([(VCPRequestPersonProcessingTask *)self isCanceled])
      {
        break;
      }

      v13 = +[VCPWatchdog sharedWatchdog];
      [v13 pet];

      v14 = [[VCPPhotosFaceProcessingContext alloc] initWithPhotoLibrary:v11];
      if ([v11 vcp_isSyndicationLibrary])
      {
        v15 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
        vcp_visionCacheStorageDirectoryURL = [v15 vcp_visionCacheStorageDirectoryURL];

        v17 = 1;
      }

      else
      {
        vcp_visionCacheStorageDirectoryURL = [v11 vcp_visionCacheStorageDirectoryURL];
        v17 = 0;
      }

      v18 = [VUWGallery alloc];
      v48 = 0;
      v19 = [v18 initWithClient:v17 path:vcp_visionCacheStorageDirectoryURL error:&v48];
      v44 = v48;
      if (v19)
      {
        v43 = +[NSDate now];
        v20 = +[MADVUUtilities sharedInstance];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10017DDFC;
        v47[3] = &unk_100283000;
        v47[4] = self;
        v21 = [v20 synchronizeVUWGallery:v19 withPhotosLibrary:v11 cancelOrExtendTimeoutBlock:v47];

        if (v21)
        {
          if ([(VCPRequestPersonProcessingTask *)self isCanceled])
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v54 = v45;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ User cancelled", buf, 0xCu);
            }

            if (run)
            {
              v51 = NSLocalizedDescriptionKey;
              v22 = [NSString stringWithFormat:@"[VCPRequestPersonProcessingTask] User cancelled"];
              v52 = v22;
              v23 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
              v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v23];
              v25 = *run;
              *run = v24;
            }

            v26 = 1;
          }

          else
          {
            v40 = +[VCPMADCoreAnalyticsManager sharedManager];
            [v43 timeIntervalSinceNow];
            [v40 accumulateDoubleValue:@"FaceVUSyncElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.PersonAnalysisRunSession" andEvent:-v27];
            v28 = [MADPhotosPersonProcessingTask taskWithPhotoLibrary:v11 requirement:20 gallery:v19 andContext:v14];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_10017DE58;
            v46[3] = &unk_100283000;
            v46[4] = self;
            [v28 setCancelBlock:v46];
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v54 = v45;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Start processing ...", buf, 0xCu);
            }

            [v28 process];
            if ([(VCPRequestPersonProcessingTask *)self isCanceled])
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412290;
                v54 = v45;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ User cancelled", buf, 0xCu);
              }

              if (run)
              {
                v49 = NSLocalizedDescriptionKey;
                v38 = [NSString stringWithFormat:@"[VCPRequestPersonProcessingTask] User cancelled"];
                v50 = v38;
                v29 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
                v30 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v29];
                v31 = *run;
                *run = v30;
              }

              v26 = 1;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412290;
                v54 = v45;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Finished processing", buf, 0xCu);
              }

              v26 = 0;
            }
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v42))
          {
            *buf = 138412290;
            v54 = v45;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Failed to sync VUGallery", buf, 0xCu);
          }

          v26 = 6;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v42))
        {
          *buf = 138412546;
          v54 = v45;
          v55 = 2112;
          v56 = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Failed to create VUWGallery instance - %@", buf, 0x16u);
        }

        v26 = 6;
      }

      objc_autoreleasePoolPop(v10);
      if (v26 != 6 && v26)
      {
        return 0;
      }

      if (++v9 >= [(NSArray *)self->_photoLibraries count])
      {
        goto LABEL_48;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412290;
      v54 = v45;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ User cancelled", buf, 0xCu);
    }

    if (run)
    {
      v57 = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithFormat:@"%@ User cancelled", v45];
      v58 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v36 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v35];
      v37 = *run;
      *run = v36;
    }

    objc_autoreleasePoolPop(v10);
    return 0;
  }

  else
  {
LABEL_48:
    completionHandler = [(VCPRequestPersonProcessingTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);

    return 1;
  }
}

@end