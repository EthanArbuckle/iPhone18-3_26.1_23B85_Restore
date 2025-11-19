@interface HMDSiriEndpointEnablementLogEventFactory
+ (id)logCategory;
- (HMDHouseholdMetricsDataSource)dataSource;
- (HMDSiriEndpointEnablementLogEventFactory)initWithDataSource:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
@end

@implementation HMDSiriEndpointEnablementLogEventFactory

- (HMDHouseholdMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          v16 = [v15 numCapableSiriEndpointAccessories];
          if (v10 <= v16)
          {
            v10 = v16;
          }

          v17 = [v15 numEnabledSiriEndpointAccessories];
          if (v9 <= v17)
          {
            v9 = v17;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v18 = [[HMDSiriEndpointEnablementLogEvent alloc] initWithHomeUUID:v6 numCapableSiriEndpoints:v10 numEnabledSiriEndpoints:v9];
  v26 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)logEventsFromDictionary:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[HMDSiriEndpointEnablementLogEvent alloc] initWithDictionary:v3];

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

    v8 = [v7 serializedMetric];
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@We are trying to serialize %lu HMDSiriEndpointEnablementLogEvent objects, which is impossible", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
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
  v8 = [(HMDSiriEndpointEnablementLogEventFactory *)self dataSource];
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
          v22 = [[HMDSiriEndpointEnablementLogEvent alloc] initWithConfigurationDataSource:v14];
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

- (HMDSiriEndpointEnablementLogEventFactory)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDSiriEndpointEnablementLogEventFactory;
  v5 = [(HMDSiriEndpointEnablementLogEventFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_195526 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_195526, &__block_literal_global_195527);
  }

  v3 = logCategory__hmf_once_v7_195528;

  return v3;
}

uint64_t __55__HMDSiriEndpointEnablementLogEventFactory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_195528;
  logCategory__hmf_once_v7_195528 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end