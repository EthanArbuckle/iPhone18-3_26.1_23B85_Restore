@interface HMDUserMessageFilter
+ (BOOL)areWeGoingToRejectMessage:(id)a3 basedOnRemoteAccessPolicy:(id)a4 forUser:(id)a5;
+ (id)homeForMessage:(id)a3 userPolicy:(id)a4 dispatcher:(id)a5;
+ (id)logCategory;
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6;
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

+ (BOOL)areWeGoingToRejectMessage:(id)a3 basedOnRemoteAccessPolicy:(id)a4 forUser:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 requiresRemoteAccess] && (objc_msgSend(v8, "isRemoteAccessAllowed") & 1) == 0 && objc_msgSend(v7, "isRemote") && (objc_msgSend(v7, "remoteRestriction") & 0xE) == 0;

  return v9;
}

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 proxyConnection];

  v14 = [v10 isRemote];
  v15 = v14;
  if (v13 || v14)
  {
    v17 = [a1 policyOfClass:objc_opt_class() fromPolicies:v11];
    if (!v17)
    {
      v16 = 1;
LABEL_44:

      goto LABEL_45;
    }

    v18 = [a1 homeForMessage:v10 userPolicy:v17 dispatcher:v12];
    if (!v18)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v10 shortDescription];
        *buf = 138543618;
        v65 = v24;
        v66 = 2112;
        v67 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@The home is no longer valid for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (a6)
      {
        *a6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:@"Home is no longer valid." suggestion:0 underlyingError:0];
      }

      v16 = -1;
      v18 = 0;
      goto LABEL_43;
    }

    v19 = [v10 userForHome:v18];
    v20 = v19;
    if (v19)
    {
      if (HMDUserPrivilegeCompare([v19 privilege], objc_msgSend(v17, "userPrivilege")) == -1)
      {
        v63 = v20;
        v33 = objc_autoreleasePoolPush();
        v34 = a1;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v61 = HMFGetLogIdentifier();
          v57 = [v20 shortDescription];
          v56 = [v10 name];
          v36 = [v17 userPrivilege];
          if (v36 > 5)
          {
            v37 = @"None";
          }

          else
          {
            v37 = off_278684178[v36];
          }

          v55 = v37;
          v46 = [v20 privilege];
          if (v46 > 5)
          {
            v47 = @"None";
          }

          else
          {
            v47 = off_278684178[v46];
          }

          v54 = v47;
          *buf = 138544386;
          v65 = v61;
          v66 = 2112;
          v67 = v57;
          v68 = 2112;
          v69 = v56;
          v70 = 2112;
          v71 = v55;
          v72 = 2112;
          v73 = v54;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Insufficient privilege for user: [%@] [%@] / (required: %@, actual: %@)", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v33);
        if (!a6)
        {
          goto LABEL_41;
        }

        v44 = MEMORY[0x277CCA9B8];
        v45 = 17;
      }

      else
      {
        if (![a1 areWeGoingToRejectMessage:v10 basedOnRemoteAccessPolicy:v17 forUser:v20] || objc_msgSend(v17, "useProofOfLocality") && (objc_msgSend(v10, "shouldWeProcessRemoteMessageDespiteNoRemoteAccessAllowedForUser:", v20) & 1) != 0)
        {
          if (v15 && [v17 requiresCameraStreamingAccess] && (objc_msgSend(v20, "camerasAccessLevel"), (HMUserIsStreamingAllowedWithCameraAccessLevel() & 1) == 0))
          {
            v50 = objc_autoreleasePoolPush();
            v51 = a1;
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
        v39 = a1;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v41 = v59 = v38;
          [v10 shortDescription];
          v42 = v62 = v18;
          v43 = [v63 shortDescription];
          *buf = 138543874;
          v65 = v41;
          v66 = 2112;
          v67 = v42;
          v68 = 2112;
          v69 = v43;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Message %@ arrived on a non-direct transport from user does not have remote access: %@", buf, 0x20u);

          v18 = v62;
          v38 = v59;
        }

        objc_autoreleasePoolPop(v38);
        if (!a6)
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
      v27 = a1;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v29 = v58 = v26;
        v30 = [v18 shortDescription];
        [v10 shortDescription];
        v31 = v60 = v18;
        *buf = 138543874;
        v65 = v29;
        v66 = 2112;
        v67 = v30;
        v68 = 2112;
        v69 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine user of home, %@, for message: %@", buf, 0x20u);

        v18 = v60;
        v26 = v58;
      }

      objc_autoreleasePoolPop(v26);
      if (!a6)
      {
        goto LABEL_41;
      }

      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Unable to determine user." suggestion:0 underlyingError:0];
    }

    *a6 = v32;
    goto LABEL_41;
  }

  v16 = 0;
LABEL_45:

  v48 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)homeForMessage:(id)a3 userPolicy:(id)a4 dispatcher:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 home];
  if (!v10)
  {
    if ([v8 validForAnyHomeTheUserIsPartOf])
    {
      v11 = v9;
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
        v14 = [v7 destination];
        v15 = [v14 target];
        v10 = [v13 homeForMessageTarget:v15];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end