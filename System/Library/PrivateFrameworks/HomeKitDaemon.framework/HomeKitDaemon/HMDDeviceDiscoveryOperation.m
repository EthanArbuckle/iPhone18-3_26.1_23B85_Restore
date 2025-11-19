@interface HMDDeviceDiscoveryOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDDeviceDiscoveryOperation)initWithAccount:(id)a3 service:(id)a4 timeout:(double)a5;
- (HMDDeviceDiscoveryOperation)initWithAccount:(id)a3 timeout:(double)a4;
- (NSSet)devices;
- (void)cancelWithError:(id)a3;
- (void)main;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setQualityOfService:(int64_t)a3;
@end

@implementation HMDDeviceDiscoveryOperation

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v42 = a4;
  v44 = a5;
  v12 = a6;
  v13 = a7;
  v43 = v12;
  v14 = [HMDDeviceHandle deviceHandleForDestination:v12];
  v45 = [v14 accountHandle];
  v15 = [HMDAccountIdentifier accountIdentifierForMessageContext:v13];
  if (v15)
  {
    a7 = [(HMDDeviceDiscoveryOperation *)self account];
    v12 = [a7 identifier];
    if (([v15 isEqual:v12] & 1) == 0)
    {

LABEL_14:
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v14 shortDescription];
        *buf = 138543618;
        v47 = v31;
        v48 = 2112;
        v49 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring message from: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_24;
    }
  }

  v16 = [(HMDDeviceDiscoveryOperation *)self account];
  v17 = [v16 handles];
  v18 = [v17 containsObject:v45];

  if (v15)
  {
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  v19 = [(HMDIDSSendMessageOperation *)self->_operation message];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v44 isHH2Payload:1 error:0];
  v23 = [v22 transactionIdentifier];
  v24 = [v21 transactionIdentifier];
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
        v40 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          [v27 shortDescription];
          *buf = 138543618;
          v47 = v38;
          v49 = v48 = 2112;
          v37 = v49;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Discovered device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [(NSMutableSet *)self->_devices addObject:v27];
        os_unfair_lock_unlock(&self->_lock);
        v34 = [(HMDDeviceDiscoveryOperation *)v40 discoveryBlock];
        v35 = v34;
        if (v34)
        {
          (*(v34 + 16))(v34, v27);
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
  v3 = [(HMDDeviceDiscoveryOperation *)self account];
  v4 = [v3 handles];
  v29 = [v4 firstObject];

  if (v29)
  {
    v5 = [HMDRemoteAccountMessageDestination alloc];
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [(HMDRemoteAccountMessageDestination *)v5 initWithTarget:v6 handle:v29 multicast:1];

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
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v18;
            v38 = 2112;
            v39 = v14;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Adding known device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          os_unfair_lock_lock_with_options();
          [(NSMutableSet *)v16->_devices addObject:v14];
          os_unfair_lock_unlock(&v16->_lock);
          v19 = [(HMDDeviceDiscoveryOperation *)v16 discoveryBlock];
          v20 = v19;
          if (v19)
          {
            (*(v19 + 16))(v19, v14);
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
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDDeviceDiscoveryOperation *)v22 account];
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot discover devices for account without any handles: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDDeviceDiscoveryOperation *)v22 cancelWithError:v28];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277D0F1A0]])
  {
    v6 = [v4 code];

    if (v6 == 13)
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

- (void)setQualityOfService:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = HMDDeviceDiscoveryOperation;
  [(HMFOperation *)&v7 setQualityOfService:?];
  queue = self->_queue;
  v6 = dispatch_get_global_queue(a3, 0);
  dispatch_set_target_queue(queue, v6);
}

- (NSSet)devices
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_devices copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDDeviceDiscoveryOperation)initWithAccount:(id)a3 service:(id)a4 timeout:(double)a5
{
  v9 = a3;
  v10 = a4;
  if (a5 <= 0.0)
  {
    [objc_opt_class() timeout];
    a5 = v11;
  }

  v19.receiver = self;
  v19.super_class = HMDDeviceDiscoveryOperation;
  v12 = [(HMFOperation *)&v19 initWithTimeout:a5];
  if (v12)
  {
    v13 = HMDispatchQueueNameString();
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_account, a3);
    objc_storeStrong(&v12->_service, a4);
    v16 = [MEMORY[0x277CBEB58] set];
    devices = v12->_devices;
    v12->_devices = v16;
  }

  return v12;
}

- (HMDDeviceDiscoveryOperation)initWithAccount:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = +[HMDIDSServiceManager sharedManager];
  v8 = [v7 service];
  v9 = [(HMDDeviceDiscoveryOperation *)self initWithAccount:v6 service:v8 timeout:a4];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_45480 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_45480, &__block_literal_global_45481);
  }

  v3 = logCategory__hmf_once_v5_45482;

  return v3;
}

void __42__HMDDeviceDiscoveryOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_45482;
  logCategory__hmf_once_v5_45482 = v1;
}

+ (double)timeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"deviceDiscoveryTimeout"];

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