@interface HMDCameraSnapshot
- (HMDCameraSnapshot)initWithFilePath:(id)path videoResolution:(id)resolution error:(id *)error;
- (HMDCameraSnapshot)initWithImageData:(id)data videoResolution:(id)resolution transaction:(id)transaction;
- (void)dealloc;
@end

@implementation HMDCameraSnapshot

- (void)dealloc
{
  imageData = self->_imageData;
  self->_imageData = 0;

  v4.receiver = self;
  v4.super_class = HMDCameraSnapshot;
  [(HMDCameraSnapshot *)&v4 dealloc];
}

- (HMDCameraSnapshot)initWithFilePath:(id)path videoResolution:(id)resolution error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resolutionCopy = resolution;
  v21 = 0;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:0 error:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-data"];
    selfCopy = [(HMDCameraSnapshot *)self initWithImageData:v10 videoResolution:resolutionCopy transaction:v12];

    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = pathCopy;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize HMDCameraSnapshot from file path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v18 = v11;
      v14 = 0;
      *error = v11;
    }

    else
    {
      v14 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDCameraSnapshot)initWithImageData:(id)data videoResolution:(id)resolution transaction:(id)transaction
{
  dataCopy = data;
  resolutionCopy = resolution;
  transactionCopy = transaction;
  v15.receiver = self;
  v15.super_class = HMDCameraSnapshot;
  v12 = [(HMDCameraSnapshot *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageData, data);
    objc_storeStrong(&v13->_videoResolution, resolution);
    objc_storeStrong(&v13->_transaction, transaction);
  }

  return v13;
}

@end