@interface HRTFEnrollmentAssetDownloadSession
- (HRTFEnrollmentAssetDownloadSession)initWithOptions:(AssetDownloadOptions)options progressCallback:(id)callback completion:(id)completion;
- (void)assetDownloadSessionProgressUpdate:(id)update;
- (void)cancel;
- (void)start;
@end

@implementation HRTFEnrollmentAssetDownloadSession

- (HRTFEnrollmentAssetDownloadSession)initWithOptions:(AssetDownloadOptions)options progressCallback:(id)callback completion:(id)completion
{
  callbackCopy = callback;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = HRTFEnrollmentAssetDownloadSession;
  v10 = [(HRTFEnrollmentAssetDownloadSession *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    v12 = MEMORY[0x253065810](callbackCopy);
    progressCallback = v11->_progressCallback;
    v11->_progressCallback = v12;

    v14 = MEMORY[0x253065810](completionCopy);
    completion = v11->_completion;
    v11->_completion = v14;
  }

  return v11;
}

- (void)start
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HRTFEnrollmentAssetDownloadSession_start__block_invoke;
  block[3] = &unk_2796A3C08;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)cancel
{
  obj = self;
  objc_sync_enter(obj);
  connection = obj->_connection;
  if (connection)
  {
    remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
    [remoteObjectProxy cancelAssetDownloadSession];
  }

  objc_sync_exit(obj);
}

- (void)assetDownloadSessionProgressUpdate:(id)update
{
  progressCallback = self->_progressCallback;
  if (progressCallback)
  {
    progressCallback[2](progressCallback, update);
  }
}

@end