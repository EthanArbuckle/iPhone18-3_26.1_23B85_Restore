@interface HRTFEnrollmentAssetDownloadSession
- (HRTFEnrollmentAssetDownloadSession)initWithOptions:(AssetDownloadOptions)a3 progressCallback:(id)a4 completion:(id)a5;
- (void)assetDownloadSessionProgressUpdate:(id)a3;
- (void)cancel;
- (void)start;
@end

@implementation HRTFEnrollmentAssetDownloadSession

- (HRTFEnrollmentAssetDownloadSession)initWithOptions:(AssetDownloadOptions)a3 progressCallback:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HRTFEnrollmentAssetDownloadSession;
  v10 = [(HRTFEnrollmentAssetDownloadSession *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = a3;
    v12 = MEMORY[0x253065810](v8);
    progressCallback = v11->_progressCallback;
    v11->_progressCallback = v12;

    v14 = MEMORY[0x253065810](v9);
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
    v3 = [(NSXPCConnection *)connection remoteObjectProxy];
    [v3 cancelAssetDownloadSession];
  }

  objc_sync_exit(obj);
}

- (void)assetDownloadSessionProgressUpdate:(id)a3
{
  progressCallback = self->_progressCallback;
  if (progressCallback)
  {
    progressCallback[2](progressCallback, a3);
  }
}

@end