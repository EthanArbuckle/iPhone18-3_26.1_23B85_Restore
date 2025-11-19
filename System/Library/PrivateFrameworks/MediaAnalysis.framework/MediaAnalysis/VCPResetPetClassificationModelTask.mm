@interface VCPResetPetClassificationModelTask
+ (id)taskWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5;
- (BOOL)isCanceled;
- (VCPResetPetClassificationModelTask)initWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5;
- (int)run;
- (void)dealloc;
@end

@implementation VCPResetPetClassificationModelTask

- (VCPResetPetClassificationModelTask)initWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = VCPResetPetClassificationModelTask;
  v10 = [(VCPResetPetClassificationModelTask *)&v15 init];
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
  v10.super_class = VCPResetPetClassificationModelTask;
  [(VCPResetPetClassificationModelTask *)&v10 dealloc];
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
    [v6 resetPetsModelWithReply:self->_reply];

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