@interface HMDXPCEntitlementMessageFilter
+ (id)logCategory;
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error;
@end

@implementation HMDXPCEntitlementMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_122655 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_122655, &__block_literal_global_122656);
  }

  v3 = logCategory__hmf_once_v3_122657;

  return v3;
}

uint64_t __45__HMDXPCEntitlementMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_122657;
  logCategory__hmf_once_v3_122657 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  if (messageCopy)
  {
    proxyConnection = [messageCopy proxyConnection];

    if (proxyConnection)
    {
      v11 = [self requiredPolicyOfClass:objc_opt_class() fromPolicies:policiesCopy error:0];
      v12 = v11;
      if (v11)
      {
        entitlements = [v11 entitlements];
        proxyConnection2 = [messageCopy proxyConnection];
        v15 = entitlements & ~[proxyConnection2 entitlements];

        if (!v15)
        {
          v22 = 1;
          goto LABEL_15;
        }

        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          shortDescription = [messageCopy shortDescription];
          v21 = HMXPCClientEntitlementsToComponents(v15);
          v29 = 138543874;
          v30 = v19;
          v31 = 2112;
          v32 = shortDescription;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message, %@, client is missing the following entitlements: %@", &v29, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:80];
        }
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v29 = 138543362;
          v30 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Missing XPC policy", &v29, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
      }

      v22 = -1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v22 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

@end