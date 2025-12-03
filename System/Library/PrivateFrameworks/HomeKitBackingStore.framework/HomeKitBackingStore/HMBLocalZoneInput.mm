@interface HMBLocalZoneInput
+ (id)logCategory;
- (BOOL)stageRemovalForModelWithID:(id)d error:(id *)error;
- (HMBLocalZoneInput)initWithLocalZone:(id)zone inputBlock:(id)block;
- (id)attributeDescriptions;
- (id)commitWithOptions:(id)options error:(id *)error;
- (id)logIdentifier;
- (void)abort;
- (void)dealloc;
@end

@implementation HMBLocalZoneInput

- (id)attributeDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  localZone = [(HMBLocalZoneInput *)self localZone];
  zoneID = [localZone zoneID];
  name = [zoneID name];
  v7 = [v3 initWithName:@"Zone Name" value:name];
  v16[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  inputBlock = [(HMBLocalZoneInput *)self inputBlock];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(inputBlock, "blockRow")}];
  v12 = [v8 initWithName:@"Block Row" value:v11];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  localZone = [(HMBLocalZoneInput *)self localZone];
  zoneID = [localZone zoneID];
  name = [zoneID name];
  inputBlock = [(HMBLocalZoneInput *)self inputBlock];
  v8 = [v3 stringWithFormat:@"%@/%lu", name, objc_msgSend(inputBlock, "blockRow")];

  return v8;
}

- (void)abort
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Aborting local zone input", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  inputBlock = [(HMBLocalZoneInput *)selfCopy inputBlock];
  abort = [inputBlock abort];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)commitWithOptions:(id)options error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  stagedChangesCount = [(HMBLocalZoneInput *)self stagedChangesCount];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (stagedChangesCount)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v12;
      v38 = 2048;
      stagedChangesCount2 = [(HMBLocalZoneInput *)selfCopy stagedChangesCount];
      v40 = 2112;
      v41 = optionsCopy;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@Committing local zone input containing %lu staged changes with options: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v35 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:&v35];
    v14 = v35;
    if (v13)
    {
      inputBlock = [(HMBLocalZoneInput *)selfCopy inputBlock];
      blockRow = [inputBlock blockRow];

      inputBlock2 = [(HMBLocalZoneInput *)selfCopy inputBlock];
      v18 = [inputBlock2 commit:v13];

      if (v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v22;
          v38 = 2112;
          stagedChangesCount2 = v18;
          _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit local zone input: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        if (error)
        {
          v23 = v18;
          v24 = 0;
          *error = v18;
        }

        else
        {
          v24 = 0;
        }

        v14 = v18;
      }

      else
      {
        localZone = [(HMBLocalZoneInput *)selfCopy localZone];
        v24 = [localZone triggerProcessForBlockRow:blockRow];

        v14 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v30;
        v38 = 2112;
        stagedChangesCount2 = optionsCopy;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive options %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      if (error)
      {
        v31 = v14;
        v24 = 0;
        *error = v14;
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
    v14 = [[HMBProcessingResult alloc] initWithOptions:optionsCopy mirrorOutputResult:0];
    v24 = [v26 futureWithResult:v14];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)stageRemovalForModelWithID:(id)d error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging removal for model with ID: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  inputBlock = [(HMBLocalZoneInput *)selfCopy inputBlock];
  uUID = [MEMORY[0x277CCAD78] UUID];
  data = [uUID data];
  data2 = [dCopy data];
  v15 = [inputBlock updateExternalID:data externalData:0 modelEncoding:0 modelData:data2];

  if (v15)
  {
    if (error)
    {
      v16 = v15;
      *error = v15;
    }
  }

  else
  {
    [(HMBLocalZoneInput *)selfCopy setStagedChangesCount:[(HMBLocalZoneInput *)selfCopy stagedChangesCount]+ 1];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  inputBlock = [(HMBLocalZoneInput *)self inputBlock];
  blockRow = [inputBlock blockRow];

  if (blockRow)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Aborting input block left uncommitted", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    inputBlock2 = [(HMBLocalZoneInput *)selfCopy inputBlock];
    abort = [inputBlock2 abort];
  }

  v12.receiver = self;
  v12.super_class = HMBLocalZoneInput;
  [(HMBLocalZoneInput *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (HMBLocalZoneInput)initWithLocalZone:(id)zone inputBlock:(id)block
{
  zoneCopy = zone;
  blockCopy = block;
  if (!zoneCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = blockCopy;
  if (!blockCopy)
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
    objc_storeStrong(&v10->_localZone, zone);
    objc_storeStrong(&v11->_inputBlock, block);
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