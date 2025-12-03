@interface HMDIDSSendMessageOperation
+ (double)timeout;
+ (id)logCategory;
+ (id)shortDescription;
- (HMDIDSSendMessageOperation)initWithMessage:(id)message;
- (HMDIDSSendMessageOperation)initWithMessage:(id)message service:(id)service;
- (NSArray)attributeDescriptions;
- (NSString)privateDescription;
- (NSString)shortDescription;
- (id)logIdentifier;
- (void)main;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
@end

@implementation HMDIDSSendMessageOperation

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v33 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  if ([(HMFOperation *)self isExecuting]&& [(NSString *)self->_messageIdentifier isEqualToString:identifierCopy])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (successCopy)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully sent message", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [(HMFOperation *)selfCopy finish];
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = errorCopy;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message with error: %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v25 = MEMORY[0x277CCA9B8];
      v26 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:errorCopy];
      v27 = [v25 hmErrorWithCode:54 description:0 reason:0 suggestion:0 underlyingError:v26];

      [(HMFOperation *)selfCopy cancelWithError:v27];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  identifier = [(HMFMessage *)self->_message identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)main
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  message = [(HMDIDSSendMessageOperation *)selfCopy message];
  message2 = [(HMDIDSSendMessageOperation *)selfCopy message];
  isSecureRemote = [message2 isSecureRemote];
  v10 = +[HMDAccountRegistry sharedRegistry];
  v11 = [HMDRemoteMessageTransport remoteMessageFromMessage:message secure:isSecureRemote accountRegistry:v10];

  [v11 setResponseRestriction:1];
  v52 = 0;
  v12 = [HMDRemoteMessageSerialization dictionaryForMessage:v11 isHH2Payload:1 error:&v52];
  v13 = v52;
  v14 = v13;
  if (v12)
  {

    v53 = *MEMORY[0x277D18650];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_timeout];
    v54 = v15;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

    v16 = +[HMDRemoteDestinationFormatter defaultFormatter];
    v17 = [v16 stringForObjectValue:selfCopy->_destination];

    if (v17)
    {
      service = selfCopy->_service;
      v19 = [MEMORY[0x277CBEB98] setWithObject:v17];
      v50 = 0;
      v51 = 0;
      v20 = [(HMDIDSService *)service sendMessage:v12 toDestinations:v19 priority:300 options:v14 identifier:&v51 error:&v50];
      v21 = v51;
      v22 = v50;

      if (v20)
      {
        v23 = +[HMDMetricsManager sharedLogEventSubmitter];
        v24 = [HMDRemoteMessageLogEvent sentRemoteMessage:v11 transportType:2];
        [v23 submitLogEvent:v24];

        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v28;
          v57 = 2112;
          v58 = v21;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Sent message with identifier: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = v21;
        messageIdentifier = v26->_messageIdentifier;
        v26->_messageIdentifier = v29;
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v46;
          v57 = 2112;
          v58 = v22;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v47 = MEMORY[0x277CCA9B8];
        v48 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v22];
        messageIdentifier = [v47 hmErrorWithCode:54 description:0 reason:0 suggestion:0 underlyingError:v48];

        [(HMFOperation *)v44 cancelWithError:messageIdentifier];
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        destination = selfCopy->_destination;
        *buf = 138543618;
        v56 = v38;
        v57 = 2112;
        v58 = destination;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate destination for: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v40 = MEMORY[0x277CCA9B8];
      v41 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3213];
      v42 = [v40 hmInternalErrorWithCode:3203 underlyingError:v41];
      v22 = [v40 hmErrorWithCode:54 description:0 reason:@"Failed to generate destination." suggestion:0 underlyingError:v42];

      [(HMFOperation *)v36 cancelWithError:v22];
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v34;
      v57 = 2112;
      v58 = v14;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:0 suggestion:0 underlyingError:v14];
    [(HMFOperation *)v32 cancelWithError:v17];
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (NSArray)attributeDescriptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Message" value:self->_message options:1 formatter:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  message = [(HMDIDSSendMessageOperation *)self message];
  privateDescription = [message privateDescription];
  v7 = [v3 stringWithFormat:@"%@, Message = %@", shortDescription, privateDescription];

  return v7;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  message = [(HMDIDSSendMessageOperation *)self message];
  identifier = [message identifier];
  v7 = [v3 stringWithFormat:@"%@, Message = %@", shortDescription, identifier];

  return v7;
}

- (HMDIDSSendMessageOperation)initWithMessage:(id)message service:(id)service
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  serviceCopy = service;
  destination = [messageCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      destination2 = [messageCopy destination];
      *buf = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = destination2;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid message destination: %@", buf, 0x16u);

LABEL_16:
    }

LABEL_17:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_18;
  }

  if (!serviceCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid service", buf, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v11 = messageCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [(__objc2_class *)v13 timeout];
  if (v14 <= 0.0)
  {
    v15 = HMDIDSSendMessageOperation;
  }

  else
  {
    v15 = v13;
  }

  [(__objc2_class *)v15 timeout];
  v17 = v16;
  v32.receiver = self;
  v32.super_class = HMDIDSSendMessageOperation;
  v18 = [(HMFOperation *)&v32 initWithTimeout:?];
  v19 = v18;
  if (v18)
  {
    v18->_timeout = v17;
    objc_storeStrong(&v18->_message, message);
    destination3 = [v11 destination];
    destination = v19->_destination;
    v19->_destination = destination3;

    objc_storeStrong(&v19->_service, service);
    service = v19->_service;
    underlyingQueue = [(HMFOperation *)v19 underlyingQueue];
    [(HMDIDSService *)service addDelegate:v19 queue:underlyingQueue];
  }

  selfCopy2 = v19;

  v25 = selfCopy2;
LABEL_18:

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HMDIDSSendMessageOperation)initWithMessage:(id)message
{
  messageCopy = message;
  v5 = +[HMDIDSServiceManager sharedManager];
  service = [v5 service];
  v7 = [(HMDIDSSendMessageOperation *)self initWithMessage:messageCopy service:service];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_67127 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_67127, &__block_literal_global_67128);
  }

  v3 = logCategory__hmf_once_v9_67129;

  return v3;
}

void __41__HMDIDSSendMessageOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_67129;
  logCategory__hmf_once_v9_67129 = v1;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)timeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"defaultIDSMessageTimeout"];

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