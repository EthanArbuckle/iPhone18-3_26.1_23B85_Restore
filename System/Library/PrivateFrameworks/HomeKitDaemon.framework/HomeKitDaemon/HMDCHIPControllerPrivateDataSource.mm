@interface HMDCHIPControllerPrivateDataSource
+ (id)logCategory;
- (BOOL)removeValueForKey:(id)a3 completion:(id)a4;
- (BOOL)setKeyValuePairs:(id)a3 completion:(id)a4;
- (BOOL)setValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (HMDCHIPControllerPrivateDataSource)initWithHome:(id)a3 nodeID:(id)a4;
- (HMDHome)home;
- (NSNumber)controllerNodeID;
- (id)allKeyValuePairs;
- (id)logIdentifier;
- (id)valueForKey:(id)a3;
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
  v3 = [(HMDCHIPControllerPrivateDataSource *)self home];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 logIdentifier];
  v6 = [v3 fabric];
  v7 = [v6 fabricID];
  v8 = [(HMDCHIPControllerPrivateDataSource *)self controllerNodeID];
  v9 = [v4 stringWithFormat:@"%@/%@/%@", v5, v7, v8];

  return v9;
}

- (BOOL)setKeyValuePairs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCHIPControllerPrivateDataSource *)self home];
  v9 = [v8 controllerPrivateStorage];
  [v9 setSDKKeyValuePairs:v7];

  v10 = _Block_copy(v6);
  if (v10)
  {
    v10[2](v10, 0);
  }

  return 1;
}

- (id)allKeyValuePairs
{
  v2 = [(HMDCHIPControllerPrivateDataSource *)self home];
  v3 = [v2 controllerPrivateStorage];
  v4 = [v3 allSDKKeyValuePairs];

  return v4;
}

- (BOOL)removeValueForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCHIPControllerPrivateDataSource *)self home];
  v9 = [v8 controllerPrivateStorage];
  [v9 removeValueForSDKKey:v7];

  v10 = _Block_copy(v6);
  if (v10)
  {
    v10[2](v10, 0);
  }

  return 1;
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDCHIPControllerPrivateDataSource *)self home];
  v12 = [v11 controllerPrivateStorage];
  [v12 setValue:v10 forSDKKey:v9];

  v13 = _Block_copy(v8);
  if (v13)
  {
    v13[2](v13, 0);
  }

  return 1;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMDCHIPControllerPrivateDataSource *)self home];
  v6 = [v5 controllerPrivateStorage];
  v7 = [v6 valueForSDKKey:v4];

  return v7;
}

- (HMDCHIPControllerPrivateDataSource)initWithHome:(id)a3 nodeID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v14.receiver = self;
    v14.super_class = HMDCHIPControllerPrivateDataSource;
    v9 = [(HMDCHIPControllerPrivateDataSource *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeWeak(&v9->_home, v6);
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