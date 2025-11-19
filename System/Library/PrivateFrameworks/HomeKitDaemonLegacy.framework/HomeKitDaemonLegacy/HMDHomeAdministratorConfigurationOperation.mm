@interface HMDHomeAdministratorConfigurationOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)a3 home:(id)a4 dispatcher:(id)a5;
- (id)logIdentifier;
- (void)_respondWithError:(id)a3 payload:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)main;
@end

@implementation HMDHomeAdministratorConfigurationOperation

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeAdministratorConfigurationOperation *)self message];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  [(HMDHomeAdministratorConfigurationOperation *)self _respondWithError:v4 payload:0];
  v5.receiver = self;
  v5.super_class = HMDHomeAdministratorConfigurationOperation;
  [(HMFOperation *)&v5 cancelWithError:v4];
}

- (void)_respondWithError:(id)a3 payload:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if ([(HMDHomeAdministratorConfigurationOperation *)self isMessageResponseHandled])
  {
    v7 = 0;
  }

  else
  {
    [(HMDHomeAdministratorConfigurationOperation *)self setMessageResponseHandled:1];
    v7 = [(HMDHomeAdministratorConfigurationOperation *)self message];
  }

  os_unfair_lock_unlock(&self->_lock);
  [v7 respondWithPayload:v6 error:v8];
}

- (void)main
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v4 = [WeakRetained primaryResident];
  if (v4)
  {
    v5 = [(HMFMessage *)self->_message copy];
    v6 = [v5 mutableCopy];

    [v6 setRemote:1];
    [v6 setSecureRemote:1];
    v7 = [HMDRemoteDeviceMessageDestination alloc];
    v8 = [(HMFMessage *)self->_message destination];
    v9 = [v8 target];
    v10 = [v4 device];
    v11 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:v9 device:v10];
    [v6 setDestination:v11];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke;
    v24[3] = &unk_279733B98;
    objc_copyWeak(&v25, &location);
    [v6 setResponseHandler:v24];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDHomeAdministratorConfigurationOperation *)v13 dispatcher];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_8;
    v22[3] = &unk_279734708;
    objc_copyWeak(&v23, &location);
    [v16 sendMessage:v6 completionHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to forward message to home without a resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:0 reason:@"A home hub is required." suggestion:0];
    [(HMDHomeAdministratorConfigurationOperation *)v18 cancelWithError:v6];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward message with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 cancelWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received confirmation for forwarded message", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v9 finish];
  }

  [v9 _respondWithError:v5 payload:v6];

  v14 = *MEMORY[0x277D85DE8];
}

void __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sendCompletionBlock];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client the send completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v7 setSendCompletionBlock:0];
    (v5)[2](v5, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)a3 home:(id)a4 dispatcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v10 && v11)
  {
    [objc_opt_class() timeout];
    v19.receiver = self;
    v19.super_class = HMDHomeAdministratorConfigurationOperation;
    v14 = [(HMFOperation *)&v19 initWithTimeout:?];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_message, a3);
      objc_storeWeak(&v15->_home, v10);
      objc_storeStrong(&v15->_dispatcher, a5);
      v16 = [v9 responseHandler];
      responseHandler = v15->_responseHandler;
      v15->_responseHandler = v16;

      -[HMFOperation setQualityOfService:](v15, "setQualityOfService:", [v9 qualityOfService]);
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_115517 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_115517, &__block_literal_global_115518);
  }

  v3 = logCategory__hmf_once_v7_115519;

  return v3;
}

uint64_t __57__HMDHomeAdministratorConfigurationOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_115519;
  logCategory__hmf_once_v7_115519 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (double)timeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"adminConfigurationOperationTimeout"];

  v4 = [v3 numberValue];

  if (v4)
  {
    v5 = [v3 numberValue];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 65.0;
  }

  return v7;
}

@end