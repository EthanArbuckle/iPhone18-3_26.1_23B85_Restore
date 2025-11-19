@interface HMDDeviceSetupServerSession
+ (BOOL)isSupported;
+ (id)allowedClasses;
+ (id)logCategory;
- (BOOL)processSessionData:(id)a3 outAccessoryUUID:(id *)a4 outAccessoryCategory:(id *)a5 outAccessoryIDSIdentifier:(id *)a6 error:(id *)a7;
- (HMDDeviceSetupServerSession)initWithHomeManager:(id)a3 userDefaults:(id)a4;
@end

@implementation HMDDeviceSetupServerSession

- (BOOL)processSessionData:(id)a3 outAccessoryUUID:(id *)a4 outAccessoryCategory:(id *)a5 outAccessoryIDSIdentifier:(id *)a6 error:(id *)a7
{
  v181 = *MEMORY[0x277D85DE8];
  v12 = a3;
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServerDeviceSessionProcess", "", buf, 2u);
  }

  v173 = [(HMDDeviceSetupSessionInternal *)self homeManager];
  v14 = [v173 currentAccessorySetupMetricDispatcher];
  v171 = a7;
  if (!v12)
  {
    v162 = a4;
    v30 = 0;
    v18 = 0;
LABEL_13:
    v170 = [MEMORY[0x277CBEB38] dictionary];
    v31 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:0 remoteGateway:0 remoteUserIsAdministrator:0 user:0 supportedFeatures:0];
    v32 = [(HMDDeviceSetupSessionInternal *)self state];
    if (v32 == 2)
    {
      v160 = v31;
      v172 = a6;
      v165 = v30;
      v167 = a5;
      v169 = v12;
LABEL_85:
      [v14 markSetupBeginStage:4 error:{v18, v154}];
      v127 = [v173 accessoryBrowser];
      v128 = [v127 mediaBrowser];
      v129 = [v128 currentAccessory];

      v130 = objc_autoreleasePoolPush();
      v131 = self;
      v132 = HMFGetOSLogHandle();
      v133 = v132;
      if (v129)
      {
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v134 = HMFGetLogIdentifier();
          *buf = 138543618;
          v176 = v134;
          v177 = 2112;
          v178 = v129;
          _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_DEFAULT, "%{public}@Set accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v130);
        v135 = self->_logger;
        if (os_signpost_enabled(v135))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2531F8000, v135, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SentUnassociatedAppleMediaAccessory", "", buf, 2u);
        }

        [v170 setObject:v129 forKeyedSubscript:@"ac"];
        if (v172)
        {
          *v172 = [v129 idsIdentifierString];
        }

        if (v162)
        {
          *v162 = [v129 uuid];
        }

        if (v167)
        {
          *v167 = [v129 category];
        }

        v136 = [v129 uuid];
        v137 = [v136 UUIDString];

        if (v137)
        {
          v138 = objc_autoreleasePoolPush();
          v139 = v131;
          v140 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
          {
            v141 = HMFGetLogIdentifier();
            *buf = 138543618;
            v176 = v141;
            v177 = 2112;
            v178 = v137;
            _os_log_impl(&dword_2531F8000, v140, OS_LOG_TYPE_INFO, "%{public}@Saving model uuid for Core Data voucher %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v138);
          v142 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [v142 setObject:v137 forKey:@"HMDCurrentAccessoryModelUUID"];
        }
      }

      else
      {
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          v143 = HMFGetLogIdentifier();
          *buf = 138543362;
          v176 = v143;
          _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@Did not obtain accessory in M2.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v130);
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:@"No accessory found from the browser"];
        v18 = v137 = v18;
      }

      v71 = v170;

      v144 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDDeviceSetupSessionInternal state](v131, "state")}];
      [v170 setObject:v144 forKeyedSubscript:@"st"];

      v145 = +[HMDHomeKitVersion currentVersion];
      v146 = [v145 versionString];
      [v170 setObject:v146 forKeyedSubscript:@"hk"];

      [(HMDDeviceSetupSessionInternal *)v131 setState:3];
      [v14 markSetupEndStage:4 error:v18];

      v147 = objc_autoreleasePoolPush();
      v148 = v131;
      v149 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
      {
        v150 = HMFGetLogIdentifier();
        *buf = 138543618;
        v176 = v150;
        v177 = 2112;
        v178 = v170;
        _os_log_impl(&dword_2531F8000, v149, OS_LOG_TYPE_INFO, "%{public}@Response: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v147);
      v74 = v160;
      [v160 encodeObject:v170 forKey:*MEMORY[0x277CCA308]];
      [v160 finishEncoding];
      v151 = [v160 encodedData];
      [(HMDDeviceSetupSessionInternal *)v148 setSessionData:v151];

      v51 = 1;
      v12 = v169;
      v30 = v165;
      goto LABEL_106;
    }

    if (v32 != 1)
    {
      v58 = v18;
      v59 = v14;
      v60 = v31;
      v61 = objc_autoreleasePoolPush();
      v62 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v65 = v64 = v30;
        *buf = 138543362;
        v176 = v65;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized state or hit error.", buf, 0xCu);

        v30 = v64;
      }

      objc_autoreleasePoolPop(v61);
      if (v171)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        *v171 = v51 = 0;
      }

      else
      {
        v51 = 0;
      }

      v71 = v170;
      v74 = v60;
      v14 = v59;
      v18 = v58;
      goto LABEL_106;
    }

    v33 = a5;
    [v14 markSetupBeginStage:3 error:v18];
    v165 = v30;
    v34 = [v30 objectForKeyedSubscript:@"pi"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    v160 = v31;
    if (v36)
    {
      if ([v173 setLocalPairingIdentity:v36 error:v171])
      {
        v164 = v18;
        v37 = self->_logger;
        v38 = v165;
        if (os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2531F8000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedLocalControllerKey", "", buf, 2u);
        }

        v156 = v36;
        v172 = a6;
        v159 = [v165 objectForKeyedSubscript:@"pi.hh2"];
        v167 = v33;
        v169 = v12;
        if (v159)
        {
          v39 = objc_autoreleasePoolPush();
          v40 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = HMFGetLogIdentifier();
            v43 = [v159 identifier];
            *buf = 138543618;
            v176 = v42;
            v177 = 2112;
            v178 = v43;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Got the HH2 Pairing key during TTSU : %@. Going to save it to keychain store", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v39);
          v44 = [MEMORY[0x277CFEC78] systemStore];
          v45 = [v44 saveHH2PairingIdentity:v159 syncable:1];

          if (v45)
          {
            v38 = v165;
          }

          else
          {
            v80 = objc_autoreleasePoolPush();
            v81 = v40;
            v82 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              v83 = HMFGetLogIdentifier();
              *buf = 138543362;
              v176 = v83;
              _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the HH2 key to keychain store. This will not fail TTSU as there can be multiple HH2 keys and the HomeKitDaemon will handle that appropriately.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v80);
            v84 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3401];

            v164 = v84;
            v38 = v165;
          }
        }

        v85 = [v38 hmf_numberForKey:@"mi.hh2"];
        v158 = v85;
        if (v85)
        {
          v86 = objc_autoreleasePoolPush();
          v87 = self;
          v88 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = HMFGetLogIdentifier();
            [v85 BOOLValue];
            v90 = HMFBooleanToString();
            *buf = 138543618;
            v176 = v89;
            v177 = 2112;
            v178 = v90;
            _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@Got the HH2 settings migration key during TTSU : %@. Going to save it to user defaults", buf, 0x16u);

            v85 = v158;
          }

          objc_autoreleasePoolPop(v86);
          v91 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [v91 setBool:objc_msgSend(v85 forKey:{"BOOLValue"), @"mi.hh2"}];

          v38 = v165;
        }

        v92 = [v38 hmf_numberForKey:@"rpr"];
        if (v92)
        {
          v93 = objc_autoreleasePoolPush();
          v94 = self;
          v95 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = HMFGetLogIdentifier();
            [v92 BOOLValue];
            v97 = HMFBooleanToString();
            *buf = 138543618;
            v176 = v96;
            v177 = 2112;
            v178 = v97;
            _os_log_impl(&dword_2531F8000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@Got the home has reachable resident value during TTSU: %@.", buf, 0x16u);

            v85 = v158;
          }

          objc_autoreleasePoolPop(v93);
          v98 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [v98 setBool:objc_msgSend(v92 forKey:{"BOOLValue"), @"rpr"}];
        }

        v99 = [v85 BOOLValue];
        v100 = [v165 hmf_numberForKey:@"sz.hh2"];
        v101 = [v100 BOOLValue];

        [v14 markControllerHH2Mode:v99 controllerHH2SentinelExists:v101];
        v102 = [v165 objectForKeyedSubscript:@"session.id"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v103 = v102;
        }

        else
        {
          v103 = 0;
        }

        v104 = v103;

        if (v104)
        {
          v105 = objc_autoreleasePoolPush();
          v106 = self;
          v107 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            v108 = HMFGetLogIdentifier();
            *buf = 138543618;
            v176 = v108;
            v177 = 2112;
            v178 = v104;
            _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_INFO, "%{public}@Setting controller setup session identifier %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v105);
          [v14 setControllerSetupSessionIdentifier:v104];
        }

        v155 = v104;
        v109 = [v173 uuid];
        [v173 updateGenerationCounterWithReason:@"Device Setup Set Controller Keys" sourceUUID:v109 shouldNotifyClients:1];

        v18 = v164;
        [v14 markSetupEndStage:3 error:v164];
        v110 = [v165 hmf_stringForKey:*MEMORY[0x277CD2450]];
        v111 = [v165 hmf_stringForKey:*MEMORY[0x277CD2470]];
        v112 = [v165 hmf_stringForKey:*MEMORY[0x277CD24A0]];
        v113 = v110;
        v114 = [v165 hmf_stringForKey:*MEMORY[0x277CD2498]];
        v157 = v114;
        if (v110 && v111 && v112 && v114)
        {
          v115 = objc_autoreleasePoolPush();
          v116 = self;
          v117 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v154 = v92;
            v119 = v118 = v113;
            *buf = 138543362;
            v176 = v119;
            _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_DEFAULT, "%{public}@Saving media system hints and persist to disk", buf, 0xCu);

            v113 = v118;
            v92 = v154;
          }

          objc_autoreleasePoolPop(v115);
          [v173 saveMediaSystemHintsWithHomeUUIDString:v113 mediaSystemUUIDString:v111 peerAccessoryUUIDString:v112 peerAccessoryRoleString:v157 persistToDisk:1];
        }

        v120 = objc_autoreleasePoolPush();
        v121 = self;
        v122 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v154 = v112;
          v123 = v111;
          v124 = v92;
          v126 = v125 = v113;
          *buf = 138543362;
          v176 = v126;
          _os_log_impl(&dword_2531F8000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@Proceeding to M2", buf, 0xCu);

          v113 = v125;
          v92 = v124;
          v111 = v123;
          v112 = v154;
        }

        objc_autoreleasePoolPop(v120);
        [(HMDDeviceSetupSessionInternal *)v121 setState:2];

        goto LABEL_85;
      }

      v66 = v36;
      v75 = objc_autoreleasePoolPush();
      v76 = self;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = HMFGetLogIdentifier();
        *buf = 138543362;
        v176 = v78;
        _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to set local pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v75);
      v30 = v165;
      v71 = v170;
      if (v171)
      {
        v79 = *v171;
      }

      else
      {
        v79 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:16 reason:@"Failed to set local pairing identity"];
      }

      v73 = v79;
    }

    else
    {
      v66 = 0;
      v67 = objc_autoreleasePoolPush();
      v68 = self;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        *buf = 138543362;
        v176 = v70;
        _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@Request missing pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v67);
      v71 = v170;
      if (!v171)
      {
        v30 = v165;
LABEL_56:
        [v14 markSetupEndStage:3 error:v18];

        v51 = 0;
        v74 = v160;
LABEL_106:

        goto LABEL_107;
      }

      v72 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      *v171 = v72;
      v73 = v72;
      v30 = v165;
    }

    v18 = v73;
    goto LABEL_56;
  }

  v166 = a5;
  v15 = MEMORY[0x277CCAAC8];
  v16 = +[HMDDeviceSetupClientSession allowedClasses];
  v174 = 0;
  v17 = [v15 unarchivedObjectOfClasses:v16 fromData:v12 error:&v174];
  v18 = v174;

  if (v17)
  {
    v19 = a6;
    v162 = a4;
    v163 = v18;
    v161 = v14;
    v168 = v12;
    v20 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    v26 = v22;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v176 = v27;
      v177 = 2112;
      v178 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Processing request: %@", buf, 0x16u);

      v22 = v26;
    }

    objc_autoreleasePoolPop(v23);
    v28 = [v22 hmf_numberForKey:@"st"];
    v29 = [v28 integerValue];
    if (v29 == [(HMDDeviceSetupSessionInternal *)v24 state])
    {

      a5 = v166;
      v12 = v168;
      v30 = v26;
      a6 = v19;
      v14 = v161;
      goto LABEL_13;
    }

    v52 = objc_autoreleasePoolPush();
    v53 = v24;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = HMFGetLogIdentifier();
      v56 = [(HMDDeviceSetupSessionInternal *)v53 state];
      *buf = 138543874;
      v176 = v55;
      v177 = 2112;
      v178 = v28;
      v179 = 2048;
      v180 = v56;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Request state number, %@, does not match expected state number: %tu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v52);
    if (v171)
    {
      v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      *v171 = v57;
      v18 = v57;
    }

    v12 = v168;
    [v161 markSetupBeginStage:3 error:v18];

    v51 = 0;
    v14 = v161;
  }

  else
  {
    v46 = objc_autoreleasePoolPush();
    v47 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      v176 = v49;
      v177 = 2112;
      v178 = v18;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive request payload from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v46);
    if (v171)
    {
      v50 = v18;
      *v171 = v18;
    }

    [v14 markSetupBeginStage:3 error:v18];
    v51 = 0;
  }

LABEL_107:

  v152 = *MEMORY[0x277D85DE8];
  return v51;
}

- (HMDDeviceSetupServerSession)initWithHomeManager:(id)a3 userDefaults:(id)a4
{
  v8.receiver = self;
  v8.super_class = HMDDeviceSetupServerSession;
  v4 = [(HMDDeviceSetupSessionInternal *)&v8 initWithHomeManager:a3 userDefaults:a4];
  if (v4)
  {
    v5 = HMFGetOSLogHandle();
    logger = v4->_logger;
    v4->_logger = v5;
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70, &__block_literal_global_363);
  }

  v3 = logCategory__hmf_once_v71;

  return v3;
}

uint64_t __42__HMDDeviceSetupServerSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v71;
  logCategory__hmf_once_v71 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)allowedClasses
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___HMDDeviceSetupServerSession;
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
  v3 = [v2 supportsDeviceSetup];

  return v3;
}

@end