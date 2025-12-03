@interface MADPhotosFaceBackgroundSystemTask
+ (id)producedResultIdentifiers;
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request;
@end

@implementation MADPhotosFaceBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A39F8;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B8508 != -1)
  {
    dispatch_once(&qword_1002B8508, block);
  }

  v2 = qword_1002B8500;

  return v2;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___MADPhotosFaceBackgroundSystemTask;
  objc_msgSendSuper2(&v8, "updateTaskSpecificBGSystemTaskRequest:", requestCopy);
  [requestCopy setResources:25];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      identifier = [self identifier];
      resources = [requestCopy resources];
      *buf = 138412546;
      v10 = identifier;
      v11 = 2048;
      v12 = resources;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Updated BGSystemTaskRequest properties to %lu", buf, 0x16u);
    }
  }
}

+ (id)producedResultIdentifiers
{
  v2 = [NSSet setWithArray:&off_100296638];

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
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
    v19[4] = handlerCopy;
    v15 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy options:v13 progressHandler:v19 andCompletionHandler:completionHandlerCopy];
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
    v18[4] = handlerCopy;
    v15 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy taskID:3 options:v13 progressHandler:v18 andCompletionHandler:completionHandlerCopy];
  }

  v16 = v15;

  return v16;
}

@end