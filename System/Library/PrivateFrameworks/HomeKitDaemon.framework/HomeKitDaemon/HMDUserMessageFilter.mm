@interface HMDUserMessageFilter
+ (BOOL)areWeGoingToRejectMessage:(id)message basedOnRemoteAccessPolicy:(id)policy forUser:(id)user;
+ (id)homeForMessage:(id)message userPolicy:(id)policy dispatcher:(id)dispatcher;
+ (id)logCategory;
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error;
@end

@implementation HMDUserMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_232592 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_232592, &__block_literal_global_232593);
  }

  v3 = logCategory__hmf_once_v8_232594;

  return v3;
}

void __35__HMDUserMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_232594;
  logCategory__hmf_once_v8_232594 = v1;
}

+ (BOOL)areWeGoingToRejectMessage:(id)message basedOnRemoteAccessPolicy:(id)policy forUser:(id)user
{
  messageCopy = message;
  userCopy = user;
  v9 = [policy requiresRemoteAccess] && (objc_msgSend(userCopy, "isRemoteAccessAllowed") & 1) == 0 && objc_msgSend(messageCopy, "isRemote") && (objc_msgSend(messageCopy, "remoteRestriction") & 0xE) == 0;

  return v9;
}

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error
{
  v74 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  dispatcherCopy = dispatcher;
  proxyConnection = [messageCopy proxyConnection];

  isRemote = [messageCopy isRemote];
  v15 = isRemote;
  if (proxyConnection || isRemote)
  {
    v17 = [self policyOfClass:objc_opt_class() fromPolicies:policiesCopy];
    if (!v17)
    {
      v16 = 1;
LABEL_44:

      goto LABEL_45;
    }

    v18 = [self homeForMessage:messageCopy userPolicy:v17 dispatcher:dispatcherCopy];
    if (!v18)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543618;
        v65 = v24;
        v66 = 2112;
        v67 = shortDescription;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@The home is no longer valid for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:@"Home is no longer valid." suggestion:0 underlyingError:0];
      }

      v16 = -1;
      v18 = 0;
      goto LABEL_43;
    }

    v19 = [messageCopy userForHome:v18];
    v20 = v19;
    if (v19)
    {
      if (HMDUserPrivilegeCompare([v19 privilege], objc_msgSend(v17, "userPrivilege")) == -1)
      {
        v63 = v20;
        v33 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v61 = HMFGetLogIdentifier();
          shortDescription2 = [v20 shortDescription];
          name = [messageCopy name];
          userPrivilege = [v17 userPrivilege];
          if (userPrivilege > 5)
          {
            v37 = @"None";
          }

          else
          {
            v37 = off_278684178[userPrivilege];
          }

          v55 = v37;
          privilege = [v20 privilege];
          if (privilege > 5)
          {
            v47 = @"None";
          }

          else
          {
            v47 = off_278684178[privilege];
          }

          v54 = v47;
          *buf = 138544386;
          v65 = v61;
          v66 = 2112;
          v67 = shortDescription2;
          v68 = 2112;
          v69 = name;
          v70 = 2112;
          v71 = v55;
          v72 = 2112;
          v73 = v54;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Insufficient privilege for user: [%@] [%@] / (required: %@, actual: %@)", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v33);
        if (!error)
        {
          goto LABEL_41;
        }

        v44 = MEMORY[0x277CCA9B8];
        v45 = 17;
      }

      else
      {
        if (![self areWeGoingToRejectMessage:messageCopy basedOnRemoteAccessPolicy:v17 forUser:v20] || objc_msgSend(v17, "useProofOfLocality") && (objc_msgSend(messageCopy, "shouldWeProcessRemoteMessageDespiteNoRemoteAccessAllowedForUser:", v20) & 1) != 0)
        {
          if (v15 && [v17 requiresCameraStreamingAccess] && (objc_msgSend(v20, "camerasAccessLevel"), (HMUserIsStreamingAllowedWithCameraAccessLevel() & 1) == 0))
          {
            v50 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v53 = HMFGetLogIdentifier();
              *buf = 138543362;
              v65 = v53;
              _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@User does not have access to view remote camera streams", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v50);
            v16 = -1;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_42;
        }

        v63 = v20;
        v38 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v41 = v59 = v38;
          [messageCopy shortDescription];
          v42 = v62 = v18;
          shortDescription3 = [v63 shortDescription];
          *buf = 138543874;
          v65 = v41;
          v66 = 2112;
          v67 = v42;
          v68 = 2112;
          v69 = shortDescription3;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Message %@ arrived on a non-direct transport from user does not have remote access: %@", buf, 0x20u);

          v18 = v62;
          v38 = v59;
        }

        objc_autoreleasePoolPop(v38);
        if (!error)
        {
LABEL_41:
          v16 = -1;
          v20 = v63;
LABEL_42:

LABEL_43:
          goto LABEL_44;
        }

        v44 = MEMORY[0x277CCA9B8];
        v45 = 10;
      }

      v32 = [v44 hmErrorWithCode:{v45, v54}];
    }

    else
    {
      v63 = 0;
      v26 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v29 = v58 = v26;
        shortDescription4 = [v18 shortDescription];
        [messageCopy shortDescription];
        v31 = v60 = v18;
        *buf = 138543874;
        v65 = v29;
        v66 = 2112;
        v67 = shortDescription4;
        v68 = 2112;
        v69 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine user of home, %@, for message: %@", buf, 0x20u);

        v18 = v60;
        v26 = v58;
      }

      objc_autoreleasePoolPop(v26);
      if (!error)
      {
        goto LABEL_41;
      }

      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Unable to determine user." suggestion:0 underlyingError:0];
    }

    *error = v32;
    goto LABEL_41;
  }

  v16 = 0;
LABEL_45:

  v48 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)homeForMessage:(id)message userPolicy:(id)policy dispatcher:(id)dispatcher
{
  messageCopy = message;
  policyCopy = policy;
  dispatcherCopy = dispatcher;
  home = [policyCopy home];
  if (!home)
  {
    if ([policyCopy validForAnyHomeTheUserIsPartOf])
    {
      v11 = dispatcherCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        destination = [messageCopy destination];
        target = [destination target];
        home = [v13 homeForMessageTarget:target];
      }

      else
      {
        home = 0;
      }
    }

    else
    {
      home = 0;
    }
  }

  return home;
}

@end