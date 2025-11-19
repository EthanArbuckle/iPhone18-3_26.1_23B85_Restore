@interface HMDSecureRemoteMessageFilter
+ (BOOL)isAllowedMessage:(id)a3;
+ (id)logCategory;
- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5;
@end

@implementation HMDSecureRemoteMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_131798 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_131798, &__block_literal_global_154);
  }

  v3 = logCategory__hmf_once_v21_131799;

  return v3;
}

- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (([v8 isRemote] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v15 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v15;
    v28 = 2112;
    v29 = v8;
    v16 = "%{public}@Accepting local message: %@";
LABEL_7:
    v17 = v14;
    v18 = OS_LOG_TYPE_DEBUG;
    goto LABEL_8;
  }

  v10 = [v8 name];
  v11 = [HMDSecureRemoteMessageFilter isAllowedMessage:v10];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v8;
      v16 = "%{public}@Accepting allowed message: %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_229538000, v17, v18, v16, &v26, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v12);
    v19 = 1;
    goto LABEL_10;
  }

  if ([v8 isSecureRemote])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v15 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v15;
    v28 = 2112;
    v29 = v8;
    v16 = "%{public}@Accepting secure remote message: %@";
    goto LABEL_7;
  }

  if (a5)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v25;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Rejecting insecure remote message: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    *a5 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)isAllowedMessage:(id)a3
{
  v3 = isAllowedMessage__pred;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isAllowedMessage__pred, &__block_literal_global_163_131794);
  }

  v5 = [isAllowedMessage___allowedMessages containsObject:v4];

  return v5;
}

void __49__HMDSecureRemoteMessageFilter_isAllowedMessage___block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"kAccessHomeInviteRequestKey";
  v5[1] = @"kUpdateHomeInvitationStateInternalRequestKey";
  v5[2] = @"kDismissBulletinInternalRequestKey";
  v5[3] = @"kDismissDialogInternalRequestKey";
  v5[4] = @"kKeyTransferAgentKey";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = isAllowedMessage___allowedMessages;
  isAllowedMessage___allowedMessages = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __43__HMDSecureRemoteMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_131799;
  logCategory__hmf_once_v21_131799 = v1;
}

@end