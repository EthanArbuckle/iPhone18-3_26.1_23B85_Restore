@interface HMMTRRegulatoryInfo
+ (id)logCategory;
- (id)countryCode;
- (id)iso3166_1FromISO3166_2CountryCode:(id)a3;
@end

@implementation HMMTRRegulatoryInfo

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_1442 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_1442, &__block_literal_global_1443);
  }

  v3 = logCategory__hmf_once_v4_1444;

  return v3;
}

uint64_t __34__HMMTRRegulatoryInfo_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v4_1444 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (id)iso3166_1FromISO3166_2CountryCode:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] < 2)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_8;
  }

  if ([v4 length] == 2)
  {
    v6 = v4;
  }

  else
  {
    if ([v4 characterAtIndex:2] != 45)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v12;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Malformatted ISO-3166-2 country code: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_2;
    }

    v6 = [v4 substringToIndex:2];
  }

  v5 = v6;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)countryCode
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D443A8] currentEstimates];
  if (![v3 count])
  {
    v4 = [MEMORY[0x277D443A8] lastKnownEstimates];

    v3 = v4;
  }

  v5 = [v3 count];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v3 objectAtIndexedSubscript:0];
      v12 = [v11 countryCode];
      v19 = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Estimated country code: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [v3 objectAtIndexedSubscript:0];
    v14 = [v13 countryCode];
    v15 = [(HMMTRRegulatoryInfo *)v7 iso3166_1FromISO3166_2CountryCode:v14];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@No RDEstimate available", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

@end