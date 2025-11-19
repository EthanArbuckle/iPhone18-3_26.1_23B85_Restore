@interface HMDSiriEndpointEnablementLogEvent
+ (id)logCategory;
- (HMDSiriEndpointEnablementLogEvent)initWithConfigurationDataSource:(id)a3;
- (HMDSiriEndpointEnablementLogEvent)initWithDictionary:(id)a3;
- (HMDSiriEndpointEnablementLogEvent)initWithHomeUUID:(id)a3 numCapableSiriEndpoints:(unint64_t)a4 numEnabledSiriEndpoints:(unint64_t)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedMetric;
@end

@implementation HMDSiriEndpointEnablementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"numCapableSiriEndpointAccessories";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numCapableSiriEndpointAccessories](self, "numCapableSiriEndpointAccessories")}];
  v8[1] = @"numEnabledSiriEndpointAccessories";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numEnabledSiriEndpointAccessories](self, "numEnabledSiriEndpointAccessories")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)serializedMetric
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"homeUUID";
  v3 = [(HMMHomeLogEvent *)self homeUUIDString];
  v10[0] = v3;
  v9[1] = @"numCapableEndpoints";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numCapableSiriEndpointAccessories](self, "numCapableSiriEndpointAccessories")}];
  v10[1] = v4;
  v9[2] = @"numEnabledEndpoints";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSiriEndpointEnablementLogEvent numEnabledSiriEndpointAccessories](self, "numEnabledSiriEndpointAccessories")}];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDSiriEndpointEnablementLogEvent)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"homeUUID"];
  v6 = [v4 objectForKeyedSubscript:@"numCapableEndpoints"];
  v7 = [v4 objectForKeyedSubscript:@"numEnabledEndpoints"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = -[HMDSiriEndpointEnablementLogEvent initWithHomeUUID:numCapableSiriEndpoints:numEnabledSiriEndpoints:](self, "initWithHomeUUID:numCapableSiriEndpoints:numEnabledSiriEndpoints:", v5, [v6 unsignedIntValue], objc_msgSend(v7, "unsignedIntValue"));
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not init HMDSiriEndpointEnablementLogEvent with dictionary %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HMDSiriEndpointEnablementLogEvent)initWithHomeUUID:(id)a3 numCapableSiriEndpoints:(unint64_t)a4 numEnabledSiriEndpoints:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = HMDSiriEndpointEnablementLogEvent;
  result = [(HMMHomeLogEvent *)&v8 initWithHomeUUID:a3];
  if (result)
  {
    result->_numCapableSiriEndpointAccessories = a4;
    result->_numEnabledSiriEndpointAccessories = a5;
  }

  return result;
}

- (HMDSiriEndpointEnablementLogEvent)initWithConfigurationDataSource:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = a3;
  v3 = [v22 accessories];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = 0;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 hostAccessory];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0 || !v12)
          {
            v14 = [v11 hasSiriEndpointService];
            v15 = [v11 siriEndpointProfile];
            v16 = v15;
            if (v15 && ([v15 siriTouchToUse] == 1 || objc_msgSend(v16, "siriListening") == 1))
            {
              ++v23;
            }

            v6 += v14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v23 = 0;
    v6 = 0;
  }

  v17 = [v22 uuid];
  v18 = [(HMDSiriEndpointEnablementLogEvent *)self initWithHomeUUID:v17 numCapableSiriEndpoints:v6 numEnabledSiriEndpoints:v23];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_286188 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_286188, &__block_literal_global_63_286189);
  }

  v3 = logCategory__hmf_once_v12_286190;

  return v3;
}

void __48__HMDSiriEndpointEnablementLogEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_286190;
  logCategory__hmf_once_v12_286190 = v1;
}

@end