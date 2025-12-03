@interface HMDRemoteAccountMessageFilter
+ (id)logCategory;
- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason;
- (HMDRemoteAccountMessageFilter)initWithName:(id)name;
- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages;
- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages appleAccountManager:(id)manager systemKeychainStore:(id)store;
- (id)logIdentifier;
@end

@implementation HMDRemoteAccountMessageFilter

- (id)logIdentifier
{
  target = [(HMDRemoteAccountMessageFilter *)self target];
  v2Target = [target target];
  uUIDString = [v2Target UUIDString];

  return uUIDString;
}

- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason
{
  v90 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  targetCopy = target;
  v10 = messageCopy;
  v11 = v10;
  if (!self || ![v10 isRemote])
  {

    goto LABEL_16;
  }

  v12 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if ([v14 restriction] == 4 || (-[HMDRemoteAccountMessageFilter target](self, "target"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "destination"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, !v17))
  {
LABEL_14:

LABEL_16:
    v29 = 1;
    goto LABEL_17;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v87 = v21;
    v88 = 2112;
    v89 = v12;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Message is targeting target: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  allowedMessages = [(HMDRemoteAccountMessageFilter *)selfCopy allowedMessages];
  name = [v12 name];
  v24 = [allowedMessages containsObject:name];

  if (v24)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v28;
      v88 = 2112;
      v89 = v12;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Message is allowed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    goto LABEL_14;
  }

  v32 = v12;
  destination = [v32 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = destination;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  device = [v35 device];
  account = [device account];

  if (!account)
  {
    if (![v32 isSecureRemote])
    {
      v45 = 0;
      goto LABEL_52;
    }

    v84 = v35;
    remoteSenderContext = [v32 remoteSenderContext];
    mergeID = [remoteSenderContext mergeID];

    v82 = mergeID;
    if (mergeID)
    {
      appleAccountManager = [(HMDRemoteAccountMessageFilter *)selfCopy appleAccountManager];
      account2 = [appleAccountManager account];

      senderCorrelationIdentifier = [account2 senderCorrelationIdentifier];
      if (senderCorrelationIdentifier)
      {
        if ([mergeID isEqualToString:senderCorrelationIdentifier])
        {

          goto LABEL_47;
        }
      }

      else
      {
        v52 = objc_autoreleasePoolPush();
        v53 = selfCopy;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v79 = v52;
          *buf = 138543618;
          v87 = v55;
          v88 = 2112;
          v89 = account2;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@MergeID is not set for the current account: %@", buf, 0x16u);

          v52 = v79;
        }

        objc_autoreleasePoolPop(v52);
      }
    }

    systemKeychainStore = [(HMDRemoteAccountMessageFilter *)selfCopy systemKeychainStore];
    v85 = 0;
    v57 = [systemKeychainStore getLocalPairingIdentity:&v85];
    v58 = v85;

    if (!v57)
    {
      v59 = objc_autoreleasePoolPush();
      v60 = selfCopy;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v62 = v80 = v59;
        *buf = 138543618;
        v87 = v62;
        v88 = 2112;
        v89 = v58;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve local pairing identity with error: %@", buf, 0x16u);

        v59 = v80;
      }

      objc_autoreleasePoolPop(v59);
    }

    remoteSenderContext2 = [v32 remoteSenderContext];
    pairingIdentityIdentifier = [remoteSenderContext2 pairingIdentityIdentifier];

    if (!pairingIdentityIdentifier || ([v57 identifier], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(pairingIdentityIdentifier, "isEqualToString:", v65), v65, !v66))
    {
      v81 = v58;
      v67 = objc_autoreleasePoolPush();
      v68 = selfCopy;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v70 = v78 = v67;
        *buf = 138543618;
        v87 = v70;
        v88 = 2112;
        v89 = v32;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine if the message was sent from the current account: %@", buf, 0x16u);

        v67 = v78;
      }

      objc_autoreleasePoolPop(v67);
      v45 = 0;
      goto LABEL_51;
    }

LABEL_47:
    v45 = 1;
LABEL_51:
    account = 0;
    v35 = v84;
    goto LABEL_52;
  }

  v83 = v35;
  v38 = account;
  isCurrentAccount = [account isCurrentAccount];
  v40 = objc_autoreleasePoolPush();
  v41 = selfCopy;
  v42 = HMFGetOSLogHandle();
  v43 = v42;
  if (isCurrentAccount)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v44;
      v88 = 2112;
      v89 = v32;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated message sent from current account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v45 = 1;
  }

  else
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v51;
      v88 = 2112;
      v89 = v32;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Authenticated message not sent from current account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v45 = 0;
  }

  v35 = v83;
  account = v38;
LABEL_52:

  v71 = objc_autoreleasePoolPush();
  v72 = selfCopy;
  v73 = HMFGetOSLogHandle();
  v74 = v73;
  if (v45)
  {
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v75 = HMFGetLogIdentifier();
      shortDescription = [v32 shortDescription];
      *buf = 138543618;
      v87 = v75;
      v88 = 2112;
      v89 = shortDescription;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender of message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v71);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    v77 = HMFGetLogIdentifier();
    *buf = 138543618;
    v87 = v77;
    v88 = 2112;
    v89 = v32;
    _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate sender of message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v71);
  if (reason)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    *reason = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages appleAccountManager:(id)manager systemKeychainStore:(id)store
{
  targetCopy = target;
  messagesCopy = messages;
  managerCopy = manager;
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = HMDRemoteAccountMessageFilter;
  v15 = [(HMDMessageFilter *)&v19 initWithName:@"RemoteAccount"];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_target, target);
    if (messagesCopy)
    {
      v17 = [messagesCopy copy];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v16->_allowedMessages, v17);
    if (messagesCopy)
    {
    }

    objc_storeStrong(&v16->_appleAccountManager, manager);
    objc_storeStrong(&v16->_systemKeychainStore, store);
  }

  return v16;
}

- (HMDRemoteAccountMessageFilter)initWithTarget:(id)target allowedMessages:(id)messages
{
  messagesCopy = messages;
  targetCopy = target;
  v8 = +[HMDAppleAccountManager sharedManager];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v10 = [(HMDRemoteAccountMessageFilter *)self initWithTarget:targetCopy allowedMessages:messagesCopy appleAccountManager:v8 systemKeychainStore:systemStore];

  return v10;
}

- (HMDRemoteAccountMessageFilter)initWithName:(id)name
{
  nameCopy = name;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_131773 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_131773, &__block_literal_global_118_131774);
  }

  v3 = logCategory__hmf_once_v19_131775;

  return v3;
}

void __44__HMDRemoteAccountMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_131775;
  logCategory__hmf_once_v19_131775 = v1;
}

@end