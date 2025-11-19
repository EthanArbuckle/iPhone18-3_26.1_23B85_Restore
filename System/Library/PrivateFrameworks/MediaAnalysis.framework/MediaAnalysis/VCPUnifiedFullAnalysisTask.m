@interface VCPUnifiedFullAnalysisTask
+ (id)taskWithPhotoLibrary:(id)a3 options:(id)a4;
- (VCPUnifiedFullAnalysisTask)initWithPhotoLibrary:(id)a3 options:(id)a4;
- (int)mainInternal;
- (int)performProcessingForProviderType:(int64_t)a3 progressReporter:(id)a4;
@end

@implementation VCPUnifiedFullAnalysisTask

- (VCPUnifiedFullAnalysisTask)initWithPhotoLibrary:(id)a3 options:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VCPUnifiedFullAnalysisTask;
  v8 = [(VCPTask *)&v11 initWithPhotoLibrary:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_options, a4);
  }

  return v9;
}

+ (id)taskWithPhotoLibrary:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v5 options:v6];

  return v7;
}

- (int)performProcessingForProviderType:(int64_t)a3 progressReporter:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MADTaskCoordinator alloc];
  v9 = [(VCPTask *)self photoLibrary];
  v28 = v9;
  v10 = [NSArray arrayWithObjects:&v28 count:1];
  v11 = [NSNumber numberWithInteger:a3];
  v27 = v11;
  v12 = [NSArray arrayWithObjects:&v27 count:1];
  options = self->_options;
  v14 = [(VCPTask *)self cancel];
  v15 = [(MADTaskCoordinator *)v8 initWithPhotoLibraries:v10 taskProviderTypes:v12 options:options cancelBlock:v14 progressReporter:v6];

  if (v15)
  {
    v16 = [(MADTaskCoordinator *)v15 run];
    v17 = v16;
    if (v16)
    {
      if (v16 == -128)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v18 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v25 = 138412290;
            v26 = objc_opt_class();
            v19 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[%@] Processing canceled", &v25, 0xCu);
          }
        }

        v17 = -128;
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v22 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          v25 = 138412290;
          v26 = objc_opt_class();
          v23 = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@] Processing failed", &v25, 0xCu);
        }
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        v25 = 138412290;
        v26 = objc_opt_class();
        v21 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[%@] Failed to create task coordinator", &v25, 0xCu);
      }
    }

    v17 = -18;
  }

  objc_autoreleasePoolPop(v7);
  return v17;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 138412290;
      v36 = objc_opt_class();
      v4 = v36;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@] Processing assets...", buf, 0xCu);
    }
  }

  v5 = [(VCPTask *)self progressHandler];
  v6 = v5 == 0;

  if (v6)
  {
    v10 = 0;
    goto LABEL_20;
  }

  options = self->_options;
  if (options)
  {
    v8 = [(NSDictionary *)options objectForKeyedSubscript:VCPTurboProcessing_ImageOnlyKey];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  v11 = [(VCPTask *)self photoLibrary];
  v12 = [(VCPTask *)self cancel];
  v34 = 0;
  v13 = [v11 mad_countOfUnprocessedAssetsForTaskID:255 cancelBlock:v12 extendTimeoutBlock:&stru_1002869B0 error:&v34];
  v14 = v34;

  if (!v14)
  {
    if ((v9 & 1) == 0)
    {
      v17 = [(VCPTask *)self photoLibrary];
      v18 = [(VCPTask *)self cancel];
      v33 = 0;
      v19 = [v17 mad_countOfUnprocessedAssetsForTaskID:1 cancelBlock:v18 extendTimeoutBlock:&stru_1002869D0 error:&v33];
      v14 = v33;

      if (v14)
      {
        v15 = [v14 code];
        goto LABEL_11;
      }

      v13 = &v13[v19];
    }

    v20 = [(VCPTask *)self progressHandler];
    v21 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v13 andBlock:v20];

    v10 = v21;
LABEL_20:
    v22 = +[VCPMADCoreAnalyticsManager sharedManager];
    v23 = +[NSDate now];
    v16 = [(VCPUnifiedFullAnalysisTask *)self performProcessingForProviderType:4 progressReporter:v10];
    if (!v16)
    {
      [v23 timeIntervalSinceNow];
      [v22 accumulateDoubleValue:@"UnifiedImageOnlySeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:-v24];
      v25 = [(NSDictionary *)self->_options objectForKeyedSubscript:VCPTurboProcessing_ImageOnlyKey];
      v26 = [v25 BOOLValue];

      if ((v26 & 1) == 0)
      {
        v27 = +[NSDate now];
        v16 = [(VCPUnifiedFullAnalysisTask *)self performProcessingForProviderType:5 progressReporter:v10];
        if (v16)
        {

          goto LABEL_29;
        }

        [v27 timeIntervalSinceNow];
        [v22 accumulateDoubleValue:@"UnifiedVideoSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:-v28];
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v29 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          v30 = objc_opt_class();
          *buf = 138412290;
          v36 = v30;
          v31 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[%@] Processing assets done.", buf, 0xCu);
        }
      }

      v16 = 0;
    }

LABEL_29:

    goto LABEL_30;
  }

  v15 = [v14 code];
LABEL_11:
  if (v15 == -128)
  {
    v16 = -128;
  }

  else
  {
    v16 = -18;
  }

  v10 = v14;
LABEL_30:

  return v16;
}

@end