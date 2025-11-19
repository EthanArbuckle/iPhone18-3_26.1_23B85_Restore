@interface HMDUserMessageFilter
+ (BOOL)areWeGoingToRejectMessage:(id)a3 basedOnRemoteAccessPolicy:(id)a4 forUser:(id)a5;
+ (id)homeForMessage:(id)a3 userPolicy:(id)a4 dispatcher:(id)a5;
+ (id)logCategory;
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6;
@end

@implementation HMDUserMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_156122 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_156122, &__block_literal_global_156123);
  }

  v3 = logCategory__hmf_once_v8_156124;

  return v3;
}

uint64_t __35__HMDUserMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_156124;
  logCategory__hmf_once_v8_156124 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)areWeGoingToRejectMessage:(id)a3 basedOnRemoteAccessPolicy:(id)a4 forUser:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 home];
  v11 = [v9 requiresRemoteAccess];

  v12 = v11 && ([v8 isRemoteAccessAllowed] & 1) == 0 && objc_msgSend(v7, "isRemote") && (objc_msgSend(v7, "remoteRestriction") & 0xE) == 0 && (objc_msgSend(v10, "isResidentFirstAccessoryCommunicationEnabled") & 1) != 0;
  return v12;
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
LABEL_42:

      goto LABEL_43;
    }

    v18 = [a1 homeForMessage:v10 userPolicy:v17 dispatcher:v12];
    if (!v18)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v10 shortDescription];
        *buf = 138543618;
        v65 = v32;
        v66 = 2112;
        v67 = v33;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@The home is no longer valid for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if (a6)
      {
        *a6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:@"Home is no longer valid." suggestion:0 underlyingError:0];
      }

      v16 = -1;
      v18 = 0;
      goto LABEL_41;
    }

    v19 = [v10 userForHome:v18];
    v20 = v19;
    if (v19)
    {
      if (HMDUserPrivilegeCompare([v19 privilege], objc_msgSend(v17, "userPrivilege")) == -1)
      {
        v63 = v20;
        v41 = objc_autoreleasePoolPush();
        v42 = a1;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v62 = HMFGetLogIdentifier();
          v57 = [v20 shortDescription];
          v56 = [v10 name];
          v44 = [v17 userPrivilege];
          if (v44 > 4)
          {
            v45 = @"None";
          }

          else
          {
            v45 = off_279730DF8[v44];
          }

          v55 = v45;
          v46 = [v20 privilege];
          if (v46 > 4)
          {
            v47 = @"None";
          }

          else
          {
            v47 = off_279730DF8[v46];
          }

          v54 = v47;
          *buf = 138544386;
          v65 = v62;
          v66 = 2112;
          v67 = v57;
          v68 = 2112;
          v69 = v56;
          v70 = 2112;
          v71 = v55;
          v72 = 2112;
          v73 = v54;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Insufficient privilege for user: [%@] [%@] / (required: %@, actual: %@)", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v41);
        if (!a6)
        {
          goto LABEL_39;
        }

        v27 = MEMORY[0x277CCA9B8];
        v28 = 17;
      }

      else
      {
        if (![a1 areWeGoingToRejectMessage:v10 basedOnRemoteAccessPolicy:v17 forUser:v20])
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
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@User does not have access to view remote camera streams", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v50);
            v16 = -1;
          }

          else
          {
            v16 = 1;
          }

          goto LABEL_40;
        }

        v63 = v20;
        v21 = objc_autoreleasePoolPush();
        v22 = a1;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v24 = v58 = v21;
          [v10 shortDescription];
          v25 = v60 = v18;
          v26 = [v63 shortDescription];
          *buf = 138543874;
          v65 = v24;
          v66 = 2112;
          v67 = v25;
          v68 = 2112;
          v69 = v26;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Message %@ arrived on a non-direct transport from user does not have remote access: %@", buf, 0x20u);

          v18 = v60;
          v21 = v58;
        }

        objc_autoreleasePoolPop(v21);
        if (!a6)
        {
LABEL_39:
          v16 = -1;
          v20 = v63;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v27 = MEMORY[0x277CCA9B8];
        v28 = 10;
      }

      v40 = [v27 hmErrorWithCode:{v28, v54}];
    }

    else
    {
      v63 = 0;
      v34 = objc_autoreleasePoolPush();
      v35 = a1;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v37 = v59 = v34;
        v38 = [v18 shortDescription];
        [v10 shortDescription];
        v39 = v61 = v18;
        *buf = 138543874;
        v65 = v37;
        v66 = 2112;
        v67 = v38;
        v68 = 2112;
        v69 = v39;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine user of home, %@, for message: %@", buf, 0x20u);

        v18 = v61;
        v34 = v59;
      }

      objc_autoreleasePoolPop(v34);
      if (!a6)
      {
        goto LABEL_39;
      }

      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Unable to determine user." suggestion:0 underlyingError:0];
    }

    *a6 = v40;
    goto LABEL_39;
  }

  v16 = 0;
LABEL_43:

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