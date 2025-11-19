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
  v90 = *MEMORY[0x277D85DE8];
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
    v87 = v21;
    v88 = 2112;
    v89 = v12;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Message is targeting target: %@", buf, 0x16u);
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
      v87 = v28;
      v88 = 2112;
      v89 = v12;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Message is allowed: %@", buf, 0x16u);
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
      goto LABEL_52;
    }

    v84 = v35;
    v46 = [v32 remoteSenderContext];
    v47 = [v46 mergeID];

    v82 = v47;
    if (v47)
    {
      v48 = [(HMDRemoteAccountMessageFilter *)v19 appleAccountManager];
      v49 = [v48 account];

      v50 = [v49 senderCorrelationIdentifier];
      if (v50)
      {
        if ([v47 isEqualToString:v50])
        {

          goto LABEL_47;
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
          v55 = v79 = v52;
          *buf = 138543618;
          v87 = v55;
          v88 = 2112;
          v89 = v49;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@MergeID is not set for the current account: %@", buf, 0x16u);

          v52 = v79;
        }

        objc_autoreleasePoolPop(v52);
      }
    }

    v56 = [(HMDRemoteAccountMessageFilter *)v19 systemKeychainStore];
    v85 = 0;
    v57 = [v56 getLocalPairingIdentity:&v85];
    v58 = v85;

    if (!v57)
    {
      v59 = objc_autoreleasePoolPush();
      v60 = v19;
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

    v63 = [v32 remoteSenderContext];
    v64 = [v63 pairingIdentityIdentifier];

    if (!v64 || ([v57 identifier], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v64, "isEqualToString:", v65), v65, !v66))
    {
      v81 = v58;
      v67 = objc_autoreleasePoolPush();
      v68 = v19;
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
    v37 = 0;
    v35 = v84;
    goto LABEL_52;
  }

  v83 = v35;
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
  v37 = v38;
LABEL_52:

  v71 = objc_autoreleasePoolPush();
  v72 = v19;
  v73 = HMFGetOSLogHandle();
  v74 = v73;
  if (v45)
  {
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v75 = HMFGetLogIdentifier();
      v76 = [v32 shortDescription];
      *buf = 138543618;
      v87 = v75;
      v88 = 2112;
      v89 = v76;
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