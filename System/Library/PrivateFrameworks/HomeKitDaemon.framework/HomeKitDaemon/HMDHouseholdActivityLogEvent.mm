@interface HMDHouseholdActivityLogEvent
+ (id)coalescedEventFromHouseholdActivityLogEvents:(id)a3 homeUUID:(id)a4 contributors:(id)a5;
+ (id)logCategory;
- (HMDHouseholdActivityLogEvent)initWithDictionary:(id)a3 contributors:(id)a4;
- (HMDHouseholdActivityLogEvent)initWithHomeUUID:(id)a3 contributors:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initPopulatedFromDate:(id)a3 homeUUID:(id)a4 contributors:(id)a5;
- (id)serializedMetric;
@end

@implementation HMDHouseholdActivityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HMDHouseholdActivityLogEvent *)self contributors];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * i) contributeLogEvent:self toCoreAnalyticsEvent:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)serializedMetric
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMHomeLogEvent *)self homeUUIDString];
  [v3 setObject:v4 forKeyedSubscript:@"homeUUID"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HMDHouseholdActivityLogEvent *)self contributors];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) contributeLogEvent:self toSerializedMetric:v3];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDHouseholdActivityLogEvent)initWithDictionary:(id)a3 contributors:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"homeUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    v12 = [(HMDHouseholdActivityLogEvent *)self initWithHomeUUID:v11 contributors:v7];
    if (v12)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          v17 = 0;
          do
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v25 + 1) + 8 * v17++) deserializeLogEvent:v12 fromSerializedMetric:{v6, v25}];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v15);
      }
    }

    v18 = v12;

    v19 = v18;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Household activity is missing home UUID. Assuming from original SkyG seed and ignoring.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)initPopulatedFromDate:(id)a3 homeUUID:(id)a4 contributors:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHouseholdActivityLogEvent *)self initWithHomeUUID:v9 contributors:v10];
  if (v11)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v19 + 1) + 8 * v16++) populateLogEvent:v11 forHomeWithUUID:v9 associatedToDate:{v8, v19}];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HMDHouseholdActivityLogEvent)initWithHomeUUID:(id)a3 contributors:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HMDHouseholdActivityLogEvent;
  v7 = [(HMMHomeLogEvent *)&v11 initWithHomeUUID:a3];
  if (v7)
  {
    v8 = [v6 copy];
    contributors = v7->_contributors;
    v7->_contributors = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_19054 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_19054, &__block_literal_global_19055);
  }

  v3 = logCategory__hmf_once_v6_19056;

  return v3;
}

void __43__HMDHouseholdActivityLogEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_19056;
  logCategory__hmf_once_v6_19056 = v1;
}

+ (id)coalescedEventFromHouseholdActivityLogEvents:(id)a3 homeUUID:(id)a4 contributors:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v44 = v8;
  v10 = [[HMDHouseholdActivityLogEvent alloc] initWithHomeUUID:v8 contributors:v9];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v57 + 1) + 8 * i) startCoalescingLogEvent:v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v13);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v16 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v16)
  {
    v18 = v16;
    v43 = *v54;
    *&v17 = 138543874;
    v40 = v17;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v53 + 1) + 8 * j);
        v21 = [v20 homeUUID];
        v22 = [v21 isEqual:v44];

        if ((v22 & 1) == 0)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = a1;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            v27 = [v20 homeUUID];
            *buf = v40;
            v64 = v26;
            v65 = 2112;
            v66 = v27;
            v67 = 2112;
            v68 = v44;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Source household data log event home UUID doesn't match new event's home UUID: %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v23);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v28 = v11;
        v29 = [v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v50;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v50 != v31)
              {
                objc_enumerationMutation(v28);
              }

              [*(*(&v49 + 1) + 8 * k) coalesceLogEvent:v10 fromSourceEvent:v20];
            }

            v30 = [v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
          }

          while (v30);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
    }

    while (v18);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = v11;
  v34 = [v33 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v46;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v45 + 1) + 8 * m) finishCoalescingLogEvent:v10];
      }

      v35 = [v33 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v35);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v10;
}

@end