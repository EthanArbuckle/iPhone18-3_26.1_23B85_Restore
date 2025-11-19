@interface HMDMatterV2KeyCountLogEventFactory
+ (id)logCategory;
- (HMDHouseholdMetricsDataSource)dataSource;
- (HMDMatterV2KeyCountLogEventFactory)initWithDataSource:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
@end

@implementation HMDMatterV2KeyCountLogEventFactory

- (HMDHouseholdMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)serializeLogEvents:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 serializedMetrics];
  }

  else
  {
    if ([v4 count])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2048;
        v18 = [v4 count];
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@We are trying to serialize %lu HMDMatterV2KeyCountLogEvent objects, which is impossible", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)logEventsFromDictionary:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[HMDMatterV2KeyCountLogEvent alloc] initWithDictionary:v3];

  if (v4)
  {
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
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
          v15 = [v14 numV2Keys];
          if (v9 <= v15)
          {
            v9 = v15;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = [[HMDMatterV2KeyCountLogEvent alloc] initWithHomeUUID:v6 numV2Keys:v9];
  v24 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(HMDMatterV2KeyCountLogEventFactory *)self dataSource];
  v9 = [v8 homeDataSources];

  v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 uuid];
        v16 = [v15 isEqual:v6];

        if (v16)
        {
          v22 = [[HMDMatterV2KeyCountLogEvent alloc] initWithConfigurationDataSource:v14];
          v33 = v22;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];

          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No home found with UUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = 0;
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (HMDMatterV2KeyCountLogEventFactory)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDMatterV2KeyCountLogEventFactory;
  v5 = [(HMDMatterV2KeyCountLogEventFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_175593 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_175593, &__block_literal_global_175594);
  }

  v3 = logCategory__hmf_once_v6_175595;

  return v3;
}

uint64_t __49__HMDMatterV2KeyCountLogEventFactory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_175595;
  logCategory__hmf_once_v6_175595 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end