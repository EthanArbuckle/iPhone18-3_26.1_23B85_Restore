@interface HMDRemoteMessageFilter
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6;
@end

@implementation HMDRemoteMessageFilter

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6
{
  v138 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && [v10 isRemote])
  {
    v13 = [a1 requiredPolicyOfClass:objc_opt_class() fromPolicies:v11 error:0];
    if (!v13)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v10 identifier];
        *buf = 138543618;
        v133 = v21;
        v134 = 2114;
        v135 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing remote policy for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v17 = -1;
      goto LABEL_114;
    }

    v14 = [v10 remoteRestriction];
    v121 = a6;
    v122 = v12;
    if ([v13 transportRestriction] == -1)
    {
      v16 = 0;
      v15 = 1;
    }

    else
    {
      v15 = (v14 - 1) < 0xFFFFFFFFFFFFFFFELL;
      if ((v14 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = a1;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v10 transport];
          [v10 identifier];
          v28 = v124 = v23;
          *buf = 138543874;
          v133 = v26;
          v134 = 2112;
          v135 = v27;
          v136 = 2114;
          v137 = v28;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          v23 = v124;
          v12 = v122;

          a6 = v121;
        }

        objc_autoreleasePoolPop(v23);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:@"Invalid transport" suggestion:0];
        v15 = 0;
      }

      else
      {
        v16 = 0;
      }

      if (([v13 transportRestriction] & v14) == 0)
      {
        v117 = v16;
        v29 = objc_autoreleasePoolPush();
        v30 = a1;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [v10 transport];
          [v10 identifier];
          v34 = v125 = v29;
          *buf = 138543874;
          v133 = v32;
          v134 = 2112;
          v135 = v33;
          v136 = 2114;
          v137 = v34;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          v29 = v125;
          a6 = v121;

          v12 = v122;
        }

        objc_autoreleasePoolPop(v29);
        v16 = v117;
        if (!v117)
        {
          v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Invalid transport" suggestion:0];
        }

        v15 = 0;
      }
    }

    v123 = [v11 hmf_objectPassingTest:&__block_literal_global_69821];
    if (v14 == 4)
    {
      +[HMDAppleAccountManager sharedManager];
    }

    else
    {
      [v10 remoteSourceDevice];
    }
    v35 = ;
    v126 = [v35 account];

    if ([v13 requiresSecureMessage])
    {
      if (([v10 isSecureRemote] & 1) == 0)
      {
        v37 = v16;
        v46 = objc_autoreleasePoolPush();
        v47 = a1;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [v10 identifier];
          *buf = 138543618;
          v133 = v49;
          v134 = 2114;
          v135 = v50;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be secure", buf, 0x16u);

          a6 = v121;
          v12 = v122;
        }

        objc_autoreleasePoolPop(v46);
        if (!v37)
        {
          v43 = MEMORY[0x277CCA9B8];
          v44 = @"Message is required to be secure.";
          v45 = 17;
          goto LABEL_39;
        }

LABEL_37:
        v16 = v37;
LABEL_40:
        v15 = 0;
        goto LABEL_41;
      }

      if (([v13 allowsAnonymousMessage] & 1) == 0)
      {
        v36 = [v126 isCurrentAccount];
        if (v14 != 4 && (v36 & 1) == 0 && !v123)
        {
          v37 = v16;
          v38 = objc_autoreleasePoolPush();
          v39 = a1;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = HMFGetLogIdentifier();
            v42 = [v10 identifier];
            *buf = 138543618;
            v133 = v41;
            v134 = 2114;
            v135 = v42;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to authenticate message %{public}@, not our account and no user message policy", buf, 0x16u);

            a6 = v121;
            v12 = v122;
          }

          objc_autoreleasePoolPop(v38);
          if (!v37)
          {
            v43 = MEMORY[0x277CCA9B8];
            v44 = @"Unable to authenticate message.";
            v45 = 55;
LABEL_39:
            v16 = [v43 hmErrorWithCode:v45 description:0 reason:v44 suggestion:0];
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }
    }

LABEL_41:
    if (![v13 requiresAccountMessage])
    {
      goto LABEL_55;
    }

    if (v126)
    {
      if ([v126 isCurrentAccount])
      {
        goto LABEL_55;
      }

      v118 = v16;
      v51 = objc_autoreleasePoolPush();
      v52 = a1;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = HMFGetLogIdentifier();
        v55 = [v10 identifier];
        v56 = [v126 shortDescription];
        *buf = 138543874;
        v133 = v54;
        v134 = 2114;
        v135 = v55;
        v136 = 2112;
        v137 = v56;
        _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be from the current account: %@", buf, 0x20u);

        a6 = v121;
        v12 = v122;
      }

      objc_autoreleasePoolPop(v51);
      v16 = v118;
      if (!v118)
      {
        v57 = MEMORY[0x277CCA9B8];
        v58 = @"Message is required to be from the current account";
        v59 = 17;
LABEL_53:
        v16 = [v57 hmErrorWithCode:v59 description:0 reason:v58 suggestion:0];
      }
    }

    else
    {
      v60 = v16;
      v61 = objc_autoreleasePoolPush();
      v62 = a1;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        v65 = [v10 identifier];
        *buf = 138543618;
        v133 = v64;
        v134 = 2114;
        v135 = v65;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the account of the message %{public}@", buf, 0x16u);

        a6 = v121;
        v12 = v122;
      }

      objc_autoreleasePoolPop(v61);
      if (!v60)
      {
        v57 = MEMORY[0x277CCA9B8];
        v58 = @"Unable to determine the account of the message";
        v59 = 2;
        goto LABEL_53;
      }

      v16 = v60;
    }

    v15 = 0;
LABEL_55:
    if (![v13 roles])
    {
LABEL_105:
      if (a6)
      {
        if (v15)
        {
          v110 = 0;
        }

        else
        {
          v110 = v16;
        }

        *a6 = v110;
      }

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

LABEL_114:
      goto LABEL_115;
    }

    v66 = [v10 remoteSourceDevice];
    v119 = v16;
    v120 = v15;
    if (([v13 roles] & 1) == 0)
    {
      v67 = 0;
      goto LABEL_68;
    }

    if (v66)
    {
      v68 = +[HMDCompanionManager sharedManager];
      v69 = [v68 companion];
      v70 = [v66 isRelatedToDevice:v69];

      if (!v70)
      {
        v67 = 0;
        a6 = v121;
        v12 = v122;
        goto LABEL_68;
      }

      v71 = objc_autoreleasePoolPush();
      v72 = a1;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = HMFGetLogIdentifier();
        v75 = [v10 identifier];
        *buf = 138543618;
        v133 = v74;
        v134 = 2114;
        v135 = v75;
        v67 = 1;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from companion", buf, 0x16u);

        a6 = v121;
        v12 = v122;
      }

      else
      {
        a6 = v121;
        v12 = v122;
        v67 = 1;
      }
    }

    else
    {
      v71 = objc_autoreleasePoolPush();
      v76 = a1;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [v10 identifier];
        *buf = 138543618;
        v133 = v77;
        v134 = 2114;
        v135 = v78;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

        a6 = v121;
        v12 = v122;
      }

      v67 = 0;
    }

    objc_autoreleasePoolPop(v71);
    v16 = v119;
    v15 = v120;
LABEL_68:
    if (([v13 roles] & 2) != 0)
    {
      v115 = v67;
      if (v66)
      {
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v79 = +[HMDWatchManager sharedManager];
        v80 = [v79 watches];

        v81 = [v80 countByEnumeratingWithState:&v127 objects:v131 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v128;
          while (2)
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v128 != v83)
              {
                objc_enumerationMutation(v80);
              }

              if ([v66 isRelatedToDevice:*(*(&v127 + 1) + 8 * i)])
              {
                v85 = objc_autoreleasePoolPush();
                v86 = a1;
                v87 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v88 = contexta = v85;
                  v89 = [v10 identifier];
                  *buf = 138543618;
                  v133 = v88;
                  v134 = 2114;
                  v135 = v89;
                  _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from watch", buf, 0x16u);

                  v85 = contexta;
                }

                objc_autoreleasePoolPop(v85);
                v16 = v119;
                v67 = v115 + 1;
                a6 = v121;
                goto LABEL_83;
              }
            }

            v82 = [v80 countByEnumeratingWithState:&v127 objects:v131 count:16];
            if (v82)
            {
              continue;
            }

            break;
          }

          a6 = v121;
        }

        v67 = v115;
LABEL_83:

        v12 = v122;
      }

      else
      {
        v90 = objc_autoreleasePoolPush();
        v91 = a1;
        v92 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          v93 = HMFGetLogIdentifier();
          v94 = [v10 identifier];
          *buf = 138543618;
          v133 = v93;
          v134 = 2114;
          v135 = v94;
          _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

          a6 = v121;
          v12 = v122;
        }

        objc_autoreleasePoolPop(v90);
        v67 = v115;
        v16 = v119;
      }

      v15 = v120;
    }

    if (([v13 roles] & 4) != 0)
    {
      v95 = [v123 home];
      v96 = v95;
      if (v95)
      {
        if ([v95 isCurrentDeviceAvailableResident])
        {
          v97 = objc_autoreleasePoolPush();
          v98 = a1;
          v99 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v100 = HMFGetLogIdentifier();
            v101 = [v10 identifier];
            *buf = 138543618;
            v133 = v100;
            v134 = 2114;
            v135 = v101;
            _os_log_impl(&dword_2531F8000, v99, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ is targeting resident", buf, 0x16u);

            a6 = v121;
            v12 = v122;
          }

          objc_autoreleasePoolPop(v97);
          v16 = v119;
          v15 = v120;
LABEL_104:

          goto LABEL_105;
        }
      }

      else
      {
        v116 = v67;
        context = objc_autoreleasePoolPush();
        v102 = a1;
        v103 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          v104 = HMFGetLogIdentifier();
          *buf = 138543362;
          v133 = v104;
          _os_log_impl(&dword_2531F8000, v103, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the home of the handler", buf, 0xCu);

          v12 = v122;
        }

        objc_autoreleasePoolPop(context);
        v67 = v116;
        v16 = v119;
      }

      v15 = v120;
    }

    if (!v67)
    {
      v105 = objc_autoreleasePoolPush();
      v106 = a1;
      v107 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = HMFGetLogIdentifier();
        v109 = [v10 identifier];
        *buf = 138543618;
        v133 = v108;
        v134 = 2114;
        v135 = v109;
        _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@Failed to satisfy the role(s) for message %{public}@", buf, 0x16u);

        a6 = v121;
        v12 = v122;
      }

      objc_autoreleasePoolPop(v105);
      if (!v16)
      {
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Failed to satisfy the role(s)" suggestion:0];
      }

      v15 = 0;
    }

    goto LABEL_104;
  }

  v17 = 0;
LABEL_115:

  v111 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __70__HMDRemoteMessageFilter_filterMessage_withPolicies_dispatcher_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end