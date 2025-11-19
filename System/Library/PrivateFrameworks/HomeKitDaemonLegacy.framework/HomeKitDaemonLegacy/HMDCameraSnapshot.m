@interface HMDCameraSnapshot
- (HMDCameraSnapshot)initWithFilePath:(id)a3 videoResolution:(id)a4 error:(id *)a5;
- (HMDCameraSnapshot)initWithImageData:(id)a3 videoResolution:(id)a4 transaction:(id)a5;
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

- (HMDCameraSnapshot)initWithFilePath:(id)a3 videoResolution:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:0 error:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-data"];
    v13 = [(HMDCameraSnapshot *)self initWithImageData:v10 videoResolution:v9 transaction:v12];

    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v13 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize HMDCameraSnapshot from file path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (a5)
    {
      v18 = v11;
      v14 = 0;
      *a5 = v11;
    }

    else
    {
      v14 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDCameraSnapshot)initWithImageData:(id)a3 videoResolution:(id)a4 transaction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCameraSnapshot;
  v12 = [(HMDCameraSnapshot *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageData, a3);
    objc_storeStrong(&v13->_videoResolution, a4);
    objc_storeStrong(&v13->_transaction, a5);
  }

  return v13;
}

@end