@interface MADPhotosDeferredProcessingTask
- (BOOL)run:(id *)a3;
- (MADPhotosDeferredProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (int)performSceneProcessing:(id)a3;
- (void)generateError:(id *)a3 status:(int)a4;
@end

@implementation MADPhotosDeferredProcessingTask

- (MADPhotosDeferredProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000038F0;
  v14[3] = &unk_100282858;
  v8 = a5;
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v13.receiver = self;
  v13.super_class = MADPhotosDeferredProcessingTask;
  v10 = [(MADPhotosDeferredProcessingTask *)&v13 initWithCompletionHandler:v9];
  v11 = v10;
  if (v10)
  {
    [(MADPhotosDeferredProcessingTask *)v10 setCancelBlock:v7];
  }

  return v11;
}

- (int)performSceneProcessing:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003B44;
  v19[3] = &unk_100282880;
  v6 = v4;
  v20 = v6;
  v7 = objc_retainBlock(v19);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [VCPMADSceneFetchProcessingTask alloc];
  v9 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v10 = [(MADPhotosDeferredProcessingTask *)self cancelBlock];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003C2C;
  v14[3] = &unk_1002828A8;
  v14[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003C50;
  v13[3] = &unk_1002828D0;
  v13[4] = &v15;
  v11 = [(VCPMADSceneFetchProcessingTask *)v8 initWithFetchBlock:v7 photoLibraryWithURL:v9 cancelBlock:v10 progressHandler:v14 completionHandler:v13];

  [(VCPMADSceneFetchProcessingTask *)v11 run];
  LODWORD(v9) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  objc_autoreleasePoolPop(v5);

  return v9;
}

- (void)generateError:(id *)a3 status:(int)a4
{
  v6 = MediaAnalysisLogLevel();
  if (a4 == -128)
  {
    if (v6 >= 5)
    {
      v7 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Deferred] Processing cancelled", v16, 2u);
      }
    }

    if (a3)
    {
      v19 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithFormat:@"Deferred processing cancelled"];
      v20 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v10 = NSOSStatusErrorDomain;
      v11 = -128;
LABEL_12:
      v14 = [NSError errorWithDomain:v10 code:v11 userInfo:v9];
      v15 = *a3;
      *a3 = v14;
    }
  }

  else
  {
    if (v6 >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[Deferred] Processing failed", v16, 2u);
      }
    }

    if (a3)
    {
      v13 = a4;
      v17 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithFormat:@"Deferred processing failed"];
      v18 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v10 = NSOSStatusErrorDomain;
      v11 = v13;
      goto LABEL_12;
    }
  }
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Deferred] Processing recent captures...", v9, 2u);
    }
  }

  v6 = [(MADPhotosDeferredProcessingTask *)self performSceneProcessing:&stru_100282910];
  if (v6)
  {
    [(MADPhotosDeferredProcessingTask *)self generateError:a3 status:v6];
  }

  else
  {
    v7 = [(MADPhotosDeferredProcessingTask *)self completionHandler];
    v7[2](v7, 0, 0);
  }

  return v6 == 0;
}

@end