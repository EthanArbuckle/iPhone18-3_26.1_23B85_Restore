@interface HMMTRSyncClusterCarbonMonoxideConcentrationMeasurement
+ (id)logCategory;
- (id)readAttributePluginMeasuredValueWithParams:(id)params;
- (id)readAttributePluginPeakMeasuredValueWithParams:(id)params;
- (void)updatedValuePluginMeasuredValueForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginPeakMeasuredValueForAttributeReport:(id)report responseHandler:(id)handler;
@end

@implementation HMMTRSyncClusterCarbonMonoxideConcentrationMeasurement

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_6879 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_6879, &__block_literal_global_6880);
  }

  v3 = logCategory__hmf_once_v27_6881;

  return v3;
}

uint64_t __69__HMMTRSyncClusterCarbonMonoxideConcentrationMeasurement_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_6881;
  logCategory__hmf_once_v27_6881 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)updatedValuePluginPeakMeasuredValueForAttributeReport:(id)report responseHandler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
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
  v64 = v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v60 = handlerCopy;
    v17 = v62 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v21 = *MEMORY[0x277CD50D8];
    [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    v22 = selfCopy;
    v24 = v23 = v14;
    *buf = 138544386;
    v66 = v17;
    v67 = 2112;
    v68 = endpoint;
    v69 = 2112;
    v70 = cluster;
    v71 = 2112;
    v72 = attribute;
    v73 = 2112;
    v74 = v24;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v14 = v23;
    selfCopy = v22;

    handlerCopy = v60;
    reportCopy = v62;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v25 = [reportCopy objectForKeyedSubscript:v21];
  if (v25)
  {
    v26 = reportCopy;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  cluster2 = [v10 cluster];
  if ([cluster2 isEqualToNumber:&unk_283EE8418])
  {
    attribute2 = [v10 attribute];
    v30 = [attribute2 isEqualToNumber:&unk_283EE8448];

    if (v30)
    {
      v31 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v27];
      if (v31)
      {
        v32 = v31;
        v61 = handlerCopy;
        v63 = v10;
        v33 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v59 = [(MTRClusterCarbonMonoxideConcentrationMeasurement *)selfCopy readAttributeMeasurementUnitWithParams:v33];
        v34 = [v59 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        v40 = v39;
        if (!v36)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543362;
            v66 = v47;
            _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute. Cannot handle Peak Measured Value attribute.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v37);
          v48 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          handlerCopy = v61;
          (v61)[2](v61, 0, v48);

          v45 = v64;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543874;
          v66 = v41;
          v67 = 2112;
          v68 = v32;
          v69 = 2112;
          v70 = v36;
          _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Handling Measured value = %@, Measurement Unit = %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        integerValue = [v36 integerValue];
        if (integerValue == 2)
        {
          v52 = MEMORY[0x277CCABB0];
          [v32 floatValue];
          v51 = [v52 numberWithDouble:v53 * 0.000001];
          handlerCopy = v61;
        }

        else
        {
          handlerCopy = v61;
          if (integerValue == 1)
          {
            v49 = MEMORY[0x277CCABB0];
            [v32 floatValue];
            v44 = [v49 numberWithDouble:v50 * 0.001];
          }

          else
          {
            if (integerValue)
            {
              v58 = v33;
              v54 = objc_autoreleasePoolPush();
              v55 = v38;
              v56 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v57 = HMFGetLogIdentifier();
                *buf = 138543874;
                v66 = v57;
                v67 = 2112;
                v68 = v32;
                v69 = 2112;
                v70 = v36;
                _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to PPM.", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v54);
              handlerCopy = v61;
              v45 = v64;
              (v61)[2](v61, &unk_283EE8400, v64);
              v33 = v58;
              goto LABEL_39;
            }

            v43 = MEMORY[0x277CCABB0];
            [v32 floatValue];
            v44 = [v43 numberWithFloat:?];
          }

          v51 = v44;
        }

        v45 = v64;
        (handlerCopy)[2](handlerCopy, v51, v64);

LABEL_39:
        v10 = v63;
        goto LABEL_28;
      }
    }
  }

  else
  {
  }

  v45 = v64;
  (handlerCopy)[2](handlerCopy, 0, v64);
LABEL_28:

  v46 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginPeakMeasuredValueWithParams:(id)params
{
  v67 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterCarbonMonoxideConcentrationMeasurement *)self readAttributeMeasurementUnitWithParams:v5];
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
    v52 = v6;
    v11 = [(MTRClusterCarbonMonoxideConcentrationMeasurement *)self readAttributePeakMeasuredValueWithParams:v5];
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
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      v50 = paramsCopy;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v62 = v19;
        v63 = 2112;
        v64 = v14;
        v65 = 2112;
        v66 = v10;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Read Measured value = %@, Measurement Unit = %@", buf, 0x20u);

        paramsCopy = v50;
      }

      objc_autoreleasePoolPop(v15);
      integerValue = [v10 integerValue];
      if (integerValue == 2)
      {
        v38 = *MEMORY[0x277CD5188];
        v39 = *MEMORY[0x277CD5150];
        v55[1] = v7;
        v56[0] = v39;
        v55[0] = v38;
        v40 = MEMORY[0x277CCABB0];
        [v14 floatValue];
        v42 = [v40 numberWithDouble:v41 * 0.000001];
        v56[1] = v42;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

        paramsCopy = v50;
      }

      else
      {
        v6 = v52;
        if (integerValue == 1)
        {
          v34 = *MEMORY[0x277CD5188];
          v35 = *MEMORY[0x277CD5150];
          v57[1] = v7;
          v58[0] = v35;
          v57[0] = v34;
          v36 = MEMORY[0x277CCABB0];
          [v14 floatValue];
          v24 = [v36 numberWithDouble:v37 * 0.001];
          v58[1] = v24;
          v25 = MEMORY[0x277CBEAC0];
          v26 = v58;
          v27 = v57;
          goto LABEL_22;
        }

        if (!integerValue)
        {
          v21 = *MEMORY[0x277CD5188];
          v22 = *MEMORY[0x277CD5150];
          v59[1] = v7;
          v60[0] = v22;
          v59[0] = v21;
          v23 = MEMORY[0x277CCABB0];
          [v14 floatValue];
          v24 = [v23 numberWithFloat:?];
          v60[1] = v24;
          v25 = MEMORY[0x277CBEAC0];
          v26 = v60;
          v27 = v59;
LABEL_22:
          v32 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:{2, v50}];

          paramsCopy = v51;
LABEL_28:

          goto LABEL_29;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543874;
          v62 = v46;
          v63 = 2112;
          v64 = v14;
          v65 = 2112;
          v66 = v10;
          _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to PPM.", buf, 0x20u);

          paramsCopy = v50;
        }

        objc_autoreleasePoolPop(v43);
        v47 = *MEMORY[0x277CD5150];
        v53[0] = *MEMORY[0x277CD5188];
        v53[1] = v7;
        v54[0] = v47;
        v54[1] = &unk_283EE8400;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v33;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Peak Measurement Value attribute", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v32 = 0;
    }

    v6 = v52;
    goto LABEL_28;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v62 = v31;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = 0;
LABEL_29:

  v48 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)updatedValuePluginMeasuredValueForAttributeReport:(id)report responseHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
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
  v67 = v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v63 = handlerCopy;
    v17 = v65 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v21 = *MEMORY[0x277CD50D8];
    [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    v22 = selfCopy;
    v24 = v23 = v14;
    *buf = 138544386;
    v69 = v17;
    v70 = 2112;
    v71 = endpoint;
    v72 = 2112;
    v73 = cluster;
    v74 = 2112;
    v75 = attribute;
    v76 = 2112;
    v77 = v24;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v14 = v23;
    selfCopy = v22;

    handlerCopy = v63;
    reportCopy = v65;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v25 = [reportCopy objectForKeyedSubscript:v21];
  if (v25)
  {
    v26 = reportCopy;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  cluster2 = [v10 cluster];
  if ([cluster2 isEqualToNumber:&unk_283EE8418])
  {
    attribute2 = [v10 attribute];
    v30 = [attribute2 isEqualToNumber:&unk_283EE8430];

    if (v30)
    {
      v31 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v27];
      if (v31)
      {
        v32 = v31;
        v64 = handlerCopy;
        v66 = v10;
        v33 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v34 = [(MTRClusterCarbonMonoxideConcentrationMeasurement *)selfCopy readAttributeMeasurementUnitWithParams:v33];
        v35 = [v34 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (v37)
        {
          integerValue = [v37 integerValue];
          switch(integerValue)
          {
            case 2:
              v52 = MEMORY[0x277CCABB0];
              [v32 floatValue];
              v54 = v56;
              v55 = 0.000001;
              break;
            case 1:
              v52 = MEMORY[0x277CCABB0];
              [v32 floatValue];
              v54 = v53;
              v55 = 0.001;
              break;
            case 0:
              v39 = MEMORY[0x277CCABB0];
              [v32 floatValue];
              v40 = [v39 numberWithFloat:?];
LABEL_35:
              v57 = v40;
              v45 = v67;
              v64[2](v64, v40, v67);

LABEL_40:
              handlerCopy = v64;
              v10 = v66;
              goto LABEL_28;
            default:
              v62 = v33;
              v58 = objc_autoreleasePoolPush();
              v59 = selfCopy;
              v60 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v61 = HMFGetLogIdentifier();
                *buf = 138543874;
                v69 = v61;
                v70 = 2112;
                v71 = v32;
                v72 = 2112;
                v73 = v37;
                _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to PPM.", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v58);
              v45 = v67;
              v64[2](v64, &unk_283EE8400, v67);
LABEL_39:
              v33 = v62;
              goto LABEL_40;
          }

          v40 = [v52 numberWithDouble:v54 * v55];
          goto LABEL_35;
        }

        v62 = v33;
        v47 = objc_autoreleasePoolPush();
        v48 = selfCopy;
        v49 = HMFGetOSLogHandle();
        v45 = v67;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543362;
          v69 = v50;
          _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute. Cannot handle Measured Value attribute.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v47);
        v51 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
        v64[2](v64, 0, v51);

        goto LABEL_39;
      }
    }
  }

  else
  {
  }

  v41 = objc_autoreleasePoolPush();
  v42 = selfCopy;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543362;
    v69 = v44;
    _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_ERROR, "%{public}@Error: nil received for Measured Value attribute, returning 0.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v41);
  v45 = v67;
  handlerCopy[2](handlerCopy, &unk_283EE8400, v67);
LABEL_28:

  v46 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginMeasuredValueWithParams:(id)params
{
  v68[2] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterCarbonMonoxideConcentrationMeasurement *)self readAttributeMeasurementUnitWithParams:v5];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v15;
      v57 = 2112;
      v58 = v10;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Read Measurement Unit value = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(MTRClusterCarbonMonoxideConcentrationMeasurement *)selfCopy readAttributeMeasuredValueWithParams:v5];
    v17 = [v16 objectForKeyedSubscript:v7];
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

    if (v19)
    {
      integerValue = [v10 integerValue];
      switch(integerValue)
      {
        case 2:
          v41 = *MEMORY[0x277CD5188];
          v42 = *MEMORY[0x277CD5150];
          v61[1] = v7;
          v62[0] = v42;
          v61[0] = v41;
          v43 = MEMORY[0x277CCABB0];
          [v19 floatValue];
          v23 = [v43 numberWithDouble:v44 * 0.000001];
          v62[1] = v23;
          v24 = MEMORY[0x277CBEAC0];
          v25 = v62;
          v26 = v61;
          goto LABEL_23;
        case 1:
          v37 = *MEMORY[0x277CD5188];
          v38 = *MEMORY[0x277CD5150];
          v63[1] = v7;
          v64[0] = v38;
          v63[0] = v37;
          v39 = MEMORY[0x277CCABB0];
          [v19 floatValue];
          v23 = [v39 numberWithDouble:v40 * 0.001];
          v64[1] = v23;
          v24 = MEMORY[0x277CBEAC0];
          v25 = v64;
          v26 = v63;
          goto LABEL_23;
        case 0:
          v21 = *MEMORY[0x277CD5188];
          v66[0] = *MEMORY[0x277CD5150];
          v65[0] = v21;
          v65[1] = v7;
          v22 = MEMORY[0x277CCABB0];
          [v19 floatValue];
          v23 = [v22 numberWithFloat:?];
          v66[1] = v23;
          v24 = MEMORY[0x277CBEAC0];
          v25 = v66;
          v26 = v65;
LABEL_23:
          v28 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:2];

LABEL_28:
          goto LABEL_29;
      }

      v52 = paramsCopy;
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v48;
        v57 = 2112;
        v58 = v19;
        v59 = 2112;
        v60 = v10;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert %@ measured value read from %@ measurement unit to PPM.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v45);
      v49 = *MEMORY[0x277CD5150];
      v53[0] = *MEMORY[0x277CD5188];
      v53[1] = v7;
      v54[0] = v49;
      v54[1] = &unk_283EE8400;
      v34 = MEMORY[0x277CBEAC0];
      v35 = v54;
      v36 = v53;
    }

    else
    {
      v52 = paramsCopy;
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v32;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Error: nil read for Measurement Value attribute, returning 0", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v33 = *MEMORY[0x277CD5150];
      v67[0] = *MEMORY[0x277CD5188];
      v67[1] = v7;
      v68[0] = v33;
      v68[1] = &unk_283EE8400;
      v34 = MEMORY[0x277CBEAC0];
      v35 = v68;
      v36 = v67;
    }

    v28 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:2];
    paramsCopy = v52;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v27;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error: nil read for Measurement Unit attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v28 = 0;
LABEL_29:

  v50 = *MEMORY[0x277D85DE8];

  return v28;
}

@end