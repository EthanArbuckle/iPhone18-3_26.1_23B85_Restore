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
  v94 = *MEMORY[0x277D85DE8];
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
    v91 = v21;
    v92 = 2112;
    v93 = v12;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Message is targeting target: %@", buf, 0x16u);
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
      v91 = v28;
      v92 = 2112;
      v93 = v12;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Message is allowed: %@", buf, 0x16u);
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
      goto LABEL_55;
    }

    v88 = v35;
    remoteSenderContext = [v32 remoteSenderContext];
    mergeID = [remoteSenderContext mergeID];

    v86 = mergeID;
    if (mergeID)
    {
      appleAccountManager = [(HMDRemoteAccountMessageFilter *)selfCopy appleAccountManager];
      account2 = [appleAccountManager account];

      senderCorrelationIdentifier = [account2 senderCorrelationIdentifier];
      if (senderCorrelationIdentifier)
      {
        if ([mergeID isEqualToString:senderCorrelationIdentifier])
        {

          goto LABEL_50;
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
          v55 = v84 = v52;
          *buf = 138543618;
          v91 = v55;
          v92 = 2112;
          v93 = account2;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@MergeID is not set for the current account: %@", buf, 0x16u);

          v52 = v84;
        }

        objc_autoreleasePoolPop(v52);
      }
    }

    systemKeychainStore = [(HMDRemoteAccountMessageFilter *)selfCopy systemKeychainStore];
    v89 = 0;
    v57 = [systemKeychainStore getLocalPairingIdentity:&v89];
    v58 = v89;

    if (!v57)
    {
      v59 = v58;
      v60 = objc_autoreleasePoolPush();
      v61 = selfCopy;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = HMFGetLogIdentifier();
        *buf = 138543618;
        v91 = v63;
        v92 = 2112;
        v93 = v59;
        _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve local pairing identity with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v60);
      v58 = v59;
      v57 = 0;
    }

    remoteSenderContext2 = [v32 remoteSenderContext];
    pairingIdentityIdentifier = [remoteSenderContext2 pairingIdentityIdentifier];

    if (!pairingIdentityIdentifier || ([v57 identifier], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(pairingIdentityIdentifier, "isEqualToString:", v66), v66, !v67))
    {
      remoteUserPairingIdentity = [v32 remoteUserPairingIdentity];
      v69 = remoteUserPairingIdentity;
      if (!remoteUserPairingIdentity || ![remoteUserPairingIdentity isEqual:v57])
      {
        v83 = v58;
        v85 = v57;
        v70 = objc_autoreleasePoolPush();
        v71 = selfCopy;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v82 = v71;
          v74 = v73 = v70;
          *buf = 138543618;
          v91 = v74;
          v92 = 2112;
          v93 = v32;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine if the message was sent from the current account: %@", buf, 0x16u);

          v70 = v73;
          v71 = v82;
        }

        objc_autoreleasePoolPop(v70);
        v45 = 0;
        goto LABEL_54;
      }
    }

LABEL_50:
    v45 = 1;
LABEL_54:
    account = 0;
    v35 = v88;
    goto LABEL_55;
  }

  v87 = v35;
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
      v91 = v44;
      v92 = 2112;
      v93 = v32;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated message sent from current account: %@", buf, 0x16u);
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
      v91 = v51;
      v92 = 2112;
      v93 = v32;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Authenticated message not sent from current account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v45 = 0;
  }

  v35 = v87;
  account = v38;
LABEL_55:

  v75 = objc_autoreleasePoolPush();
  v76 = selfCopy;
  v77 = HMFGetOSLogHandle();
  v78 = v77;
  if (v45)
  {
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      v79 = HMFGetLogIdentifier();
      shortDescription = [v32 shortDescription];
      *buf = 138543618;
      v91 = v79;
      v92 = 2112;
      v93 = shortDescription;
      _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender of message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v75);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    v81 = HMFGetLogIdentifier();
    *buf = 138543618;
    v91 = v81;
    v92 = 2112;
    v93 = v32;
    _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate sender of message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v75);
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
  if (logCategory__hmf_once_t130 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t130, &__block_literal_global_423);
  }

  v3 = logCategory__hmf_once_v131;

  return v3;
}

uint64_t __44__HMDRemoteAccountMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v131;
  logCategory__hmf_once_v131 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end