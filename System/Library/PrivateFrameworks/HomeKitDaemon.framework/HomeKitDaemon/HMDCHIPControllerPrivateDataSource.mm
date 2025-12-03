@interface HMDCHIPControllerPrivateDataSource
+ (id)logCategory;
- (BOOL)removeValueForKey:(id)key completion:(id)completion;
- (BOOL)setKeyValuePairs:(id)pairs completion:(id)completion;
- (BOOL)setValue:(id)value forKey:(id)key completion:(id)completion;
- (HMDCHIPControllerPrivateDataSource)initWithHome:(id)home nodeID:(id)d;
- (HMDHome)home;
- (NSNumber)controllerNodeID;
- (id)allKeyValuePairs;
- (id)logIdentifier;
- (id)valueForKey:(id)key;
@end

@implementation HMDCHIPControllerPrivateDataSource

- (NSNumber)controllerNodeID
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerNodeID);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDCHIPControllerPrivateDataSource *)self home];
  v4 = MEMORY[0x277CCACA8];
  logIdentifier = [home logIdentifier];
  fabric = [home fabric];
  fabricID = [fabric fabricID];
  controllerNodeID = [(HMDCHIPControllerPrivateDataSource *)self controllerNodeID];
  v9 = [v4 stringWithFormat:@"%@/%@/%@", logIdentifier, fabricID, controllerNodeID];

  return v9;
}

- (BOOL)setKeyValuePairs:(id)pairs completion:(id)completion
{
  completionCopy = completion;
  pairsCopy = pairs;
  home = [(HMDCHIPControllerPrivateDataSource *)self home];
  controllerPrivateStorage = [home controllerPrivateStorage];
  [controllerPrivateStorage setSDKKeyValuePairs:pairsCopy];

  v10 = _Block_copy(completionCopy);
  if (v10)
  {
    v10[2](v10, 0);
  }

  return 1;
}

- (id)allKeyValuePairs
{
  home = [(HMDCHIPControllerPrivateDataSource *)self home];
  controllerPrivateStorage = [home controllerPrivateStorage];
  allSDKKeyValuePairs = [controllerPrivateStorage allSDKKeyValuePairs];

  return allSDKKeyValuePairs;
}

- (BOOL)removeValueForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  home = [(HMDCHIPControllerPrivateDataSource *)self home];
  controllerPrivateStorage = [home controllerPrivateStorage];
  [controllerPrivateStorage removeValueForSDKKey:keyCopy];

  v10 = _Block_copy(completionCopy);
  if (v10)
  {
    v10[2](v10, 0);
  }

  return 1;
}

- (BOOL)setValue:(id)value forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  valueCopy = value;
  home = [(HMDCHIPControllerPrivateDataSource *)self home];
  controllerPrivateStorage = [home controllerPrivateStorage];
  [controllerPrivateStorage setValue:valueCopy forSDKKey:keyCopy];

  v13 = _Block_copy(completionCopy);
  if (v13)
  {
    v13[2](v13, 0);
  }

  return 1;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  home = [(HMDCHIPControllerPrivateDataSource *)self home];
  controllerPrivateStorage = [home controllerPrivateStorage];
  v7 = [controllerPrivateStorage valueForSDKKey:keyCopy];

  return v7;
}

- (HMDCHIPControllerPrivateDataSource)initWithHome:(id)home nodeID:(id)d
{
  homeCopy = home;
  dCopy = d;
  if (homeCopy)
  {
    v8 = dCopy;
    v14.receiver = self;
    v14.super_class = HMDCHIPControllerPrivateDataSource;
    v9 = [(HMDCHIPControllerPrivateDataSource *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_home, homeCopy);
      objc_storeWeak(&v10->_controllerNodeID, v8);
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HMDCHIPControllerPrivateDataSource *)v12];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_179248 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_179248, &__block_literal_global_179249);
  }

  v3 = logCategory__hmf_once_v4_179250;

  return v3;
}

void __49__HMDCHIPControllerPrivateDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_179250;
  logCategory__hmf_once_v4_179250 = v1;
}

@end