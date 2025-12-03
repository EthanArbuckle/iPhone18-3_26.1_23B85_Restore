@interface HMDHomeAdministratorConfigurationOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)message home:(id)home dispatcher:(id)dispatcher;
- (id)logIdentifier;
- (void)_respondWithError:(id)error payload:(id)payload;
- (void)cancelWithError:(id)error;
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
  message = [(HMDHomeAdministratorConfigurationOperation *)self message];
  identifier = [message identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(HMDHomeAdministratorConfigurationOperation *)self _respondWithError:errorCopy payload:0];
  v5.receiver = self;
  v5.super_class = HMDHomeAdministratorConfigurationOperation;
  [(HMFOperation *)&v5 cancelWithError:errorCopy];
}

- (void)_respondWithError:(id)error payload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  os_unfair_lock_lock_with_options();
  if ([(HMDHomeAdministratorConfigurationOperation *)self isMessageResponseHandled])
  {
    message = 0;
  }

  else
  {
    [(HMDHomeAdministratorConfigurationOperation *)self setMessageResponseHandled:1];
    message = [(HMDHomeAdministratorConfigurationOperation *)self message];
  }

  os_unfair_lock_unlock(&self->_lock);
  [message respondWithPayload:payloadCopy error:errorCopy];
}

- (void)main
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_home);
  primaryResident = [WeakRetained primaryResident];
  if (primaryResident)
  {
    v5 = [(HMFMessage *)self->_message copy];
    v6 = [v5 mutableCopy];

    [v6 setRemote:1];
    [v6 setSecureRemote:1];
    v7 = [HMDRemoteDeviceMessageDestination alloc];
    destination = [(HMFMessage *)self->_message destination];
    target = [destination target];
    device = [primaryResident device];
    v11 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:target device:device];
    [v6 setDestination:v11];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke;
    v24[3] = &unk_279733B98;
    objc_copyWeak(&v25, &location);
    [v6 setResponseHandler:v24];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    dispatcher = [(HMDHomeAdministratorConfigurationOperation *)selfCopy dispatcher];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__HMDHomeAdministratorConfigurationOperation_main__block_invoke_8;
    v22[3] = &unk_279734708;
    objc_copyWeak(&v23, &location);
    [dispatcher sendMessage:v6 completionHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    [(HMDHomeAdministratorConfigurationOperation *)selfCopy2 cancelWithError:v6];
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

- (HMDHomeAdministratorConfigurationOperation)initWithMessage:(id)message home:(id)home dispatcher:(id)dispatcher
{
  messageCopy = message;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  v12 = dispatcherCopy;
  selfCopy = 0;
  if (messageCopy && homeCopy && dispatcherCopy)
  {
    [objc_opt_class() timeout];
    v19.receiver = self;
    v19.super_class = HMDHomeAdministratorConfigurationOperation;
    v14 = [(HMFOperation *)&v19 initWithTimeout:?];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_message, message);
      objc_storeWeak(&v15->_home, homeCopy);
      objc_storeStrong(&v15->_dispatcher, dispatcher);
      responseHandler = [messageCopy responseHandler];
      responseHandler = v15->_responseHandler;
      v15->_responseHandler = responseHandler;

      -[HMFOperation setQualityOfService:](v15, "setQualityOfService:", [messageCopy qualityOfService]);
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"adminConfigurationOperationTimeout"];

  numberValue = [v3 numberValue];

  if (numberValue)
  {
    numberValue2 = [v3 numberValue];
    [numberValue2 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 65.0;
  }

  return v7;
}

@end