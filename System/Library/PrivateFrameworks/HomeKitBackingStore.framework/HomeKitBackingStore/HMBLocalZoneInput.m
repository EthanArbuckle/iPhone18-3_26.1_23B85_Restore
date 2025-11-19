@interface HMBLocalZoneInput
+ (id)logCategory;
- (BOOL)stageRemovalForModelWithID:(id)a3 error:(id *)a4;
- (HMBLocalZoneInput)initWithLocalZone:(id)a3 inputBlock:(id)a4;
- (id)attributeDescriptions;
- (id)commitWithOptions:(id)a3 error:(id *)a4;
- (id)logIdentifier;
- (void)abort;
- (void)dealloc;
@end

@implementation HMBLocalZoneInput

- (id)attributeDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBLocalZoneInput *)self localZone];
  v5 = [v4 zoneID];
  v6 = [v5 name];
  v7 = [v3 initWithName:@"Zone Name" value:v6];
  v16[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  v10 = [(HMBLocalZoneInput *)self inputBlock];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "blockRow")}];
  v12 = [v8 initWithName:@"Block Row" value:v11];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBLocalZoneInput *)self localZone];
  v5 = [v4 zoneID];
  v6 = [v5 name];
  v7 = [(HMBLocalZoneInput *)self inputBlock];
  v8 = [v3 stringWithFormat:@"%@/%lu", v6, objc_msgSend(v7, "blockRow")];

  return v8;
}

- (void)abort
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Aborting local zone input", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMBLocalZoneInput *)v4 inputBlock];
  v8 = [v7 abort];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)commitWithOptions:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMBLocalZoneInput *)self stagedChangesCount];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v12;
      v38 = 2048;
      v39 = [(HMBLocalZoneInput *)v9 stagedChangesCount];
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@Committing local zone input containing %lu staged changes with options: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v35 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v35];
    v14 = v35;
    if (v13)
    {
      v15 = [(HMBLocalZoneInput *)v9 inputBlock];
      v16 = [v15 blockRow];

      v17 = [(HMBLocalZoneInput *)v9 inputBlock];
      v18 = [v17 commit:v13];

      if (v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v9;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v22;
          v38 = 2112;
          v39 = v18;
          _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit local zone input: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        if (a4)
        {
          v23 = v18;
          v24 = 0;
          *a4 = v18;
        }

        else
        {
          v24 = 0;
        }

        v14 = v18;
      }

      else
      {
        v32 = [(HMBLocalZoneInput *)v9 localZone];
        v24 = [v32 triggerProcessForBlockRow:v16];

        v14 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v9;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v30;
        v38 = 2112;
        v39 = v6;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive options %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      if (a4)
      {
        v31 = v14;
        v24 = 0;
        *a4 = v14;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v25;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Skipping local zone input commit with no staged changes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v26 = MEMORY[0x277D2C900];
    v14 = [[HMBProcessingResult alloc] initWithOptions:v6 mirrorOutputResult:0];
    v24 = [v26 futureWithResult:v14];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)stageRemovalForModelWithID:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging removal for model with ID: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMBLocalZoneInput *)v8 inputBlock];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 data];
  v14 = [v6 data];
  v15 = [v11 updateExternalID:v13 externalData:0 modelEncoding:0 modelData:v14];

  if (v15)
  {
    if (a4)
    {
      v16 = v15;
      *a4 = v15;
    }
  }

  else
  {
    [(HMBLocalZoneInput *)v8 setStagedChangesCount:[(HMBLocalZoneInput *)v8 stagedChangesCount]+ 1];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMBLocalZoneInput *)self inputBlock];
  v4 = [v3 blockRow];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Aborting input block left uncommitted", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMBLocalZoneInput *)v6 inputBlock];
    v10 = [v9 abort];
  }

  v12.receiver = self;
  v12.super_class = HMBLocalZoneInput;
  [(HMBLocalZoneInput *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (HMBLocalZoneInput)initWithLocalZone:(id)a3 inputBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMBLocalZoneInput *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMBLocalZoneInput;
  v10 = [(HMBLocalZoneInput *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_localZone, a3);
    objc_storeStrong(&v11->_inputBlock, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_6706 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_6706, &__block_literal_global_6707);
  }

  v3 = logCategory__hmf_once_v8_6708;

  return v3;
}

uint64_t __32__HMBLocalZoneInput_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_6708;
  logCategory__hmf_once_v8_6708 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end