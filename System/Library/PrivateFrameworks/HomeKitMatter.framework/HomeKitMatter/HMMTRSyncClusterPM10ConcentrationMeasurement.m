@interface HMMTRSyncClusterPM10ConcentrationMeasurement
+ (id)logCategory;
- (id)readAttributePluginMeasuredValueWithParams:(id)a3;
- (void)updatedValuePluginMeasuredValueForAttributeReport:(id)a3 responseHandler:(id)a4;
@end

@implementation HMMTRSyncClusterPM10ConcentrationMeasurement

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_7215 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_7215, &__block_literal_global_7216);
  }

  v3 = logCategory__hmf_once_v15_7217;

  return v3;
}

uint64_t __59__HMMTRSyncClusterPM10ConcentrationMeasurement_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_7217;
  logCategory__hmf_once_v15_7217 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)updatedValuePluginMeasuredValueForAttributeReport:(id)a3 responseHandler:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
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

  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD5128]];
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
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v66 = v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v62 = v7;
    v17 = v64 = v6;
    v18 = [v10 endpoint];
    v19 = [v10 cluster];
    v20 = [v10 attribute];
    v21 = *MEMORY[0x277CD50D8];
    [v6 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    v23 = v22 = v14;
    *buf = 138544386;
    v68 = v17;
    v69 = 2112;
    v70 = v18;
    v71 = 2112;
    v72 = v19;
    v73 = 2112;
    v74 = v20;
    v75 = 2112;
    v76 = v23;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v14 = v22;
    v7 = v62;
    v6 = v64;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v24 = [v6 objectForKeyedSubscript:v21];
  if (v24)
  {
    v25 = v6;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [v10 cluster];
  if ([v27 isEqualToNumber:&unk_283EE8508])
  {
    v28 = [v10 attribute];
    v29 = [v28 isEqualToNumber:&unk_283EE8520];

    if (v29)
    {
      v30 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v26];
      if (v30)
      {
        v31 = v30;
        v63 = v7;
        v65 = v10;
        v32 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v61 = [(MTRClusterPM10ConcentrationMeasurement *)v15 readAttributeMeasurementUnitWithParams:v32];
        v33 = [v61 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = v34;

        v36 = objc_autoreleasePoolPush();
        v37 = v15;
        v38 = HMFGetOSLogHandle();
        v39 = v38;
        if (v35)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543874;
            v68 = v40;
            v69 = 2112;
            v70 = v31;
            v71 = 2112;
            v72 = v35;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Handling Measured value = %@, Measurement Unit = %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v36);
          v41 = [v35 integerValue];
          if (v41 == 5)
          {
            v54 = MEMORY[0x277CCABB0];
            [v31 floatValue];
            v52 = [v54 numberWithDouble:v55 * 0.001];
            v7 = v63;
          }

          else
          {
            v7 = v63;
            if (v41 == 4)
            {
              v53 = MEMORY[0x277CCABB0];
              [v31 floatValue];
              v44 = [v53 numberWithFloat:?];
            }

            else
            {
              if (v41 != 3)
              {
                v60 = v32;
                v56 = objc_autoreleasePoolPush();
                v57 = v37;
                v58 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v68 = v59;
                  v69 = 2112;
                  v70 = v31;
                  v71 = 2112;
                  v72 = v35;
                  _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to UGM3.", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v56);
                v7 = v63;
                v49 = v66;
                (v63)[2](v63, &unk_283EE84F0, v66);
                v32 = v60;
                goto LABEL_39;
              }

              v42 = MEMORY[0x277CCABB0];
              [v31 floatValue];
              v44 = [v42 numberWithDouble:v43 * 1000.0];
            }

            v52 = v44;
          }

          v49 = v66;
          (v7)[2](v7, v52, v66);
        }

        else
        {
          v49 = v66;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543362;
            v68 = v51;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute. Cannot handle Measured Value attribute.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v36);
          v52 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          v7 = v63;
          (v63)[2](v63, 0, v52);
        }

LABEL_39:
        v10 = v65;
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  v45 = objc_autoreleasePoolPush();
  v46 = v15;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v48;
    _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Error: nil received for Measured Value attribute, returning 0.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v45);
  v49 = v66;
  (v7)[2](v7, &unk_283EE84F0, v66);
LABEL_30:

  v50 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginMeasuredValueWithParams:(id)a3
{
  v77[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterPM10ConcentrationMeasurement *)self readAttributeMeasurementUnitWithParams:v5];
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
    v61 = v6;
    v11 = [(MTRClusterPM10ConcentrationMeasurement *)self readAttributeMeasuredValueWithParams:v5];
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

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v18)
      {
        HMFGetLogIdentifier();
        v19 = v5;
        v20 = v11;
        v22 = v21 = v4;
        *buf = 138543874;
        v71 = v22;
        v72 = 2112;
        v73 = v14;
        v74 = 2112;
        v75 = v10;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Read Measured value = %@, Measurement Unit = %@", buf, 0x20u);

        v4 = v21;
        v11 = v20;
        v5 = v19;
      }

      objc_autoreleasePoolPop(v15);
      v23 = [v10 integerValue];
      if (v23 == 5)
      {
        v47 = *MEMORY[0x277CD5188];
        v48 = *MEMORY[0x277CD5150];
        v64[1] = v7;
        v65[0] = v48;
        v64[0] = v47;
        v49 = v4;
        v50 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v52 = [v50 numberWithDouble:v51 * 0.001];
        v65[1] = v52;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];

        v4 = v49;
LABEL_28:
        v6 = v61;
        goto LABEL_29;
      }

      v6 = v61;
      if (v23 == 4)
      {
        v44 = *MEMORY[0x277CD5188];
        v45 = *MEMORY[0x277CD5150];
        v66[1] = v7;
        v67[0] = v45;
        v66[0] = v44;
        v26 = v4;
        v46 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v29 = [v46 numberWithFloat:?];
        v67[1] = v29;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v67;
        v32 = v66;
        goto LABEL_22;
      }

      if (v23 == 3)
      {
        v24 = *MEMORY[0x277CD5188];
        v25 = *MEMORY[0x277CD5150];
        v68[1] = v7;
        v69[0] = v25;
        v68[0] = v24;
        v26 = v4;
        v27 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v29 = [v27 numberWithDouble:v28 * 1000.0];
        v69[1] = v29;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v69;
        v32 = v68;
LABEL_22:
        v37 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:2];

        v4 = v26;
LABEL_29:

        goto LABEL_30;
      }

      v53 = objc_autoreleasePoolPush();
      v54 = v16;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v57 = v56 = v4;
        *buf = 138543874;
        v71 = v57;
        v72 = 2112;
        v73 = v14;
        v74 = 2112;
        v75 = v10;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to UGM3.", buf, 0x20u);

        v4 = v56;
      }

      objc_autoreleasePoolPop(v53);
      v58 = *MEMORY[0x277CD5150];
      v62[0] = *MEMORY[0x277CD5188];
      v62[1] = v7;
      v63[0] = v58;
      v63[1] = &unk_283EE84F0;
      v41 = MEMORY[0x277CBEAC0];
      v42 = v63;
      v43 = v62;
    }

    else
    {
      if (v18)
      {
        HMFGetLogIdentifier();
        v39 = v38 = v4;
        *buf = 138543362;
        v71 = v39;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Error: nil read for Measurement Value attribute, returning 0", buf, 0xCu);

        v4 = v38;
      }

      objc_autoreleasePoolPop(v15);
      v40 = *MEMORY[0x277CD5150];
      v76[0] = *MEMORY[0x277CD5188];
      v76[1] = v7;
      v77[0] = v40;
      v77[1] = &unk_283EE84F0;
      v41 = MEMORY[0x277CBEAC0];
      v42 = v77;
      v43 = v76;
    }

    v37 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:2];
    goto LABEL_28;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v36;
    _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v33);
  v37 = 0;
LABEL_30:

  v59 = *MEMORY[0x277D85DE8];

  return v37;
}

@end