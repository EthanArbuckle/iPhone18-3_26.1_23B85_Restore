@interface HMDMatterAccessoryDiagnosticsManager
- (HMDMatterAccessoryDiagnosticsManager)initWithAccessory:(id)accessory;
- (MTRDevice)matterDevice;
- (id)_diagnosticsMetadataFromFile:(id)file outError:(id *)error;
- (void)handleDiagnosticsTransferWithOptions:(id)options message:(id)message;
- (void)shutDown;
- (void)start;
@end

@implementation HMDMatterAccessoryDiagnosticsManager

- (MTRDevice)matterDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_matterDevice);

  return WeakRetained;
}

- (void)handleDiagnosticsTransferWithOptions:(id)options message:(id)message
{
  optionsCopy = options;
  messageCopy = message;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDMatterAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = messageCopy;
  v13 = optionsCopy;
  v9 = optionsCopy;
  v10 = messageCopy;
  dispatch_async(workQueue, block);
}

void __85__HMDMatterAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];
  if (v2)
  {
    v3 = [*(a1 + 48) matterLogType];
    if (!v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v7;
        v31 = 2112;
        v32 = &unk_286627460;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Invalid matter log type. Using type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v3 = &unk_286627460;
    }

    v8 = [*(a1 + 48) delay];
    if (v8)
    {
      v9 = [*(a1 + 48) delay];
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v11 = 300.0;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 48) matterLogType];
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      *buf = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Downloading matter log type: %@ for %@s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v23 = [v3 integerValue];
    v24 = [*(a1 + 32) workQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __85__HMDMatterAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke_25;
    v27[3] = &unk_279721590;
    v25 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v25;
    [v2 downloadLogOfType:v23 timeout:v24 queue:v27 completion:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Lost reference to the matter device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    [v16 respondWithError:v3];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __85__HMDMatterAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v10;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Did download to URL: %@. Error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v11 = *(a1 + 32);
    v17 = v6;
    v12 = [v11 _diagnosticsMetadataFromFile:v5 outError:&v17];
    v13 = v17;

    if (v12)
    {
      v18 = *MEMORY[0x277CCEA28];
      v14 = encodeRootObject();
      v19 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v13 = v6;
  }

  [*(a1 + 40) respondWithPayload:v15 error:v13];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_diagnosticsMetadataFromFile:(id)file outError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v7 = MEMORY[0x277CBEBC0];
  v8 = HMDCreateHomeKitDaemonCacheDirectory();
  v9 = [v7 fileURLWithPath:v8];

  v10 = [v9 URLByAppendingPathComponent:@"MatterDiagnostics"];

  fileManager = [(HMDMatterAccessoryDiagnosticsManager *)self fileManager];
  v36 = 0;
  LOBYTE(v9) = [fileManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v36];
  v12 = v36;
  if (v9)
  {
    lastPathComponent = [fileCopy lastPathComponent];
    v14 = [v10 URLByAppendingPathComponent:lastPathComponent];

    v35 = v12;
    v15 = [fileManager copyItemAtURL:fileCopy toURL:v14 error:&v35];
    v16 = v35;

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v15)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        path = [v14 path];
        *buf = 138543618;
        v38 = v21;
        v39 = 2112;
        v40 = path;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Creating diagnostic metadata from path: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v23 = objc_alloc(MEMORY[0x277CD16E0]);
      path2 = [v14 path];
      v25 = [v23 initWithSnapshotPath:path2 urlParameters:0 privacyPolicyURL:0 uploadDestination:0 consentVersion:0 uploadType:0];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v31;
        v39 = 2112;
        v40 = v14;
        v41 = 2112;
        v42 = v16;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy file to path: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      if (error)
      {
        v32 = v16;
        v25 = 0;
        *error = v16;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v29;
      v39 = 2112;
      v40 = v10;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to create directory at path: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    if (error)
    {
      v30 = v12;
      v25 = 0;
      *error = v12;
    }

    else
    {
      v25 = 0;
    }

    v16 = v12;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)shutDown
{
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDMatterAccessoryDiagnosticsManager_shutDown__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __48__HMDMatterAccessoryDiagnosticsManager_shutDown__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isStarted];
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setStarted:0];
    result = [*(a1 + 32) notifyClientsOfSupportedDiagnostics:0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)start
{
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDMatterAccessoryDiagnosticsManager_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __45__HMDMatterAccessoryDiagnosticsManager_start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isStarted] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setStarted:1];
    v6 = *(a1 + 32);
    v7 = [v6 supportedDiagnostics];
    [v6 notifyClientsOfSupportedDiagnostics:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDMatterAccessoryDiagnosticsManager)initWithAccessory:(id)accessory
{
  v9.receiver = self;
  v9.super_class = HMDMatterAccessoryDiagnosticsManager;
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)&v9 initWithAccessory:accessory];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1E78]) initWithSupportedTypes:1 format:2 audio:0 options:0];
    supportedDiagnostics = v3->_supportedDiagnostics;
    v3->_supportedDiagnostics = v4;

    v6 = objc_alloc_init(HMDFileManager);
    fileManager = v3->_fileManager;
    v3->_fileManager = v6;
  }

  return v3;
}

@end