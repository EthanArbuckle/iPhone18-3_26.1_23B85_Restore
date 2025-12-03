@interface HMDAccountHandleResolveOperation
+ (double)timeout;
+ (id)logCategory;
- (HMDAccountHandleResolveOperation)init;
- (HMDAccountHandleResolveOperation)initWithHandle:(id)handle;
- (HMDAccountHandleResolveOperation)initWithQualityOfService:(int64_t)service timeout:(double)timeout;
- (HMDAccountHandleResolveOperation)initWithTimeout:(double)timeout;
- (id)logIdentifier;
- (void)addResolveBlock:(id)block;
- (void)main;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation HMDAccountHandleResolveOperation

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v60 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  if ([(HMFOperation *)self isExecuting])
  {
    v17 = [messageCopy objectForKeyedSubscript:@"kIDSMessageNameKey"];
    if ([v17 isEqualToString:@"kPingInternalRequestKey"])
    {
      messageContext = [(HMDAccountHandleResolveOperation *)self messageContext];
      userInfo = [messageContext userInfo];
      v20 = [userInfo hmf_UUIDForKey:@"transactionID"];

      v21 = [messageCopy hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      v53 = v20;
      if ([v21 hmf_isEqualToUUID:v20])
      {
        v51 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
        v22 = [HMDAccountHandle accountHandleForDestination:dCopy];
        v50 = v22;
        if (v22)
        {
          v23 = v22;
          v48 = v21;
          handle = [(HMDAccountHandleResolveOperation *)self handle];
          v25 = [v23 isEqual:handle];

          v26 = objc_autoreleasePoolPush();
          selfCopy = self;
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
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Received response from: %@", buf, 0x16u);

              v26 = v30;
            }

            objc_autoreleasePoolPop(v26);
            v47 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
            v32 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v51 accountHandle:v50 accountIdentifier:v47 deviceVersion:0 pairingIdentityIdentifier:0];
            v33 = +[HMDRemoteAccountManager sharedManager];
            v34 = [v33 accountForSenderContext:v32];

            __callResolveBlocks(selfCopy, v34, 0);
            [(HMFOperation *)selfCopy finish];
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
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Ignoring response from unsupported device: %@", buf, 0x16u);

              v26 = v44;
            }

            objc_autoreleasePoolPop(v26);
          }

          v21 = v48;
        }

        else
        {
          v40 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v43 = v49 = v21;
            *buf = 138543362;
            v55 = v43;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Failed to parse sender account handle", buf, 0xCu);

            v21 = v49;
          }

          objc_autoreleasePoolPop(v40);
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy3 = self;
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
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring message with transaction ID: %@, expected %@", buf, 0x20u);

          v21 = v38;
          v35 = v52;
        }

        objc_autoreleasePoolPop(v35);
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v34 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  if ([(HMFOperation *)self isExecuting])
  {
    messageContext = [(HMDAccountHandleResolveOperation *)self messageContext];
    identifier = [messageContext identifier];
    v21 = [identifier hmf_isEqualToUUIDString:identifierCopy];

    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      v25 = v24;
      if (successCopy)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v26;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Confirmed resolve sent successfully", &v30, 0xCu);
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
          v33 = errorCopy;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message to server with error: %@", &v30, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:0 reason:0 suggestion:0 underlyingError:errorCopy];
        __callResolveBlocks(selfCopy, 0, v28);
        [(HMFOperation *)selfCopy cancelWithError:v28];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  handle = [(HMDAccountHandleResolveOperation *)self handle];
  identifier = [handle identifier];
  uUIDString = [identifier UUIDString];
  v6 = [v2 stringWithFormat:@"%@", uUIDString];

  return v6;
}

- (void)addResolveBlock:(id)block
{
  blockCopy = block;
  underlyingQueue = [(HMFOperation *)self underlyingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDAccountHandleResolveOperation_addResolveBlock___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(underlyingQueue, v7);
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
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMDRemoteAccountMessageDestination alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  handle = [(HMDAccountHandleResolveOperation *)selfCopy handle];
  v10 = [(HMDRemoteAccountMessageDestination *)v7 initWithTarget:uUID handle:handle multicast:1];

  v11 = [[HMDRemoteMessage alloc] initWithName:@"kPingInternalRequestKey" qualityOfService:-1 destination:v10 payload:0 type:0 timeout:0 secure:0.0];
  [(HMDRemoteMessage *)v11 setResponseRestriction:1];
  v49 = 0;
  v12 = [HMDRemoteMessageSerialization dictionaryForMessage:v11 isHH2Payload:1 error:&v49];
  v13 = v49;
  v14 = v13;
  if (v12)
  {
    v45 = v13;
    v46 = v10;
    v52[0] = *MEMORY[0x277D18650];
    v15 = MEMORY[0x277CCABB0];
    +[HMDAccountHandleResolveOperation timeout];
    v16 = [v15 numberWithDouble:?];
    v52[1] = *MEMORY[0x277D185C0];
    v53[0] = v16;
    v53[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

    service = [(HMDAccountHandleResolveOperation *)selfCopy service];
    v19 = MEMORY[0x277CBEB98];
    handle2 = [(HMDAccountHandleResolveOperation *)selfCopy handle];
    remoteDestinationString = [handle2 remoteDestinationString];
    v22 = [v19 setWithObject:remoteDestinationString];
    v47 = 0;
    v48 = 0;
    v23 = [service sendMessage:v12 toDestinations:v22 priority:300 options:v17 identifier:&v48 error:&v47];
    v24 = v48;
    v44 = v47;

    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v23)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v29;
        v56 = 2112;
        v57 = v24;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Started resolve with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = +[HMDMetricsManager sharedLogEventSubmitter];
      v31 = [HMDRemoteMessageLogEvent sentRemoteMessage:v11 transportType:2];
      [v30 submitLogEvent:v31];

      v50 = @"transactionID";
      transactionIdentifier = [(HMDRemoteMessage *)v11 transactionIdentifier];
      v51 = transactionIdentifier;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

      v34 = [HMDIDSMessageContext alloc];
      v35 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
      v10 = v46;
      v36 = [(HMDIDSMessageContext *)v34 initWithIdentifier:v35 destination:v46 userInfo:v33];
      [(HMDAccountHandleResolveOperation *)v26 setMessageContext:v36];

      v37 = v44;
    }

    else
    {
      v37 = v44;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v42;
        v56 = 2112;
        v57 = v44;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:0 reason:0 suggestion:0 underlyingError:v44];
      __callResolveBlocks(v26, 0, v33);
      [(HMFOperation *)v26 cancelWithError:v33];
      v10 = v46;
    }

    v14 = v45;
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v41;
      v56 = 2112;
      v57 = v14;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:0 suggestion:0 underlyingError:v14];
    __callResolveBlocks(v39, 0, v17);
    [(HMFOperation *)v39 cancelWithError:v17];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (HMDAccountHandleResolveOperation)initWithHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    v17 = _HMFPreconditionFailure();
    [(HMDAccountHandleResolveOperation *)v17 initWithQualityOfService:v18 timeout:v19, v20];
  }

  v5 = handleCopy;
  +[HMDAccountHandleResolveOperation timeout];
  v21.receiver = self;
  v21.super_class = HMDAccountHandleResolveOperation;
  v6 = [(HMFOperation *)&v21 initWithTimeout:?];
  if (v6)
  {
    v7 = [v5 copy];
    handle = v6->_handle;
    v6->_handle = v7;

    array = [MEMORY[0x277CBEB18] array];
    resolveBlocks = v6->_resolveBlocks;
    v6->_resolveBlocks = array;

    v11 = +[HMDIDSServiceManager sharedManager];
    service = [v11 service];
    service = v6->_service;
    v6->_service = service;

    v14 = v6->_service;
    underlyingQueue = [(HMFOperation *)v6 underlyingQueue];
    [(HMDIDSService *)v14 addDelegate:v6 queue:underlyingQueue];
  }

  return v6;
}

- (HMDAccountHandleResolveOperation)initWithQualityOfService:(int64_t)service timeout:(double)timeout
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

- (HMDAccountHandleResolveOperation)initWithTimeout:(double)timeout
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
  if (logCategory__hmf_once_t4_84322 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_84322, &__block_literal_global_84323);
  }

  v3 = logCategory__hmf_once_v5_84324;

  return v3;
}

void __47__HMDAccountHandleResolveOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_84324;
  logCategory__hmf_once_v5_84324 = v1;
}

+ (double)timeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"accountResolutionTimeout"];

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