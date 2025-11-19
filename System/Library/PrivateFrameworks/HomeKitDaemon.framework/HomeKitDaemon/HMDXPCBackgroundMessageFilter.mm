@interface HMDXPCBackgroundMessageFilter
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5;
@end

@implementation HMDXPCBackgroundMessageFilter

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 proxyConnection];

    v11 = [v8 isBackground];
    v12 = 0;
    if (v10 && v11)
    {
      v13 = [a1 requiredPolicyOfClass:objc_opt_class() fromPolicies:v9 error:0];

      if (v13)
      {
        v14 = [a1 requiredPolicyOfClass:objc_opt_class() fromPolicies:v9 error:0];
        v15 = v14;
        if (v14)
        {
          if (![v14 requiresEntitlement] || (objc_msgSend(v8, "proxyConnection"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "entitlements"), v16, (v17 & 2) != 0))
          {
            v12 = 1;
LABEL_19:

            goto LABEL_20;
          }

          v18 = objc_autoreleasePoolPush();
          v19 = a1;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            v28 = 138543362;
            v29 = v21;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Handler does not support background access", &v28, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          if (a5)
          {
            *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80 description:0 reason:@"Handler does not support background access" suggestion:0];
          }
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = a1;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v28 = 138543362;
            v29 = v25;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Missing background policy", &v28, 0xCu);
          }

          objc_autoreleasePoolPop(v22);
        }

        v12 = -1;
        goto LABEL_19;
      }

      v12 = -1;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

@end