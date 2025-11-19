@interface HMDLostModeMessageFilter
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5;
@end

@implementation HMDLostModeMessageFilter

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[HMDLostModeManager sharedManager];
    v11 = [v10 isLost];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Rejecting message in Lost Mode", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Device is in Lost Mode." suggestion:0];
      }

      v16 = -1;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end