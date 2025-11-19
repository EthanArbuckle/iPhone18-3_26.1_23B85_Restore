@interface NSData(MemoryMapping)
- (id)hmf_copyAsMemoryMappedData;
@end

@implementation NSData(MemoryMapping)

- (id)hmf_copyAsMemoryMappedData
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 temporaryDirectory];

  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 URLByAppendingPathComponent:v5];

  v25 = 0;
  LOBYTE(v4) = [a1 writeToURL:v6 options:1 error:&v25];
  v7 = v25;
  if ((v4 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v27 = v10;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@[NSData] writeToURL failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v24 = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:1 error:&v24];
  v12 = v24;
  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_ERROR, "%{public}@[NSData] dataWithContentsOfURL failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  [v16 removeItemAtURL:v6 error:&v23];
  v17 = v23;

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_ERROR, "%{public}@[NSData] removeItemAtURL failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

@end