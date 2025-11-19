@interface HMDRemoteMessageFilter
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6;
@end

@implementation HMDRemoteMessageFilter

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 dispatcher:(id)a5 error:(id *)a6
{
  v150 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && [v10 isRemote])
  {
    v13 = [a1 requiredPolicyOfClass:objc_opt_class() fromPolicies:v11 error:0];
    if (!v13)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = v17;
      v20 = v18;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v10 identifier];
        *buf = 138543618;
        v145 = v22;
        v146 = 2114;
        v147 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing remote policy for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v16 = -1;
      goto LABEL_130;
    }

    v14 = [v10 remoteRestriction];
    v133 = a1;
    v135 = v12;
    v130 = a6;
    if ([v13 transportRestriction] == -1)
    {
      v15 = 0;
      v138 = 1;
    }

    else
    {
      v138 = (v14 - 1) < 0xFFFFFFFFFFFFFFFELL;
      if ((v14 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = a1;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [v10 transport];
          v29 = [v10 identifier];
          *buf = 138543874;
          v145 = v27;
          v146 = 2112;
          v147 = v28;
          v148 = 2114;
          v149 = v29;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          a6 = v130;
          v12 = v135;

          a1 = v133;
        }

        objc_autoreleasePoolPop(v24);
        v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:@"Invalid transport" suggestion:0];
      }

      else
      {
        v15 = 0;
      }

      if (([v13 transportRestriction] & v14) == 0)
      {
        v131 = v15;
        v30 = objc_autoreleasePoolPush();
        v31 = a1;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v10 transport];
          v35 = [v10 identifier];
          *buf = 138543874;
          v145 = v33;
          v146 = 2112;
          v147 = v34;
          v148 = 2114;
          v149 = v35;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          a6 = v130;
          a1 = v133;

          v12 = v135;
        }

        objc_autoreleasePoolPop(v30);
        v15 = v131;
        if (!v131)
        {
          v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Invalid transport" suggestion:0];
        }

        v138 = 0;
      }
    }

    v136 = [v11 hmf_objectPassingTest:&__block_literal_global_107617];
    if (v14 == 4)
    {
      +[HMDAppleAccountManager sharedManager];
    }

    else
    {
      [v10 remoteSourceDevice];
    }
    v36 = ;
    v137 = [v36 account];

    if ([v13 requiresSecureMessage])
    {
      if (([v10 isSecureRemote] & 1) == 0)
      {
        v38 = v15;
        v47 = objc_autoreleasePoolPush();
        v48 = a1;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          v51 = [v10 identifier];
          *buf = 138543618;
          v145 = v50;
          v146 = 2114;
          v147 = v51;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be secure", buf, 0x16u);

          a1 = v133;
          v12 = v135;
        }

        objc_autoreleasePoolPop(v47);
        if (!v38)
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = @"Message is required to be secure.";
          v46 = 17;
          goto LABEL_39;
        }

LABEL_37:
        v15 = v38;
LABEL_40:
        v138 = 0;
        goto LABEL_41;
      }

      if (([v13 allowsAnonymousMessage] & 1) == 0)
      {
        v37 = [v137 isCurrentAccount];
        if (v14 != 4 && (v37 & 1) == 0 && !v136)
        {
          v38 = v15;
          v39 = objc_autoreleasePoolPush();
          v40 = a1;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            v43 = [v10 identifier];
            *buf = 138543618;
            v145 = v42;
            v146 = 2114;
            v147 = v43;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to authenticate message %{public}@, not our account and no user message policy", buf, 0x16u);

            a1 = v133;
            v12 = v135;
          }

          objc_autoreleasePoolPop(v39);
          if (!v38)
          {
            v44 = MEMORY[0x277CCA9B8];
            v45 = @"Unable to authenticate message.";
            v46 = 55;
LABEL_39:
            v15 = [v44 hmErrorWithCode:v46 description:0 reason:v45 suggestion:0];
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

    if (v137)
    {
      if ([v137 isCurrentAccount])
      {
        goto LABEL_55;
      }

      v52 = v15;
      v53 = objc_autoreleasePoolPush();
      v54 = a1;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [v10 identifier];
        v58 = [v137 shortDescription];
        *buf = 138543874;
        v145 = v56;
        v146 = 2114;
        v147 = v57;
        v148 = 2112;
        v149 = v58;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be from the current account: %@", buf, 0x20u);

        a1 = v133;
        a6 = v130;

        v12 = v135;
      }

      objc_autoreleasePoolPop(v53);
      if (!v52)
      {
        v59 = MEMORY[0x277CCA9B8];
        v60 = @"Message is required to be from the current account";
        v61 = 17;
LABEL_53:
        v15 = [v59 hmErrorWithCode:v61 description:0 reason:v60 suggestion:0];
        goto LABEL_54;
      }
    }

    else
    {
      v52 = v15;
      v62 = objc_autoreleasePoolPush();
      v63 = a1;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        v66 = [v10 identifier];
        *buf = 138543618;
        v145 = v65;
        v146 = 2114;
        v147 = v66;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the account of the message %{public}@", buf, 0x16u);

        a1 = v133;
        v12 = v135;
      }

      objc_autoreleasePoolPop(v62);
      if (!v52)
      {
        v59 = MEMORY[0x277CCA9B8];
        v60 = @"Unable to determine the account of the message";
        v61 = 2;
        goto LABEL_53;
      }
    }

    v15 = v52;
LABEL_54:
    v138 = 0;
LABEL_55:
    if (![v13 roles])
    {
      v69 = v138;
      if (a6)
      {
LABEL_122:
        if (v69)
        {
          v125 = 0;
        }

        else
        {
          v125 = v15;
        }

        *a6 = v125;
      }

LABEL_126:
      if (v69)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

LABEL_130:
      goto LABEL_131;
    }

    v67 = [v10 remoteSourceDevice];
    v132 = v15;
    if (([v13 roles] & 1) == 0)
    {
      v68 = 0;
      goto LABEL_70;
    }

    if (v67)
    {
      v70 = +[HMDCompanionManager sharedManager];
      v71 = [v70 companion];
      v72 = [v67 isRelatedToDevice:v71];

      if (!v72)
      {
        v68 = 0;
        a1 = v133;
        v12 = v135;
LABEL_70:
        if (([v13 roles] & 2) != 0)
        {
          if (v67)
          {
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v81 = +[HMDWatchManager sharedManager];
            v82 = [v81 watches];

            v83 = [v82 countByEnumeratingWithState:&v139 objects:v143 count:16];
            if (v83)
            {
              v84 = v83;
              v85 = *v140;
              while (2)
              {
                for (i = 0; i != v84; ++i)
                {
                  if (*v140 != v85)
                  {
                    objc_enumerationMutation(v82);
                  }

                  if ([v67 isRelatedToDevice:*(*(&v139 + 1) + 8 * i)])
                  {
                    v87 = objc_autoreleasePoolPush();
                    a1 = v133;
                    v88 = v133;
                    v89 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                    {
                      HMFGetLogIdentifier();
                      v90 = context = v87;
                      v91 = [v10 identifier];
                      *buf = 138543618;
                      v145 = v90;
                      v146 = 2114;
                      v147 = v91;
                      _os_log_impl(&dword_229538000, v89, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from watch", buf, 0x16u);

                      a1 = v133;
                      v87 = context;
                    }

                    objc_autoreleasePoolPop(v87);
                    ++v68;
                    v15 = v132;
                    goto LABEL_84;
                  }
                }

                v84 = [v82 countByEnumeratingWithState:&v139 objects:v143 count:16];
                if (v84)
                {
                  continue;
                }

                break;
              }

              a1 = v133;
            }

LABEL_84:

            v12 = v135;
          }

          else
          {
            v92 = objc_autoreleasePoolPush();
            v93 = a1;
            v94 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              v95 = HMFGetLogIdentifier();
              v96 = [v10 identifier];
              *buf = 138543618;
              v145 = v95;
              v146 = 2114;
              v147 = v96;
              _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

              a1 = v133;
              v12 = v135;
            }

            objc_autoreleasePoolPop(v92);
            v15 = v132;
          }
        }

        if (([v13 roles] & 4) != 0)
        {
          v97 = [v136 home];
          v98 = v97;
          if (v97)
          {
            if ([v97 isCurrentDeviceAvailableResident])
            {
              v99 = objc_autoreleasePoolPush();
              v100 = a1;
              v101 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
              {
                v102 = HMFGetLogIdentifier();
                v103 = [v10 identifier];
                *buf = 138543618;
                v145 = v102;
                v146 = 2114;
                v147 = v103;
                _os_log_impl(&dword_229538000, v101, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ is targeting resident", buf, 0x16u);

                v12 = v135;
              }

              objc_autoreleasePoolPop(v99);
LABEL_104:
              a6 = v130;
              v15 = v132;
              goto LABEL_115;
            }
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v104 = a1;
            v105 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              v106 = HMFGetLogIdentifier();
              *buf = 138543362;
              v145 = v106;
              _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the home of the handler", buf, 0xCu);

              v12 = v135;
            }

            objc_autoreleasePoolPop(context);
            v15 = v132;
          }
        }

        if (([v13 roles] & 8) != 0)
        {
          v107 = [HMDUserMessageFilter homeForMessage:v10 userPolicy:v136 dispatcher:v12];
          v108 = v107;
          if (v107)
          {
            v109 = [v107 isCurrentDevicePrimaryResident];
            contexta = objc_autoreleasePoolPush();
            v110 = a1;
            v111 = HMFGetOSLogHandle();
            v112 = v111;
            if (v109)
            {
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
              {
                v113 = HMFGetLogIdentifier();
                v114 = [v10 identifier];
                *buf = 138543618;
                v145 = v113;
                v146 = 2114;
                v147 = v114;
                _os_log_impl(&dword_229538000, v112, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ is targeting the primary resident", buf, 0x16u);
              }

              objc_autoreleasePoolPop(contexta);
              v12 = v135;
              goto LABEL_104;
            }

            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              v118 = HMFGetLogIdentifier();
              v119 = [v10 identifier];
              *buf = 138543618;
              v145 = v118;
              v146 = 2114;
              v147 = v119;
              _os_log_impl(&dword_229538000, v112, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ can only be handled by the primary resident", buf, 0x16u);

              a1 = v133;
            }

            objc_autoreleasePoolPop(contexta);
            v12 = v135;
            v15 = v132;
            if (!v132)
            {
              v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
            }
          }

          else
          {
            v134 = objc_autoreleasePoolPush();
            v115 = a1;
            v116 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              v117 = HMFGetLogIdentifier();
              *buf = 138543362;
              v145 = v117;
              _os_log_impl(&dword_229538000, v116, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the home of the handler", buf, 0xCu);

              v12 = v135;
            }

            objc_autoreleasePoolPop(v134);
            v15 = v132;
          }
        }

        if (!v68)
        {
          v120 = objc_autoreleasePoolPush();
          v121 = a1;
          v122 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            v123 = HMFGetLogIdentifier();
            v124 = [v10 identifier];
            *buf = 138543618;
            v145 = v123;
            v146 = 2114;
            v147 = v124;
            _os_log_impl(&dword_229538000, v122, OS_LOG_TYPE_ERROR, "%{public}@Failed to satisfy the role(s) for message %{public}@", buf, 0x16u);

            v12 = v135;
          }

          objc_autoreleasePoolPop(v120);
          if (!v15)
          {
            v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Failed to satisfy the role(s)" suggestion:0];
          }

          v69 = 0;
          a6 = v130;
LABEL_121:

          if (a6)
          {
            goto LABEL_122;
          }

          goto LABEL_126;
        }

        a6 = v130;
LABEL_115:
        v69 = v138;
        goto LABEL_121;
      }

      v73 = objc_autoreleasePoolPush();
      a1 = v133;
      v74 = v133;
      v75 = HMFGetOSLogHandle();
      v68 = 1;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        v77 = [v10 identifier];
        *buf = 138543618;
        v145 = v76;
        v146 = 2114;
        v147 = v77;
        v68 = 1;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from companion", buf, 0x16u);

        a1 = v133;
      }

      v12 = v135;
    }

    else
    {
      v73 = objc_autoreleasePoolPush();
      v78 = a1;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        v79 = HMFGetLogIdentifier();
        v80 = [v10 identifier];
        *buf = 138543618;
        v145 = v79;
        v146 = 2114;
        v147 = v80;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

        a1 = v133;
        v12 = v135;
      }

      v68 = 0;
    }

    objc_autoreleasePoolPop(v73);
    v15 = v132;
    goto LABEL_70;
  }

  v16 = 0;
LABEL_131:

  v126 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __70__HMDRemoteMessageFilter_filterMessage_withPolicies_dispatcher_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end