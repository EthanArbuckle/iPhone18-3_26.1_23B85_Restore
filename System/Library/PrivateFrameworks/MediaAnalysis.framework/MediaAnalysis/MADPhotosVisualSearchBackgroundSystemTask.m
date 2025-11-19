@interface MADPhotosVisualSearchBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
@end

@implementation MADPhotosVisualSearchBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054E7C;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B81D8 != -1)
  {
    dispatch_once(&qword_1002B81D8, block);
  }

  v2 = qword_1002B81D0;

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = a4;
  if (VCPMADUnifiedBackgroundProcessing())
  {
    v24 = @"SkipSyncGallery";
    v25 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000550DC;
    v20[3] = &unk_100284010;
    v12 = &v21;
    v21 = v8;
    v13 = v8;
    v14 = [MADUnifiedProcessingTask taskWithCancelBlock:v10 options:v11 progressHandler:v20 andCompletionHandler:v9];
  }

  else
  {
    v22 = @"SkipSyncGallery";
    v23 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000550EC;
    v18[3] = &unk_100284010;
    v12 = &v19;
    v19 = v8;
    v15 = v8;
    v14 = [MADUnifiedProcessingTask taskWithCancelBlock:v10 taskID:12 options:v11 progressHandler:v18 andCompletionHandler:v9];
  }

  v16 = v14;

  return v16;
}

@end