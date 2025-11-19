@interface MADPhotosSceneFastPassProcessingTask
+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (MADPhotosSceneFastPassProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
@end

@implementation MADPhotosSceneFastPassProcessingTask

- (MADPhotosSceneFastPassProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001B7C78;
  v17[3] = &unk_100284038;
  v10 = a5;
  v18 = v10;
  v16.receiver = self;
  v16.super_class = MADPhotosSceneFastPassProcessingTask;
  v11 = [(MADPhotosSceneFastPassProcessingTask *)&v16 initWithCompletionHandler:v17];
  if (v11)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &stru_1002888D0;
    }

    v13 = objc_retainBlock(v12);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v13;

    [(MADPhotosSceneFastPassProcessingTask *)v11 setCancelBlock:v8];
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithCancelBlock:v8 progressHandler:v9 andCompletionHandler:v10];

  return v11;
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Scene-FP] Starting ...", buf, 2u);
    }
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001B8038;
  v16[3] = &unk_1002888F8;
  v16[4] = buf;
  v16[5] = a3;
  v6 = objc_retainBlock(v16);
  v7 = +[VCPPhotoLibraryManager sharedManager];
  v8 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v9 = [v7 photoLibraryWithURL:v8];

  v21 = v9;
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  v11 = [(MADPhotosSceneFastPassProcessingTask *)self cancelBlock];
  v12 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:v10 cancelBlock:v11 progressHandler:self->_progressHandler andCompletionHandler:v6];

  v13 = [v12 run];
  if (v13)
  {
    v14 = [(MADPhotosSceneFastPassProcessingTask *)self completionHandler];
    v14[2](v14, 0, 0);
  }

  _Block_object_dispose(buf, 8);
  return v13 != 0;
}

@end