@interface __HMDHomeAdministratorRemoteReceiver
+ (id)logCategory;
- (void)__handleRemoteMessage:(id)a3;
- (void)registerForMessage:(id)a3 policies:(id)a4;
@end

@implementation __HMDHomeAdministratorRemoteReceiver

- (void)__handleRemoteMessage:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 shortDescription];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Locally dispatching remote configuration message: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(__HMDHomeAdministratorReceiver *)v7 handler];
    [v11 dispatchMessage:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessage:(id)a3 policies:(id)a4
{
  v15.receiver = self;
  v15.super_class = __HMDHomeAdministratorRemoteReceiver;
  v6 = a4;
  v7 = a3;
  [(__HMDHomeAdministratorReceiver *)&v15 registerForMessage:v7 policies:v6];
  v8 = [v6 mutableCopy];

  v9 = [v8 indexesOfObjectsPassingTest:&__block_literal_global_181_169736];
  if (v9)
  {
    [v8 removeObjectsAtIndexes:v9];
  }

  v10 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v10 setRoles:4];
  v11 = [v10 copy];
  v12 = [v8 indexOfObjectPassingTest:&__block_literal_global_185_169738];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 addObject:v11];
  }

  else
  {
    [v8 replaceObjectAtIndex:v12 withObject:v11];
  }

  v13 = [(__HMDHomeAdministratorReceiver *)self handler];
  v14 = [v13 dispatcher];
  [v14 registerForMessage:v7 receiver:self policies:v8 selector:sel___handleRemoteMessage_];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_169744 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_169744, &__block_literal_global_188);
  }

  v3 = logCategory__hmf_once_v23_169745;

  return v3;
}

@end