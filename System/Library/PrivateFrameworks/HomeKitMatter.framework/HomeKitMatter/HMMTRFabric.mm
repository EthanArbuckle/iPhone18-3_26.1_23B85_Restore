@interface HMMTRFabric
+ (id)logCategory;
- (HMMTRFabric)initWithDelegate:(id)delegate queue:(id)queue;
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
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  fabricID = [(HMMTRFabric *)self fabricID];
  v6 = [v4 initWithName:@"Fabric ID" value:fabricID];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRFabric *)self isSystemCommissionerFabric];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"System Commissioner" value:v8];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  accessControl = [(HMMTRFabric *)self accessControl];
  v12 = [v10 initWithName:@"Access Control" value:accessControl];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  currentDeviceNodeData = [(HMMTRFabric *)self currentDeviceNodeData];
  v15 = [v13 initWithName:@"Controller Data" value:currentDeviceNodeData];
  [array addObject:v15];

  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRFabric *)self isCachedDataValid];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"Is Cached Data Valid" value:v17];
  [array addObject:v18];

  v19 = [array copy];

  return v19;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  fabricID = [(HMMTRFabric *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", fabricID];

  return v4;
}

- (NSUUID)targetFabricUUID
{
  delegate = [(HMMTRFabric *)self delegate];
  targetFabricUUID = [delegate targetFabricUUID];

  return targetFabricUUID;
}

- (HMMTRFabric)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HMMTRFabric;
  v8 = [(HMMTRFabric *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = objc_alloc_init(HMMTRAccessControl);
    accessControl = v9->_accessControl;
    v9->_accessControl = v10;

    [(HMMTRAccessControl *)v9->_accessControl setFabric:v9];
    v12 = [[HMMTRControllerData alloc] initWithFabric:v9];
    currentDeviceNodeData = v9->_currentDeviceNodeData;
    v9->_currentDeviceNodeData = v12;

    objc_storeStrong(&v9->_workQueue, queue);
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