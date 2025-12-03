@interface HMMTRUserAuthorizationForPairing
+ (id)logCategory;
- (HMMTRUserAuthorizationForPairing)initWithUiDialogPresenter:(id)presenter;
- (void)requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler;
@end

@implementation HMMTRUserAuthorizationForPairing

- (void)requestUserPermissionForBridgeAccessory:(id)accessory completionHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  category = [accessoryCopy category];
  v9 = [category isEqual:&unk_283EE8538];

  if (v9)
  {
    uiDialogPresenter = [(HMMTRUserAuthorizationForPairing *)self uiDialogPresenter];
    name = [accessoryCopy name];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__HMMTRUserAuthorizationForPairing_requestUserPermissionForBridgeAccessory_completionHandler___block_invoke;
    v12[3] = &unk_2786F08F0;
    v12[4] = self;
    v13 = handlerCopy;
    [uiDialogPresenter requestUserPermissionForBridgeAccessory:name completionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __94__HMMTRUserAuthorizationForPairing_requestUserPermissionForBridgeAccessory_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, got an error response for user permission for bridge accessory. Fail pairing.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:12 userInfo:&unk_283EE9388];
    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = v13;
      v15 = "NO";
      if (a2)
      {
        v15 = "YES";
      }

      v17 = 138543618;
      v18 = v13;
      v19 = 2080;
      v20 = v15;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@User selection for bridge accessory. Should cancel : %s", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (a2)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:12 userInfo:&unk_283EE9360];
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(a1 + 40) + 16);
  }

  v12();

  v16 = *MEMORY[0x277D85DE8];
}

- (HMMTRUserAuthorizationForPairing)initWithUiDialogPresenter:(id)presenter
{
  presenterCopy = presenter;
  v9.receiver = self;
  v9.super_class = HMMTRUserAuthorizationForPairing;
  v6 = [(HMMTRUserAuthorizationForPairing *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiDialogPresenter, presenter);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_7356 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_7356, &__block_literal_global_7357);
  }

  v3 = logCategory__hmf_once_v3_7358;

  return v3;
}

uint64_t __47__HMMTRUserAuthorizationForPairing_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_7358;
  logCategory__hmf_once_v3_7358 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end