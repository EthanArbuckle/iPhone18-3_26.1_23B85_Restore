@interface VCPRequestResetFaceClusteringStateTask
+ (id)taskWithPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply;
- (BOOL)isCanceled;
- (VCPRequestResetFaceClusteringStateTask)initWithPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestResetFaceClusteringStateTask

- (VCPRequestResetFaceClusteringStateTask)initWithPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v15.receiver = self;
  v15.super_class = VCPRequestResetFaceClusteringStateTask;
  v10 = [(VCPRequestResetFaceClusteringStateTask *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibraryURL, l);
    v12 = objc_retainBlock(replyCopy);
    reply = v11->_reply;
    v11->_reply = v12;
  }

  return v11;
}

+ (id)taskWithPhotoLibraryURL:(id)l andProgressHandler:(id)handler andReply:(id)reply
{
  lCopy = l;
  handlerCopy = handler;
  replyCopy = reply;
  v10 = [objc_alloc(objc_opt_class()) initWithPhotoLibraryURL:lCopy andProgressHandler:handlerCopy andReply:replyCopy];

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
  v10.super_class = VCPRequestResetFaceClusteringStateTask;
  [(VCPRequestResetFaceClusteringStateTask *)&v10 dealloc];
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
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v3 = +[VCPPhotoLibraryManager sharedManager];
  v4 = [v3 photoLibraryWithURL:self->_photoLibraryURL];

  if (!v4)
  {
    reply = self->_reply;
    v26 = NSLocalizedDescriptionKey;
    mad_allFacesFetchOptions = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v27 = mad_allFacesFetchOptions;
    v6 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v6];
    reply[2](reply, 0, v9);
    code = -50;
    goto LABEL_10;
  }

  mad_allFacesFetchOptions = [v4 mad_allFacesFetchOptions];
  v6 = [PHFace fetchFacesWithOptions:mad_allFacesFetchOptions];
  if ([v6 count])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10017BF8C;
    v21[3] = &unk_100282BC8;
    v7 = v6;
    v22 = v7;
    selfCopy = self;
    v20 = 0;
    v8 = [v4 performChangesAndWait:v21 error:&v20];
    v9 = v20;

    if ((v8 & 1) == 0)
    {
      (*(self->_reply + 2))();
      code = [v9 code];
      v6 = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  [PNPersonPromoter setProcessed:0 forLibrary:v4];
  if (([v4 vcp_isSyndicationLibrary] & 1) == 0)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10017C0C8;
    v19[3] = &unk_100287DB0;
    v19[4] = v24;
    v12 = objc_retainBlock(v19);
    vcp_visionCacheStorageDirectoryURL = [v4 vcp_visionCacheStorageDirectoryURL];
    v14 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite"];
    (v12[2])(v12, v14);

    v15 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite-shm"];
    (v12[2])(v12, v15);

    v16 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite-wal"];
    (v12[2])(v12, v16);
  }

  v17 = *(self->_reply + 2);
  code = 1;
  v17();
LABEL_10:

  _Block_object_dispose(v24, 8);
  return code;
}

@end