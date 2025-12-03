@interface HMMTRSyncClusterHEPAFilterMonitoring
+ (id)logCategory;
- (id)readAttributePluginConditionWithParams:(id)params;
- (void)updatedValuePluginConditionForAttributeReport:(id)report responseHandler:(id)handler;
@end

@implementation HMMTRSyncClusterHEPAFilterMonitoring

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_357 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_357, &__block_literal_global_358);
  }

  v3 = logCategory__hmf_once_v15_359;

  return v3;
}

uint64_t __51__HMMTRSyncClusterHEPAFilterMonitoring_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v15_359 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (void)updatedValuePluginConditionForAttributeReport:(id)report responseHandler:(id)handler
{
  v80 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  v8 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD5128]];
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

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v17 = v68 = v13;
    [v10 endpoint];
    v18 = v66 = handlerCopy;
    cluster = [v10 cluster];
    [v10 attribute];
    v20 = v64 = v14;
    v21 = *MEMORY[0x277CD50D8];
    [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    v23 = v22 = selfCopy;
    *buf = 138544386;
    v71 = v17;
    v72 = 2112;
    v73 = v18;
    v74 = 2112;
    v75 = cluster;
    v76 = 2112;
    v77 = v20;
    v78 = 2112;
    v79 = v23;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    selfCopy = v22;
    v14 = v64;

    handlerCopy = v66;
    v13 = v68;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v24 = [reportCopy objectForKeyedSubscript:v21];
  if (v24)
  {
    v25 = reportCopy;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  cluster2 = [v10 cluster];
  if (([cluster2 isEqualToNumber:&unk_283EE7B78] & 1) == 0)
  {

LABEL_21:
    (handlerCopy[2])(handlerCopy, 0, v13);
    goto LABEL_22;
  }

  v28 = selfCopy;
  attribute = [v10 attribute];
  v30 = [attribute isEqualToNumber:&unk_283EE7B90];

  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v26];
  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = v31;
  v69 = v13;
  v65 = v10;
  integerValue = [v31 integerValue];
  if (integerValue < 0x65)
  {
    v40 = integerValue;
    v63 = v32;
    v41 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v42 = [(MTRClusterHEPAFilterMonitoring *)v28 readAttributeDegradationDirectionWithParams:v41];
    v43 = v42;
    v67 = handlerCopy;
    if (v42)
    {
      v44 = [v42 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (v46)
      {
        integerValue2 = [v46 integerValue];
        if (integerValue2 == 1)
        {
          (v67[2])(v67, v63, v69);
        }

        else
        {
          if (integerValue2)
          {
            v59 = objc_autoreleasePoolPush();
            v60 = v28;
            v61 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = HMFGetLogIdentifier();
              *buf = 138543618;
              v71 = v62;
              v72 = 2112;
              v73 = v46;
              _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid %@ value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v59);
            v48 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
            v49 = v67[2];
          }

          else
          {
            v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100 - v40];
            v49 = v67[2];
          }

          v49();
        }
      }

      else
      {
        v54 = objc_autoreleasePoolPush();
        v55 = v28;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543362;
          v71 = v57;
          _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid nil value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v54);
        v58 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
        (v67[2])(v67, 0, v58);

        v46 = 0;
      }
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v28;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v53;
        _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v46 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      (v67[2])(v67, 0, v46);
    }

    handlerCopy = v67;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v28;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v37;
      v72 = 2112;
      v73 = v32;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid %@ value received from Condition attribute report for MTRClusterHEPAFilterMonitoring cluster", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
    (handlerCopy[2])(handlerCopy, 0, v38);
  }

  v10 = v65;
  v13 = v69;
LABEL_22:

  v39 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginConditionWithParams:(id)params
{
  v44 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterHEPAFilterMonitoring *)self readAttributeDegradationDirectionWithParams:v5];
  v7 = *MEMORY[0x277CD51A0];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(MTRClusterHEPAFilterMonitoring *)self readAttributeConditionWithParams:v5];
    v12 = [v11 objectForKeyedSubscript:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v19;
        v20 = "%{public}@Error: Invalid nil value read for Condition attribute from MTRClusterHEPAFilterMonitoring cluster";
        v26 = v18;
        v27 = 12;
LABEL_24:
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, v20, buf, v27);

        goto LABEL_25;
      }

      goto LABEL_25;
    }

    integerValue = [v14 integerValue];
    if (integerValue >= 0x65)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v19;
        v42 = 2112;
        v43 = v14;
        v20 = "%{public}@Error: Invalid %@ value read for Condition attribute from MTRClusterHEPAFilterMonitoring cluster";
LABEL_23:
        v26 = v18;
        v27 = 22;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v28 = integerValue;
    integerValue2 = [v10 integerValue];
    if (integerValue2 == 1)
    {
      v33 = *MEMORY[0x277CD5198];
      v36[0] = *MEMORY[0x277CD5188];
      v36[1] = v7;
      v37[0] = v33;
      v37[1] = v14;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    }

    else
    {
      if (integerValue2)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v19;
          v42 = 2112;
          v43 = v10;
          v20 = "%{public}@Error: Invalid %@ value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster";
          goto LABEL_23;
        }

LABEL_25:

        objc_autoreleasePoolPop(v16);
        v25 = 0;
        goto LABEL_26;
      }

      v30 = *MEMORY[0x277CD5188];
      v31 = *MEMORY[0x277CD5198];
      v38[1] = v7;
      v39[0] = v31;
      v38[0] = v30;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100 - v28];
      v39[1] = v32;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    }

LABEL_26:

    goto LABEL_27;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v24;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid nil value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = 0;
LABEL_27:

  v34 = *MEMORY[0x277D85DE8];

  return v25;
}

@end