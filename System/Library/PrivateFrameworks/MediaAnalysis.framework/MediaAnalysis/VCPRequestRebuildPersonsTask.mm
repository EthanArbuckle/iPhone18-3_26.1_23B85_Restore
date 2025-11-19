@interface VCPRequestRebuildPersonsTask
+ (id)taskWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6;
- (BOOL)isCanceled;
- (VCPRequestRebuildPersonsTask)initWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestRebuildPersonsTask

- (VCPRequestRebuildPersonsTask)initWithLocalIdentifiers:(id)a3 andPhotoLibraryURL:(id)a4 andProgressHandler:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = VCPRequestRebuildPersonsTask;
  v13 = [(VCPRequestRebuildPersonsTask *)&v18 init];
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
  v10.super_class = VCPRequestRebuildPersonsTask;
  [(VCPRequestRebuildPersonsTask *)&v10 dealloc];
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
    v5 = +[NSMutableDictionary dictionary];
    if ([(NSArray *)self->_personLocalIdentifiers count])
    {
      [v5 setObject:self->_personLocalIdentifiers forKeyedSubscript:VCPMediaAnalysisServiceRebuildPersonWithLocalIdentifierKey];
    }

    v6 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v4];
    v7 = [VCPFaceProcessingServiceWorker workerWithPhotoLibrary:v4 andContext:v6];
    reply = self->_reply;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10017D07C;
    v12[3] = &unk_100283000;
    v12[4] = self;
    [v7 rebuildPersonsWithContext:v5 reply:reply extendTimeout:&stru_100287DF0 cancel:v12];
    v9 = 0;
  }

  else
  {
    v10 = self->_reply;
    v13 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v14 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v6];
    v10[2](v10, 0, v7);
    v9 = -50;
  }

  return v9;
}

@end