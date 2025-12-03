@interface MADPhotosPersonBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request;
@end

@implementation MADPhotosPersonBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AD770;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B8548 != -1)
  {
    dispatch_once(&qword_1002B8548, block);
  }

  v2 = qword_1002B8540;

  return v2;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request
{
  requestCopy = request;
  [requestCopy setResources:1];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      identifier = [self identifier];
      v7 = 138412546;
      v8 = identifier;
      v9 = 2048;
      resources = [requestCopy resources];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Updated BGSystemTaskRequest properties to %lu", &v7, 0x16u);
    }
  }
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      identifier = [self identifier];
      *buf = 138412290;
      v22 = identifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ - Creating task", buf, 0xCu);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001ADADC;
  v19[3] = &unk_1002848F8;
  v16 = handlerCopy;
  v20 = v16;
  v17 = [VCPRequestPersonProcessingTask taskWithPhotoLibraries:librariesCopy cancelBlock:blockCopy progressHandler:v19 completionHandler:completionHandlerCopy];

  return v17;
}

@end