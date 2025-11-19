@interface HMDAccountHandleResolveOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDAccountHandleResolveOperation)init;
- (HMDAccountHandleResolveOperation)initWithHandle:(id)a3;
- (HMDAccountHandleResolveOperation)initWithQualityOfService:(int64_t)a3 timeout:(double)a4;
- (HMDAccountHandleResolveOperation)initWithTimeout:(double)a3;
- (id)logIdentifier;
- (void)addResolveBlock:(id)a3;
- (void)main;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation HMDAccountHandleResolveOperation

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(HMFOperation *)self isExecuting])
  {
    v17 = [v14 objectForKeyedSubscript:@"kIDSMessageNameKey"];
    if ([v17 isEqualToString:@"kPingInternalRequestKey"])
    {
      v18 = [(HMDAccountHandleResolveOperation *)self messageContext];
      v19 = [v18 userInfo];
      v20 = [v19 hmf_UUIDForKey:@"transactionID"];

      v21 = [v14 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      v53 = v20;
      if ([v21 hmf_isEqualToUUID:v20])
      {
        v51 = [HMDDeviceHandle deviceHandleForDestination:v15];
        v22 = [HMDAccountHandle accountHandleForDestination:v15];
        v50 = v22;
        if (v22)
        {
          v23 = v22;
          v48 = v21;
          v24 = [(HMDAccountHandleResolveOperation *)self handle];
          v25 = [v23 isEqual:v24];

          v26 = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
          if (v25)
          {
            if (v29)
            {
              HMFGetLogIdentifier();
              v31 = v30 = v26;
              *buf = 138543618;
              v55 = v31;
              v56 = 2112;
              v57 = v51;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Received response from: %@", buf, 0x16u);

              v26 = v30;
            }

            objc_autoreleasePoolPop(v26);
            v47 = [HMDAccountIdentifier accountIdentifierForMessageContext:v16];
            v32 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v51 accountHandle:v50 accountIdentifier:v47 deviceVersion:0 pairingIdentityIdentifier:0];
            v33 = +[HMDRemoteAccountManager sharedManager];
            v34 = [v33 accountForSenderContext:v32];

            __callResolveBlocks(v27, v34, 0);
            [(HMFOperation *)v27 finish];
          }

          else
          {
            if (v29)
            {
              HMFGetLogIdentifier();
              v45 = v44 = v26;
              *buf = 138543618;
              v55 = v45;
              v56 = 2112;
              v57 = v51;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Ignoring response from unsupported device: %@", buf, 0x16u);

              v26 = v44;
            }

            objc_autoreleasePoolPop(v26);
          }

          v21 = v48;
        }

        else
        {
          v40 = objc_autoreleasePoolPush();
          v41 = self;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v43 = v49 = v21;
            *buf = 138543362;
            v55 = v43;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Failed to parse sender account handle", buf, 0xCu);

            v21 = v49;
          }

          objc_autoreleasePoolPop(v40);
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v52 = v35;
          v39 = v38 = v21;
          *buf = 138543874;
          v55 = v39;
          v56 = 2112;
          v57 = v38;
          v58 = 2112;
          v59 = v53;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring message with transaction ID: %@, expected %@", buf, 0x20u);

          v21 = v38;
          v35 = v52;
        }

        objc_autoreleasePoolPop(v35);
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v10 = a6;
  v34 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if ([(HMFOperation *)self isExecuting])
  {
    v19 = [(HMDAccountHandleResolveOperation *)self messageContext];
    v20 = [v19 identifier];
    v21 = [v20 hmf_isEqualToUUIDString:v16];

    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      v25 = v24;
      if (v10)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Confirmed resolve sent successfully", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          v30 = 138543618;
          v31 = v27;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message to server with error: %@", &v30, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:0 reason:0 suggestion:0 underlyingError:v17];
        __callResolveBlocks(v23, 0, v28);
        [(HMFOperation *)v23 cancelWithError:v28];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDAccountHandleResolveOperation *)self handle];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  v6 = [v2 stringWithFormat:@"%@", v5];

  return v6;
}

- (void)addResolveBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMFOperation *)self underlyingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDAccountHandleResolveOperation_addResolveBlock___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__HMDAccountHandleResolveOperation_addResolveBlock___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v4 = [*(a1 + 32) resolveBlocks];
    v2 = [*(a1 + 40) copy];
    v3 = _Block_copy(v2);
    [v4 addObject:v3];
  }
}

- (void)main
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMDRemoteAccountMessageDestination alloc];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [(HMDAccountHandleResolveOperation *)v4 handle];
  v10 = [(HMDRemoteAccountMessageDestination *)v7 initWithTarget:v8 handle:v9 multicast:1];

  v11 = [[HMDRemoteMessage alloc] initWithName:@"kPingInternalRequestKey" qualityOfService:-1 destination:v10 payload:0 type:0 timeout:0 secure:0.0];
  v50 = 0;
  v12 = [HMDRemoteMessageSerialization dictionaryForMessage:v11 error:&v50];
  v13 = v50;
  v14 = v13;
  if (v12)
  {
    v46 = v10;
    v47 = v13;
    v53[0] = *MEMORY[0x277D18650];
    v15 = MEMORY[0x277CCABB0];
    +[HMDAccountHandleResolveOperation timeout];
    v16 = [v15 numberWithDouble:?];
    v53[1] = *MEMORY[0x277D185C0];
    v54[0] = v16;
    v54[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

    v18 = [(HMDAccountHandleResolveOperation *)v4 service];
    v19 = MEMORY[0x277CBEB98];
    v20 = [(HMDAccountHandleResolveOperation *)v4 handle];
    v21 = [v20 remoteDestinationString];
    v22 = [v19 setWithObject:v21];
    v48 = 0;
    v49 = 0;
    v23 = [v18 sendMessage:v12 toDestinations:v22 priority:300 options:v17 identifier:&v49 error:&v48];
    v24 = v49;
    v45 = v48;

    v25 = objc_autoreleasePoolPush();
    v26 = v4;
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v23)
    {
      v29 = v24;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v30;
        v57 = 2112;
        v58 = v24;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Started resolve with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v31 = +[HMDMetricsManager sharedLogEventSubmitter];
      v32 = [HMDRemoteMessageLogEvent sentRemoteMessage:v11 transportType:2];
      [v31 submitLogEvent:v32];

      v51 = @"transactionID";
      v33 = [(HMDRemoteMessage *)v11 transactionIdentifier];
      v52 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

      v35 = [HMDIDSMessageContext alloc];
      v36 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
      v10 = v46;
      v37 = [(HMDIDSMessageContext *)v35 initWithIdentifier:v36 destination:v46 userInfo:v34];
      [(HMDAccountHandleResolveOperation *)v26 setMessageContext:v37];

      v38 = v45;
    }

    else
    {
      v38 = v45;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v43;
        v57 = 2112;
        v58 = v45;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:0 reason:0 suggestion:0 underlyingError:v45];
      __callResolveBlocks(v26, 0, v34);
      [(HMFOperation *)v26 cancelWithError:v34];
      v29 = v24;
      v10 = v46;
    }

    v14 = v47;
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v4;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v42;
      v57 = 2112;
      v58 = v14;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:0 suggestion:0 underlyingError:v14];
    __callResolveBlocks(v40, 0, v17);
    [(HMFOperation *)v40 cancelWithError:v17];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (HMDAccountHandleResolveOperation)initWithHandle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v17 = _HMFPreconditionFailure();
    [(HMDAccountHandleResolveOperation *)v17 initWithQualityOfService:v18 timeout:v19, v20];
  }

  v5 = v4;
  +[HMDAccountHandleResolveOperation timeout];
  v21.receiver = self;
  v21.super_class = HMDAccountHandleResolveOperation;
  v6 = [(HMFOperation *)&v21 initWithTimeout:?];
  if (v6)
  {
    v7 = [v5 copy];
    handle = v6->_handle;
    v6->_handle = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    resolveBlocks = v6->_resolveBlocks;
    v6->_resolveBlocks = v9;

    v11 = +[HMDIDSServiceManager sharedManager];
    v12 = [v11 service];
    service = v6->_service;
    v6->_service = v12;

    v14 = v6->_service;
    v15 = [(HMFOperation *)v6 underlyingQueue];
    [(HMDIDSService *)v14 addDelegate:v6 queue:v15];
  }

  return v6;
}

- (HMDAccountHandleResolveOperation)initWithQualityOfService:(int64_t)a3 timeout:(double)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"%@ is unavailable", v7];
  v9 = [v4 exceptionWithName:v5 reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (HMDAccountHandleResolveOperation)initWithTimeout:(double)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (HMDAccountHandleResolveOperation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_52447 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_52447, &__block_literal_global_52448);
  }

  v3 = logCategory__hmf_once_v5_52449;

  return v3;
}

uint64_t __47__HMDAccountHandleResolveOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_52449;
  logCategory__hmf_once_v5_52449 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (double)timeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"accountResolutionTimeout"];

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