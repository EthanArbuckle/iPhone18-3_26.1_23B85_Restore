@interface HMDRemoteAccountMessageFilter
+ (id)logCategory;
- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5;
- (HMDRemoteAccountMessageFilter)initWithName:(id)a3;
- (HMDRemoteAccountMessageFilter)initWithTarget:(id)a3 allowedMessages:(id)a4;
- (HMDRemoteAccountMessageFilter)initWithTarget:(id)a3 allowedMessages:(id)a4 appleAccountManager:(id)a5 systemKeychainStore:(id)a6;
- (id)logIdentifier;
@end

@implementation HMDRemoteAccountMessageFilter

- (id)logIdentifier
{
  v2 = [(HMDRemoteAccountMessageFilter *)self target];
  v3 = [v2 target];
  v4 = [v3 UUIDString];

  return v4;
}

- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
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
  v19 = self;
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
  v22 = [(HMDRemoteAccountMessageFilter *)v19 allowedMessages];
  v23 = [v12 name];
  v24 = [v22 containsObject:v23];

  if (v24)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v19;
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
  v33 = [v32 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  v36 = [v35 device];
  v37 = [v36 account];

  if (!v37)
  {
    if (![v32 isSecureRemote])
    {
      v45 = 0;
      goto LABEL_55;
    }

    v88 = v35;
    v46 = [v32 remoteSenderContext];
    v47 = [v46 mergeID];

    v86 = v47;
    if (v47)
    {
      v48 = [(HMDRemoteAccountMessageFilter *)v19 appleAccountManager];
      v49 = [v48 account];

      v50 = [v49 senderCorrelationIdentifier];
      if (v50)
      {
        if ([v47 isEqualToString:v50])
        {

          goto LABEL_50;
        }
      }

      else
      {
        v52 = objc_autoreleasePoolPush();
        v53 = v19;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v84 = v52;
          *buf = 138543618;
          v91 = v55;
          v92 = 2112;
          v93 = v49;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@MergeID is not set for the current account: %@", buf, 0x16u);

          v52 = v84;
        }

        objc_autoreleasePoolPop(v52);
      }
    }

    v56 = [(HMDRemoteAccountMessageFilter *)v19 systemKeychainStore];
    v89 = 0;
    v57 = [v56 getLocalPairingIdentity:&v89];
    v58 = v89;

    if (!v57)
    {
      v59 = v58;
      v60 = objc_autoreleasePoolPush();
      v61 = v19;
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

    v64 = [v32 remoteSenderContext];
    v65 = [v64 pairingIdentityIdentifier];

    if (!v65 || ([v57 identifier], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v65, "isEqualToString:", v66), v66, !v67))
    {
      v68 = [v32 remoteUserPairingIdentity];
      v69 = v68;
      if (!v68 || ![v68 isEqual:v57])
      {
        v83 = v58;
        v85 = v57;
        v70 = objc_autoreleasePoolPush();
        v71 = v19;
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
    v37 = 0;
    v35 = v88;
    goto LABEL_55;
  }

  v87 = v35;
  v38 = v37;
  v39 = [v37 isCurrentAccount];
  v40 = objc_autoreleasePoolPush();
  v41 = v19;
  v42 = HMFGetOSLogHandle();
  v43 = v42;
  if (v39)
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
  v37 = v38;
LABEL_55:

  v75 = objc_autoreleasePoolPush();
  v76 = v19;
  v77 = HMFGetOSLogHandle();
  v78 = v77;
  if (v45)
  {
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      v79 = HMFGetLogIdentifier();
      v80 = [v32 shortDescription];
      *buf = 138543618;
      v91 = v79;
      v92 = 2112;
      v93 = v80;
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
  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    *a5 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (HMDRemoteAccountMessageFilter)initWithTarget:(id)a3 allowedMessages:(id)a4 appleAccountManager:(id)a5 systemKeychainStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = HMDRemoteAccountMessageFilter;
  v15 = [(HMDMessageFilter *)&v19 initWithName:@"RemoteAccount"];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_target, a3);
    if (v12)
    {
      v17 = [v12 copy];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v16->_allowedMessages, v17);
    if (v12)
    {
    }

    objc_storeStrong(&v16->_appleAccountManager, a5);
    objc_storeStrong(&v16->_systemKeychainStore, a6);
  }

  return v16;
}

- (HMDRemoteAccountMessageFilter)initWithTarget:(id)a3 allowedMessages:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDAppleAccountManager sharedManager];
  v9 = [MEMORY[0x277CFEC78] systemStore];
  v10 = [(HMDRemoteAccountMessageFilter *)self initWithTarget:v7 allowedMessages:v6 appleAccountManager:v8 systemKeychainStore:v9];

  return v10;
}

- (HMDRemoteAccountMessageFilter)initWithName:(id)a3
{
  v4 = a3;
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