@interface HMMTRSyncClusterColorControl
+ (id)logCategory;
- (id)logIdentifier;
- (id)readAttributePluginColorTemperatureMiredsWithParams:(id)a3;
- (void)moveToCustomColorTemperatureValue:(id)a3 transitionTime:(id)a4 completionHandler:(id)a5;
- (void)moveToCustomColorTemperatureWithParams:(id)a3 completionHandler:(id)a4;
- (void)moveToPluginColorTemperatureWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completionHandler:(id)a6;
- (void)readColorModeAndColorTemperatureWithCompletion:(id)a3;
- (void)readColorTemperatureAttributesWithCompletion:(id)a3;
- (void)readStartUpColorTemperatureWithCompletion:(id)a3;
- (void)stopMoveToColorTemperatureCommandWithCompletion:(id)a3;
- (void)supportsColorTemperatureRangeWithMinColorTemperature:(id)a3 maxColorTemperature:(id)a4 completion:(id)a5;
- (void)writeStartUpColorTemperature:(id)a3 completion:(id)a4;
@end

@implementation HMMTRSyncClusterColorControl

+ (id)logCategory
{
  if (logCategory__hmf_once_t32 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32, &__block_literal_global_124);
  }

  v3 = logCategory__hmf_once_v33;

  return v3;
}

uint64_t __43__HMMTRSyncClusterColorControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v33 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMMTRSyncClusterColorControl *)self endpointID];
  v4 = [v2 stringWithFormat:@"endPoint/%@", v3];

  return v4;
}

- (void)readColorTemperatureAttributesWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(HMMTRColorControlColorTemperatureAttributes);
  v6 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v8 = [(MTRClusterColorControl *)self readAttributeColorModeWithParams:v6];
  if (!v8)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v25 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v25;
    v26 = "%{public}@Failed to read color control attribute color mode.";
LABEL_20:
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, v26, &v28, 0xCu);

    goto LABEL_21;
  }

  v9 = v8;
  v10 = *MEMORY[0x277CD51A0];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

  [(HMMTRColorControlColorTemperatureAttributes *)v5 setColorMode:v13];
  v14 = [(MTRClusterColorControl *)self readAttributeRemainingTimeWithParams:v6];

  if (!v14)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v25 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v25;
    v26 = "%{public}@Failed to read color control attribute remaining time.";
    goto LABEL_20;
  }

  v15 = [v14 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [(HMMTRColorControlColorTemperatureAttributes *)v5 setRemainingTime:v17];
  v18 = [(MTRClusterColorControl *)self readAttributeColorTemperatureMiredsWithParams:v6];

  if (!v18)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v25;
      v26 = "%{public}@Failed to read color control attribute color temperature mireds.";
      goto LABEL_20;
    }

LABEL_21:

    objc_autoreleasePoolPop(v22);
    v4[2](v4, 0, v7);
    goto LABEL_22;
  }

  v19 = [v18 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  [(HMMTRColorControlColorTemperatureAttributes *)v5 setColorTemperatureMireds:v21];
  (v4)[2](v4, v5, 0);

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)readColorModeAndColorTemperatureWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@readColorModeAndColorTemperatureWithCompletion", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v11 = [(MTRClusterColorControl *)v6 readAttributeColorModeWithParams:v9];
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x277CD51A0];
    v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    v17 = [(MTRClusterColorControl *)v6 readAttributeColorTemperatureMiredsWithParams:v9];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:v13];
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

      v4[2](v4, v16, v20, 0);
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v6;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v28;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute color temperature.", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      (v4)[2](v4, 0, 0, v10);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v6;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute color mode.", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    (v4)[2](v4, 0, 0, v10);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)stopMoveToColorTemperatureCommandWithCompletion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = *MEMORY[0x277D0F1A0];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v8 = [(MTRClusterColorControl *)self readAttributeColorModeWithParams:v5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      if ([v12 intValue] == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277CD52E8]);
        [v13 setOptionsMask:&unk_283EE7998];
        [v13 setOptionsOverride:&unk_283EE7998];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __80__HMMTRSyncClusterColorControl_stopMoveToColorTemperatureCommandWithCompletion___block_invoke;
        v23[3] = &unk_2786F0BC0;
        v24 = v4;
        [(MTRClusterColorControl *)self stopMoveStepWithParams:v13 expectedValues:0 expectedValueInterval:&unk_283EE79C8 completion:v23];

LABEL_14:
        goto LABEL_15;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = v6;
      v20 = 9;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = v6;
      v20 = 8;
    }

    v21 = [v18 errorWithDomain:v19 code:v20 userInfo:0];
    (*(v4 + 2))(v4, v21);

    goto LABEL_14;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v17;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to read color mode attribute.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  (*(v4 + 2))(v4, v7);
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)readStartUpColorTemperatureWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v7 = [(MTRClusterColorControl *)self readAttributeStartUpColorTemperatureMiredsWithParams:v5];
  v8 = v7;
  if (v7)
  {
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

    v4[2](v4, v11, 0);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to read startup color temperature attribute.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    (v4)[2](v4, 0, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)writeStartUpColorTemperature:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  [v9 setValue:v8 forKey:*MEMORY[0x277CD51A0]];

  [(MTRClusterColorControl *)self writeAttributeStartUpColorTemperatureMiredsWithValue:v9 expectedValueInterval:&unk_283EE79C8 params:0];
  v7[2](v7, 0);
}

- (void)supportsColorTemperatureRangeWithMinColorTemperature:(id)a3 maxColorTemperature:(id)a4 completion:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v12 = *MEMORY[0x277D0F1A0];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v14 = [(MTRClusterColorControl *)self readAttributeColorCapabilitiesWithParams:v11];
  if (v14)
  {
    v15 = v14;
    v59 = v13;
    v60 = v9;
    v16 = *MEMORY[0x277CD51A0];
    v17 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 unsignedIntegerValue];
    v21 = [(MTRClusterColorControl *)self readAttributeColorTempPhysicalMinMiredsWithParams:v11];

    if (v21)
    {
      v22 = [v21 objectForKeyedSubscript:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v58 = v23;

      v24 = [(MTRClusterColorControl *)self readAttributeColorTempPhysicalMaxMiredsWithParams:v11];

      if (v24)
      {
        v56 = v24;
        v25 = [v24 objectForKeyedSubscript:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v57 = v26;

        v27 = objc_autoreleasePoolPush();
        v28 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v31 = HMFBooleanToString();
          *buf = 138544642;
          v62 = v30;
          v63 = 2112;
          v64 = v31;
          v65 = 2112;
          v66 = v58;
          v67 = 2112;
          v68 = v57;
          v69 = 2112;
          v70 = v8;
          v71 = 2112;
          v72 = v60;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Read color control attribute colorCapabilities supportsColorTempFeature: %@ accessoryRange: [%@ : %@]  allowedRange: [%@ : %@]", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v27);
        v9 = v60;
        if ((v20 & 0x10) != 0 && (v32 = [v58 longValue], v32 <= objc_msgSend(v60, "longValue")) && (v33 = objc_msgSend(v57, "longValue"), v33 >= objc_msgSend(v8, "longValue")))
        {
          v52 = objc_autoreleasePoolPush();
          v53 = v28;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v55;
            _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_INFO, "%{public}@Accessory supports expected color temp range", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v52);
          v10[2](v10, 1, 0, v58, v57);
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = v28;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v37;
            _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Accessory does not support expected color temp range", buf, 0xCu);

            v9 = v60;
          }

          objc_autoreleasePoolPop(v34);
          v38 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:3 userInfo:0];
          (v10)[2](v10, 0, v38, v58, v57);
        }

        v13 = v59;
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        v48 = self;
        v49 = HMFGetOSLogHandle();
        v9 = v60;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543362;
          v62 = v50;
          _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute physical max mired.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v47);
        v13 = v59;
        (v10)[2](v10, 0, v59, v58, 0);
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v46;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute physical min mired.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      v13 = v59;
      (v10)[2](v10, 0, v59, 0, 0);
      v9 = v60;
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v42;
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute colorCapabilities.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    (v10)[2](v10, 0, v13, 0, 0);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)moveToCustomColorTemperatureWithParams:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CD52C8];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [v8 colorTemperatureMireds];
  [v9 setColorTemperatureMireds:v10];

  v11 = [v8 transitionTime];

  [v9 setTransitionTime:v11];
  [v9 setOptionsMask:&unk_283EE7998];
  [v9 setOptionsOverride:&unk_283EE7998];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureWithParams_completionHandler___block_invoke;
  v14[3] = &unk_2786F0C10;
  v14[4] = self;
  v15 = v9;
  v16 = v6;
  v12 = v6;
  v13 = v9;
  [(MTRClusterColorControl *)self moveToColorTemperatureWithParams:v13 expectedValues:0 expectedValueInterval:0 completion:v14];
}

void __89__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureWithParams_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) colorTemperature];
    v9 = [*(a1 + 40) optionsMask];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@moveToColorTemperatureWithParams completed with colorTemperature %@, optionsMask %@, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)moveToCustomColorTemperatureValue:(id)a3 transitionTime:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CD52C8];
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  [v12 setColorTemperatureMireds:v11];

  [v12 setTransitionTime:v10];
  [v12 setOptionsMask:&unk_283EE7998];
  [v12 setOptionsOverride:&unk_283EE7998];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureValue_transitionTime_completionHandler___block_invoke;
  v15[3] = &unk_2786F0C10;
  v15[4] = self;
  v16 = v12;
  v17 = v8;
  v13 = v8;
  v14 = v12;
  [(MTRClusterColorControl *)self moveToColorTemperatureWithParams:v14 expectedValues:0 expectedValueInterval:0 completion:v15];
}

void __99__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureValue_transitionTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) colorTemperature];
    v9 = [*(a1 + 40) transitionTime];
    v10 = [*(a1 + 40) optionsMask];
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@moveToColorTemperatureWithParams completed with colorTemperature %@, transitionTime %@, optionsMask %@, error %@", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginColorTemperatureMiredsWithParams:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterColorControl *)self readAttributeColorModeWithParams:v5];
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

    v12 = [v11 unsignedIntegerValue];
    if (v12 == 2)
    {
      v13 = [(MTRClusterColorControl *)self readAttributeColorTemperatureMiredsWithParams:v5];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [v17 unsignedIntegerValue];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v18, *MEMORY[0x277CD5188], v8, *MEMORY[0x277CD5198]}];
        v39[1] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:2];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v35;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read color temperature", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        v20 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v30 = [(HMMTRSyncClusterColorControl *)v26 endpointID];
        *buf = 138544130;
        v43 = v28;
        v44 = 2112;
        v45 = &unk_283EE79B0;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v30;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Returning color temp: %@ because colorMode: %@ on accessory endPoint: %@ is not color temp", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *MEMORY[0x277CD5198];
      v40[0] = *MEMORY[0x277CD5188];
      v40[1] = v8;
      v41[0] = v31;
      v41[1] = &unk_283EE79B0;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read colorMode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)moveToPluginColorTemperatureWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = MEMORY[0x277CD52C8];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v12 = [v10 colorTemperature];
  [v11 setColorTemperature:v12];

  v13 = [v10 transitionTime];

  [v11 setTransitionTime:v13];
  [v11 setOptionsMask:&unk_283EE7998];
  [v11 setOptionsOverride:&unk_283EE7998];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __126__HMMTRSyncClusterColorControl_moveToPluginColorTemperatureWithParams_expectedValues_expectedValueInterval_completionHandler___block_invoke;
  v16[3] = &unk_2786F0C10;
  v16[4] = self;
  v17 = v11;
  v18 = v8;
  v14 = v8;
  v15 = v11;
  [(MTRClusterColorControl *)self moveToColorTemperatureWithParams:v15 expectedValues:0 expectedValueInterval:0 completionHandler:v16];
}

void __126__HMMTRSyncClusterColorControl_moveToPluginColorTemperatureWithParams_expectedValues_expectedValueInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) colorTemperature];
    v9 = [*(a1 + 40) optionsMask];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@moveToPluginColorTemperatureWithParams colorTemperature %@, optionsMask %@, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

@end