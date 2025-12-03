@interface HMDLostModeMessageFilter
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error;
@end

@implementation HMDLostModeMessageFilter

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  if (messageCopy)
  {
    v10 = +[HMDLostModeManager sharedManager];
    isLost = [v10 isLost];

    if (isLost)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Rejecting message in Lost Mode", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Device is in Lost Mode." suggestion:0];
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