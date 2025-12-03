@interface HMMTRControllerData
+ (id)logCategory;
- (HMMTRControllerData)initWithFabric:(id)fabric;
- (HMMTRDeviceControllerStorageDataSource)privateDataSource;
- (HMMTRFabric)fabric;
- (id)attributeDescriptions;
- (id)logIdentifier;
@end

@implementation HMMTRControllerData

- (HMMTRFabric)fabric
{
  WeakRetained = objc_loadWeakRetained(&self->_fabric);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  nodeID = [(HMMTRControllerData *)self nodeID];
  v6 = [v4 initWithName:@"Controller Node ID" value:nodeID];
  [array addObject:v6];

  v7 = [array copy];

  return v7;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  nodeID = [(HMMTRControllerData *)self nodeID];
  v4 = [v2 stringWithFormat:@"%@", nodeID];

  return v4;
}

- (HMMTRDeviceControllerStorageDataSource)privateDataSource
{
  os_unfair_lock_lock(&self->_lock);
  privateDataSource = self->_privateDataSource;
  if (!privateDataSource)
  {
    fabric = [(HMMTRControllerData *)self fabric];
    delegate = [fabric delegate];
    nodeID = [(HMMTRControllerData *)self nodeID];
    v7 = [delegate privateDataSourceForNode:nodeID];
    v8 = self->_privateDataSource;
    self->_privateDataSource = v7;

    privateDataSource = self->_privateDataSource;
  }

  v9 = privateDataSource;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (HMMTRControllerData)initWithFabric:(id)fabric
{
  fabricCopy = fabric;
  v9.receiver = self;
  v9.super_class = HMMTRControllerData;
  v5 = [(HMMTRControllerData *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_fabric, fabricCopy);
    privateDataSource = v6->_privateDataSource;
    v6->_privateDataSource = 0;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_1987);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

uint64_t __34__HMMTRControllerData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end