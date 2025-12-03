@interface HMMTRSyncClusterFanControl
+ (id)logCategory;
- (id)readAttributePluginFanModeWithParams:(id)params;
- (id)readAttributePluginRockSettingWithParams:(id)params;
- (void)updatedValuePluginFanModeForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginRockSettingForAttributeReport:(id)report responseHandler:(id)handler;
- (void)writeAttributePluginFanModeWithValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginRockSettingWithValue:(id)value expectedValueInterval:(id)interval;
@end

@implementation HMMTRSyncClusterFanControl

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_11950 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_11950, &__block_literal_global_11951);
  }

  v3 = logCategory__hmf_once_v32_11952;

  return v3;
}

uint64_t __41__HMMTRSyncClusterFanControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_11952;
  logCategory__hmf_once_v32_11952 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)updatedValuePluginFanModeForAttributeReport:(id)report responseHandler:(id)handler
{
  v93 = *MEMORY[0x277D85DE8];
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
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  v18 = MEMORY[0x277CD50D8];
  if (v17)
  {
    HMFGetLogIdentifier();
    v19 = v74 = selfCopy;
    [v10 endpoint];
    v20 = v77 = handlerCopy;
    [v10 cluster];
    v21 = v80 = v13;
    attribute = [v10 attribute];
    v23 = v10;
    v24 = *v18;
    v25 = [reportCopy objectForKeyedSubscript:*v18];
    *buf = 138544386;
    v84 = v19;
    v85 = 2112;
    v86 = v20;
    v87 = 2112;
    v88 = v21;
    v89 = 2112;
    v90 = attribute;
    v91 = 2112;
    v92 = v25;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v13 = v80;
    handlerCopy = v77;

    selfCopy = v74;
  }

  else
  {
    v23 = v10;
    v24 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v26 = [reportCopy objectForKeyedSubscript:v24];
  if (v26)
  {
    v27 = reportCopy;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  cluster = [v23 cluster];
  v30 = [cluster isEqualToNumber:&unk_283EE90C0];

  if (v30)
  {
    attribute2 = [v23 attribute];
    v32 = [attribute2 isEqualToNumber:&unk_283EE9150];

    if (v32)
    {
      v33 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v28];
      v34 = v33;
      if (v33)
      {
        if (![v33 isEqualToNumber:&unk_283EE90F0])
        {
          unsignedIntValue = [v34 unsignedIntValue];
          if ((unsignedIntValue - 1) >= 3)
          {
            if (unsignedIntValue)
            {
              v69 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
              handlerCopy[2](handlerCopy, 0, v69);

              goto LABEL_59;
            }

            v57 = handlerCopy[2];
            v58 = &unk_283EE9090;
          }

          else
          {
            v57 = handlerCopy[2];
            v58 = &unk_283EE9108;
          }

          v57(handlerCopy, v58, 0);
          goto LABEL_59;
        }

        v75 = v23;
        v35 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v36 = [(MTRClusterFanControl *)selfCopy readAttributePercentCurrentWithParams:v35];
        v37 = selfCopy;
        v38 = v36;
        if (!v36)
        {
          v78 = handlerCopy;
          v82 = v13;
          v59 = objc_autoreleasePoolPush();
          v60 = v37;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = HMFGetLogIdentifier();
            endpoint = [v75 endpoint];
            *buf = 138543618;
            v84 = v62;
            v85 = 2112;
            v86 = endpoint;
            _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read PercentCurrent attribute on endpoint %@. Cannot update CurrentAirPurifierState.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v59);
          v41 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          handlerCopy = v78;
          v78[2](v78, 0, v41);
          v13 = v82;
          goto LABEL_47;
        }

        v39 = [v36 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;

        if (v41)
        {
          if ([v41 unsignedIntValue])
          {
            v42 = &unk_283EE9108;
          }

          else
          {
            v42 = &unk_283EE9078;
          }

          (handlerCopy)[2](handlerCopy, v42, 0);
LABEL_47:

          v23 = v75;
          goto LABEL_59;
        }

        _HMFPreconditionFailure();
LABEL_66:
        _HMFPreconditionFailure();
      }

LABEL_37:
      handlerCopy[2](handlerCopy, 0, v13);
LABEL_59:

      goto LABEL_60;
    }

    attribute3 = [v23 attribute];
    v44 = [attribute3 isEqualToNumber:&unk_283EE9168];

    if (v44)
    {
      v34 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v28];
      if (!v34)
      {
        goto LABEL_37;
      }

      v81 = v13;
      v76 = v23;
      v45 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v46 = [(MTRClusterFanControl *)selfCopy readAttributeFanModeWithParams:v45];
      v47 = selfCopy;
      v48 = v46;
      if (!v46)
      {
        v79 = handlerCopy;
        v64 = objc_autoreleasePoolPush();
        v65 = v47;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = HMFGetLogIdentifier();
          endpoint2 = [v76 endpoint];
          *buf = 138543618;
          v84 = v67;
          v85 = 2112;
          v86 = endpoint2;
          _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read FanMode attribute on endpoint %@. Cannot update CurrentAirPurifierState.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        v51 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
        handlerCopy = v79;
        v79[2](v79, 0, v51);
        goto LABEL_58;
      }

      v49 = [v46 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50;

      if (!v51)
      {
        goto LABEL_66;
      }

      v52 = [v34 isEqualToNumber:&unk_283EE90A8];
      v53 = [v51 isEqualToNumber:&unk_283EE90F0];
      if (v52)
      {
        if (v53)
        {
          v54 = handlerCopy[2];
          v55 = &unk_283EE9078;
        }

        else
        {
          v70 = [v51 isEqualToNumber:&unk_283EE9120];
          v54 = handlerCopy[2];
          if (!v70)
          {
            v71 = handlerCopy;
            v55 = 0;
            goto LABEL_57;
          }

          v55 = &unk_283EE9090;
        }
      }

      else
      {
        if (!v53)
        {
          if ([v51 isEqualToNumber:&unk_283EE9120])
          {
            v73 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
            handlerCopy[2](handlerCopy, 0, v73);
          }

          else
          {
            (handlerCopy)[2](handlerCopy, &unk_283EE9108, 0);
          }

          goto LABEL_58;
        }

        v54 = handlerCopy[2];
        v55 = &unk_283EE9108;
      }

      v71 = handlerCopy;
LABEL_57:
      v54(v71, v55, 0);
LABEL_58:

      v23 = v76;
      v13 = v81;
      goto LABEL_59;
    }
  }

  handlerCopy[2](handlerCopy, 0, v13);
LABEL_60:

  v72 = *MEMORY[0x277D85DE8];
}

- (void)writeAttributePluginFanModeWithValue:(id)value expectedValueInterval:(id)interval
{
  v26 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = *MEMORY[0x277CD51A0];
  v9 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
  }

  unsignedIntValue = [v11 unsignedIntValue];
  if (unsignedIntValue > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_2786F0C60[unsignedIntValue];
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v17;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@writeAttributePluginFanModeWithValue currentAirPurifierState %@, fanModeValue %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
  [v18 setValue:v13 forKey:v8];
  [(MTRClusterFanControl *)selfCopy writeAttributeFanModeWithValue:v18 expectedValueInterval:intervalCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginFanModeWithParams:(id)params
{
  v60 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterFanControl *)self readAttributeFanModeWithParams:v5];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = *MEMORY[0x277CD51A0];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v15;
        v58 = 2112;
        v59 = v11;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@readAttributePluginFanModeWithParams fanModeValue %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (![v11 isEqualToNumber:&unk_283EE90F0])
      {
        unsignedIntValue = [v11 unsignedIntValue];
        if ((unsignedIntValue - 1) >= 3)
        {
          if (unsignedIntValue)
          {
            v31 = 0;
            goto LABEL_31;
          }

          v37 = *MEMORY[0x277CD5198];
          v48 = *MEMORY[0x277CD5188];
          v49 = v8;
          v50 = v37;
          v51 = &unk_283EE9090;
          v34 = MEMORY[0x277CBEAC0];
          v35 = &v50;
          v36 = &v48;
        }

        else
        {
          v33 = *MEMORY[0x277CD5198];
          v44 = *MEMORY[0x277CD5188];
          v45 = v8;
          v46 = v33;
          v47 = &unk_283EE9108;
          v34 = MEMORY[0x277CBEAC0];
          v35 = &v46;
          v36 = &v44;
        }

        v31 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:{2, v44, v45, v46, v47, v48, v49, v50, v51}];
LABEL_31:

        goto LABEL_32;
      }

      v16 = [(MTRClusterFanControl *)selfCopy readAttributePercentCurrentWithParams:v5];
      v17 = v16;
      if (!v16)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543362;
          v57 = v41;
          _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read PercentCurrent attribute", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v38);
        v31 = 0;
        goto LABEL_30;
      }

      v18 = [v16 objectForKeyedSubscript:v8];
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

      if (v20)
      {
        unsignedIntValue2 = [v20 unsignedIntValue];
        v22 = *MEMORY[0x277CD5188];
        v23 = *MEMORY[0x277CD5198];
        if (unsignedIntValue2)
        {
          v54[0] = *MEMORY[0x277CD5188];
          v54[1] = v8;
          v55[0] = v23;
          v55[1] = &unk_283EE9108;
          v24 = MEMORY[0x277CBEAC0];
          v25 = v55;
          v26 = v54;
        }

        else
        {
          v52[0] = *MEMORY[0x277CD5188];
          v52[1] = v8;
          v53[0] = v23;
          v53[1] = &unk_283EE9078;
          v24 = MEMORY[0x277CBEAC0];
          v25 = v53;
          v26 = v52;
        }

        v31 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:2];

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v57 = v30;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read FanMode attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v31 = 0;
LABEL_32:

  v42 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)updatedValuePluginRockSettingForAttributeReport:(id)report responseHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
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

  v49 = v12;

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v17 = v16 = reportCopy;
    [v10 endpoint];
    v18 = v47 = handlerCopy;
    cluster = [v10 cluster];
    [v10 attribute];
    v20 = v46 = v13;
    v21 = *MEMORY[0x277CD50D8];
    v22 = [v16 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v51 = v17;
    v52 = 2112;
    v53 = v18;
    v54 = 2112;
    v55 = cluster;
    v56 = 2112;
    v57 = v20;
    v58 = 2112;
    v59 = v22;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v13 = v46;
    handlerCopy = v47;

    reportCopy = v16;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v13);
  v23 = [reportCopy objectForKeyedSubscript:v21];
  if (v23)
  {
    v24 = reportCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  cluster2 = [v10 cluster];
  if (([cluster2 isEqualToNumber:&unk_283EE90C0] & 1) == 0)
  {

LABEL_19:
    v31 = v49;
    handlerCopy[2](handlerCopy, 0, v49);
    goto LABEL_20;
  }

  attribute = [v10 attribute];
  v28 = [attribute isEqualToNumber:&unk_283EE90D8];

  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v25];
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = v29;
  if ([v29 isEqualToNumber:&unk_283EE90A8])
  {
    v31 = v49;
    (handlerCopy)[2](handlerCopy, &unk_283EE9090, v49);
  }

  else
  {
    v33 = reportCopy;
    v34 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v35 = [(MTRClusterFanControl *)selfCopy readAttributeRockSupportWithParams:v34];
    v36 = v35;
    if (v35)
    {
      v37 = [v35 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;

      if (!v39)
      {
        _HMFPreconditionFailure();
      }

      unsignedIntValue = [v39 unsignedIntValue];
      if (([v30 unsignedIntValue] & unsignedIntValue) != 0)
      {
        v41 = &unk_283EE9078;
      }

      else
      {
        v41 = &unk_283EE9090;
      }

      v31 = v49;
      (handlerCopy)[2](handlerCopy, v41, v49);
    }

    else
    {
      v48 = handlerCopy;
      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v45;
        _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSupport attribute. Cannot write RockSetting attribute.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      v39 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      handlerCopy = v48;
      v48[2](v48, 0, v39);
      v31 = v49;
    }

    reportCopy = v33;
  }

LABEL_20:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)writeAttributePluginRockSettingWithValue:(id)value expectedValueInterval:(id)interval
{
  v42 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = *MEMORY[0x277CD51A0];
  v9 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_27;
  }

  if ([v11 isEqualToNumber:&unk_283EE9090])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Write attribute RockSetting 0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
    [v16 setValue:&unk_283EE90A8 forKey:v8];
    [(MTRClusterFanControl *)selfCopy writeAttributeRockSettingWithValue:v16 expectedValueInterval:intervalCopy];

    goto LABEL_25;
  }

  if ([v11 isEqualToNumber:&unk_283EE9078])
  {
    v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v18 = [(MTRClusterFanControl *)self readAttributeRockSupportWithParams:v17];
    v19 = v18;
    if (!v18)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v34;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSupport attribute. Cannot write RockSetting attribute.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      goto LABEL_24;
    }

    v20 = [v18 objectForKeyedSubscript:v8];
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

    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
      context = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v26 = v36 = v17;
        *buf = 138543618;
        v39 = v26;
        v40 = 2112;
        v41 = v22;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Write attribute RockSetting %@", buf, 0x16u);

        v17 = v36;
      }

      objc_autoreleasePoolPop(context);
      [v23 setValue:v22 forKey:v8];
      [(MTRClusterFanControl *)selfCopy3 writeAttributeRockSettingWithValue:v23 expectedValueInterval:intervalCopy];

LABEL_24:
      goto LABEL_25;
    }

LABEL_27:
    _HMFPreconditionFailure();
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v30;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot write RockSetting attribute. Unexpected swing value %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_25:

  v35 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginRockSettingWithParams:(id)params
{
  v55 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterFanControl *)self readAttributeRockSupportWithParams:v5];
  v7 = v6;
  if (v6)
  {
    v8 = *MEMORY[0x277CD51A0];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [(MTRClusterFanControl *)self readAttributeRockSettingWithParams:v5];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          unsignedIntegerValue2 = [v16 unsignedIntegerValue];
          v19 = *MEMORY[0x277CD5188];
          v20 = *MEMORY[0x277CD5198];
          if ((unsignedIntegerValue2 & unsignedIntegerValue) != 0)
          {
            v49[0] = *MEMORY[0x277CD5188];
            v49[1] = v8;
            v50[0] = v20;
            v50[1] = &unk_283EE9078;
            v21 = MEMORY[0x277CBEAC0];
            v22 = v50;
            v23 = v49;
          }

          else
          {
            v47[0] = *MEMORY[0x277CD5188];
            v47[1] = v8;
            v48[0] = v20;
            v48[1] = &unk_283EE9090;
            v21 = MEMORY[0x277CBEAC0];
            v22 = v48;
            v23 = v47;
          }

          v28 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:2];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            v41 = [v13 objectForKeyedSubscript:v8];
            *buf = 138543618;
            v52 = v45;
            v53 = 2112;
            v54 = objc_opt_class();
            v42 = v54;
            _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@RockSetting was read with unexpected class type %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          v28 = 0;
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v52 = v38;
          _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSetting attribute", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        v28 = 0;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v7 objectForKeyedSubscript:v8];
        *buf = 138543618;
        v52 = v32;
        v53 = 2112;
        v54 = objc_opt_class();
        v34 = v54;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@RockSupport was read with unexpected class type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v28 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v27;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSupport attribute", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v28;
}

@end