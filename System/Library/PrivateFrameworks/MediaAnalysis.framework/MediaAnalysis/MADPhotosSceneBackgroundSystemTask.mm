@interface MADPhotosSceneBackgroundSystemTask
+ (id)producedResultIdentifiers;
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
@end

@implementation MADPhotosSceneBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C293C;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B82E0 != -1)
  {
    dispatch_once(&qword_1002B82E0, block);
  }

  v2 = qword_1002B82D8;

  return v2;
}

+ (id)producedResultIdentifiers
{
  v2 = [NSSet setWithArray:&off_100296188];

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (VCPMADUnifiedBackgroundProcessing())
  {
    v18 = @"SkipSyncGallery";
    v19 = &__kCFBooleanTrue;
    v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000C2BA4;
    v16[3] = &unk_1002848F8;
    v17 = handlerCopy;
    v14 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy options:v13 progressHandler:v16 andCompletionHandler:completionHandlerCopy];
  }

  else
  {
    v14 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:librariesCopy cancelBlock:blockCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  }

  return v14;
}

@end