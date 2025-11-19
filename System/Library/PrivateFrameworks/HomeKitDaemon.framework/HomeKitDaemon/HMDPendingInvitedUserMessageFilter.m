@interface HMDPendingInvitedUserMessageFilter
+ (id)logCategory;
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5;
@end

@implementation HMDPendingInvitedUserMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_161187 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_161187, &__block_literal_global_161188);
  }

  v3 = logCategory__hmf_once_v4_161189;

  return v3;
}

void __49__HMDPendingInvitedUserMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_161189;
  logCategory__hmf_once_v4_161189 = v1;
}

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [a1 policyOfClass:objc_opt_class() fromPolicies:v9];
  if (!v10)
  {
    goto LABEL_4;
  }

  if (([v8 isRemote] & 1) == 0)
  {
    if (!a5)
    {
LABEL_12:
      v13 = -1;
      goto LABEL_13;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Invited user message must be remote.";
    v16 = 10;
LABEL_11:
    *a5 = [v14 hmErrorWithCode:v16 description:0 reason:v15 suggestion:0 underlyingError:0];
    goto LABEL_12;
  }

  v11 = [v10 homeManager];
  v12 = [v11 pendingInviteExistsForSenderOfMessage:v8];

  if ((v12 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v8 shortDescription];
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@There is no actionable pending home invite on this device for sender of message: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (!a5)
    {
      goto LABEL_12;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = @"No pending invite for message sender.";
    v16 = 2;
    goto LABEL_11;
  }

LABEL_4:
  v13 = 1;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

@end