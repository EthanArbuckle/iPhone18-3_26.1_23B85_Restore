@interface HMDCameraClipOperation
+ (id)logCategory;
+ (id)shortDescription;
+ (unint64_t)cameraClipOperationType;
- (HMDCameraClipOperation)initWithClipModelID:(id)d localZone:(id)zone;
- (HMDCameraClipOperation)initWithClipModelID:(id)d localZone:(id)zone dataSource:(id)source;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (double)executionDuration;
- (double)queuedDuration;
- (id)fetchClipModel;
- (id)updateClipModel:(id)model;
- (void)_markEndDateAndSubmitUploadOperationEvent;
- (void)cancelWithError:(id)error;
- (void)finish;
- (void)main;
@end

@implementation HMDCameraClipOperation

- (NSArray)attributeDescriptions
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setMinimumFractionDigits:3];
  [v3 setMaximumFractionDigits:3];
  [v3 setNotANumberSymbol:@"0.000"];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  logIdentifier = [(HMDCameraClipOperation *)self logIdentifier];
  v22 = [v4 initWithName:@"ID" value:logIdentifier];
  v24[0] = v22;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  creationDate = [(HMDCameraClipOperation *)self creationDate];
  v7 = [v5 initWithName:@"Created" value:creationDate];
  v24[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  [(HMDCameraClipOperation *)self queuedDuration];
  v10 = [v9 numberWithDouble:?];
  v11 = [v8 initWithName:@"Queued Duration" value:v10 options:0 formatter:v3];
  v24[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMFOperation *)self isExecuting];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"Executing" value:v13];
  v24[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = MEMORY[0x277CCABB0];
  [(HMDCameraClipOperation *)self executionDuration];
  v17 = [v16 numberWithDouble:?];
  v18 = [v15 initWithName:@"Execution Duration" value:v17 options:0 formatter:v3];
  v24[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)_markEndDateAndSubmitUploadOperationEvent
{
  endDate = [(HMDCameraClipOperation *)self endDate];

  if (!endDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraClipOperation *)self setEndDate:date];
  }

  [(HMDCameraClipOperation *)self executionDuration];
  v6 = v5;
  uploadOperationEvent = [(HMDCameraClipOperation *)self uploadOperationEvent];
  [uploadOperationEvent setRunTime:v6];

  error = [(HMFOperation *)self error];
  uploadOperationEvent2 = [(HMDCameraClipOperation *)self uploadOperationEvent];
  [uploadOperationEvent2 setError:error];

  dataSource = [(HMDCameraClipOperation *)self dataSource];
  uploadOperationEvent3 = [(HMDCameraClipOperation *)self uploadOperationEvent];
  [dataSource submitOperationEvent:uploadOperationEvent3];
}

- (double)executionDuration
{
  startDate = [(HMDCameraClipOperation *)self startDate];
  if (startDate)
  {
    endDate = [(HMDCameraClipOperation *)self endDate];
    v5 = endDate;
    if (endDate)
    {
      date = endDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v8 = date;

    [v8 timeIntervalSinceDate:startDate];
    v7 = v9;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)updateClipModel:(id)model
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  videoStreamingAsset = [modelCopy videoStreamingAsset];

  if (videoStreamingAsset)
  {
    v6 = objc_alloc(MEMORY[0x277D17108]);
    shortDescription = [(HMDCameraClipOperation *)self shortDescription];
    v8 = [v6 initWithLabel:shortDescription];

    [v8 setDisallowsCellularAccessForMirrorOutput:1];
    [v8 setQualityOfService:-1];
    localZone = [(HMDCameraClipOperation *)self localZone];
    v10 = [MEMORY[0x277CBEB98] setWithObject:modelCopy];
    v11 = [localZone addModels:v10 options:v8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [modelCopy debugDescription];
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Aborting save of clip model because no video streaming asset was found: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v11 = [v17 futureWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)fetchClipModel
{
  v25 = *MEMORY[0x277D85DE8];
  localZone = [(HMDCameraClipOperation *)self localZone];
  clipModelID = [(HMDCameraClipOperation *)self clipModelID];
  v18 = 0;
  v5 = [localZone fetchModelWithModelID:clipModelID ofType:objc_opt_class() error:&v18];
  v6 = v18;

  if (v5)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v5];
LABEL_7:
    v14 = v7;
    goto LABEL_8;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    clipModelID2 = [(HMDCameraClipOperation *)selfCopy clipModelID];
    *buf = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = clipModelID2;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local clip model with ID %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = MEMORY[0x277D2C900];
  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithError:v6];
    goto LABEL_7;
  }

  v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  v14 = [v13 futureWithError:v17];

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)cancelWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = HMDCameraClipOperation;
  [(HMFOperation *)&v11 cancelWithError:errorCopy];
  [(HMDCameraClipOperation *)self _markEndDateAndSubmitUploadOperationEvent];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMDCameraClipOperation *)selfCopy executionDuration];
    *buf = 138543618;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Operation canceled after %.2fs", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)finish
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HMDCameraClipOperation;
  [(HMFOperation *)&v9 finish];
  [(HMDCameraClipOperation *)self _markEndDateAndSubmitUploadOperationEvent];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMDCameraClipOperation *)selfCopy executionDuration];
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Operation finished in %.2fs", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  startDate = [(HMDCameraClipOperation *)self startDate];

  if (!startDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraClipOperation *)self setStartDate:date];
  }
}

- (double)queuedDuration
{
  startDate = [(HMDCameraClipOperation *)self startDate];
  v4 = startDate;
  if (startDate)
  {
    date = startDate;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v6 = date;

  creationDate = [(HMDCameraClipOperation *)self creationDate];
  [v6 timeIntervalSinceDate:creationDate];
  v9 = v8;

  return v9;
}

- (HMDCameraClipOperation)initWithClipModelID:(id)d localZone:(id)zone dataSource:(id)source
{
  dCopy = d;
  zoneCopy = zone;
  sourceCopy = source;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!zoneCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_9:
    v29 = _HMFPreconditionFailure();
    return [(HMDCameraClipOperation *)v29 initWithClipModelID:v30 localZone:v31, v32];
  }

  [sourceCopy operationTimeout];
  v35.receiver = self;
  v35.super_class = HMDCameraClipOperation;
  v13 = [(HMFOperation *)&v35 initWithTimeout:?];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_clipModelID, d);
    objc_storeStrong(&v14->_localZone, zone);
    objc_storeStrong(&v14->_dataSource, source);
    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v14->_creationDate;
    v14->_creationDate = date;

    v17 = [[HMDCameraRecordingUploadOperationEvent alloc] initWithClipModelID:dCopy operation:v14];
    uploadOperationEvent = v14->_uploadOperationEvent;
    v14->_uploadOperationEvent = v17;

    v33 = MEMORY[0x277CCACA8];
    name = [(HMDCameraClipOperation *)v14 name];
    v19 = [name componentsSeparatedByString:@"-"];
    lastObject = [v19 lastObject];
    clipModelID = [(HMDCameraClipOperation *)v14 clipModelID];
    [clipModelID UUIDString];
    v23 = v22 = zoneCopy;
    v24 = [v23 componentsSeparatedByString:@"-"];
    lastObject2 = [v24 lastObject];
    v26 = [v33 stringWithFormat:@"%@/%@", lastObject, lastObject2];
    logIdentifier = v14->_logIdentifier;
    v14->_logIdentifier = v26;

    zoneCopy = v22;
  }

  return v14;
}

- (HMDCameraClipOperation)initWithClipModelID:(id)d localZone:(id)zone
{
  zoneCopy = zone;
  dCopy = d;
  v8 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v9 = [(HMDCameraClipOperation *)self initWithClipModelID:dCopy localZone:zoneCopy dataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_48800 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_48800, &__block_literal_global_48801);
  }

  v3 = logCategory__hmf_once_v5_48802;

  return v3;
}

void __37__HMDCameraClipOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_48802;
  logCategory__hmf_once_v5_48802 = v1;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (unint64_t)cameraClipOperationType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end