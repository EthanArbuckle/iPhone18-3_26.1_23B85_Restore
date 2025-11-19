@interface HMMTRFabric
+ (id)logCategory;
- (HMMTRFabric)initWithDelegate:(id)a3 queue:(id)a4;
- (HMMTRFabricDelegate)delegate;
- (NSUUID)targetFabricUUID;
- (id)attributeDescriptions;
- (id)logIdentifier;
@end

@implementation HMMTRFabric

- (HMMTRFabricDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMMTRFabric *)self fabricID];
  v6 = [v4 initWithName:@"Fabric ID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRFabric *)self isSystemCommissionerFabric];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"System Commissioner" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMMTRFabric *)self accessControl];
  v12 = [v10 initWithName:@"Access Control" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMMTRFabric *)self currentDeviceNodeData];
  v15 = [v13 initWithName:@"Controller Data" value:v14];
  [v3 addObject:v15];

  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRFabric *)self isCachedDataValid];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"Is Cached Data Valid" value:v17];
  [v3 addObject:v18];

  v19 = [v3 copy];

  return v19;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMMTRFabric *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (NSUUID)targetFabricUUID
{
  v2 = [(HMMTRFabric *)self delegate];
  v3 = [v2 targetFabricUUID];

  return v3;
}

- (HMMTRFabric)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HMMTRFabric;
  v8 = [(HMMTRFabric *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = objc_alloc_init(HMMTRAccessControl);
    accessControl = v9->_accessControl;
    v9->_accessControl = v10;

    [(HMMTRAccessControl *)v9->_accessControl setFabric:v9];
    v12 = [[HMMTRControllerData alloc] initWithFabric:v9];
    currentDeviceNodeData = v9->_currentDeviceNodeData;
    v9->_currentDeviceNodeData = v12;

    objc_storeStrong(&v9->_workQueue, a4);
    v9->_cachedDataValid = 1;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_3073 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_3073, &__block_literal_global_3074);
  }

  v3 = logCategory__hmf_once_v1_3075;

  return v3;
}

uint64_t __26__HMMTRFabric_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1_3075 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end