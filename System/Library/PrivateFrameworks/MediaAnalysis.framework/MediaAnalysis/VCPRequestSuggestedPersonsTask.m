@interface VCPRequestSuggestedPersonsTask
+ (id)taskWithPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 andPhotoLibraryURL:(id)a6 andProgressHandler:(id)a7 andReply:(id)a8;
- (BOOL)isCanceled;
- (VCPRequestSuggestedPersonsTask)initWithPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 andPhotoLibraryURL:(id)a6 andProgressHandler:(id)a7 andReply:(id)a8;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestSuggestedPersonsTask

- (VCPRequestSuggestedPersonsTask)initWithPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 andPhotoLibraryURL:(id)a6 andProgressHandler:(id)a7 andReply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = VCPRequestSuggestedPersonsTask;
  v19 = [(VCPRequestSuggestedPersonsTask *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_personLocalIdentifier, a3);
    objc_storeStrong(&v20->_toBeConfirmedPersonSuggestions, a4);
    objc_storeStrong(&v20->_toBeRejectedPersonSuggestions, a5);
    objc_storeStrong(&v20->_photoLibraryURL, a6);
    v21 = objc_retainBlock(v18);
    reply = v20->_reply;
    v20->_reply = v21;
  }

  return v20;
}

+ (id)taskWithPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 andPhotoLibraryURL:(id)a6 andProgressHandler:(id)a7 andReply:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [[VCPRequestSuggestedPersonsTask alloc] initWithPersonWithLocalIdentifier:v13 toBeConfirmedPersonSuggestions:v14 toBeRejectedPersonSuggestions:v15 andPhotoLibraryURL:v16 andProgressHandler:v17 andReply:v18];

  return v19;
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
  v10.super_class = VCPRequestSuggestedPersonsTask;
  [(VCPRequestSuggestedPersonsTask *)&v10 dealloc];
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
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001781C0;
    v16[3] = &unk_100283000;
    v16[4] = self;
    v7 = objc_retainBlock(v16);
    personLocalIdentifier = self->_personLocalIdentifier;
    toBeConfirmedPersonSuggestions = self->_toBeConfirmedPersonSuggestions;
    toBeRejectedPersonSuggestions = self->_toBeRejectedPersonSuggestions;
    v11 = +[NSDictionary dictionary];
    [v6 suggestPersonsForPersonWithLocalIdentifier:personLocalIdentifier toBeConfirmedPersonSuggestions:toBeConfirmedPersonSuggestions toBeRejectedPersonSuggestions:toBeRejectedPersonSuggestions context:v11 cancelOrExtendTimeoutBlock:v7 reply:self->_reply];

    v12 = 0;
  }

  else
  {
    reply = self->_reply;
    v17 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v18 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v6];
    reply[2](reply, 0, v14);

    v12 = -50;
  }

  return v12;
}

@end