@interface MADPhotosOCRBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
@end

@implementation MADPhotosOCRBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090400;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B82A0 != -1)
  {
    dispatch_once(&qword_1002B82A0, block);
  }

  v2 = qword_1002B8298;

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  if (VCPMADUnifiedBackgroundProcessing())
  {
    v24 = @"SkipSyncGallery";
    v25 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100090664;
    v20[3] = &unk_100284010;
    v12 = &v21;
    v21 = handlerCopy;
    v13 = handlerCopy;
    v14 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy options:v11 progressHandler:v20 andCompletionHandler:completionHandlerCopy];
  }

  else
  {
    v22 = @"SkipSyncGallery";
    v23 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100090674;
    v18[3] = &unk_100284010;
    v12 = &v19;
    v19 = handlerCopy;
    v15 = handlerCopy;
    v14 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy taskID:10 options:v11 progressHandler:v18 andCompletionHandler:completionHandlerCopy];
  }

  v16 = v14;

  return v16;
}

@end