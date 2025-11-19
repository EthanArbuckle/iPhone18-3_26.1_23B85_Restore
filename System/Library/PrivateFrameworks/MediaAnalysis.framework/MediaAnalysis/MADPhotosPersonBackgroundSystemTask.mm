@interface MADPhotosPersonBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)a3;
@end

@implementation MADPhotosPersonBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD770;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B8548 != -1)
  {
    dispatch_once(&qword_1002B8548, block);
  }

  v2 = qword_1002B8540;

  return v2;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)a3
{
  v4 = a3;
  [v4 setResources:1];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [a1 identifier];
      v7 = 138412546;
      v8 = v6;
      v9 = 2048;
      v10 = [v4 resources];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Updated BGSystemTaskRequest properties to %lu", &v7, 0x16u);
    }
  }
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      v15 = [a1 identifier];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ - Creating task", buf, 0xCu);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001ADADC;
  v19[3] = &unk_1002848F8;
  v16 = v12;
  v20 = v16;
  v17 = [VCPRequestPersonProcessingTask taskWithPhotoLibraries:v10 cancelBlock:v11 progressHandler:v19 completionHandler:v13];

  return v17;
}

@end