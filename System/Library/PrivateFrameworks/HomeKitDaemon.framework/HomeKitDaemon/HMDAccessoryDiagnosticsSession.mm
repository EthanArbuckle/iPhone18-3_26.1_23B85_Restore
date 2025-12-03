@interface HMDAccessoryDiagnosticsSession
- (BOOL)_handleReceivedData:(id)data;
- (BOOL)_validDataSequenceNumber:(id)number;
- (BOOL)dataStreamAdapter:(id)adapter didReceiveData:(id)data;
- (HMDAccessoryDiagnosticsSession)initWithAccessory:(id)accessory settings:(id)settings;
- (id)_createLogFile;
- (id)attributeDescriptions;
- (id)fileExtension;
- (id)hapAccessory;
- (void)_callCompletionHandlerWithError:(id)error;
- (void)_setUpWithOptions:(id)options completion:(id)completion;
- (void)dataStreamAdapterDidCompleteDataRead:(id)read;
- (void)dataStreamAdapterDidFailDataRead:(id)read;
- (void)dealloc;
- (void)readDataWithCompletion:(id)completion;
- (void)setUpWithOptions:(id)options completion:(id)completion;
- (void)shutDown;
@end

@implementation HMDAccessoryDiagnosticsSession

- (void)_callCompletionHandlerWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Calling completion handler with error:%@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  pendingCompletionHandler = [(HMDAccessoryDiagnosticsSession *)selfCopy pendingCompletionHandler];
  [(HMDAccessoryDiagnosticsSession *)selfCopy setPendingCompletionHandler:0];
  (pendingCompletionHandler)[2](pendingCompletionHandler, errorCopy, 0, 0);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validDataSequenceNumber:(id)number
{
  v25 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  expectedDataSequenceNumber = [(HMDAccessoryDiagnosticsSession *)self expectedDataSequenceNumber];
  v7 = [expectedDataSequenceNumber isEqualToNumber:numberCopy];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    expectedDataSequenceNumber2 = [(HMDAccessoryDiagnosticsSession *)self expectedDataSequenceNumber];
    v10 = [v8 numberWithLongLong:{objc_msgSend(expectedDataSequenceNumber2, "longLongValue") + 1}];
    [(HMDAccessoryDiagnosticsSession *)self setExpectedDataSequenceNumber:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      longLongValue = [numberCopy longLongValue];
      expectedDataSequenceNumber3 = [(HMDAccessoryDiagnosticsSession *)selfCopy expectedDataSequenceNumber];
      v19 = 138543874;
      v20 = v14;
      v21 = 2048;
      v22 = longLongValue;
      v23 = 2048;
      longLongValue2 = [expectedDataSequenceNumber3 longLongValue];
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid data sequence number received:%lld expected:%lld", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_createLogFile
{
  v48 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = HMDCreateHomeKitDaemonCacheDirectory();
  v5 = [v4 stringByAppendingString:@"/ManufacturerDiagnostics"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v41 = 0;
  v7 = [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v41];
  v8 = v41;

  if (v7)
  {
    fileExtension = [(HMDAccessoryDiagnosticsSession *)self fileExtension];
    v10 = fileExtension;
    if (fileExtension)
    {
      v38 = fileExtension;
      v40 = v8;
      v11 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v15 = [v11 stringWithFormat:@"%@_%@", date, uUIDString];
      fileExtension2 = [(HMDAccessoryDiagnosticsSession *)self fileExtension];
      v17 = [v15 stringByAppendingPathExtension:fileExtension2];

      v39 = v17;
      v18 = [v5 stringByAppendingPathComponent:v17];
      v19 = [v18 copy];
      [(HMDAccessoryDiagnosticsSessionInternal *)self setFilePath:v19];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(v15) = [defaultManager2 createFileAtPath:v18 contents:0 attributes:0];

      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v15)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v25;
          v44 = 2112;
          v45 = v18;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Created log file path:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v18];
        v8 = v40;
      }

      else
      {
        v8 = v40;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543874;
          v43 = v35;
          v44 = 2112;
          v45 = v18;
          v46 = 2112;
          v47 = v40;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create file at path: %@ error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = 0;
      }

      v10 = v38;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v34;
        v44 = 2112;
        v45 = 0;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@FileType:%@ not supported ", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v26 = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v30;
      v44 = 2112;
      v45 = v5;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create directory at path: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)_handleReceivedData:(id)data
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fileHandle = [(HMDAccessoryDiagnosticsSession *)self fileHandle];

  if (!fileHandle)
  {
    _createLogFile = [(HMDAccessoryDiagnosticsSession *)self _createLogFile];
    [(HMDAccessoryDiagnosticsSession *)self setFileHandle:_createLogFile];

    fileHandle2 = [(HMDAccessoryDiagnosticsSession *)self fileHandle];

    if (!fileHandle2)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        accessory = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy2 accessory];
        filePath = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy2 filePath];
        *buf = 138543874;
        v29 = v14;
        v30 = 2112;
        bytesWritten2 = accessory;
        v32 = 2112;
        v33 = filePath;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to create log file for accessory:%@ file path:%@", buf, 0x20u);

        goto LABEL_14;
      }

LABEL_15:

      objc_autoreleasePoolPop(v11);
      v17 = 0;
      goto LABEL_16;
    }
  }

  bytesWritten = [(HMDAccessoryDiagnosticsSessionInternal *)self bytesWritten];
  v10 = [dataCopy length] + bytesWritten;
  if (v10 > [(HMDAccessoryDiagnosticsSessionInternal *)self maxBytes])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544130;
      v29 = v14;
      v30 = 2048;
      bytesWritten2 = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy2 bytesWritten];
      v32 = 2048;
      v33 = [dataCopy length];
      v34 = 2048;
      maxBytes = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy2 maxBytes];
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics exceeded max size (written: %llu, new data: %lu, max: %llu)", buf, 0x2Au);
LABEL_14:

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  fileHandle3 = [(HMDAccessoryDiagnosticsSession *)self fileHandle];
  v27 = 0;
  [fileHandle3 writeData:dataCopy error:&v27];
  v16 = v27;

  v17 = v16 == 0;
  if (v16)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      filePath2 = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy3 filePath];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      bytesWritten2 = filePath2;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to write data to file: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    -[HMDAccessoryDiagnosticsSessionInternal setBytesWritten:](self, "setBytesWritten:", -[HMDAccessoryDiagnosticsSessionInternal bytesWritten](self, "bytesWritten") + [dataCopy length]);
  }

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dataStreamAdapterDidFailDataRead:(id)read
{
  v18 = *MEMORY[0x277D85DE8];
  readCopy = read;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    accessory = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy accessory];
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = accessory;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read data for accessory:%@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  pendingCompletionHandler = [(HMDAccessoryDiagnosticsSession *)selfCopy pendingCompletionHandler];

  if (pendingCompletionHandler)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [(HMDAccessoryDiagnosticsSession *)selfCopy _callCompletionHandlerWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamAdapterDidCompleteDataRead:(id)read
{
  v28 = *MEMORY[0x277D85DE8];
  readCopy = read;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingCompletionHandler = [(HMDAccessoryDiagnosticsSession *)self pendingCompletionHandler];

  if (pendingCompletionHandler)
  {
    fileHandle = [(HMDAccessoryDiagnosticsSession *)self fileHandle];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (fileHandle)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        accessory = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy accessory];
        v24 = 138543618;
        v25 = v12;
        v26 = 2112;
        v27 = accessory;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Data read completed for accessory:%@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      pendingCompletionHandler2 = [(HMDAccessoryDiagnosticsSession *)selfCopy pendingCompletionHandler];
      [(HMDAccessoryDiagnosticsSession *)selfCopy setPendingCompletionHandler:0];
      filePath = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy filePath];
      urlParameters = [(HMDAccessoryDiagnosticsSession *)selfCopy urlParameters];
      (pendingCompletionHandler2)[2](pendingCompletionHandler2, 0, filePath, urlParameters);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        accessory2 = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy accessory];
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = accessory2;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Data read completed for accessory:%@ but file path not present", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      pendingCompletionHandler2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAccessoryDiagnosticsSession *)selfCopy _callCompletionHandlerWithError:pendingCompletionHandler2];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Data read completed but no completion handler", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)dataStreamAdapter:(id)adapter didReceiveData:(id)data
{
  v42 = *MEMORY[0x277D85DE8];
  adapterCopy = adapter;
  dataCopy = data;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [dataCopy objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [dataCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      fileHandle = [(HMDAccessoryDiagnosticsSession *)self fileHandle];

      if (!fileHandle)
      {
        v16 = [v14 objectForKeyedSubscript:@"urlParameters"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        [(HMDAccessoryDiagnosticsSession *)self setUrlParameters:v18];
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          urlParameters = [(HMDAccessoryDiagnosticsSession *)selfCopy urlParameters];
          v38 = 138543618;
          v39 = v22;
          v40 = 2112;
          v41 = urlParameters;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@URL parameters: %@ received in packet metadata", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v24 = [v14 objectForKeyedSubscript:@"dataSequenceNumber"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v26)
      {
        [(HMDAccessoryDiagnosticsSession *)self _validDataSequenceNumber:v26];
      }
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Data frame received", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [(HMDAccessoryDiagnosticsSession *)selfCopy2 _handleReceivedData:v11];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v35;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@No data present in frame", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v31 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)readDataWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataStream = [(HMDAccessoryDiagnosticsSession *)self dataStream];

  if (!dataStream)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      v12 = "%{public}@Data stream not present";
LABEL_8:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v8);
    dataStream2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, dataStream2, 0, 0);
    goto LABEL_10;
  }

  if (![(HMDAccessoryDiagnosticsSession *)self readyForDataTransfer])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      v12 = "%{public}@Session not ready for data read";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(HMDAccessoryDiagnosticsSession *)self setPendingCompletionHandler:completionCopy];
  dataStream2 = [(HMDAccessoryDiagnosticsSession *)self dataStream];
  [dataStream2 readData];
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setUpWithOptions:(id)options completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryDiagnosticsSession *)self hapAccessory];
  if ([hapAccessory canAcceptBulkSendListenersSync] & 1) != 0 || (objc_msgSend(hapAccessory, "bulkSendListenersRequireCharacteristicReadsSync"))
  {
    if (optionsCopy)
    {
      logSize = [optionsCopy logSize];

      if (logSize)
      {
        logSize2 = [optionsCopy logSize];
        -[HMDAccessoryDiagnosticsSessionInternal setMaxBytes:](self, "setMaxBytes:", [logSize2 integerValue]);
      }
    }

    v12 = [HMDAccessoryDataStreamAdapter alloc];
    workQueue2 = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
    payloadMetadata = [optionsCopy payloadMetadata];
    v15 = [(HMDAccessoryDataStreamAdapter *)v12 initWithAccessory:hapAccessory workQueue:workQueue2 fileType:@"diagnostics.snapshot" metadata:payloadMetadata reason:@"DiagnosticsData"];
    [(HMDAccessoryDiagnosticsSession *)self setDataStream:v15];

    dataStream = [(HMDAccessoryDiagnosticsSession *)self dataStream];
    [dataStream setDelegate:self];

    objc_initWeak(location, self);
    dataStream2 = [(HMDAccessoryDiagnosticsSession *)self dataStream];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__HMDAccessoryDiagnosticsSession__setUpWithOptions_completion___block_invoke;
    v24[3] = &unk_278676F20;
    objc_copyWeak(&v26, location);
    v25 = completionCopy;
    [dataStream2 setUpWithCallback:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v22;
      v28 = 2112;
      v29 = hapAccessory;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Accessory:%@ does not support data stream, error: %@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    (*(completionCopy + 2))(completionCopy, v18, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessoryDiagnosticsSession__setUpWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v9);

    v10 = objc_autoreleasePoolPush();
    v11 = v8;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v6)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v14;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup data stream with error: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v20;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Diagnostics data stream was setup successfully", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [v11 setReadyForDataTransfer:1];
      v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:1];
      [v11 setExpectedDataSequenceNumber:v21];

      v15 = *(*(a1 + 32) + 16);
    }

    v15();
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Setting up data stream failed, diagnostics session is nil", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(*(a1 + 32) + 16))();
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setUpWithOptions:(id)options completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDAccessoryDiagnosticsSession *)self hapAccessory];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (hapAccessory)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Establishing local HAP session with accessory if needed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    workQueue2 = [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__HMDAccessoryDiagnosticsSession_setUpWithOptions_completion___block_invoke;
    v19[3] = &unk_278689358;
    v19[4] = selfCopy;
    v21 = completionCopy;
    v20 = optionsCopy;
    [hapAccessory establishLocalHAPConnectionWithQueue:workQueue2 completion:v19];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot set up diagnostics transfer session because accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v17, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __62__HMDAccessoryDiagnosticsSession_setUpWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start HAP session with accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _setUpWithOptions:*(a1 + 40) completion:*(a1 + 48)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)fileExtension
{
  settings = [(HMDAccessoryDiagnosticsSession *)self settings];
  currentSnapshot = [settings currentSnapshot];
  format = [currentSnapshot format];
  value = [format value];

  if (!value)
  {
    return @"zip";
  }

  settings2 = [(HMDAccessoryDiagnosticsSession *)self settings];
  currentSnapshot2 = [settings2 currentSnapshot];
  format2 = [currentSnapshot2 format];
  value2 = [format2 value];

  if (value2 == 1)
  {
    return @"txt";
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDAccessoryDiagnosticsSession;
  [(HMDAccessoryDiagnosticsSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)hapAccessory
{
  accessory = [(HMDAccessoryDiagnosticsSessionInternal *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)shutDown
{
  v26 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDiagnosticsSessionInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Shutting down", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  dataStream = [(HMDAccessoryDiagnosticsSession *)selfCopy dataStream];
  [dataStream shutDown];

  [(HMDAccessoryDiagnosticsSession *)selfCopy setDataStream:0];
  pendingCompletionHandler = [(HMDAccessoryDiagnosticsSession *)selfCopy pendingCompletionHandler];

  if (pendingCompletionHandler)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [(HMDAccessoryDiagnosticsSession *)selfCopy _callCompletionHandlerWithError:v10];
  }

  [(HMDAccessoryDiagnosticsSessionInternal *)selfCopy setFilePath:0];
  fileHandle = [(HMDAccessoryDiagnosticsSession *)selfCopy fileHandle];
  v19 = 0;
  [fileHandle closeAndReturnError:&v19];
  v12 = v19;

  [(HMDAccessoryDiagnosticsSession *)selfCopy setFileHandle:0];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      accessory = [(HMDAccessoryDiagnosticsSessionInternal *)v14 accessory];
      *buf = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = accessory;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to close file for accessory:%@ with error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDAccessoryDiagnosticsSession;
  attributeDescriptions = [(HMDAccessoryDiagnosticsSessionInternal *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDiagnosticsSession *)self readyForDataTransfer];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"readyForDataTransfer" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  urlParameters = [(HMDAccessoryDiagnosticsSession *)self urlParameters];
  v9 = [v7 initWithName:@"urlParameters" value:urlParameters];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDAccessoryDiagnosticsSession)initWithAccessory:(id)accessory settings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = HMDAccessoryDiagnosticsSession;
  v8 = [(HMDAccessoryDiagnosticsSessionInternal *)&v11 initWithAccessory:accessory];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settings, settings);
  }

  return v9;
}

@end