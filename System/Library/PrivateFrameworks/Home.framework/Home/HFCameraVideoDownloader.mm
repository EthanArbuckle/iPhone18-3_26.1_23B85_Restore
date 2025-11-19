@interface HFCameraVideoDownloader
- (HFCameraVideoDownloader)initWithCameraProfile:(id)a3;
- (HMCameraProfile)cameraProfile;
- (id)_downloadOperationForClip:(id)a3;
- (id)_fetchOperationForClip:(id)a3 withClipManager:(id)a4;
- (id)downloadOperationForClip:(id)a3;
- (id)priorityDownloadOperationForClip:(id)a3;
@end

@implementation HFCameraVideoDownloader

- (HFCameraVideoDownloader)initWithCameraProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFCameraVideoDownloader;
  v5 = [(HFCameraVideoDownloader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cameraProfile, v4);
  }

  return v6;
}

- (id)priorityDownloadOperationForClip:(id)a3
{
  v3 = [(HFCameraVideoDownloader *)self _downloadOperationForClip:a3];
  [v3 setQueuePriority:4];
  [v3 setQualityOfService:25];

  return v3;
}

- (id)downloadOperationForClip:(id)a3
{
  v3 = [(HFCameraVideoDownloader *)self _downloadOperationForClip:a3];
  [v3 setQueuePriority:0];
  [v3 setQualityOfService:25];

  return v3;
}

- (id)_downloadOperationForClip:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 hf_prettyDescription];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Called download block for clip: %@", buf, 0xCu);
  }

  v7 = [HFCameraVideoDownloadOperation downloadOperationForClip:v4];
  objc_initWeak(buf, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HFCameraVideoDownloader__downloadOperationForClip___block_invoke;
  v11[3] = &unk_277DF6458;
  objc_copyWeak(&v13, buf);
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  [v7 setDownloadBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __53__HFCameraVideoDownloader__downloadOperationForClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v4 cameraProfile];
  v6 = [v5 clipManager];
  v7 = [v4 _fetchOperationForClip:v3 withClipManager:v6];

  v8 = [MEMORY[0x277CBEAA8] date];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HFCameraVideoDownloader__downloadOperationForClip___block_invoke_2;
  v14[3] = &unk_277DFEEC0;
  v9 = WeakRetained;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  [v7 setFetchVideoAssetContextCompletionBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HFCameraVideoDownloader__downloadOperationForClip___block_invoke_3;
  v12[3] = &unk_277DFEEE8;
  v11 = v9;
  v13 = v11;
  [v7 setDownloadProgressHandler:v12];
  [v7 start];
  if (+[HFUtilities isInternalTest])
  {
    [v7 waitUntilFinishedOrTimeout:0.5];
  }

  else
  {
    [v7 waitUntilFinished];
  }
}

uint64_t __53__HFCameraVideoDownloader__downloadOperationForClip___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    return [v4 fileDownloadFailedWithError:?];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v8 = v7;

    v9 = *(a1 + 32);

    return [v9 fileDownloadFinishedWithElapsedTime:v8];
  }
}

- (id)_fetchOperationForClip:(id)a3 withClipManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HFCameraVideoDownloader.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"clipManager"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"HFCameraVideoDownloader.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"cameraClip"}];

LABEL_3:
  v9 = [objc_alloc(MEMORY[0x277CD18E8]) initWithClipManager:v8 clip:v7];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = +[HFCameraUtilities videoCachesDirectoryURL];
  [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:0];

  v12 = [HFCameraUtilities videoDestinationURLForCameraClip:v7];
  [v9 setClipDestinationFileURL:v12];

  return v9;
}

- (HMCameraProfile)cameraProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraProfile);

  return WeakRetained;
}

@end