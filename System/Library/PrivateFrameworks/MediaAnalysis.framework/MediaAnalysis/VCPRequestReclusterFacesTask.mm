@interface VCPRequestReclusterFacesTask
+ (id)taskWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5;
- (BOOL)isCanceled;
- (VCPRequestReclusterFacesTask)initWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestReclusterFacesTask

- (VCPRequestReclusterFacesTask)initWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = VCPRequestReclusterFacesTask;
  v10 = [(VCPRequestReclusterFacesTask *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibraryURL, a3);
    v12 = objc_retainBlock(v9);
    reply = v11->_reply;
    v11->_reply = v12;
  }

  return v11;
}

+ (id)taskWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithPhotoLibraryURL:v7 andProgressHandler:v8 andReply:v9];

  return v10;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    reply = self->_reply;
    v11 = NSLocalizedDescriptionKey;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [NSString stringWithFormat:@"%@ canceled", v6];
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v8];
    reply[2](reply, 0, v9);
  }

  v10.receiver = self;
  v10.super_class = VCPRequestReclusterFacesTask;
  [(VCPRequestReclusterFacesTask *)&v10 dealloc];
}

- (BOOL)isCanceled
{
  v2 = atomic_load(&self->_cancel);
  if (v2)
  {
    LOBYTE(cancelBlock) = 1;
  }

  else
  {
    cancelBlock = self->_cancelBlock;
    if (cancelBlock)
    {
      LOBYTE(cancelBlock) = cancelBlock[2]();
    }
  }

  return cancelBlock;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v3 = +[VCPPhotoLibraryManager sharedManager];
  v4 = [v3 photoLibraryWithURL:self->_photoLibraryURL];

  if (v4)
  {
    v5 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v4];
    v6 = [VCPFaceProcessingServiceWorker workerWithPhotoLibrary:v4 andContext:v5];
    reply = self->_reply;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10017C968;
    v12[3] = &unk_100283000;
    v12[4] = self;
    [v6 reclusterFacesWithContext:&__NSDictionary0__struct reply:reply extendTimeout:&stru_100287DD0 cancel:v12];
    v8 = 0;
  }

  else
  {
    v9 = self->_reply;
    v13 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v6];
    v9[2](v9, 0, v10);

    v8 = -50;
  }

  return v8;
}

@end