@interface HMDSoftwareUpdateDocumentationAsset
+ (NSURL)assetDirectoryURL;
+ (id)assetWithURL:(id)l fileManager:(id)manager;
+ (id)logCategory;
- (BOOL)isDownloadPermitted;
- (BOOL)isEqual:(id)equal;
- (BOOL)purgeWithError:(id *)error;
- (BOOL)saveWithError:(id *)error;
- (BOOL)shouldAutomaticallyCache;
- (HMDSoftwareUpdateDocumentationAsset)init;
- (HMDSoftwareUpdateDocumentationAsset)initWithCoder:(id)coder;
- (HMDSoftwareUpdateDocumentationAsset)initWithDocumentationMetadata:(id)metadata;
- (HMDSoftwareUpdateDocumentationAsset)initWithDocumentationMetadata:(id)metadata dateWithTimeIntervalSinceNowFactory:(id)factory URLSessionFactory:(id)sessionFactory extractorFactory:(id)extractorFactory notificationCenter:(id)center fileManager:(id)manager;
- (HMSoftwareUpdateDocumentation)documentation;
- (NSString)propertyDescription;
- (NSString)shortDescription;
- (NSURL)URL;
- (NSURL)archiveURL;
- (NSURL)bundleURL;
- (NSURL)metadataURL;
- (id)logIdentifier;
- (int64_t)state;
- (unint64_t)hash;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)cancelDownload;
- (void)cancelUnarchive;
- (void)encodeWithCoder:(id)coder;
- (void)extractionCompleteAtArchivePath:(id)path;
- (void)extractionEnteredPassThroughMode;
- (void)finishDownload;
- (void)finishUnarchive;
- (void)increaseDownloadRetryCount;
- (void)resetDownloadRetryCount;
- (void)setExtractionProgress:(double)progress;
- (void)setShouldAutomaticallyCache:(BOOL)cache;
- (void)setState:(int64_t)state;
- (void)startCaching;
- (void)startDownload;
- (void)startUnarchive;
@end

@implementation HMDSoftwareUpdateDocumentationAsset

- (void)extractionEnteredPassThroughMode
{
  v10 = *MEMORY[0x277D85DE8];
  [(HMDSoftwareUpdateDocumentationAsset *)self setExtractionEnteredPassThrough:1];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Unarchive in pass through mode", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)extractionCompleteAtArchivePath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = pathCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Completed unarchiving to path: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setExtractionProgress:(double)progress
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2048;
    v13 = progress * 100.0;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unarchive progress: %.1f%%", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v56 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    path = [lCopy path];
    *buf = 138543618;
    v51 = v14;
    v52 = 2112;
    v53 = path;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Finished downloading archived asset to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  response = [taskCopy response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = response;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18 && ([v18 statusCode] > 399 || objc_msgSend(v18, "statusCode") <= 199))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      archiveURL = [(HMDSoftwareUpdateDocumentationAsset *)v20 archiveURL];
      path2 = [archiveURL path];
      *buf = 138543874;
      v51 = v22;
      v52 = 2112;
      v53 = path2;
      v54 = 2112;
      v55 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to download asset to '%@' due to bad response status: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDSoftwareUpdateDocumentationAsset *)v20 cancelDownload];
    [(HMDSoftwareUpdateDocumentationAsset *)v20 increaseDownloadRetryCount];
    v25 = 0;
  }

  else
  {
    fileManager = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy fileManager];
    archiveURL2 = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy archiveURL];
    v49 = 0;
    v28 = [fileManager moveItemAtURL:lCopy toURL:archiveURL2 error:&v49];
    v29 = v49;

    if (v28)
    {
      [(HMDSoftwareUpdateDocumentationAsset *)selfCopy finishDownload];
      [(HMDSoftwareUpdateDocumentationAsset *)selfCopy startUnarchive];
      v25 = v29;
    }

    else
    {
      v47 = sessionCopy;
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        archiveURL3 = [(HMDSoftwareUpdateDocumentationAsset *)v31 archiveURL];
        path3 = [archiveURL3 path];
        *buf = 138543874;
        v51 = v33;
        v52 = 2112;
        v53 = path3;
        v54 = 2112;
        v55 = v29;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to move downloaded asset to '%@' with error: %@. Removing existing assets at that path.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      fileManager2 = [(HMDSoftwareUpdateDocumentationAsset *)v31 fileManager];
      archiveURL4 = [(HMDSoftwareUpdateDocumentationAsset *)v31 archiveURL];
      v48 = v29;
      v38 = [fileManager2 removeItemAtURL:archiveURL4 error:&v48];
      v25 = v48;

      sessionCopy = v47;
      if ((v38 & 1) == 0)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v31;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          archiveURL5 = [(HMDSoftwareUpdateDocumentationAsset *)v40 archiveURL];
          [archiveURL5 path];
          v44 = v46 = v39;
          *buf = 138543874;
          v51 = v42;
          v52 = 2112;
          v53 = v44;
          v54 = 2112;
          v55 = v25;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove existing asset at url '%@' with error: %@.", buf, 0x20u);

          v39 = v46;
          sessionCopy = v47;
        }

        objc_autoreleasePoolPop(v39);
      }

      [(HMDSoftwareUpdateDocumentationAsset *)v31 cancelDownload];
      [(HMDSoftwareUpdateDocumentationAsset *)v31 increaseDownloadRetryCount];
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = written / write;
    v17 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v17;
    v21 = 2048;
    v22 = (v16 * 100.0);
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Download progress: %.1f%%", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to download asset with error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDSoftwareUpdateDocumentationAsset *)selfCopy setState:0];
    [(HMDSoftwareUpdateDocumentationAsset *)selfCopy increaseDownloadRetryCount];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDSoftwareUpdateDocumentationAsset *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  metadata = [(HMDSoftwareUpdateDocumentationAsset *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"HM.metadata"];

  [coderCopy encodeBool:-[HMDSoftwareUpdateDocumentationAsset shouldAutomaticallyCache](self forKey:{"shouldAutomaticallyCache"), @"HM.shouldCache"}];
  [coderCopy encodeInteger:-[HMDSoftwareUpdateDocumentationAsset state](self forKey:{"state"), @"HM.state"}];
}

- (HMDSoftwareUpdateDocumentationAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.metadata"];
  v6 = [(HMDSoftwareUpdateDocumentationAsset *)self initWithDocumentationMetadata:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_shouldAutomaticallyCache = [coderCopy decodeBoolForKey:@"HM.shouldCache"];
    v6->_state = [coderCopy decodeIntegerForKey:@"HM.state"];
  }

  return v6;
}

- (id)logIdentifier
{
  identifier = [(HMDSoftwareUpdateDocumentationAsset *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)finishUnarchive
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDSoftwareUpdateDocumentationAsset_finishUnarchive__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__HMDSoftwareUpdateDocumentationAsset_finishUnarchive__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state] == 3;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finishing unarchive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    objc_initWeak(buf, *(a1 + 32));
    v8 = [*(a1 + 32) extractor];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__HMDSoftwareUpdateDocumentationAsset_finishUnarchive__block_invoke_187;
    v12[3] = &unk_278688A18;
    objc_copyWeak(&v13, buf);
    [v8 finishStreamWithCompletionBlock:v12];

    v9 = [*(a1 + 32) archivedFileStream];
    [v9 close];

    [*(a1 + 32) setArchivedFileStream:0];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v6)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to finish unarchive, not currently unarchiving", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54__HMDSoftwareUpdateDocumentationAsset_finishUnarchive__block_invoke_187(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  if (v4)
  {
    v6 = v4[2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ____handleFinishedUnarchive_block_invoke;
    v7[3] = &unk_27868A750;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)cancelUnarchive
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDSoftwareUpdateDocumentationAsset_cancelUnarchive__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__HMDSoftwareUpdateDocumentationAsset_cancelUnarchive__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling unarchive", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setExtractor:0];
  v6 = [*(a1 + 32) archivedFileStream];
  [v6 close];

  [*(a1 + 32) setArchivedFileStream:0];
  v7 = [*(a1 + 32) fileManager];
  v8 = [*(a1 + 32) bundleURL];
  v16 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v16];
  v10 = v16;

  if ((v9 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to remove bundle with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  [*(a1 + 32) setState:2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startUnarchive
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__HMDSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state] == 2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting unarchive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setState:3];
    v8 = MEMORY[0x277D6A750];
    v9 = [*(a1 + 32) archiveURL];
    v10 = [*(a1 + 32) metadata];
    v11 = [v10 digest];
    v12 = [*(a1 + 32) fileManager];
    v13 = [v8 optionsForArchiveURL:v9 digest:v11 fileManager:v12];

    if (v13)
    {
      v14 = MEMORY[0x277CBEAE0];
      v15 = [*(a1 + 32) archiveURL];
      v16 = [v14 inputStreamWithURL:v15];

      if (v16)
      {
        [*(a1 + 32) setArchivedFileStream:v16];
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v20;
          v45 = 2112;
          v46 = v13;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting extraction using options: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v22 = *(a1 + 32);
        v21 = (a1 + 32);
        v23 = [v22 extractorFactory];
        v24 = [*v21 bundleURL];
        v25 = [v24 path];
        v26 = (v23)[2](v23, v25, v13);

        [*v21 setExtractor:v26];
        objc_initWeak(buf, *v21);
        v27 = [*v21 bundleURL];
        v28 = [v27 path];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __53__HMDSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke_185;
        v41[3] = &unk_27867D828;
        objc_copyWeak(&v42, buf);
        [v26 prepareForExtractionToPath:v28 completionBlock:v41];

        objc_destroyWeak(&v42);
        objc_destroyWeak(buf);
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v39;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [*(a1 + 32) metadata];
        v35 = [v34 digest];
        *buf = 138543618;
        v44 = v33;
        v45 = 2112;
        v46 = v35;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Failed to create validation options for unarchiving with digest: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  else
  {
    if (v6)
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v29;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to unarchive, asset is not downloaded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __53__HMDSoftwareUpdateDocumentationAsset_startUnarchive__block_invoke_185(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = v5[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ____handleStartedUnarchive_block_invoke;
    v9[3] = &unk_27868A750;
    v10 = v6;
    v11 = v5;
    dispatch_async(v8, v9);
  }
}

- (void)finishDownload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDSoftwareUpdateDocumentationAsset_finishDownload__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __53__HMDSoftwareUpdateDocumentationAsset_finishDownload__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Finished download", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) URLSession];
  [v6 invalidateAndCancel];

  [*(a1 + 32) setURLSession:0];
  result = [*(a1 + 32) setState:2];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelDownload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDSoftwareUpdateDocumentationAsset_cancelDownload__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __53__HMDSoftwareUpdateDocumentationAsset_cancelDownload__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling download", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) URLSession];
  [v6 invalidateAndCancel];

  [*(a1 + 32) setURLSession:0];
  result = [*(a1 + 32) setState:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startDownload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDSoftwareUpdateDocumentationAsset_startDownload__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__HMDSoftwareUpdateDocumentationAsset_startDownload__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v5;
      v6 = "%{public}@Unable to download, asset is already downloading or downloaded";
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
      _os_log_impl(&dword_229538000, v7, v8, v6, &v34, 0xCu);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (([*(a1 + 32) saveWithError:0] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v5;
      v6 = "%{public}@Failed to save asset";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
    objc_autoreleasePoolPop(v2);
    goto LABEL_19;
  }

  v9 = [*(a1 + 32) isDownloadPermitted];
  v2 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v29;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not attempting to download documentation now as we are in a backoff", &v34, 0xCu);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Starting download", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setState:1];
  v14 = [*(a1 + 32) URLSession];

  if (!v14)
  {
    v15 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v16 = [*(a1 + 32) URLSessionFactory];
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CCABD8] mainQueue];
    v19 = (v16)[2](v16, v15, v17, v18);

    [*(a1 + 32) setURLSession:v19];
  }

  v20 = [*(a1 + 32) metadata];
  v21 = [v20 URL];

  if (v21)
  {
    v22 = [*(a1 + 32) URLSession];
    v23 = [v22 downloadTaskWithURL:v21];

    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v34 = 138543618;
      v35 = v27;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Resuming task: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [v23 resume];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = *(a1 + 32);
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot download software update from nil url", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    [*(a1 + 32) cancelDownload];
    [*(a1 + 32) increaseDownloadRetryCount];
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)purgeWithError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Purging", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSoftwareUpdateDocumentationAsset *)selfCopy setShouldAutomaticallyCache:0];
  [(HMDSoftwareUpdateDocumentationAsset *)selfCopy cancelDownload];
  fileManager = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy fileManager];
  v10 = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy URL];
  v11 = [fileManager removeItemAtURL:v10 error:error];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)startCaching
{
  state = [(HMDSoftwareUpdateDocumentationAsset *)self state];
  if (state == 2)
  {
    [(HMDSoftwareUpdateDocumentationAsset *)self setShouldAutomaticallyCache:1];

    [(HMDSoftwareUpdateDocumentationAsset *)self startUnarchive];
  }

  else if (!state)
  {
    [(HMDSoftwareUpdateDocumentationAsset *)self setShouldAutomaticallyCache:1];

    [(HMDSoftwareUpdateDocumentationAsset *)self startDownload];
  }
}

- (BOOL)saveWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  fileManager = [(HMDSoftwareUpdateDocumentationAsset *)self fileManager];
  v6 = [(HMDSoftwareUpdateDocumentationAsset *)self URL];
  v32 = 0;
  v7 = [fileManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v32];
  v8 = v32;

  if (v7)
  {
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
    if (v9)
    {
      fileManager2 = [(HMDSoftwareUpdateDocumentationAsset *)self fileManager];
      metadataURL = [(HMDSoftwareUpdateDocumentationAsset *)self metadataURL];
      v31 = v8;
      v12 = 1;
      v13 = [fileManager2 writeData:v9 toURL:metadataURL options:1 error:&v31];
      v14 = v31;

      if ((v13 & 1) == 0)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v18;
          v35 = 2112;
          v36 = v14;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive asset metadata (write) %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        if (error)
        {
          v19 = v14;
          v12 = 0;
          *error = v14;
        }

        else
        {
          v12 = 0;
        }
      }

      v8 = v14;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive asset metadata (encode)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v12 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create asset directory with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    if (error)
    {
      v24 = v8;
      v12 = 0;
      *error = v8;
    }

    else
    {
      v12 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)resetDownloadRetryCount
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [(HMDSoftwareUpdateDocumentationAsset *)self setNextPermittedDownloadDate:distantPast];

  [(HMDSoftwareUpdateDocumentationAsset *)self setDownloadRetryCount:0];
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting download retry count", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)increaseDownloadRetryCount
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  downloadRetryCount = [(HMDSoftwareUpdateDocumentationAsset *)self downloadRetryCount];
  if (downloadRetryCount >= [&unk_283E75B18 count])
  {
    downloadRetryCount2 = [&unk_283E75B18 count] - 1;
  }

  else
  {
    downloadRetryCount2 = [(HMDSoftwareUpdateDocumentationAsset *)self downloadRetryCount];
  }

  v5 = [&unk_283E75B18 objectAtIndexedSubscript:downloadRetryCount2];
  dateWithTimeIntervalSinceNowFactory = [(HMDSoftwareUpdateDocumentationAsset *)self dateWithTimeIntervalSinceNowFactory];
  [v5 doubleValue];
  v7 = dateWithTimeIntervalSinceNowFactory[2](dateWithTimeIntervalSinceNowFactory);
  [(HMDSoftwareUpdateDocumentationAsset *)self setNextPermittedDownloadDate:v7];

  nextPermittedDownloadDate = [(HMDSoftwareUpdateDocumentationAsset *)self nextPermittedDownloadDate];
  [(HMDSoftwareUpdateDocumentationAsset *)self setDownloadRetryCount:[(HMDSoftwareUpdateDocumentationAsset *)self downloadRetryCount]+ 1];
  downloadRetryCount3 = [(HMDSoftwareUpdateDocumentationAsset *)self downloadRetryCount];

  os_unfair_lock_unlock(&self->_lock);
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v13;
    v17 = 2048;
    v18 = downloadRetryCount3;
    v19 = 2112;
    v20 = nextPermittedDownloadDate;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Increased download retry count to: %lu next retry is at: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDownloadPermitted
{
  os_unfair_lock_lock_with_options();
  nextPermittedDownloadDate = [(HMDSoftwareUpdateDocumentationAsset *)self nextPermittedDownloadDate];
  dateWithTimeIntervalSinceNowFactory = [(HMDSoftwareUpdateDocumentationAsset *)self dateWithTimeIntervalSinceNowFactory];
  v5 = dateWithTimeIntervalSinceNowFactory[2](0.0);
  v6 = [nextPermittedDownloadDate compare:v5] != 1;

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (HMSoftwareUpdateDocumentation)documentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing documentation", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  state = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy state];
  v8 = objc_autoreleasePoolPush();
  if (state == 4)
  {
    fileManager = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy fileManager];
    bundleURL = [(HMDSoftwareUpdateDocumentationAsset *)selfCopy bundleURL];
    v11 = [fileManager bundleWithURL:bundleURL];

    if (!v11 || (v12 = objc_alloc(MEMORY[0x277CD1E58]), -[HMDSoftwareUpdateDocumentationAsset fileManager](selfCopy, "fileManager"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 initWithBundle:v11 fileManager:v13], v13, !v14))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Failed to find documentation bundle", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v14 = [objc_alloc(MEMORY[0x277CD1E58]) initWithAsset:v16];
    }
  }

  else
  {
    v11 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Documentation not cached", &v23, 0xCu);
    }

    v14 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSURL)bundleURL
{
  v2 = [(HMDSoftwareUpdateDocumentationAsset *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"Asset"];

  return v3;
}

- (NSURL)archiveURL
{
  v2 = [(HMDSoftwareUpdateDocumentationAsset *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"Asset.zip"];

  return v3;
}

- (NSURL)metadataURL
{
  v2 = [(HMDSoftwareUpdateDocumentationAsset *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"metadata.plist"];

  return v3;
}

- (NSURL)URL
{
  v3 = +[HMDSoftwareUpdateDocumentationAsset assetDirectoryURL];
  identifier = [(HMDSoftwareUpdateDocumentationAsset *)self identifier];
  uUIDString = [identifier UUIDString];
  v6 = [v3 URLByAppendingPathComponent:uUIDString];

  return v6;
}

- (void)setState:(int64_t)state
{
  v13[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_state == state)
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_state = state;
    os_unfair_lock_unlock(&self->_lock);
    notificationCenter = [(HMDSoftwareUpdateDocumentationAsset *)self notificationCenter];
    v12 = @"state";
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [notificationCenter postNotificationName:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:self userInfo:v8];

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__HMDSoftwareUpdateDocumentationAsset_setState___block_invoke;
    block[3] = &unk_27868A0D0;
    block[4] = self;
    block[5] = state;
    dispatch_async(queue, block);
    v10 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __48__HMDSoftwareUpdateDocumentationAsset_setState___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1 > 4;
  v3 = (1 << v1) & 0x15;
  if (!v2 && v3 != 0)
  {
    return [*(result + 32) saveWithError:0];
  }

  return result;
}

- (int64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setShouldAutomaticallyCache:(BOOL)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock_with_options();
  if (self->_shouldAutomaticallyCache == cacheCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_shouldAutomaticallyCache = cacheCopy;
    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDSoftwareUpdateDocumentationAsset_setShouldAutomaticallyCache___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (BOOL)shouldAutomaticallyCache
{
  os_unfair_lock_lock_with_options();
  shouldAutomaticallyCache = self->_shouldAutomaticallyCache;
  os_unfair_lock_unlock(&self->_lock);
  return shouldAutomaticallyCache;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      metadata = [(HMDSoftwareUpdateDocumentationAsset *)self metadata];
      metadata2 = [(HMDSoftwareUpdateDocumentationAsset *)v6 metadata];
      v9 = HMFEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  metadata = [(HMDSoftwareUpdateDocumentationAsset *)self metadata];
  v3 = [metadata hash];

  return v3;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDSoftwareUpdateDocumentationAsset *)self identifier];
  uUIDString = [identifier UUIDString];
  state = [(HMDSoftwareUpdateDocumentationAsset *)self state];
  if (state > 4)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_27867D8D0[state];
  }

  metadata = [(HMDSoftwareUpdateDocumentationAsset *)self metadata];
  v9 = [v3 stringWithFormat:@", Identifier = %@, State = %@, Metadata = %@", uUIDString, v7, metadata];

  return v9;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDSoftwareUpdateDocumentationAsset *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (HMDSoftwareUpdateDocumentationAsset)initWithDocumentationMetadata:(id)metadata
{
  v4 = MEMORY[0x277CCAB98];
  metadataCopy = metadata;
  defaultCenter = [v4 defaultCenter];
  v7 = objc_alloc_init(HMDFileManager);
  v8 = [(HMDSoftwareUpdateDocumentationAsset *)self initWithDocumentationMetadata:metadataCopy dateWithTimeIntervalSinceNowFactory:&__block_literal_global_163_182826 URLSessionFactory:&__block_literal_global_166_182827 extractorFactory:&__block_literal_global_170 notificationCenter:defaultCenter fileManager:v7];

  return v8;
}

id __69__HMDSoftwareUpdateDocumentationAsset_initWithDocumentationMetadata___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D6A750];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithPath:v6 options:v5];

  return v7;
}

- (HMDSoftwareUpdateDocumentationAsset)initWithDocumentationMetadata:(id)metadata dateWithTimeIntervalSinceNowFactory:(id)factory URLSessionFactory:(id)sessionFactory extractorFactory:(id)extractorFactory notificationCenter:(id)center fileManager:(id)manager
{
  metadataCopy = metadata;
  factoryCopy = factory;
  sessionFactoryCopy = sessionFactory;
  extractorFactoryCopy = extractorFactory;
  centerCopy = center;
  managerCopy = manager;
  if (!metadataCopy)
  {
    v39 = _HMFPreconditionFailure();
    [(HMDSoftwareUpdateDocumentationAsset *)v39 init];
  }

  v21 = managerCopy;
  v41.receiver = self;
  v41.super_class = HMDSoftwareUpdateDocumentationAsset;
  v22 = [(HMDSoftwareUpdateDocumentationAsset *)&v41 init];
  if (v22)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v22->_identifier;
    v22->_identifier = uUID;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    nextPermittedDownloadDate = v22->_nextPermittedDownloadDate;
    v22->_nextPermittedDownloadDate = distantPast;

    objc_storeStrong(&v22->_fileManager, manager);
    v22->_downloadRetryCount = 0;
    v27 = _Block_copy(factoryCopy);
    dateWithTimeIntervalSinceNowFactory = v22->_dateWithTimeIntervalSinceNowFactory;
    v22->_dateWithTimeIntervalSinceNowFactory = v27;

    v29 = _Block_copy(sessionFactoryCopy);
    URLSessionFactory = v22->_URLSessionFactory;
    v22->_URLSessionFactory = v29;

    v31 = _Block_copy(extractorFactoryCopy);
    extractorFactory = v22->_extractorFactory;
    v22->_extractorFactory = v31;

    objc_storeStrong(&v22->_notificationCenter, center);
    objc_storeStrong(&v22->_metadata, metadata);
    v33 = HMDispatchQueueNameString();
    uTF8String = [v33 UTF8String];
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create(uTF8String, v35);
    queue = v22->_queue;
    v22->_queue = v36;
  }

  return v22;
}

- (HMDSoftwareUpdateDocumentationAsset)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t74_182852 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t74_182852, &__block_literal_global_190_182853);
  }

  v3 = logCategory__hmf_once_v75_182854;

  return v3;
}

void __50__HMDSoftwareUpdateDocumentationAsset_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v75_182854;
  logCategory__hmf_once_v75_182854 = v1;
}

+ (id)assetWithURL:(id)l fileManager:(id)manager
{
  v41 = *MEMORY[0x277D85DE8];
  lCopy = l;
  managerCopy = manager;
  if (lCopy)
  {
    v8 = [lCopy URLByAppendingPathComponent:@"metadata.plist"];
    v9 = [managerCopy dataWithContentsOfURL:v8 options:0 error:0];

    if (v9)
    {
      v36 = 0;
      v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v36];
      v11 = v36;
      [v10 setFileManager:managerCopy];
      if (v10)
      {
        if ([v10 state] == 4 && (objc_msgSend(v10, "bundleURL"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "path"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(managerCopy, "fileExistsAtPath:", v13), v13, v12, (v14 & 1) != 0))
        {
          v15 = 4;
        }

        else if ([v10 state] < 2)
        {
          v15 = 0;
        }

        else
        {
          archiveURL = [v10 archiveURL];
          path = [archiveURL path];
          v23 = [managerCopy fileExistsAtPath:path];

          if (v23)
          {
            v15 = 2;
          }

          else
          {
            v15 = 0;
          }
        }

        if (v15 != [v10 state])
        {
          v28 = objc_autoreleasePoolPush();
          selfCopy = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = HMFGetLogIdentifier();
            v32 = off_27867D8A8[v15];
            *buf = 138543618;
            v38 = v31;
            v39 = 2112;
            v40 = v32;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Setting state to: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          [v10 setState:v15];
        }

        v33 = v10;
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v27;
          v39 = 2112;
          v40 = v11;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation asset from serialized object data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        path2 = [lCopy path];
        *buf = 138543618;
        v38 = v19;
        v39 = 2112;
        v40 = path2;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to find metadata at path: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (NSURL)assetDirectoryURL
{
  if (assetDirectoryURL_onceToken != -1)
  {
    dispatch_once(&assetDirectoryURL_onceToken, &__block_literal_global_148_182863);
  }

  v3 = assetDirectoryURL_assetDirectoryURL;

  return v3;
}

void __56__HMDSoftwareUpdateDocumentationAsset_assetDirectoryURL__block_invoke()
{
  v3 = [MEMORY[0x277D0F790] defaultCache];
  v0 = [v3 URL];
  v1 = [v0 URLByAppendingPathComponent:@"SoftwareUpdateDocumentation"];
  v2 = assetDirectoryURL_assetDirectoryURL;
  assetDirectoryURL_assetDirectoryURL = v1;
}

@end