@interface MADPhotosFaceBackgroundSystemTask
+ (id)producedResultIdentifiers;
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)a3;
@end

@implementation MADPhotosFaceBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A39F8;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B8508 != -1)
  {
    dispatch_once(&qword_1002B8508, block);
  }

  v2 = qword_1002B8500;

  return v2;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___MADPhotosFaceBackgroundSystemTask;
  objc_msgSendSuper2(&v8, "updateTaskSpecificBGSystemTaskRequest:", v4);
  [v4 setResources:25];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [a1 identifier];
      v7 = [v4 resources];
      *buf = 138412546;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Updated BGSystemTaskRequest properties to %lu", buf, 0x16u);
    }
  }
}

+ (id)producedResultIdentifiers
{
  v2 = [NSSet setWithArray:&off_100296638];

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = _os_feature_enabled_impl();
  if (VCPMADUnifiedBackgroundProcessing())
  {
    v22 = @"SkipSyncGallery";
    v12 = [NSNumber numberWithBool:v11];
    v23 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001A3E8C;
    v19[3] = &unk_1002848F8;
    v19[4] = v9;
    v15 = [MADUnifiedProcessingTask taskWithCancelBlock:v8 options:v13 progressHandler:v19 andCompletionHandler:v10];
  }

  else
  {
    v20 = @"SkipSyncGallery";
    v12 = [NSNumber numberWithBool:v11];
    v21 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = v18;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001A3E9C;
    v18[3] = &unk_1002848F8;
    v18[4] = v9;
    v15 = [MADUnifiedProcessingTask taskWithCancelBlock:v8 taskID:3 options:v13 progressHandler:v18 andCompletionHandler:v10];
  }

  v16 = v15;

  return v16;
}

@end