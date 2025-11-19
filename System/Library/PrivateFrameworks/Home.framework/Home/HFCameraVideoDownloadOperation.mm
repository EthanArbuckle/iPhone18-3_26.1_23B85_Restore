@interface HFCameraVideoDownloadOperation
+ (id)downloadOperationForClip:(id)a3;
- (BOOL)fileAlreadyExists;
- (HFCameraVideoDownloadOperation)init;
- (HFCameraVideoDownloaderDelegate)delegate;
- (id)description;
- (void)fileDownloadFailedWithError:(id)a3;
- (void)fileDownloadFinishedWithElapsedTime:(double)a3;
- (void)fileDownloadNotNeeded;
- (void)fileDownloadProgress:(unint64_t)a3;
@end

@implementation HFCameraVideoDownloadOperation

- (HFCameraVideoDownloadOperation)init
{
  v5.receiver = self;
  v5.super_class = HFCameraVideoDownloadOperation;
  v2 = [(NSBlockOperation *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(HFCameraAnalyticsCameraTimelapseLoadEvent);
    [(HFCameraVideoDownloadOperation *)v2 setTimelapseLoadEvent:v3];
  }

  return v2;
}

- (BOOL)fileAlreadyExists
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(HFCameraVideoDownloadOperation *)self destinationURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  return v6;
}

+ (id)downloadOperationForClip:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setClip:v4];
  v6 = [HFCameraUtilities videoDestinationURLForCameraClip:v4];
  [v5 setDestinationURL:v6];

  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HFCameraVideoDownloadOperation_downloadOperationForClip___block_invoke;
  v8[3] = &unk_277DF4460;
  objc_copyWeak(&v9, &location);
  [v5 addExecutionBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __59__HFCameraVideoDownloadOperation_downloadOperationForClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained fileAlreadyExists])
  {
    [WeakRetained fileDownloadNotNeeded];
  }

  else
  {
    v1 = [WeakRetained downloadBlock];
    v1[2]();
  }
}

- (void)fileDownloadNotNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFCameraVideoDownloadOperation *)self clip];
    v5 = [v4 hf_prettyDescription];
    v16 = 136315394;
    v17 = "[HFCameraVideoDownloadOperation fileDownloadNotNeeded]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v16, 0x16u);
  }

  v6 = [(HFCameraVideoDownloadOperation *)self clip];
  v7 = [v6 quality];

  if (v7 == 1)
  {
    v8 = [(HFCameraVideoDownloadOperation *)self timelapseLoadEvent];
    v9 = [v8 sendEventForState:1];
  }

  v10 = [(HFCameraVideoDownloadOperation *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(HFCameraVideoDownloadOperation *)self delegate];
    v13 = [(HFCameraVideoDownloadOperation *)self clip];
    v14 = [(HFCameraVideoDownloadOperation *)self destinationURL];
    [v12 foundVideoFileForClip:v13 atURL:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fileDownloadFailedWithError:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v15 = [(HFCameraVideoDownloadOperation *)self clip];
    v16 = [v15 hf_prettyDescription];
    v17 = 136315650;
    v18 = "[HFCameraVideoDownloadOperation fileDownloadFailedWithError:]";
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v16;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%s %@ fetching clip: %@", &v17, 0x20u);
  }

  v6 = [(HFCameraVideoDownloadOperation *)self clip];
  v7 = [v6 quality];

  if (v7 == 1)
  {
    v8 = [(HFCameraVideoDownloadOperation *)self timelapseLoadEvent];
    v9 = [v8 sendEventForState:0];
  }

  v10 = [(HFCameraVideoDownloadOperation *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(HFCameraVideoDownloadOperation *)self delegate];
    v13 = [(HFCameraVideoDownloadOperation *)self clip];
    [v12 failedToDownloadVideoFileForClip:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fileDownloadFinishedWithElapsedTime:(double)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFCameraVideoDownloadOperation *)self clip];
    v7 = [v6 hf_prettyDescription];
    v8 = [(HFCameraVideoDownloadOperation *)self clip];
    [v8 duration];
    v20 = 136315906;
    v21 = "[HFCameraVideoDownloadOperation fileDownloadFinishedWithElapsedTime:]";
    v22 = 2112;
    v23 = v7;
    v24 = 2048;
    v25 = v9;
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s %@; duration: %.2f in %.2f", &v20, 0x2Au);
  }

  v10 = [(HFCameraVideoDownloadOperation *)self clip];
  v11 = [v10 quality];

  if (v11 == 1)
  {
    v12 = [(HFCameraVideoDownloadOperation *)self timelapseLoadEvent];
    v13 = [v12 sendEventForState:2];
  }

  v14 = [(HFCameraVideoDownloadOperation *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(HFCameraVideoDownloadOperation *)self delegate];
    v17 = [(HFCameraVideoDownloadOperation *)self clip];
    v18 = [(HFCameraVideoDownloadOperation *)self destinationURL];
    [v16 didDownloadVideoFileForClip:v17 toURL:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fileDownloadProgress:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFCameraVideoDownloadOperation *)self clip];
    v7 = [v6 hf_prettyDescription];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v14 = 136315650;
    v15 = "[HFCameraVideoDownloadOperation fileDownloadProgress:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s %@; download progress: %@", &v14, 0x20u);
  }

  v9 = [(HFCameraVideoDownloadOperation *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(HFCameraVideoDownloadOperation *)self delegate];
    v12 = [(HFCameraVideoDownloadOperation *)self clip];
    [v11 downloadProgress:a3 forClip:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCameraVideoDownloadOperation *)self clip];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  [v3 appendString:v6 withName:@"clipUUID"];

  v7 = [v3 appendBool:-[HFCameraVideoDownloadOperation isFinished](self withName:{"isFinished"), @"isFinished"}];
  v8 = [v3 appendBool:-[HFCameraVideoDownloadOperation isCancelled](self withName:{"isCancelled"), @"isCancelled"}];
  v9 = [v3 appendBool:-[HFCameraVideoDownloadOperation isExecuting](self withName:{"isExecuting"), @"isExecuting"}];
  v10 = [v3 build];

  return v10;
}

- (HFCameraVideoDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end