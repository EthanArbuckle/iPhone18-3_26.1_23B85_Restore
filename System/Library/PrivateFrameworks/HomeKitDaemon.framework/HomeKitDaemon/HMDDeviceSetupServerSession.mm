@interface HMDDeviceSetupServerSession
+ (BOOL)isSupported;
+ (id)allowedClasses;
+ (id)logCategory;
- (BOOL)processSessionData:(id)data outAccessoryUUID:(id *)d outAccessoryCategory:(id *)category outAccessoryIDSIdentifier:(id *)identifier error:(id *)error;
- (HMDDeviceSetupServerSession)initWithHomeManager:(id)manager userDefaults:(id)defaults;
@end

@implementation HMDDeviceSetupServerSession

- (BOOL)processSessionData:(id)data outAccessoryUUID:(id *)d outAccessoryCategory:(id *)category outAccessoryIDSIdentifier:(id *)identifier error:(id *)error
{
  v189 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServerDeviceSessionProcess", "", buf, 2u);
  }

  identifierCopy = identifier;
  homeManager = [(HMDDeviceSetupSessionInternal *)self homeManager];
  currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];
  if (!dataCopy)
  {
    dCopy2 = d;
    v31 = 0;
    v18 = 0;
LABEL_13:
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v176 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:0 remoteGateway:0 remoteUserIsAdministrator:0 user:0 supportedFeatures:0];
    state = [(HMDDeviceSetupSessionInternal *)self state];
    v180 = dictionary;
    if (state == 2)
    {
      v172 = v31;
      goto LABEL_67;
    }

    if (state != 1)
    {
      v117 = objc_autoreleasePoolPush();
      selfCopy = self;
      v119 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v121 = v120 = v31;
        *buf = 138543362;
        v184 = v121;
        _os_log_impl(&dword_229538000, v119, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized state or hit error.", buf, 0xCu);

        v31 = v120;
      }

      objc_autoreleasePoolPop(v117);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        *error = v107 = 0;
      }

      else
      {
        v107 = 0;
      }

      v135 = v180;
      v132 = v176;
      goto LABEL_117;
    }

    [currentAccessorySetupMetricDispatcher markSetupBeginStage:3 error:v18];
    v172 = v31;
    v34 = [v31 objectForKeyedSubscript:@"pi"];
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

    if (v36)
    {
      if ([homeManager setLocalPairingIdentity:v36 error:error])
      {
        v37 = self->_logger;
        v38 = v172;
        if (os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_229538000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedLocalControllerKey", "", buf, 2u);
        }

        categoryCopy = category;
        v178 = dataCopy;
        v39 = [v172 objectForKeyedSubscript:@"pi.hh2"];
        v165 = v39;
        if (v39)
        {
          v40 = v39;
          v41 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = HMFGetLogIdentifier();
            identifier = [v40 identifier];
            *buf = 138543618;
            v184 = v44;
            v185 = 2112;
            v186 = identifier;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Got the HH2 Pairing key during TTSU : %@. Going to save it to keychain store", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          systemStore = [MEMORY[0x277CFEC78] systemStore];
          v47 = [systemStore saveHH2PairingIdentity:v40 syncable:1];

          if ((v47 & 1) == 0)
          {
            v48 = objc_autoreleasePoolPush();
            v49 = selfCopy2;
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = HMFGetLogIdentifier();
              *buf = 138543362;
              v184 = v51;
              _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the HH2 key to keychain store. This will not fail TTSU as there can be multiple HH2 keys and the HomeKitDaemon will handle that appropriately.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v48);
            v52 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3401];

            v18 = v52;
          }

          v38 = v172;
        }

        v53 = [v38 hmf_numberForKey:@"mi.hh2"];
        v168 = v53;
        if (v53)
        {
          v54 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = HMFGetLogIdentifier();
            [v53 BOOLValue];
            v58 = HMFBooleanToString();
            *buf = 138543618;
            v184 = v57;
            v185 = 2112;
            v186 = v58;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Got the HH2 settings migration key during TTSU : %@. Going to save it to user defaults", buf, 0x16u);

            v53 = v168;
          }

          objc_autoreleasePoolPop(v54);
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [standardUserDefaults setBool:objc_msgSend(v53 forKey:{"BOOLValue"), @"mi.hh2"}];

          v38 = v172;
        }

        v174 = [v38 hmf_numberForKey:@"rpr"];
        if (v174)
        {
          v60 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = HMFGetLogIdentifier();
            [v174 BOOLValue];
            v64 = HMFBooleanToString();
            *buf = 138543618;
            v184 = v63;
            v185 = 2112;
            v186 = v64;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Got the home has reachable resident value during TTSU: %@.", buf, 0x16u);

            v53 = v168;
          }

          objc_autoreleasePoolPop(v60);
          standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [standardUserDefaults2 setBool:objc_msgSend(v174 forKey:{"BOOLValue"), @"rpr"}];
        }

        v66 = v36;
        bOOLValue = [v53 BOOLValue];
        v68 = [v172 hmf_numberForKey:@"sz.hh2"];
        bOOLValue2 = [v68 BOOLValue];

        [currentAccessorySetupMetricDispatcher markControllerHH2Mode:bOOLValue controllerHH2SentinelExists:bOOLValue2];
        v70 = [v172 objectForKeyedSubscript:@"session.id"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        v72 = v71;

        dictionary = v180;
        if (v72)
        {
          v73 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v75 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = HMFGetLogIdentifier();
            *buf = 138543618;
            v184 = v76;
            v185 = 2112;
            v186 = v72;
            _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Setting controller setup session identifier %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v73);
          [currentAccessorySetupMetricDispatcher setControllerSetupSessionIdentifier:v72];
        }

        v164 = v72;
        uuid = [homeManager uuid];
        [homeManager updateGenerationCounterWithReason:@"Device Setup Set Controller Keys" sourceUUID:uuid shouldNotifyClients:1];

        [currentAccessorySetupMetricDispatcher markSetupEndStage:3 error:v18];
        v78 = [v172 hmf_stringForKey:*MEMORY[0x277CD2450]];
        v79 = [v172 hmf_stringForKey:*MEMORY[0x277CD2470]];
        v80 = [v172 hmf_stringForKey:*MEMORY[0x277CD24A0]];
        v81 = v78;
        v82 = [v172 hmf_stringForKey:*MEMORY[0x277CD2498]];
        v83 = v66;
        v166 = v82;
        v167 = v80;
        if (v81 && v79 && v80 && v82)
        {
          v84 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v88 = v87 = v81;
            *buf = 138543362;
            v184 = v88;
            _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@Saving media system hints and persist to disk", buf, 0xCu);

            v81 = v87;
          }

          objc_autoreleasePoolPop(v84);
          [homeManager saveMediaSystemHintsWithHomeUUIDString:v81 mediaSystemUUIDString:v79 peerAccessoryUUIDString:v167 peerAccessoryRoleString:v166 persistToDisk:1];
          dictionary = v180;
        }

        v89 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v91 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v163 = v79;
          v92 = v83;
          v94 = v93 = v81;
          *buf = 138543362;
          v184 = v94;
          _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@Proceeding to M2", buf, 0xCu);

          v81 = v93;
          v83 = v92;
          v79 = v163;
        }

        objc_autoreleasePoolPop(v89);
        [(HMDDeviceSetupSessionInternal *)selfCopy7 setState:2];

        dataCopy = v178;
        category = categoryCopy;
LABEL_67:
        [currentAccessorySetupMetricDispatcher markSetupBeginStage:4 error:v18];
        accessoryBrowser = [homeManager accessoryBrowser];
        mediaBrowser = [accessoryBrowser mediaBrowser];
        currentAccessory = [mediaBrowser currentAccessory];

        if (!currentAccessory)
        {
          v122 = objc_autoreleasePoolPush();
          selfCopy8 = self;
          v124 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            v125 = HMFGetLogIdentifier();
            *buf = 138543362;
            v184 = v125;
            _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_ERROR, "%{public}@Did not obtain accessory in M2.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v122);
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:@"No accessory found from the browser"];
          v18 = uUIDString = v18;
          goto LABEL_109;
        }

        buf[0] = 0;
        AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HHTTSUMode", @"com.apple.homed", buf);
        v179 = dataCopy;
        categoryCopy2 = category;
        if (buf[0] && AppIntegerValue == 1)
        {
          v112 = objc_autoreleasePoolPush();
          selfCopy9 = self;
          v114 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v115 = HMFGetLogIdentifier();
            *buf = 138543362;
            v184 = v115;
            _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Allowing setup to proceed in HH2 mode as TTSU setting indicates we are good to proceed.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v112);
          dictionary = v180;
          v116 = dCopy2;
          goto LABEL_94;
        }

        minimumRequiredPairingSoftwareVersion = [currentAccessory minimumRequiredPairingSoftwareVersion];
        v116 = dCopy2;
        if (minimumRequiredPairingSoftwareVersion)
        {
        }

        else if ([currentAccessory canPairGivenCapabilities:1])
        {
LABEL_94:
          v141 = objc_autoreleasePoolPush();
          selfCopy10 = self;
          v143 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v145 = v144 = v116;
            *buf = 138543618;
            v184 = v145;
            v185 = 2112;
            v186 = currentAccessory;
            _os_log_impl(&dword_229538000, v143, OS_LOG_TYPE_DEFAULT, "%{public}@Set accessory %@", buf, 0x16u);

            v116 = v144;
          }

          objc_autoreleasePoolPop(v141);
          v146 = self->_logger;
          if (os_signpost_enabled(v146))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_229538000, v146, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SentUnassociatedAppleMediaAccessory", "", buf, 2u);
          }

          [dictionary setObject:currentAccessory forKeyedSubscript:@"ac"];
          if (identifierCopy)
          {
            *identifierCopy = [currentAccessory idsIdentifierString];
          }

          if (v116)
          {
            *v116 = [currentAccessory uuid];
          }

          if (categoryCopy2)
          {
            *categoryCopy2 = [currentAccessory category];
          }

          uuid2 = [currentAccessory uuid];
          uUIDString = [uuid2 UUIDString];

          if (uUIDString)
          {
            v148 = objc_autoreleasePoolPush();
            v149 = selfCopy10;
            v150 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
            {
              v151 = HMFGetLogIdentifier();
              *buf = 138543618;
              v184 = v151;
              v185 = 2112;
              v186 = uUIDString;
              _os_log_impl(&dword_229538000, v150, OS_LOG_TYPE_INFO, "%{public}@Saving model uuid for Core Data voucher %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v148);
            standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            [standardUserDefaults3 setObject:uUIDString forKey:@"HMDCurrentAccessoryModelUUID"];

            dataCopy = v179;
          }

          else
          {
            dataCopy = v179;
          }

LABEL_109:

          v153 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDDeviceSetupSessionInternal state](self, "state")}];
          v135 = v180;
          [v180 setObject:v153 forKeyedSubscript:@"st"];

          v154 = +[HMDHomeKitVersion currentVersion];
          versionString = [v154 versionString];
          [v180 setObject:versionString forKeyedSubscript:@"hk"];

          [(HMDDeviceSetupSessionInternal *)self setState:3];
          [currentAccessorySetupMetricDispatcher markSetupEndStage:4 error:v18];

          v156 = objc_autoreleasePoolPush();
          selfCopy11 = self;
          v158 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
          {
            v159 = HMFGetLogIdentifier();
            *buf = 138543618;
            v184 = v159;
            v185 = 2112;
            v186 = v180;
            _os_log_impl(&dword_229538000, v158, OS_LOG_TYPE_INFO, "%{public}@Response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v156);
          v132 = v176;
          [v176 encodeObject:v180 forKey:*MEMORY[0x277CCA308]];
          [v176 finishEncoding];
          encodedData = [v176 encodedData];
          [(HMDDeviceSetupSessionInternal *)selfCopy11 setSessionData:encodedData];

          v107 = 1;
          v31 = v172;
          goto LABEL_117;
        }

        [v176 setClassName:@"HMDUnassociatedAppleHomePodAccessory" forClass:objc_opt_class()];
        goto LABEL_94;
      }

      v136 = objc_autoreleasePoolPush();
      selfCopy12 = self;
      v138 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        v139 = HMFGetLogIdentifier();
        *buf = 138543362;
        v184 = v139;
        _os_log_impl(&dword_229538000, v138, OS_LOG_TYPE_ERROR, "%{public}@Failed to set local pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v136);
      v31 = v172;
      v132 = v176;
      if (error)
      {
        v140 = *error;
      }

      else
      {
        v140 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:16 reason:@"Failed to set local pairing identity"];
      }

      v134 = v140;
    }

    else
    {
      v128 = objc_autoreleasePoolPush();
      selfCopy13 = self;
      v130 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        v131 = HMFGetLogIdentifier();
        *buf = 138543362;
        v184 = v131;
        _os_log_impl(&dword_229538000, v130, OS_LOG_TYPE_ERROR, "%{public}@Request missing pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v128);
      v132 = v176;
      if (!error)
      {
        v31 = v172;
        v135 = v180;
LABEL_116:
        [currentAccessorySetupMetricDispatcher markSetupEndStage:3 error:v18];

        v107 = 0;
LABEL_117:

        goto LABEL_118;
      }

      v133 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      *error = v133;
      v134 = v133;
      v31 = v172;
    }

    v135 = v180;

    v18 = v134;
    goto LABEL_116;
  }

  v15 = MEMORY[0x277CCAAC8];
  v16 = +[HMDDeviceSetupClientSession allowedClasses];
  v182 = 0;
  v17 = [v15 unarchivedObjectOfClasses:v16 fromData:dataCopy error:&v182];
  v18 = v182;

  if (v17)
  {
    dCopy2 = d;
    v19 = currentAccessorySetupMetricDispatcher;
    categoryCopy3 = category;
    v173 = v19;
    v177 = dataCopy;
    v21 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v26 = HMFGetOSLogHandle();
    v27 = v23;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v184 = v28;
      v185 = 2112;
      v186 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Processing request: %@", buf, 0x16u);

      v23 = v27;
    }

    objc_autoreleasePoolPop(v24);
    v29 = [v23 hmf_numberForKey:@"st"];
    integerValue = [v29 integerValue];
    if (integerValue == [(HMDDeviceSetupSessionInternal *)selfCopy14 state])
    {

      dataCopy = v177;
      v31 = v27;
      category = categoryCopy3;
      currentAccessorySetupMetricDispatcher = v173;
      goto LABEL_13;
    }

    v100 = objc_autoreleasePoolPush();
    v101 = selfCopy14;
    v102 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = HMFGetLogIdentifier();
      state2 = [(HMDDeviceSetupSessionInternal *)v101 state];
      *buf = 138543874;
      v184 = v103;
      v185 = 2112;
      v186 = v29;
      v187 = 2048;
      v188 = state2;
      _os_log_impl(&dword_229538000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@Request state number, %@, does not match expected state number: %tu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v100);
    if (error)
    {
      v105 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      *error = v105;
      v106 = v105;

      v18 = v106;
    }

    dataCopy = v177;
    currentAccessorySetupMetricDispatcher = v173;
    [v173 markSetupBeginStage:3 error:v18];
  }

  else
  {
    v95 = objc_autoreleasePoolPush();
    selfCopy15 = self;
    v97 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = HMFGetLogIdentifier();
      *buf = 138543618;
      v184 = v98;
      v185 = 2112;
      v186 = v18;
      _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive request payload from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v95);
    if (error)
    {
      v99 = v18;
      *error = v18;
    }

    [currentAccessorySetupMetricDispatcher markSetupBeginStage:3 error:v18];
  }

  v107 = 0;
LABEL_118:

  v161 = *MEMORY[0x277D85DE8];
  return v107;
}

- (HMDDeviceSetupServerSession)initWithHomeManager:(id)manager userDefaults:(id)defaults
{
  v8.receiver = self;
  v8.super_class = HMDDeviceSetupServerSession;
  v4 = [(HMDDeviceSetupSessionInternal *)&v8 initWithHomeManager:manager userDefaults:defaults];
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
  if (logCategory__hmf_once_t74 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t74, &__block_literal_global_372);
  }

  v3 = logCategory__hmf_once_v75;

  return v3;
}

void __42__HMDDeviceSetupServerSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v75;
  logCategory__hmf_once_v75 = v1;
}

+ (id)allowedClasses
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
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
  supportsDeviceSetup = [v2 supportsDeviceSetup];

  return supportsDeviceSetup;
}

@end