@interface MADPhotosFullBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
@end

@implementation MADPhotosFullBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CEF0;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B82B0 != -1)
  {
    dispatch_once(&qword_1002B82B0, block);
  }

  v2 = qword_1002B82A8;

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  v6 = [VCPLibraryProcessingTask taskWithPhotoLibraries:libraries andOptions:0 andProgressHandler:handler andCompletionHandler:completionHandler andCancelBlock:block];

  return v6;
}

@end