@interface MADOTAMaintenanceProcessingTask
+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (MADOTAMaintenanceProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation MADOTAMaintenanceProcessingTask

- (MADOTAMaintenanceProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001AC838;
  v17[3] = &unk_100284038;
  v10 = a5;
  v18 = v10;
  v16.receiver = self;
  v16.super_class = MADOTAMaintenanceProcessingTask;
  v11 = [(MADOTAMaintenanceProcessingTask *)&v16 initWithCompletionHandler:v17];
  if (v11)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &stru_1002886F8;
    }

    v13 = objc_retainBlock(v12);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v13;

    [(MADOTAMaintenanceProcessingTask *)v11 setCancelBlock:v8];
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithCancelBlock:v8 progressHandler:v9 completionHandler:v10];

  return v11;
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 138412290;
      v33 = @"[MADOTAMaintenanceProcessingTask]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Running ...", buf, 0xCu);
    }
  }

  v6 = [(MADOTAMaintenanceProcessingTask *)self isCanceled];
  if (!v6)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001ACE1C;
    v28[3] = &unk_100285180;
    v28[4] = self;
    v29 = @"[MADOTAMaintenanceProcessingTask]";
    v12 = objc_retainBlock(v28);
    v13 = +[VCPWatchdog sharedWatchdog];
    [v13 pet];

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](0.0);
    }

    if ([objc_opt_class() isCaptionOTAEnabled])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v15 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          *buf = 138412290;
          v33 = @"[MADOTAMaintenanceProcessingTask]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Retrieving CSU AX Image Caption model", buf, 0xCu);
        }
      }

      v16 = VCPSignPostLog();
      v17 = os_signpost_id_generate(v16);

      v18 = VCPSignPostLog();
      v19 = v18;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "MADOTAMaintenanceProcessingTask_DownloadAXImageCaptionModel", "", buf, 2u);
      }

      v20 = +[VCPMobileAssetManager sharedManager];
      v21 = [v20 retrieveAssetLocalURL:1 petWatchDog:&stru_100288718 cancelBlock:v12];

      v22 = VCPSignPostLog();
      v23 = v22;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v17, "MADOTAMaintenanceProcessingTask_DownloadAXImageCaptionModel", "", buf, 2u);
      }

      v24 = self->_progressHandler;
      if (!v24)
      {
        goto LABEL_26;
      }

      v24[2](50.0);
    }

    v25 = self->_progressHandler;
    if (v25)
    {
      v25[2](100.0);
    }

LABEL_26:
    v26 = [(MADOTAMaintenanceProcessingTask *)self completionHandler];
    v26[2](v26, 0, 0);

    return v6 ^ 1;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412290;
      v33 = @"[MADOTAMaintenanceProcessingTask]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Request canceled", buf, 0xCu);
    }
  }

  if (a3)
  {
    v30 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"Request was canceled"];
    v31 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v9];
    v11 = *a3;
    *a3 = v10;
  }

  return v6 ^ 1;
}

@end