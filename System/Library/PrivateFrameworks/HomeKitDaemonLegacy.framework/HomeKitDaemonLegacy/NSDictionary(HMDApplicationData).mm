@interface NSDictionary(HMDApplicationData)
- (id)hmd_appDataDictionaryWithError:()HMDApplicationData;
@end

@implementation NSDictionary(HMDApplicationData)

- (id)hmd_appDataDictionaryWithError:()HMDApplicationData
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [self objectForKeyedSubscript:@"kAppDataInformationKey"];
  if (v5)
  {
    v6 = HMFApproximateSizeOfPlistValue();
    if (v6 <= +[HMDApplicationData sizeLimit])
    {
      v11 = v5;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v14 = 138543874;
        v15 = v10;
        v16 = 2048;
        v17 = v6;
        v18 = 2048;
        v19 = +[HMDApplicationData sizeLimit];
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Application data dictionary size %lu exceeds threshold of %lu", &v14, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      if (a3)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
        *a3 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end