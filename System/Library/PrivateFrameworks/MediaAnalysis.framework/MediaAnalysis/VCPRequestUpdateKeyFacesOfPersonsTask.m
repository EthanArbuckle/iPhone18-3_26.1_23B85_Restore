@interface VCPRequestUpdateKeyFacesOfPersonsTask
+ (id)taskWithLocalIdentifiers:(id)a3 andForceUpdate:(BOOL)a4 andPhotoLibraryURL:(id)a5 andProgressHandler:(id)a6 andReply:(id)a7;
- (BOOL)isCanceled;
- (VCPRequestUpdateKeyFacesOfPersonsTask)initWithLocalIdentifiers:(id)a3 andForceUpdate:(BOOL)a4 andPhotoLibraryURL:(id)a5 andProgressHandler:(id)a6 andReply:(id)a7;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestUpdateKeyFacesOfPersonsTask

- (VCPRequestUpdateKeyFacesOfPersonsTask)initWithLocalIdentifiers:(id)a3 andForceUpdate:(BOOL)a4 andPhotoLibraryURL:(id)a5 andProgressHandler:(id)a6 andReply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = VCPRequestUpdateKeyFacesOfPersonsTask;
  v15 = [(VCPRequestUpdateKeyFacesOfPersonsTask *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_personLocalIdentifiers, a3);
    v16->_forceUpdate = a4;
    objc_storeStrong(&v16->_photoLibraryURL, a5);
    v17 = objc_retainBlock(v14);
    reply = v16->_reply;
    v16->_reply = v17;
  }

  return v16;
}

+ (id)taskWithLocalIdentifiers:(id)a3 andForceUpdate:(BOOL)a4 andPhotoLibraryURL:(id)a5 andProgressHandler:(id)a6 andReply:(id)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [objc_alloc(objc_opt_class()) initWithLocalIdentifiers:v11 andForceUpdate:v10 andPhotoLibraryURL:v12 andProgressHandler:v13 andReply:v14];

  return v15;
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
  v10.super_class = VCPRequestUpdateKeyFacesOfPersonsTask;
  [(VCPRequestUpdateKeyFacesOfPersonsTask *)&v10 dealloc];
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
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001788D8;
    v12[3] = &unk_100283000;
    v12[4] = self;
    v7 = objc_retainBlock(v12);
    [v6 updateKeyFacesOfPersonsWithLocalIdentifiers:self->_personLocalIdentifiers forceUpdate:self->_forceUpdate context:&__NSDictionary0__struct cancelOrExtendTimeoutBlock:v7 reply:self->_reply];

    v8 = 0;
  }

  else
  {
    reply = self->_reply;
    v13 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v6];
    reply[2](reply, 0, v10);

    v8 = -50;
  }

  return v8;
}

@end