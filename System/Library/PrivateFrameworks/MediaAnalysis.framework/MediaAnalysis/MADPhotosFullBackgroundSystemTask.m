@interface MADPhotosFullBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
@end

@implementation MADPhotosFullBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CEF0;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B82B0 != -1)
  {
    dispatch_once(&qword_1002B82B0, block);
  }

  v2 = qword_1002B82A8;

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v6 = [VCPLibraryProcessingTask taskWithPhotoLibraries:a3 andOptions:0 andProgressHandler:a5 andCompletionHandler:a6 andCancelBlock:a4];

  return v6;
}

@end