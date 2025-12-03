@interface VCPRequestPersonPromoterStatusTask
+ (id)taskWithAdvancedFlag:(BOOL)flag andPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply;
- (BOOL)isCanceled;
- (VCPRequestPersonPromoterStatusTask)initWithAdvancedFlag:(BOOL)flag andPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestPersonPromoterStatusTask

- (VCPRequestPersonPromoterStatusTask)initWithAdvancedFlag:(BOOL)flag andPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v17.receiver = self;
  v17.super_class = VCPRequestPersonPromoterStatusTask;
  v12 = [(VCPRequestPersonPromoterStatusTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_advancedStatus = flag;
    objc_storeStrong(&v12->_photoLibraryURL, l);
    v14 = objc_retainBlock(replyCopy);
    reply = v13->_reply;
    v13->_reply = v14;
  }

  return v13;
}

+ (id)taskWithAdvancedFlag:(BOOL)flag andPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply
{
  flagCopy = flag;
  lCopy = l;
  handlerCopy = handler;
  replyCopy = reply;
  v12 = [objc_alloc(objc_opt_class()) initWithAdvancedFlag:flagCopy andPhotoLibraryURL:lCopy andProgressHandler:handlerCopy andReply:replyCopy];

  return v12;
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
  v10.super_class = VCPRequestPersonPromoterStatusTask;
  [(VCPRequestPersonPromoterStatusTask *)&v10 dealloc];
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
    v12 = VCPMediaAnalysisServicePersonPromoterRequestAdvancedStatusKey;
    v7 = [NSNumber numberWithBool:self->_advancedStatus];
    v13 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v6 personPromoterStatusWithContext:v8 reply:self->_reply];

    v9 = 0;
  }

  else
  {
    reply = self->_reply;
    v14 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v15 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v6];
    reply[2](reply, 0, v7);
    v9 = -50;
  }

  return v9;
}

@end