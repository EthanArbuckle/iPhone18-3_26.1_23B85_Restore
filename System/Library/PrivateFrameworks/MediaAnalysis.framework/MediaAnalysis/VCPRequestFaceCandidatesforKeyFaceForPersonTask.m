@interface VCPRequestFaceCandidatesforKeyFaceForPersonTask
+ (id)taskWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6;
- (BOOL)isCanceled;
- (VCPRequestFaceCandidatesforKeyFaceForPersonTask)initWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestFaceCandidatesforKeyFaceForPersonTask

- (VCPRequestFaceCandidatesforKeyFaceForPersonTask)initWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = VCPRequestFaceCandidatesforKeyFaceForPersonTask;
  v13 = [(VCPRequestFaceCandidatesforKeyFaceForPersonTask *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_personLocalIdentifiers, a3);
    objc_storeStrong(&v14->_photoLibraryURL, a4);
    v15 = objc_retainBlock(v12);
    reply = v14->_reply;
    v14->_reply = v15;
  }

  return v14;
}

+ (id)taskWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithLocalIdentifiers:v9 andPhotoLibraryURL:v10 andProgressHandler:v11 andReply:v12];

  return v13;
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
  v10.super_class = VCPRequestFaceCandidatesforKeyFaceForPersonTask;
  [(VCPRequestFaceCandidatesforKeyFaceForPersonTask *)&v10 dealloc];
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
    [v6 faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:self->_personLocalIdentifiers context:&__NSDictionary0__struct reply:self->_reply];

    v7 = 0;
  }

  else
  {
    reply = self->_reply;
    v9 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL, NSLocalizedDescriptionKey];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v10];
    reply[2](reply, 0, v11);

    v7 = -50;
  }

  return v7;
}

@end