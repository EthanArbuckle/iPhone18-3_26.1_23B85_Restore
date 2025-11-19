@interface HMMTRSyncClusterCarbonDioxideConcentrationMeasurement
+ (id)logCategory;
- (id)readAttributePluginMeasuredValueWithParams:(id)a3;
- (void)updatedValuePluginMeasuredValueForAttributeReport:(id)a3 responseHandler:(id)a4;
@end

@implementation HMMTRSyncClusterCarbonDioxideConcentrationMeasurement

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_7076 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_7076, &__block_literal_global_7077);
  }

  v3 = logCategory__hmf_once_v15_7078;

  return v3;
}

uint64_t __68__HMMTRSyncClusterCarbonDioxideConcentrationMeasurement_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_7078;
  logCategory__hmf_once_v15_7078 = v1;

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
  if ([v27 isEqualToNumber:&unk_283EE84C0])
  {
    v28 = [v10 attribute];
    v29 = [v28 isEqualToNumber:&unk_283EE84D8];

    if (v29)
    {
      v30 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v26];
      if (v30)
      {
        v31 = v30;
        v63 = v7;
        v65 = v10;
        v32 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v61 = [(MTRClusterCarbonDioxideConcentrationMeasurement *)v15 readAttributeMeasurementUnitWithParams:v32];
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
          if (v41 == 2)
          {
            v54 = MEMORY[0x277CCABB0];
            [v31 floatValue];
            v51 = [v54 numberWithDouble:v55 * 0.000001];
            v7 = v63;
          }

          else
          {
            v7 = v63;
            if (v41 == 1)
            {
              v52 = MEMORY[0x277CCABB0];
              [v31 floatValue];
              v43 = [v52 numberWithDouble:v53 * 0.001];
            }

            else
            {
              if (v41)
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
                  _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to PPM.", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v56);
                v7 = v63;
                v48 = v66;
                (v63)[2](v63, &unk_283EE84A8, v66);
                v32 = v60;
                goto LABEL_39;
              }

              v42 = MEMORY[0x277CCABB0];
              [v31 floatValue];
              v43 = [v42 numberWithFloat:?];
            }

            v51 = v43;
          }

          v48 = v66;
          (v7)[2](v7, v51, v66);
        }

        else
        {
          v48 = v66;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v68 = v50;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute. Cannot handle Measured Value attribute.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v36);
          v51 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          v7 = v63;
          (v63)[2](v63, 0, v51);
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

  v44 = objc_autoreleasePoolPush();
  v45 = v15;
  v46 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v47;
    _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Error: nil received for Measured Value attribute, returning 0.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v44);
  v48 = v66;
  (v7)[2](v7, &unk_283EE84A8, v66);
LABEL_30:

  v49 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginMeasuredValueWithParams:(id)a3
{
  v77[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterCarbonDioxideConcentrationMeasurement *)self readAttributeMeasurementUnitWithParams:v5];
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
    v11 = [(MTRClusterCarbonDioxideConcentrationMeasurement *)self readAttributeMeasuredValueWithParams:v5];
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
      if (v23 == 2)
      {
        v47 = *MEMORY[0x277CD5188];
        v48 = *MEMORY[0x277CD5150];
        v64[1] = v7;
        v65[0] = v48;
        v64[0] = v47;
        v49 = v4;
        v50 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v52 = [v50 numberWithDouble:v51 * 0.000001];
        v65[1] = v52;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];

        v4 = v49;
LABEL_28:
        v6 = v61;
        goto LABEL_29;
      }

      v6 = v61;
      if (v23 == 1)
      {
        v43 = *MEMORY[0x277CD5188];
        v44 = *MEMORY[0x277CD5150];
        v66[1] = v7;
        v67[0] = v44;
        v66[0] = v43;
        v26 = v4;
        v45 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v28 = [v45 numberWithDouble:v46 * 0.001];
        v67[1] = v28;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v67;
        v31 = v66;
        goto LABEL_22;
      }

      if (!v23)
      {
        v24 = *MEMORY[0x277CD5188];
        v25 = *MEMORY[0x277CD5150];
        v68[1] = v7;
        v69[0] = v25;
        v68[0] = v24;
        v26 = v4;
        v27 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v28 = [v27 numberWithFloat:?];
        v69[1] = v28;
        v29 = MEMORY[0x277CBEAC0];
        v30 = v69;
        v31 = v68;
LABEL_22:
        v36 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:2];

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
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to PPM.", buf, 0x20u);

        v4 = v56;
      }

      objc_autoreleasePoolPop(v53);
      v58 = *MEMORY[0x277CD5150];
      v62[0] = *MEMORY[0x277CD5188];
      v62[1] = v7;
      v63[0] = v58;
      v63[1] = &unk_283EE84A8;
      v40 = MEMORY[0x277CBEAC0];
      v41 = v63;
      v42 = v62;
    }

    else
    {
      if (v18)
      {
        HMFGetLogIdentifier();
        v38 = v37 = v4;
        *buf = 138543362;
        v71 = v38;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Error: nil read for Measurement Value attribute, returning 0", buf, 0xCu);

        v4 = v37;
      }

      objc_autoreleasePoolPop(v15);
      v39 = *MEMORY[0x277CD5150];
      v76[0] = *MEMORY[0x277CD5188];
      v76[1] = v7;
      v77[0] = v39;
      v77[1] = &unk_283EE84A8;
      v40 = MEMORY[0x277CBEAC0];
      v41 = v77;
      v42 = v76;
    }

    v36 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:2];
    goto LABEL_28;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v35;
    _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
  v36 = 0;
LABEL_30:

  v59 = *MEMORY[0x277D85DE8];

  return v36;
}

@end