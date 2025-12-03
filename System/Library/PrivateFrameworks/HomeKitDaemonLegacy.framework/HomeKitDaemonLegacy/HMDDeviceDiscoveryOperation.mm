@interface HMDDeviceDiscoveryOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDDeviceDiscoveryOperation)initWithAccount:(id)account service:(id)service timeout:(double)timeout;
- (HMDDeviceDiscoveryOperation)initWithAccount:(id)account timeout:(double)timeout;
- (NSSet)devices;
- (void)cancelWithError:(id)error;
- (void)main;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)setQualityOfService:(int64_t)service;
@end

@implementation HMDDeviceDiscoveryOperation

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v43 = dCopy;
  v14 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
  accountHandle = [v14 accountHandle];
  v15 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
  if (v15)
  {
    context = [(HMDDeviceDiscoveryOperation *)self account];
    dCopy = [context identifier];
    if (([v15 isEqual:dCopy] & 1) == 0)
    {

LABEL_14:
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        shortDescription = [v14 shortDescription];
        *buf = 138543618;
        v47 = v31;
        v48 = 2112;
        v49 = shortDescription;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring message from: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_24;
    }
  }

  account = [(HMDDeviceDiscoveryOperation *)self account];
  handles = [account handles];
  v18 = [handles containsObject:accountHandle];

  if (v15)
  {
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  message = [(HMDIDSSendMessageOperation *)self->_operation message];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = message;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:messageCopy error:0];
  transactionIdentifier = [v22 transactionIdentifier];
  transactionIdentifier2 = [v21 transactionIdentifier];
  v25 = HMFEqualObjects();

  if (v25)
  {
    v26 = +[HMDAccountRegistry sharedRegistry];
    v27 = [v26 deviceForHandle:v14];

    if (v27)
    {
      os_unfair_lock_lock_with_options();
      if (([(NSMutableSet *)self->_devices containsObject:v27]& 1) != 0)
      {
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        context = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          [v27 shortDescription];
          *buf = 138543618;
          v47 = v38;
          v49 = v48 = 2112;
          v37 = v49;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Discovered device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [(NSMutableSet *)self->_devices addObject:v27];
        os_unfair_lock_unlock(&self->_lock);
        discoveryBlock = [(HMDDeviceDiscoveryOperation *)selfCopy2 discoveryBlock];
        v35 = discoveryBlock;
        if (discoveryBlock)
        {
          (*(discoveryBlock + 16))(discoveryBlock, v27);
        }
      }
    }
  }

LABEL_24:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v40 = *MEMORY[0x277D85DE8];
  account = [(HMDDeviceDiscoveryOperation *)self account];
  handles = [account handles];
  firstObject = [handles firstObject];

  if (firstObject)
  {
    v5 = [HMDRemoteAccountMessageDestination alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v7 = [(HMDRemoteAccountMessageDestination *)v5 initWithTarget:uUID handle:firstObject multicast:1];

    v28 = v7;
    v8 = [[HMDRemoteMessage alloc] initWithName:@"kElectDeviceForIDSSessionKey" qualityOfService:[(HMDDeviceDiscoveryOperation *)self qualityOfService] destination:v7 payload:0];
    [(HMDRemoteMessage *)v8 setType:0];
    v27 = v8;
    v9 = [[HMDIDSSendMessageOperation alloc] initWithMessage:v8 service:self->_service];
    operation = self->_operation;
    self->_operation = v9;

    [(HMFOperation *)self->_operation setQualityOfService:[(HMDDeviceDiscoveryOperation *)self qualityOfService]];
    [(HMDIDSService *)self->_service addDelegate:self queue:self->_queue];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(HMDAccount *)self->_account devices];
    v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v18;
            v38 = 2112;
            v39 = v14;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Adding known device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          os_unfair_lock_lock_with_options();
          [(NSMutableSet *)selfCopy->_devices addObject:v14];
          os_unfair_lock_unlock(&selfCopy->_lock);
          discoveryBlock = [(HMDDeviceDiscoveryOperation *)selfCopy discoveryBlock];
          v20 = discoveryBlock;
          if (discoveryBlock)
          {
            (*(discoveryBlock + 16))(discoveryBlock, v14);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    [(HMFOperation *)self->_operation start];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      account2 = [(HMDDeviceDiscoveryOperation *)selfCopy2 account];
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = account2;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot discover devices for account without any handles: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDDeviceDiscoveryOperation *)selfCopy2 cancelWithError:v28];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D0F1A0]])
  {
    code = [errorCopy code];

    if (code == 13)
    {
      [(HMFOperation *)self finish];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7.receiver = self;
  v7.super_class = HMDDeviceDiscoveryOperation;
  [(HMFOperation *)&v7 cancel];
LABEL_6:
  if ([(HMFOperation *)self->_operation isExecuting])
  {
    [(HMFOperation *)self->_operation cancel];
  }
}

- (void)setQualityOfService:(int64_t)service
{
  v7.receiver = self;
  v7.super_class = HMDDeviceDiscoveryOperation;
  [(HMFOperation *)&v7 setQualityOfService:?];
  queue = self->_queue;
  v6 = dispatch_get_global_queue(service, 0);
  dispatch_set_target_queue(queue, v6);
}

- (NSSet)devices
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_devices copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDDeviceDiscoveryOperation)initWithAccount:(id)account service:(id)service timeout:(double)timeout
{
  accountCopy = account;
  serviceCopy = service;
  if (timeout <= 0.0)
  {
    [objc_opt_class() timeout];
    timeout = v11;
  }

  v19.receiver = self;
  v19.super_class = HMDDeviceDiscoveryOperation;
  v12 = [(HMFOperation *)&v19 initWithTimeout:timeout];
  if (v12)
  {
    v13 = HMDispatchQueueNameString();
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v12->_service, service);
    v16 = [MEMORY[0x277CBEB58] set];
    devices = v12->_devices;
    v12->_devices = v16;
  }

  return v12;
}

- (HMDDeviceDiscoveryOperation)initWithAccount:(id)account timeout:(double)timeout
{
  accountCopy = account;
  v7 = +[HMDIDSServiceManager sharedManager];
  service = [v7 service];
  v9 = [(HMDDeviceDiscoveryOperation *)self initWithAccount:accountCopy service:service timeout:timeout];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_31138 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_31138, &__block_literal_global_31139);
  }

  v3 = logCategory__hmf_once_v5_31140;

  return v3;
}

uint64_t __42__HMDDeviceDiscoveryOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_31140;
  logCategory__hmf_once_v5_31140 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (double)timeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"deviceDiscoveryTimeout"];

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