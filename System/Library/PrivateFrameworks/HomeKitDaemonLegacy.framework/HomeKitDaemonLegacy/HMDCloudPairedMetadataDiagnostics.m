@interface HMDCloudPairedMetadataDiagnostics
+ (id)logCategory;
- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)a3 jsonDictionary:(id)a4;
- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)a3 privacyPolicyURL:(id)a4 uploadDestination:(id)a5 consentVersion:(unint64_t)a6 uploadType:(unint64_t)a7;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudPairedMetadataDiagnostics

- (NSDictionary)prettyJSONDictionary
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"privacyPolicyURL";
  v3 = [(HMDCloudPairedMetadataDiagnostics *)self privacyPolicyURL];
  v4 = [v3 description];
  v13[0] = v4;
  v12[1] = @"uploadDestination";
  v5 = [(HMDCloudPairedMetadataDiagnostics *)self uploadDestination];
  v6 = [v5 description];
  v13[1] = v6;
  v12[2] = @"consentVersion";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics consentVersion](self, "consentVersion")}];
  v13[2] = v7;
  v12[3] = @"uploadType";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics uploadType](self, "uploadType")}];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCloudPairedMetadataDiagnostics *)self privacyPolicyURL];
  v5 = [v3 initWithName:@"privacyPolicyURL" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCloudPairedMetadataDiagnostics *)self uploadDestination];
  v8 = [v6 initWithName:@"uploadDestination" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics consentVersion](self, "consentVersion")}];
  v11 = [v9 initWithName:@"consentVersion" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics uploadType](self, "uploadType")}];
  v14 = [v12 initWithName:@"uploadType" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)a3 privacyPolicyURL:(id)a4 uploadDestination:(id)a5 consentVersion:(unint64_t)a6 uploadType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v20.receiver = self;
  v20.super_class = HMDCloudPairedMetadataDiagnostics;
  v16 = [(HMDCloudPairedMetadataDiagnostics *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_accessoryIdentifier, a3);
    objc_storeStrong(&v17->_privacyPolicyURL, a4);
    objc_storeStrong(&v17->_uploadDestination, a5);
    v17->_consentVersion = a6;
    v17->_uploadType = a7;
    v18 = v17;
  }

  return v17;
}

- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)a3 jsonDictionary:(id)a4
{
  *&v39[13] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firmwareVersion];

  if (v8)
  {
    v35 = 0;
    v9 = decodeStringFromJSONDictionary(v7, @"p", 1, &v35);
    v10 = v35;
    if (!v9)
    {
      v24 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v34 = 0;
    v11 = decodeStringFromJSONDictionary(v7, @"d", 1, &v34);
    v12 = v34;
    if (!v11)
    {
      v24 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v33 = 0;
    v13 = decodeUnsignedIntegerFromJSONDictionary(v7, @"c", 1, 0xFFuLL, &v33);
    v14 = v33;
    v15 = v14;
    if (v13)
    {
      v16 = [v14 unsignedIntegerValue];
      v32 = v15;
      v17 = decodeUnsignedIntegerFromJSONDictionary(v7, @"t", 1, 0xFFuLL, &v32);
      v18 = v32;

      if (v17)
      {
        v19 = [v18 unsignedIntegerValue];
        if (!v19)
        {
          v30 = [MEMORY[0x277CBEBC0] URLWithString:v10];
          v31 = [MEMORY[0x277CBEBC0] URLWithString:v12];
          self = [(HMDCloudPairedMetadataDiagnostics *)self initWithAccessoryIdentifier:v6 privacyPolicyURL:v30 uploadDestination:v31 consentVersion:v16 uploadType:0];

          v24 = self;
          goto LABEL_17;
        }

        v20 = v19;
        v21 = objc_autoreleasePoolPush();
        self = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543874;
          v37 = v23;
          v38 = 1024;
          *v39 = v20;
          v39[2] = 2112;
          *&v39[3] = v6;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid uploadType: %u received in JSON for accessory: %@", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v21);
      }

      v24 = 0;
    }

    else
    {
      v24 = 0;
      v18 = v14;
    }

LABEL_17:

    goto LABEL_18;
  }

  v25 = objc_autoreleasePoolPush();
  self = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v27;
    v38 = 2112;
    *v39 = v6;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Version configuration must contain firmware version: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v24 = 0;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_121987 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_121987, &__block_literal_global_121988);
  }

  v3 = logCategory__hmf_once_v1_121989;

  return v3;
}

uint64_t __48__HMDCloudPairedMetadataDiagnostics_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_121989;
  logCategory__hmf_once_v1_121989 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end