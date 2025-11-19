@interface HMDUnifiedLanguageValueListSettingDataProvider
+ (id)logCategory;
+ (id)unifyLanguageValues:(id)a3 withValues:(id)a4;
- (HMDUnifiedLanguageValueListSettingDataProviderDataSource)dataSource;
- (id)dataSourceDataProviders;
- (id)languageValueList;
@end

@implementation HMDUnifiedLanguageValueListSettingDataProvider

- (HMDUnifiedLanguageValueListSettingDataProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)languageValueList
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(HMDUnifiedLanguageValueListSettingDataProvider *)self dataSourceDataProviders];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v12 + 1) + 8 * v7) languageValueList];
        v6 = [HMDUnifiedLanguageValueListSettingDataProvider unifyLanguageValues:v8 withValues:v9];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dataSourceDataProviders
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUnifiedLanguageValueListSettingDataProvider *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dataProvidersForUnifiedLanguageValueListSettingDataProvider:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get host accessories due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x277CBEBF8];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_35588 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_35588, &__block_literal_global_35589);
  }

  v3 = logCategory__hmf_once_v2_35590;

  return v3;
}

uint64_t __61__HMDUnifiedLanguageValueListSettingDataProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_35590;
  logCategory__hmf_once_v2_35590 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)unifyLanguageValues:(id)a3 withValues:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = [v5 setWithArray:a3];
  v8 = [v7 setByAddingObjectsFromArray:v6];

  v9 = [v8 allObjects];

  return v9;
}

@end