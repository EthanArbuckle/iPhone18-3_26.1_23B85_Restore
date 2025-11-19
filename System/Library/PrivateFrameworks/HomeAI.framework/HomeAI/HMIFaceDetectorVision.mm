@interface HMIFaceDetectorVision
+ (id)detectFacesInImageData:(id)a3 error:(id *)a4;
+ (id)detectFacesInPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
+ (void)releaseCachedResources;
@end

@implementation HMIFaceDetectorVision

+ (id)detectFacesInPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CE2C88]);
  v7 = +[HMIPreference sharedInstance];
  v8 = [v7 shouldUseCPUOnlyForVisionFaceDetection];

  if (v8)
  {
    [v6 setUsesCPUOnly:1];
  }

  [v6 setRevision:{+[HMIFaceDetectorVision defaultRevision](HMIFaceDetectorVision, "defaultRevision")}];
  v9 = objc_alloc(MEMORY[0x277CE2D50]);
  v10 = [v9 initWithCVPixelBuffer:a3 options:MEMORY[0x277CBEC10]];
  v18[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v17 = 0;
  v12 = [v10 performRequests:v11 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = [v6 results];
  }

  else
  {
    if (a4)
    {
      v15 = v13;
      *a4 = v13;
    }

    HMIErrorLogC(v13);
    v14 = 0;
  }

  return v14;
}

+ (id)detectFacesInImageData:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE2C88];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = +[HMIPreference sharedInstance];
  v9 = [v8 shouldUseCPUOnlyForVisionFaceDetection];

  if (v9)
  {
    [v7 setUsesCPUOnly:1];
  }

  [v7 setRevision:{+[HMIFaceDetectorVision defaultRevision](HMIFaceDetectorVision, "defaultRevision")}];
  v10 = objc_alloc(MEMORY[0x277CE2D50]);
  v11 = +[HMIVisionSession sharedInstance];
  v12 = [v11 vnSession];
  v13 = [v10 initWithData:v6 options:MEMORY[0x277CBEC10] session:v12];

  v20[0] = v7;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v19 = 0;
  LOBYTE(v12) = [v13 performRequests:v14 error:&v19];
  v15 = v19;

  if (v12)
  {
    v16 = [v7 results];
  }

  else
  {
    if (a4)
    {
      v17 = v15;
      *a4 = v15;
    }

    HMIErrorLogC(v15);
    v16 = 0;
  }

  return v16;
}

+ (void)releaseCachedResources
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a1;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@releaseCachedResources is deprecated and is now a no-op.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

@end