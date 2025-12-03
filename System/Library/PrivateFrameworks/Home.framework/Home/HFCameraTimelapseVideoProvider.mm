@interface HFCameraTimelapseVideoProvider
+ (id)sharedProvider;
- (HFCameraTimelapseVideoProvider)init;
- (void)_getVideoForTimelapseClip:(id)clip taskType:(unint64_t)type delegate:(id)delegate;
- (void)getVideoForTimelapseClip:(id)clip taskType:(unint64_t)type delegate:(id)delegate;
- (void)setTimelapseVideoDownloader:(id)downloader;
- (void)waitUntilAllDownloadsAreFinished;
@end

@implementation HFCameraTimelapseVideoProvider

+ (id)sharedProvider
{
  if (qword_280E03068 != -1)
  {
    dispatch_once(&qword_280E03068, &__block_literal_global_114);
  }

  v3 = _MergedGlobals_262;

  return v3;
}

void __48__HFCameraTimelapseVideoProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(HFCameraTimelapseVideoProvider);
  v1 = _MergedGlobals_262;
  _MergedGlobals_262 = v0;
}

- (HFCameraTimelapseVideoProvider)init
{
  v9.receiver = self;
  v9.super_class = HFCameraTimelapseVideoProvider;
  v2 = [(HFCameraTimelapseVideoProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    downloadQueue = v2->_downloadQueue;
    v2->_downloadQueue = v3;

    [(NSOperationQueue *)v2->_downloadQueue setMaxConcurrentOperationCount:5];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.Home.HFCameraTimelapseVideoProvider.bookkeepingQueue", v5);
    bookkeepingQueue = v2->_bookkeepingQueue;
    v2->_bookkeepingQueue = v6;
  }

  return v2;
}

- (void)setTimelapseVideoDownloader:(id)downloader
{
  downloaderCopy = downloader;
  downloadQueue = [(HFCameraTimelapseVideoProvider *)self downloadQueue];
  [downloadQueue cancelAllOperations];

  timelapseVideoDownloader = self->_timelapseVideoDownloader;
  self->_timelapseVideoDownloader = downloaderCopy;
}

- (void)waitUntilAllDownloadsAreFinished
{
  downloadQueue = [(HFCameraTimelapseVideoProvider *)self downloadQueue];
  [downloadQueue waitUntilAllOperationsAreFinished];
}

- (void)getVideoForTimelapseClip:(id)clip taskType:(unint64_t)type delegate:(id)delegate
{
  v22 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  delegateCopy = delegate;
  v10 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    *buf = 138412546;
    v19 = uniqueIdentifier;
    v20 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Provider asked for clip: %@ with task type %lu", buf, 0x16u);
  }

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraTimelapseVideoProvider *)self _getVideoForTimelapseClip:clipCopy taskType:type delegate:delegateCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    bookkeepingQueue = [(HFCameraTimelapseVideoProvider *)self bookkeepingQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__HFCameraTimelapseVideoProvider_getVideoForTimelapseClip_taskType_delegate___block_invoke;
    v14[3] = &unk_277DF3540;
    objc_copyWeak(v17, buf);
    v15 = clipCopy;
    v17[1] = type;
    v16 = delegateCopy;
    dispatch_async(bookkeepingQueue, v14);

    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__HFCameraTimelapseVideoProvider_getVideoForTimelapseClip_taskType_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _getVideoForTimelapseClip:*(a1 + 32) taskType:*(a1 + 56) delegate:*(a1 + 40)];
}

- (void)_getVideoForTimelapseClip:(id)clip taskType:(unint64_t)type delegate:(id)delegate
{
  clipCopy = clip;
  delegateCopy = delegate;
  timelapseVideoDownloader = [(HFCameraTimelapseVideoProvider *)self timelapseVideoDownloader];

  if (timelapseVideoDownloader)
  {
    timelapseVideoDownloader2 = [(HFCameraTimelapseVideoProvider *)self timelapseVideoDownloader];
    v12 = [timelapseVideoDownloader2 priorityDownloadOperationForClip:clipCopy];

    [v12 setDelegate:delegateCopy];
    downloadQueue = [(HFCameraTimelapseVideoProvider *)self downloadQueue];
    operations = [downloadQueue operations];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__HFCameraTimelapseVideoProvider__getVideoForTimelapseClip_taskType_delegate___block_invoke;
    v25[3] = &unk_277DF5C80;
    v15 = v12;
    v26 = v15;
    v16 = [operations na_firstObjectPassingTest:v25];

    if (v16)
    {
      if (!type)
      {
        [v16 setQueuePriority:{objc_msgSend(v15, "queuePriority")}];
      }

      [v15 addDependency:v16];
    }

    else if (!type)
    {
      downloadQueue2 = [(HFCameraTimelapseVideoProvider *)self downloadQueue];
      operations2 = [downloadQueue2 operations];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __78__HFCameraTimelapseVideoProvider__getVideoForTimelapseClip_taskType_delegate___block_invoke_2;
      v23 = &unk_277DFBEB8;
      v24 = v15;
      [operations2 na_each:&v20];
    }

    v19 = [(HFCameraTimelapseVideoProvider *)self downloadQueue:v20];
    [v19 addOperation:v15];
  }
}

uint64_t __78__HFCameraTimelapseVideoProvider__getVideoForTimelapseClip_taskType_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clip];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 clip];

  v7 = [v6 uniqueIdentifier];
  v8 = [v5 hmf_isEqualToUUID:v7];

  return v8;
}

void __78__HFCameraTimelapseVideoProvider__getVideoForTimelapseClip_taskType_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) clip];
  v4 = [v3 uniqueIdentifier];
  v5 = [v8 clip];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 hmf_isEqualToUUID:v6];

  if ((v7 & 1) == 0)
  {
    [v8 setQueuePriority:-4];
  }
}

@end