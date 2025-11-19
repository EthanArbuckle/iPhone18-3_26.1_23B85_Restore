@interface VCPRequestResetPersonsTask
+ (id)taskWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5;
- (BOOL)isCanceled;
- (VCPRequestResetPersonsTask)initWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5;
- (int)run;
- (void)dealloc;
@end

@implementation VCPRequestResetPersonsTask

- (VCPRequestResetPersonsTask)initWithPhotoLibraryURL:(id)a3 andProgressHandler:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = VCPRequestResetPersonsTask;
  v10 = [(VCPRequestResetPersonsTask *)&v15 init];
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
  v10.super_class = VCPRequestResetPersonsTask;
  [(VCPRequestResetPersonsTask *)&v10 dealloc];
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
    [MADProgressManager cacheProcessedAssetCountAfterPromoter:0 photoLibrary:v4];
    if (+[MADManagedChangeToken isMACDPersistEnabled](MADManagedChangeToken, "isMACDPersistEnabled") && +[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      [v4 mad_performAnalysisDataStoreChanges:&stru_100287D88 error:0];
    }

    else
    {
      v5 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
      if (MediaAnalysisLogLevel() >= 5)
      {
        v6 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Resetting person process change tokens ... ", buf, 2u);
        }
      }

      [v5 removeChangeTokenForTaskID:3 andChangeTokenType:4];
      [v5 removeChangeTokenForTaskID:3 andChangeTokenType:3];
      if (MediaAnalysisLogLevel() >= 5)
      {
        v7 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Resetting person process timestamps ...", buf, 2u);
        }
      }

      [v5 removeKey:@"ContactIngestionTimestamp"];
      [v5 removeKey:@"HomePersonIngestionTimestamp"];
      [v5 removeKey:@"VUDeepSyncTimestamp"];
      [v5 removeKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
      [v5 removeKey:MADPersonProcessingStatusKey];
      [v5 removeKey:MADPersonProcessingUpdateAttemptCountKey];
      [v5 commit];
    }

    v8 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v4];
    v9 = [VCPFaceProcessingServiceWorker workerWithPhotoLibrary:v4 andContext:v8];
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Resetting person promoter status ... ", buf, 2u);
      }
    }

    [v9 resetPersonPromoterStatusWithReply:self->_reply];
    v11 = 0;
  }

  else
  {
    reply = self->_reply;
    v16 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"Failed to find client specified Photos Library (%@)", self->_photoLibraryURL];
    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v9];
    reply[2](reply, 0, v13);

    v11 = -50;
  }

  return v11;
}

@end