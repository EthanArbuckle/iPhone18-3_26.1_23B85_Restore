@interface HMDRemoteMessageFilter
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error;
@end

@implementation HMDRemoteMessageFilter

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error
{
  v150 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  dispatcherCopy = dispatcher;
  if (messageCopy && [messageCopy isRemote])
  {
    v13 = [self requiredPolicyOfClass:objc_opt_class() fromPolicies:policiesCopy error:0];
    if (!v13)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = v17;
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        identifier = [messageCopy identifier];
        *buf = 138543618;
        v145 = v22;
        v146 = 2114;
        v147 = identifier;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing remote policy for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v16 = -1;
      goto LABEL_130;
    }

    remoteRestriction = [messageCopy remoteRestriction];
    selfCopy2 = self;
    v135 = dispatcherCopy;
    errorCopy = error;
    if ([v13 transportRestriction] == -1)
    {
      v15 = 0;
      v138 = 1;
    }

    else
    {
      v138 = (remoteRestriction - 1) < 0xFFFFFFFFFFFFFFFELL;
      if ((remoteRestriction - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          transport = [messageCopy transport];
          identifier2 = [messageCopy identifier];
          *buf = 138543874;
          v145 = v27;
          v146 = 2112;
          v147 = transport;
          v148 = 2114;
          v149 = identifier2;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          error = errorCopy;
          dispatcherCopy = v135;

          self = selfCopy2;
        }

        objc_autoreleasePoolPop(v24);
        v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:@"Invalid transport" suggestion:0];
      }

      else
      {
        v15 = 0;
      }

      if (([v13 transportRestriction] & remoteRestriction) == 0)
      {
        v131 = v15;
        v30 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          transport2 = [messageCopy transport];
          identifier3 = [messageCopy identifier];
          *buf = 138543874;
          v145 = v33;
          v146 = 2112;
          v147 = transport2;
          v148 = 2114;
          v149 = identifier3;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          error = errorCopy;
          self = selfCopy2;

          dispatcherCopy = v135;
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

    v136 = [policiesCopy hmf_objectPassingTest:&__block_literal_global_107617];
    if (remoteRestriction == 4)
    {
      +[HMDAppleAccountManager sharedManager];
    }

    else
    {
      [messageCopy remoteSourceDevice];
    }
    v36 = ;
    account = [v36 account];

    if ([v13 requiresSecureMessage])
    {
      if (([messageCopy isSecureRemote] & 1) == 0)
      {
        v38 = v15;
        v47 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          identifier4 = [messageCopy identifier];
          *buf = 138543618;
          v145 = v50;
          v146 = 2114;
          v147 = identifier4;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be secure", buf, 0x16u);

          self = selfCopy2;
          dispatcherCopy = v135;
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
        isCurrentAccount = [account isCurrentAccount];
        if (remoteRestriction != 4 && (isCurrentAccount & 1) == 0 && !v136)
        {
          v38 = v15;
          v39 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            identifier5 = [messageCopy identifier];
            *buf = 138543618;
            v145 = v42;
            v146 = 2114;
            v147 = identifier5;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to authenticate message %{public}@, not our account and no user message policy", buf, 0x16u);

            self = selfCopy2;
            dispatcherCopy = v135;
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

    if (account)
    {
      if ([account isCurrentAccount])
      {
        goto LABEL_55;
      }

      v52 = v15;
      v53 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        identifier6 = [messageCopy identifier];
        shortDescription = [account shortDescription];
        *buf = 138543874;
        v145 = v56;
        v146 = 2114;
        v147 = identifier6;
        v148 = 2112;
        v149 = shortDescription;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be from the current account: %@", buf, 0x20u);

        self = selfCopy2;
        error = errorCopy;

        dispatcherCopy = v135;
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
      selfCopy8 = self;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        identifier7 = [messageCopy identifier];
        *buf = 138543618;
        v145 = v65;
        v146 = 2114;
        v147 = identifier7;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the account of the message %{public}@", buf, 0x16u);

        self = selfCopy2;
        dispatcherCopy = v135;
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
      if (error)
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

        *error = v125;
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

    remoteSourceDevice = [messageCopy remoteSourceDevice];
    v132 = v15;
    if (([v13 roles] & 1) == 0)
    {
      v68 = 0;
      goto LABEL_70;
    }

    if (remoteSourceDevice)
    {
      v70 = +[HMDCompanionManager sharedManager];
      companion = [v70 companion];
      v72 = [remoteSourceDevice isRelatedToDevice:companion];

      if (!v72)
      {
        v68 = 0;
        self = selfCopy2;
        dispatcherCopy = v135;
LABEL_70:
        if (([v13 roles] & 2) != 0)
        {
          if (remoteSourceDevice)
          {
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v81 = +[HMDWatchManager sharedManager];
            watches = [v81 watches];

            v83 = [watches countByEnumeratingWithState:&v139 objects:v143 count:16];
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
                    objc_enumerationMutation(watches);
                  }

                  if ([remoteSourceDevice isRelatedToDevice:*(*(&v139 + 1) + 8 * i)])
                  {
                    v87 = objc_autoreleasePoolPush();
                    self = selfCopy2;
                    v88 = selfCopy2;
                    v89 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                    {
                      HMFGetLogIdentifier();
                      v90 = context = v87;
                      identifier8 = [messageCopy identifier];
                      *buf = 138543618;
                      v145 = v90;
                      v146 = 2114;
                      v147 = identifier8;
                      _os_log_impl(&dword_229538000, v89, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from watch", buf, 0x16u);

                      self = selfCopy2;
                      v87 = context;
                    }

                    objc_autoreleasePoolPop(v87);
                    ++v68;
                    v15 = v132;
                    goto LABEL_84;
                  }
                }

                v84 = [watches countByEnumeratingWithState:&v139 objects:v143 count:16];
                if (v84)
                {
                  continue;
                }

                break;
              }

              self = selfCopy2;
            }

LABEL_84:

            dispatcherCopy = v135;
          }

          else
          {
            v92 = objc_autoreleasePoolPush();
            selfCopy9 = self;
            v94 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              v95 = HMFGetLogIdentifier();
              identifier9 = [messageCopy identifier];
              *buf = 138543618;
              v145 = v95;
              v146 = 2114;
              v147 = identifier9;
              _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

              self = selfCopy2;
              dispatcherCopy = v135;
            }

            objc_autoreleasePoolPop(v92);
            v15 = v132;
          }
        }

        if (([v13 roles] & 4) != 0)
        {
          home = [v136 home];
          v98 = home;
          if (home)
          {
            if ([home isCurrentDeviceAvailableResident])
            {
              v99 = objc_autoreleasePoolPush();
              selfCopy10 = self;
              v101 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
              {
                v102 = HMFGetLogIdentifier();
                identifier10 = [messageCopy identifier];
                *buf = 138543618;
                v145 = v102;
                v146 = 2114;
                v147 = identifier10;
                _os_log_impl(&dword_229538000, v101, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ is targeting resident", buf, 0x16u);

                dispatcherCopy = v135;
              }

              objc_autoreleasePoolPop(v99);
LABEL_104:
              error = errorCopy;
              v15 = v132;
              goto LABEL_115;
            }
          }

          else
          {
            context = objc_autoreleasePoolPush();
            selfCopy11 = self;
            v105 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              v106 = HMFGetLogIdentifier();
              *buf = 138543362;
              v145 = v106;
              _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the home of the handler", buf, 0xCu);

              dispatcherCopy = v135;
            }

            objc_autoreleasePoolPop(context);
            v15 = v132;
          }
        }

        if (([v13 roles] & 8) != 0)
        {
          v107 = [HMDUserMessageFilter homeForMessage:messageCopy userPolicy:v136 dispatcher:dispatcherCopy];
          v108 = v107;
          if (v107)
          {
            isCurrentDevicePrimaryResident = [v107 isCurrentDevicePrimaryResident];
            contexta = objc_autoreleasePoolPush();
            selfCopy12 = self;
            v111 = HMFGetOSLogHandle();
            v112 = v111;
            if (isCurrentDevicePrimaryResident)
            {
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
              {
                v113 = HMFGetLogIdentifier();
                identifier11 = [messageCopy identifier];
                *buf = 138543618;
                v145 = v113;
                v146 = 2114;
                v147 = identifier11;
                _os_log_impl(&dword_229538000, v112, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ is targeting the primary resident", buf, 0x16u);
              }

              objc_autoreleasePoolPop(contexta);
              dispatcherCopy = v135;
              goto LABEL_104;
            }

            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              v118 = HMFGetLogIdentifier();
              identifier12 = [messageCopy identifier];
              *buf = 138543618;
              v145 = v118;
              v146 = 2114;
              v147 = identifier12;
              _os_log_impl(&dword_229538000, v112, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ can only be handled by the primary resident", buf, 0x16u);

              self = selfCopy2;
            }

            objc_autoreleasePoolPop(contexta);
            dispatcherCopy = v135;
            v15 = v132;
            if (!v132)
            {
              v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
            }
          }

          else
          {
            v134 = objc_autoreleasePoolPush();
            selfCopy13 = self;
            v116 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              v117 = HMFGetLogIdentifier();
              *buf = 138543362;
              v145 = v117;
              _os_log_impl(&dword_229538000, v116, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the home of the handler", buf, 0xCu);

              dispatcherCopy = v135;
            }

            objc_autoreleasePoolPop(v134);
            v15 = v132;
          }
        }

        if (!v68)
        {
          v120 = objc_autoreleasePoolPush();
          selfCopy14 = self;
          v122 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            v123 = HMFGetLogIdentifier();
            identifier13 = [messageCopy identifier];
            *buf = 138543618;
            v145 = v123;
            v146 = 2114;
            v147 = identifier13;
            _os_log_impl(&dword_229538000, v122, OS_LOG_TYPE_ERROR, "%{public}@Failed to satisfy the role(s) for message %{public}@", buf, 0x16u);

            dispatcherCopy = v135;
          }

          objc_autoreleasePoolPop(v120);
          if (!v15)
          {
            v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Failed to satisfy the role(s)" suggestion:0];
          }

          v69 = 0;
          error = errorCopy;
LABEL_121:

          if (error)
          {
            goto LABEL_122;
          }

          goto LABEL_126;
        }

        error = errorCopy;
LABEL_115:
        v69 = v138;
        goto LABEL_121;
      }

      v73 = objc_autoreleasePoolPush();
      self = selfCopy2;
      v74 = selfCopy2;
      v75 = HMFGetOSLogHandle();
      v68 = 1;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        identifier14 = [messageCopy identifier];
        *buf = 138543618;
        v145 = v76;
        v146 = 2114;
        v147 = identifier14;
        v68 = 1;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from companion", buf, 0x16u);

        self = selfCopy2;
      }

      dispatcherCopy = v135;
    }

    else
    {
      v73 = objc_autoreleasePoolPush();
      selfCopy15 = self;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        v79 = HMFGetLogIdentifier();
        identifier15 = [messageCopy identifier];
        *buf = 138543618;
        v145 = v79;
        v146 = 2114;
        v147 = identifier15;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

        self = selfCopy2;
        dispatcherCopy = v135;
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