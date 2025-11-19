@interface HMDDeviceSetupClientSession
+ (BOOL)isSupported;
+ (id)allowedClasses;
+ (id)logCategory;
- (BOOL)processSessionData:(id)a3 outAccessoryUUID:(id *)a4 outAccessoryCategory:(id *)a5 outAccessoryIDSIdentifier:(id *)a6 error:(id *)a7;
- (HMDDeviceSetupClientSession)initWithHomeManager:(id)a3 userDefaults:(id)a4 sessionIdentifier:(id)a5;
@end

@implementation HMDDeviceSetupClientSession

- (BOOL)processSessionData:(id)a3 outAccessoryUUID:(id *)a4 outAccessoryCategory:(id *)a5 outAccessoryIDSIdentifier:(id *)a6 error:(id *)a7
{
  v157 = *MEMORY[0x277D85DE8];
  v12 = a3;
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientDeviceSessionProcess", "", buf, 2u);
  }

  if (!v12)
  {
    v18 = 0;
LABEL_13:
    v33 = [(HMDDeviceSetupSessionInternal *)self homeManager];
    v146 = [MEMORY[0x277CBEB38] dictionary];
    v34 = [(HMDDeviceSetupSessionInternal *)self state];
    if (v34 != 2)
    {
      if (v34 == 1)
      {
        v147 = 0;
        v35 = [v33 getOrCreateLocalPairingIdentity:&v147];
        v36 = v147;
        if (!v36 && v35)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v152 = v40;
            v153 = 2112;
            v154 = v35;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Sending local pairing identity: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          v41 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDDeviceSetupSessionInternal state](v38, "state")}];
          [v146 setObject:v41 forKeyedSubscript:@"st"];

          [v146 setObject:v35 forKeyedSubscript:@"pi"];
          v42 = MEMORY[0x277CCABB0];
          v43 = [v33 hh2FrameworkSwitch];
          v44 = [v42 numberWithBool:{objc_msgSend(v43, "checkExistenceOfHH2SentinelZone")}];
          [v146 setObject:v44 forKeyedSubscript:@"sz.hh2"];

          v45 = [(HMDDeviceSetupClientSession *)v38 sessionIdentifier];
          v46 = [v45 UUIDString];

          v47 = objc_autoreleasePoolPush();
          v48 = v38;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v51 = v50 = v35;
            *buf = 138543618;
            v152 = v51;
            v153 = 2112;
            v154 = v46;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@Sending setup session identifier %@ as part of payload", buf, 0x16u);

            v35 = v50;
          }

          objc_autoreleasePoolPop(v47);
          [v146 setObject:v46 forKeyedSubscript:@"session.id"];
          v52 = [v33 mediaSystemHints];

          if (v52)
          {
            v143 = v46;
            v138 = v35;
            v53 = objc_autoreleasePoolPush();
            v54 = v48;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v56 = HMFGetLogIdentifier();
              v57 = [v33 mediaSystemHints];
              *buf = 138543618;
              v152 = v56;
              v153 = 2112;
              v154 = v57;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Sending media system hints %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v53);
            v58 = [v33 mediaSystemHints];
            v59 = [v58 mediaSystemHomeUUIDString];
            [v146 setObject:v59 forKeyedSubscript:*MEMORY[0x277CD2450]];

            v60 = [v33 mediaSystemHints];
            v61 = [v60 mediaSystemUUIDString];
            [v146 setObject:v61 forKeyedSubscript:*MEMORY[0x277CD2470]];

            v62 = [v33 mediaSystemHints];
            v63 = [v62 peerAccessoryUUIDString];
            [v146 setObject:v63 forKeyedSubscript:*MEMORY[0x277CD24A0]];

            v64 = [v33 mediaSystemHints];
            v65 = [v64 peerAccessoryRoleString];
            [v146 setObject:v65 forKeyedSubscript:*MEMORY[0x277CD2498]];

            v35 = v138;
            v46 = v143;
          }

          [(HMDDeviceSetupSessionInternal *)v48 setState:2];

          goto LABEL_80;
        }

        goto LABEL_95;
      }

      if (a7)
      {
        v88 = MEMORY[0x277CCA9B8];
        v89 = 23;
LABEL_60:
        [v88 hmErrorWithCode:v89];
        *a7 = v68 = 0;
LABEL_96:

        goto LABEL_97;
      }

      goto LABEL_95;
    }

    if (!v18)
    {
      v90 = objc_autoreleasePoolPush();
      v91 = self;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = HMFGetLogIdentifier();
        v94 = [(HMDDeviceSetupSessionInternal *)v91 state];
        *buf = 138543618;
        v152 = v93;
        v153 = 2048;
        v154 = v94;
        _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid request state: %tu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v90);
      if (a7)
      {
        v88 = MEMORY[0x277CCA9B8];
        v89 = 58;
        goto LABEL_60;
      }

LABEL_95:
      v68 = 0;
      goto LABEL_96;
    }

    v144 = a4;
    v74 = [v18 objectForKeyedSubscript:@"ac"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v35 = v75;

    if (!v35)
    {
LABEL_79:
      [(HMDDeviceSetupSessionInternal *)self setState:3];
LABEL_80:

      if ([(HMDDeviceSetupSessionInternal *)self state]!= 3)
      {
        v110 = objc_autoreleasePoolPush();
        v111 = self;
        v112 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          v113 = HMFGetLogIdentifier();
          *buf = 138543618;
          v152 = v113;
          v153 = 2112;
          v154 = v146;
          _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_DEFAULT, "%{public}@Response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v110);
        v114 = encodeRootObjectForRemote(v146, 0, 0);
        [(HMDDeviceSetupSessionInternal *)v111 setSessionData:v114];
      }

      v68 = 1;
      goto LABEL_96;
    }

    v141 = a6;
    v76 = objc_autoreleasePoolPush();
    v77 = self;
    v78 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v136 = a7;
      v79 = v77;
      v81 = v80 = a5;
      *buf = 138543618;
      v152 = v81;
      v153 = 2112;
      v154 = v35;
      _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory description: %@", buf, 0x16u);

      a5 = v80;
      v77 = v79;
      a7 = v136;
    }

    objc_autoreleasePoolPop(v76);
    v82 = v35;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v84 = v82;
    }

    else
    {
      v84 = 0;
    }

    v135 = v84;

    if ((isKindOfClass & 1) == 0)
    {
LABEL_74:
      v107 = [v33 accessoryBrowser];
      [v107 addUnassociatedAccessory:v82 forDeviceSetup:1];

      if (v144)
      {
        *v144 = [v82 uuid];
      }

      if (a5)
      {
        *a5 = [v82 category];
      }

      v108 = encodeRootObjectForIncomingXPCMessage(v82, 0);
      v149 = *MEMORY[0x277CCEA00];
      v150 = v108;
      v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      [(HMDDeviceSetupSessionInternal *)v77 setUserInfo:v109];

      goto LABEL_79;
    }

    v132 = v77;
    v85 = [v18 objectForKeyedSubscript:@"hk"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    v87 = v86;

    v137 = v82;
    v139 = v35;
    v129 = v87;
    if (v87)
    {
      v134 = [[HMDHomeKitVersion alloc] initWithString:v87, v87];
    }

    else
    {
      v134 = 0;
    }

    v131 = a5;
    v95 = objc_autoreleasePoolPush();
    v96 = v132;
    v97 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = HMFGetLogIdentifier();
      *buf = 138543618;
      v152 = v98;
      v153 = 2112;
      v154 = v134;
      _os_log_impl(&dword_2531F8000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory HomeKit version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v95);
    v133 = +[HMDDeviceCapabilities supportedPairingCapabilities];
    v99 = [v137 minimumRequiredPairingSoftwareVersion];
    if (v99)
    {
      v100 = +[HMDHomeKitVersion currentVersion];
      v101 = [v137 minimumRequiredPairingSoftwareVersion];
      v130 = [v100 isAtLeastVersion:v101];
    }

    else
    {
      v130 = 1;
    }

    v102 = objc_autoreleasePoolPush();
    v103 = v96;
    v104 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = HMFGetLogIdentifier();
      v106 = HMFBooleanToString();
      *buf = 138543874;
      v152 = v105;
      v153 = 2048;
      v154 = v133;
      v155 = 2112;
      v156 = v106;
      _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@Our pairing capabilities: 0x%lx, minimum software version satisfied: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v102);
    v82 = v137;
    a5 = v131;
    if ([v137 canPairGivenCapabilities:v133])
    {
      if (v130)
      {
        if (v141)
        {
          *v141 = [v137 idsIdentifierString];
        }

        v35 = v139;
        v77 = v132;
        goto LABEL_74;
      }

      v121 = objc_autoreleasePoolPush();
      v122 = v103;
      v123 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        v124 = HMFGetLogIdentifier();
        *buf = 138543362;
        v152 = v124;
        _os_log_impl(&dword_2531F8000, v123, OS_LOG_TYPE_ERROR, "%{public}@Pairing device does not have minimum software version required by accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v121);
      if (!a7)
      {
LABEL_94:

        goto LABEL_95;
      }

      v119 = @"Pairing device does not have minimum software version";
      v120 = 9026;
    }

    else
    {
      v115 = objc_autoreleasePoolPush();
      v116 = v103;
      v117 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        v118 = HMFGetLogIdentifier();
        *buf = 138543362;
        v152 = v118;
        _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair as pairing device does not have all required capabilities required by accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v115);
      if (!a7)
      {
        goto LABEL_94;
      }

      v119 = @"Pairing device does not have all required capabilities";
      v120 = 9025;
    }

    v125 = MEMORY[0x277CCA9B8];
    v126 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:{v120, v129}];
    *a7 = [v125 hmErrorWithCode:48 description:@"Pairing not supported" reason:v119 suggestion:0 underlyingError:v126];

    goto LABEL_94;
  }

  v140 = a6;
  v142 = a4;
  v14 = MEMORY[0x277CCAAC8];
  v15 = +[HMDDeviceSetupServerSession allowedClasses];
  v148 = 0;
  v16 = [v14 unarchivedObjectOfClasses:v15 fromData:v12 error:&v148];
  v17 = v148;

  v18 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  v24 = v23;
  if (v20)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v145 = v17;
      v25 = self;
      v26 = v18;
      v27 = a7;
      v28 = v12;
      v30 = v29 = a5;
      *buf = 138543618;
      v152 = v30;
      v153 = 2112;
      v154 = v20;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Processing request: %@", buf, 0x16u);

      a5 = v29;
      v12 = v28;
      a7 = v27;
      v18 = v26;
      self = v25;
      v17 = v145;
    }

    objc_autoreleasePoolPop(v21);
    v31 = [v20 hmf_numberForKey:@"st"];
    v32 = [v31 integerValue];
    if (v32 == [(HMDDeviceSetupSessionInternal *)v22 state])
    {

      a6 = v140;
      a4 = v142;
      goto LABEL_13;
    }

    v69 = objc_autoreleasePoolPush();
    v70 = v22;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = HMFGetLogIdentifier();
      v73 = [(HMDDeviceSetupSessionInternal *)v70 state];
      *buf = 138543874;
      v152 = v72;
      v153 = 2112;
      v154 = v31;
      v155 = 2048;
      v156 = v73;
      _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@Request state number, %@, does not match expected state number: %tu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v69);
    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    }

    v68 = 0;
    v33 = v17;
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v66 = HMFGetLogIdentifier();
      *buf = 138543618;
      v152 = v66;
      v153 = 2112;
      v154 = v17;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive request payload from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (a7)
    {
      v67 = v17;
      v68 = 0;
      *a7 = v17;
    }

    else
    {
      v68 = 0;
    }

    v33 = v18;
    v18 = v17;
  }

LABEL_97:

  v127 = *MEMORY[0x277D85DE8];
  return v68;
}

- (HMDDeviceSetupClientSession)initWithHomeManager:(id)a3 userDefaults:(id)a4 sessionIdentifier:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = HMDDeviceSetupClientSession;
  v10 = [(HMDDeviceSetupSessionInternal *)&v14 initWithHomeManager:a3 userDefaults:a4];
  if (v10)
  {
    v11 = HMFGetOSLogHandle();
    logger = v10->_logger;
    v10->_logger = v11;

    objc_storeStrong(&v10->_sessionIdentifier, a5);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42, &__block_literal_global_334);
  }

  v3 = logCategory__hmf_once_v43;

  return v3;
}

uint64_t __42__HMDDeviceSetupClientSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43;
  logCategory__hmf_once_v43 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)allowedClasses
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HMDDeviceSetupClientSession;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClasses);
  v3 = [v2 mutableCopy];

  v8[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 addObjectsFromArray:v4];

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)isSupported
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsKeychainSync];

  return v3;
}

@end