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
  v201 = *MEMORY[0x277D85DE8];
  v12 = a3;
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientDeviceSessionProcess", "", buf, 2u);
  }

  if (!v12)
  {
    v20 = 0;
LABEL_13:
    v30 = [(HMDDeviceSetupSessionInternal *)self homeManager];
    v31 = [MEMORY[0x277CBEB38] dictionary];
    v32 = [(HMDDeviceSetupSessionInternal *)self state];
    if (v32 != 2)
    {
      if (v32 == 1)
      {
        v187 = 0;
        v33 = [v30 getOrCreateLocalPairingIdentity:&v187];
        v34 = v187;
        if (!v34 && v33)
        {
          v186 = v12;
          v180 = v33;
          v35 = objc_autoreleasePoolPush();
          v36 = self;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v192 = v38;
            v193 = 2112;
            v194 = v33;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Sending local pairing identity: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          v39 = [MEMORY[0x277CFEC78] systemStore];
          v40 = [v39 getPreferredHH2ControllerKey];

          v183 = v40;
          if (!v40)
          {
            v41 = objc_autoreleasePoolPush();
            v42 = v36;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              HMFGetLogIdentifier();
              v45 = v44 = v31;
              *buf = 138543362;
              v192 = v45;
              _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Its very strange that we are running in HH2 mode but we do not have HH2 pairing key. This will not fail TTSU as the HH2 key will be created by the newly setup device.", buf, 0xCu);

              v31 = v44;
            }

            objc_autoreleasePoolPop(v41);
          }

          [v31 setObject:v40 forKeyedSubscript:@"pi.hh2"];
          [v31 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"mi.hh2"];
          v46 = [v30 homes];
          v47 = [v46 firstObject];
          v48 = 0x277CCA000;
          v175 = v47;
          v177 = v31;
          if ([v46 count] == 1 && v47)
          {
            v172 = v46;
            v49 = [v47 residentDeviceManager];
            v50 = [v49 residentDevices];
            v51 = [v50 na_any:&__block_literal_global_324];

            v52 = [v47 appleMediaAccessories];
            v53 = [v52 na_any:&__block_literal_global_327];

            v54 = v51 | v53;
            context = objc_autoreleasePoolPush();
            v55 = v36;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v167 = HMFGetLogIdentifier();
              v162 = HMFBooleanToString();
              v161 = [v175 shortDescription];
              v164 = HMFBooleanToString();
              v57 = HMFBooleanToString();
              *buf = 138544386;
              v192 = v167;
              v193 = 2112;
              v194 = v162;
              v195 = 2112;
              v196 = v161;
              v197 = 2112;
              v198 = v164;
              v199 = 2112;
              v200 = v57;
              _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Sending home has reachable resident value: %@ as part of payload (home: %@, hasReachableResident: %@, hasReachableAppleMediaAccessory: %@)", buf, 0x34u);

              v48 = 0x277CCA000uLL;
            }

            objc_autoreleasePoolPop(context);
            v58 = [*(v48 + 2992) numberWithBool:v54 & 1];
            v31 = v177;
            [v177 setObject:v58 forKeyedSubscript:@"rpr"];

            v46 = v172;
          }

          v59 = [*(v48 + 2992) numberWithInteger:{-[HMDDeviceSetupSessionInternal state](v36, "state", v161)}];
          [v31 setObject:v59 forKeyedSubscript:@"st"];

          [v31 setObject:v180 forKeyedSubscript:@"pi"];
          v60 = *(v48 + 2992);
          v61 = [v30 hh2FrameworkSwitch];
          v62 = [v60 numberWithBool:{objc_msgSend(v61, "checkExistenceOfHH2SentinelZone")}];
          [v31 setObject:v62 forKeyedSubscript:@"sz.hh2"];

          v63 = [(HMDDeviceSetupClientSession *)v36 sessionIdentifier];
          v64 = [v63 UUIDString];

          v65 = objc_autoreleasePoolPush();
          v66 = v36;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = HMFGetLogIdentifier();
            *buf = 138543618;
            v192 = v68;
            v193 = 2112;
            v194 = v64;
            _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Sending setup session identifier %@ as part of payload", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v65);
          [v31 setObject:v64 forKeyedSubscript:@"session.id"];
          v69 = [v30 mediaSystemHints];

          if (v69)
          {
            v173 = v64;
            v70 = objc_autoreleasePoolPush();
            v71 = v66;
            v72 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = HMFGetLogIdentifier();
              [v30 mediaSystemHints];
              v75 = v74 = v46;
              *buf = 138543618;
              v192 = v73;
              v193 = 2112;
              v194 = v75;
              _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Sending media system hints %@", buf, 0x16u);

              v46 = v74;
            }

            objc_autoreleasePoolPop(v70);
            v76 = [v30 mediaSystemHints];
            v77 = [v76 mediaSystemHomeUUIDString];
            v31 = v177;
            [v177 setObject:v77 forKeyedSubscript:*MEMORY[0x277CD2450]];

            v78 = [v30 mediaSystemHints];
            v79 = [v78 mediaSystemUUIDString];
            [v177 setObject:v79 forKeyedSubscript:*MEMORY[0x277CD2470]];

            v80 = [v30 mediaSystemHints];
            v81 = [v80 peerAccessoryUUIDString];
            [v177 setObject:v81 forKeyedSubscript:*MEMORY[0x277CD24A0]];

            v82 = [v30 mediaSystemHints];
            v83 = [v82 peerAccessoryRoleString];
            [v177 setObject:v83 forKeyedSubscript:*MEMORY[0x277CD2498]];

            v64 = v173;
          }

          [(HMDDeviceSetupSessionInternal *)v66 setState:2];

          v84 = v180;
          goto LABEL_111;
        }

        goto LABEL_92;
      }

      if (a7)
      {
        v105 = MEMORY[0x277CCA9B8];
        v106 = 23;
LABEL_69:
        [v105 hmErrorWithCode:v106];
        *a7 = v87 = 0;
LABEL_116:

        goto LABEL_117;
      }

      goto LABEL_92;
    }

    if (!v20)
    {
      v107 = objc_autoreleasePoolPush();
      v108 = self;
      v109 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = HMFGetLogIdentifier();
        v111 = [(HMDDeviceSetupSessionInternal *)v108 state];
        *buf = 138543618;
        v192 = v110;
        v193 = 2048;
        v194 = v111;
        _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid request state: %tu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v107);
      if (a7)
      {
        v105 = MEMORY[0x277CCA9B8];
        v106 = 58;
        goto LABEL_69;
      }

LABEL_92:
      v87 = 0;
      goto LABEL_116;
    }

    v186 = v12;
    v174 = a5;
    v93 = [v20 objectForKeyedSubscript:@"ac"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    v84 = v94;

    if (!v84)
    {
LABEL_110:
      [(HMDDeviceSetupSessionInternal *)self setState:3];
LABEL_111:

      if ([(HMDDeviceSetupSessionInternal *)self state]== 3)
      {
        v87 = 1;
        v12 = v186;
      }

      else
      {
        v154 = objc_autoreleasePoolPush();
        v155 = self;
        v156 = HMFGetOSLogHandle();
        v12 = v186;
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          v157 = HMFGetLogIdentifier();
          *buf = 138543618;
          v192 = v157;
          v193 = 2112;
          v194 = v31;
          _os_log_impl(&dword_229538000, v156, OS_LOG_TYPE_DEFAULT, "%{public}@Response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v154);
        v158 = encodeRootObjectForRemote(v31, 0, 0);
        [(HMDDeviceSetupSessionInternal *)v155 setSessionData:v158];

        v87 = 1;
      }

      goto LABEL_116;
    }

    v184 = a6;
    v95 = objc_autoreleasePoolPush();
    v96 = self;
    v97 = HMFGetOSLogHandle();
    v176 = v96;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = HMFGetLogIdentifier();
      *buf = 138543618;
      v192 = v98;
      v193 = 2112;
      v194 = v84;
      _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory description: %@", buf, 0x16u);

      v96 = v176;
    }

    objc_autoreleasePoolPop(v95);
    v99 = v84;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v101 = v99;
    }

    else
    {
      v101 = 0;
    }

    v169 = v101;

    if ((isKindOfClass & 1) == 0)
    {
LABEL_105:
      v151 = [v30 accessoryBrowser];
      [v151 addUnassociatedAccessory:v99 forDeviceSetup:1];

      if (a4)
      {
        *a4 = [v99 uuid];
      }

      if (v174)
      {
        *v174 = [v99 category];
      }

      v152 = encodeRootObjectForIncomingXPCMessage(v99, 0);
      v189 = *MEMORY[0x277CCEA00];
      v190 = v152;
      v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
      [(HMDDeviceSetupSessionInternal *)v176 setUserInfo:v153];

      goto LABEL_110;
    }

    v102 = [v20 objectForKeyedSubscript:@"hk"];
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

    contexta = v99;
    v181 = v84;
    v163 = v104;
    if (v104)
    {
      v168 = [[HMDHomeKitVersion alloc] initWithString:v104];
    }

    else
    {
      v168 = 0;
    }

    v112 = objc_autoreleasePoolPush();
    v113 = v176;
    v114 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = HMFGetLogIdentifier();
      *buf = 138543618;
      v192 = v115;
      v193 = 2112;
      v194 = v168;
      _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory HomeKit version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v112);
    v165 = +[HMDDeviceCapabilities supportedPairingCapabilities];
    v116 = [contexta minimumRequiredPairingSoftwareVersion];
    if (v116)
    {
      v117 = +[HMDHomeKitVersion currentVersion];
      [contexta minimumRequiredPairingSoftwareVersion];
      v119 = v118 = v31;
      LODWORD(v161) = [v117 isAtLeastVersion:v119];

      v31 = v118;
    }

    else
    {
      LODWORD(v161) = 1;
    }

    v120 = objc_autoreleasePoolPush();
    v121 = v113;
    v122 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = HMFGetLogIdentifier();
      HMFBooleanToString();
      v124 = v178 = v31;
      *buf = 138543874;
      v192 = v123;
      v193 = 2048;
      v194 = v165;
      v195 = 2112;
      v196 = v124;
      _os_log_impl(&dword_229538000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@Our pairing capabilities: 0x%lx, minimum software version satisfied: %@", buf, 0x20u);

      v31 = v178;
    }

    objc_autoreleasePoolPop(v120);
    if ([contexta canPairGivenCapabilities:v165])
    {
      v12 = v186;
      if (v161)
      {
        v125 = +[HMDHomeKitVersion version10];
        if ([(HMDHomeKitVersion *)v168 isAtLeastVersion:v125])
        {

LABEL_99:
          v146 = a4;
          v147 = objc_autoreleasePoolPush();
          v148 = v121;
          v149 = HMFGetOSLogHandle();
          v84 = v181;
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            v150 = HMFGetLogIdentifier();
            *buf = 138543362;
            v192 = v150;
            _os_log_impl(&dword_229538000, v149, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory HomeKit version indicates HH2 support, continuing normally", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v147);
          a4 = v146;
          v99 = contexta;
LABEL_102:
          if (v184)
          {
            *v184 = [v99 idsIdentifierString];
          }

          goto LABEL_105;
        }

        v137 = [contexta category];
        [v137 categoryType];
        v139 = v138 = v31;
        v166 = [v139 isEqualToString:*MEMORY[0x277CCE8B0]];

        v31 = v138;
        if ((v166 & 1) == 0)
        {
          goto LABEL_99;
        }

        v140 = objc_autoreleasePoolPush();
        v141 = v121;
        v142 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v143 = HMFGetLogIdentifier();
          *buf = 138543362;
          v192 = v143;
          _os_log_impl(&dword_229538000, v142, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod upgrade and pairing engine", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v140);
        v144 = [v30 legacyAccessoryPairingController];
        v99 = contexta;
        v145 = [v144 pairAccessory:contexta];

        v84 = v181;
        if (v145)
        {
          goto LABEL_102;
        }

        v12 = v186;
        if (a7)
        {
          *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        }

LABEL_91:

        goto LABEL_92;
      }

      v133 = objc_autoreleasePoolPush();
      v134 = v121;
      v135 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        v136 = HMFGetLogIdentifier();
        *buf = 138543362;
        v192 = v136;
        _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_ERROR, "%{public}@Pairing device does not have minimum software version required by accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v133);
      v99 = contexta;
      if (!a7)
      {
        goto LABEL_91;
      }

      v130 = MEMORY[0x277CCA9B8];
      v131 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9026];
      v132 = @"Pairing device does not have minimum software version";
    }

    else
    {
      v126 = objc_autoreleasePoolPush();
      v127 = v121;
      v128 = HMFGetOSLogHandle();
      v12 = v186;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        v129 = HMFGetLogIdentifier();
        *buf = 138543362;
        v192 = v129;
        _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair as pairing device does not have all required capabilities required by accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v126);
      v99 = contexta;
      if (!a7)
      {
        goto LABEL_91;
      }

      v130 = MEMORY[0x277CCA9B8];
      v131 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9025];
      v132 = @"Pairing device does not have all required capabilities";
    }

    *a7 = [v130 hmErrorWithCode:48 description:@"Pairing not supported" reason:v132 suggestion:0 underlyingError:{v131, v161, v163}];

    goto LABEL_91;
  }

  v179 = a4;
  v182 = a6;
  v185 = a7;
  v14 = a5;
  v15 = MEMORY[0x277CCAAC8];
  v16 = +[HMDDeviceSetupServerSession allowedClasses];
  v188 = 0;
  v17 = v12;
  v18 = [v15 unarchivedObjectOfClasses:v16 fromData:v12 error:&v188];
  v19 = v188;

  v20 = v18;
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
  v26 = v25;
  if (v22)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v192 = v27;
      v193 = 2112;
      v194 = v22;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Processing request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = [v22 hmf_numberForKey:@"st"];
    v29 = [v28 integerValue];
    if (v29 == [(HMDDeviceSetupSessionInternal *)v24 state])
    {

      a5 = v14;
      v12 = v17;
      a6 = v182;
      a7 = v185;
      a4 = v179;
      goto LABEL_13;
    }

    v88 = objc_autoreleasePoolPush();
    v89 = v24;
    v90 = HMFGetOSLogHandle();
    v12 = v17;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = HMFGetLogIdentifier();
      v92 = [(HMDDeviceSetupSessionInternal *)v89 state];
      *buf = 138543874;
      v192 = v91;
      v193 = 2112;
      v194 = v28;
      v195 = 2048;
      v196 = v92;
      _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@Request state number, %@, does not match expected state number: %tu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v88);
    if (v185)
    {
      *v185 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    }

    v87 = 0;
    v30 = v19;
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v85 = HMFGetLogIdentifier();
      *buf = 138543618;
      v192 = v85;
      v193 = 2112;
      v194 = v19;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive request payload from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    if (v185)
    {
      v86 = v19;
      v87 = 0;
      *v185 = v19;
    }

    else
    {
      v87 = 0;
    }

    v30 = v20;
    v20 = v19;
    v12 = v17;
  }

LABEL_117:

  v159 = *MEMORY[0x277D85DE8];
  return v87;
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
  if (logCategory__hmf_once_t45 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45, &__block_literal_global_341);
  }

  v3 = logCategory__hmf_once_v46;

  return v3;
}

void __42__HMDDeviceSetupClientSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v46;
  logCategory__hmf_once_v46 = v1;
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