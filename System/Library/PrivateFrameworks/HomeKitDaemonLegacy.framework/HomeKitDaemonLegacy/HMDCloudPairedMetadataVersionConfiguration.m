@interface HMDCloudPairedMetadataVersionConfiguration
+ (id)logCategory;
- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)a3 diagnostics:(id)a4;
- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)a3 jsonDictionary:(id)a4;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudPairedMetadataVersionConfiguration

- (NSDictionary)prettyJSONDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"versionConfiguration";
  v2 = [(HMDCloudPairedMetadataVersionConfiguration *)self diagnostics];
  v3 = [v2 description];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCloudPairedMetadataVersionConfiguration *)self accessoryIdentifier];
  v5 = [v3 initWithName:@"accessoryIdentifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCloudPairedMetadataVersionConfiguration *)self diagnostics];
  v8 = [v6 initWithName:@"diagnosticsConfiguration" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)a3 jsonDictionary:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(__CFString *)v6 firmwareVersion];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"d"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      objc_opt_class();
      v12 = objc_opt_isKindOfClass() & 1;
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v12)
      {
        v15 = [[HMDCloudPairedMetadataDiagnostics alloc] initWithAccessoryIdentifier:v6 jsonDictionary:v11];
        if (v15)
        {
          v16 = [(HMDCloudPairedMetadataVersionConfiguration *)self initWithAccessoryIdentifier:v6 diagnostics:v15];
          v17 = v16;
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v16 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            v32 = 138543874;
            v33 = v29;
            v34 = 2112;
            v35 = @"d";
            v36 = 2112;
            v37 = v7;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", &v32, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
          v17 = 0;
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v16 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v32 = 138543874;
          v33 = v26;
          v34 = 2112;
          v35 = @"d";
          v36 = 2112;
          v37 = v7;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", &v32, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
        v17 = 0;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v16 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v32 = 138543874;
        v33 = v23;
        v34 = 2112;
        v35 = @"d";
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@JSON contains no '%@' value: %@", &v32, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v32 = 138543618;
      v33 = v20;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Version configuration must contain firmware version: %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)a3 diagnostics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDCloudPairedMetadataVersionConfiguration;
  v9 = [(HMDCloudPairedMetadataVersionConfiguration *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryIdentifier, a3);
    objc_storeStrong(&v10->_diagnostics, a4);
    v11 = v10;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_136705 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_136705, &__block_literal_global_136706);
  }

  v3 = logCategory__hmf_once_v1_136707;

  return v3;
}

uint64_t __57__HMDCloudPairedMetadataVersionConfiguration_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_136707;
  logCategory__hmf_once_v1_136707 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end