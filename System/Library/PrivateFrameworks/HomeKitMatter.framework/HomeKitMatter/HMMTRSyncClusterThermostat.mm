@interface HMMTRSyncClusterThermostat
+ (id)logCategory;
- (id)readAttributeOccupiedHeatingOrCoolingSetpointWithParams:(id)params;
- (id)readAttributePluginActiveWithParams:(id)params;
- (id)readAttributePluginCurrentHeaterCoolerStateWithParams:(id)params;
- (id)readAttributePluginCurrentHeatingCoolingStateWithParams:(id)params;
- (id)readAttributePluginTargetHeaterCoolerStateWithParams:(id)params;
- (void)updatedValueForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginActiveForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginCurrentHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginCurrentHeatingCoolingStateForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginTargetHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler;
- (void)writeAttributeOccupiedHeatingOrCoolingSetpointWithValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginActiveWithValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginTargetHeaterCoolerStateWithValue:(id)value expectedValueInterval:(id)interval;
@end

@implementation HMMTRSyncClusterThermostat

+ (id)logCategory
{
  if (logCategory__hmf_once_t87 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t87, &__block_literal_global_6335);
  }

  v3 = logCategory__hmf_once_v88;

  return v3;
}

uint64_t __41__HMMTRSyncClusterThermostat_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v88;
  logCategory__hmf_once_v88 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)updatedValuePluginTargetHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v23 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v23 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v25 = v14;
    v26 = 2112;
    v27 = endpoint;
    v28 = 2112;
    v29 = cluster;
    v30 = 2112;
    v31 = attribute;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to target heater cooler state (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v23;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginTargetHeaterCoolerStateWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)writeAttributePluginTargetHeaterCoolerStateWithValue:(id)value expectedValueInterval:(id)interval
{
  v33 = *MEMORY[0x277D85DE8];
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

  if (v11)
  {
    if (!intervalCopy)
    {
      intervalCopy = &unk_283EE81F0;
    }

    integerValue = [v11 integerValue];
    if (integerValue == 1)
    {
      v13 = &unk_283EE82E0;
    }

    else
    {
      v13 = &unk_283EE82C8;
    }

    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
    [v14 setValue:v13 forKey:v8];
    [(MTRClusterThermostat *)self writeAttributeSystemModeWithValue:v14 expectedValueInterval:intervalCopy];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = @"Cool";
      v27 = 138543874;
      v28 = v18;
      v29 = 2112;
      if (integerValue == 1)
      {
        v19 = @"Heat";
      }

      v30 = v13;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Write due to target heater cooler state (sync): Wrote to system mode attribute, value:%@ (%@)", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [valueCopy objectForKeyedSubscript:v8];
      v27 = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = objc_opt_class();
      v25 = v30;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Target State was received with unexpected class type %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginTargetHeaterCoolerStateWithParams:(id)params
{
  v65[2] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5 && [v5 count])
  {
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

    integerValue = [v10 integerValue];
    if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v12 = *MEMORY[0x277CD5198];
      v64[0] = *MEMORY[0x277CD5188];
      v64[1] = v7;
      v65[0] = v12;
      v65[1] = &unk_283EE8298;
      v13 = MEMORY[0x277CBEAC0];
      v14 = v65;
      v15 = v64;
LABEL_17:
      v20 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:2];
      goto LABEL_18;
    }

    if (integerValue == 6 || integerValue == 3)
    {
      v22 = *MEMORY[0x277CD5198];
      v62[0] = *MEMORY[0x277CD5188];
      v62[1] = v7;
      v63[0] = v22;
      v63[1] = &unk_283EE82F8;
      v13 = MEMORY[0x277CBEAC0];
      v14 = v63;
      v15 = v62;
      goto LABEL_17;
    }

    v25 = [(MTRClusterThermostat *)self readAttributeControlSequenceOfOperationWithParams:paramsCopy];
    v26 = v25;
    if (!v25 || ![v25 count])
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v38;
        _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): An error occurred while trying to read the control sequence of operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v20 = 0;
      goto LABEL_40;
    }

    v27 = [v26 objectForKeyedSubscript:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (v29)
    {
      integerValue2 = [v29 integerValue];
      if (integerValue2 <= 5)
      {
        v31 = *MEMORY[0x277CD5198];
        if (((1 << integerValue2) & 0x33) != 0)
        {
          v54 = *MEMORY[0x277CD5188];
          v55 = v7;
          v56 = v31;
          v57 = &unk_283EE82F8;
          v32 = MEMORY[0x277CBEAC0];
          v33 = &v56;
          v34 = &v54;
        }

        else
        {
          v50 = *MEMORY[0x277CD5188];
          v51 = v7;
          v52 = v31;
          v53 = &unk_283EE8298;
          v32 = MEMORY[0x277CBEAC0];
          v33 = &v52;
          v34 = &v50;
        }

        v20 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:{2, v50, v51, v52, v53, v54, v55, v56, v57}];
        goto LABEL_39;
      }

      v46 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v49;
        v60 = 2112;
        v61 = v29;
        _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): Unsupported control sequence of operation value: %@", buf, 0x16u);
      }

      v45 = v46;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v26 objectForKeyedSubscript:v7];
        *buf = 138543618;
        v59 = v42;
        v60 = 2112;
        v61 = objc_opt_class();
        v44 = v61;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): Control sequence of operation was read with unexpected class type %@", buf, 0x16u);
      }

      v45 = v39;
    }

    objc_autoreleasePoolPop(v45);
    v20 = 0;
LABEL_39:

LABEL_40:
    goto LABEL_18;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v19;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): An error occurred while trying to read the system mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)updatedValuePluginCurrentHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v23 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v23 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v25 = v14;
    v26 = 2112;
    v27 = endpoint;
    v28 = 2112;
    v29 = cluster;
    v30 = 2112;
    v31 = attribute;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to current heater cooler state (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v23;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginCurrentHeaterCoolerStateWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginCurrentHeaterCoolerStateWithParams:(id)params
{
  v93 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    integerValue = [v10 integerValue];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v15;
      v91 = 2048;
      v92 = integerValue;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got systemModeValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (!integerValue)
    {
      v47 = *MEMORY[0x277CD5198];
      v87[0] = *MEMORY[0x277CD5188];
      v87[1] = v7;
      v88[0] = v47;
      v88[1] = &unk_283EE8250;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
      goto LABEL_53;
    }

    v16 = [(MTRClusterThermostat *)selfCopy readAttributeLocalTemperatureWithParams:paramsCopy];
    v17 = v16;
    if (!v16)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = selfCopy;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543362;
        v90 = v51;
        _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_ERROR, "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the local temperature", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v48);
      v46 = 0;
      goto LABEL_52;
    }

    v76 = v16;
    v18 = [v16 objectForKeyedSubscript:v7];
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

    integerValue2 = [v20 integerValue];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v25;
      v91 = 2048;
      v92 = integerValue2;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got temperatureValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if (integerValue == 4)
    {
      v52 = [(MTRClusterThermostat *)v23 readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
      v27 = v52;
      if (v52)
      {
        v53 = [v52 objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v55 = v54;

        integerValue3 = [v55 integerValue];
        v57 = objc_autoreleasePoolPush();
        v58 = v23;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v61 = v60 = v27;
          *buf = 138543618;
          v90 = v61;
          v91 = 2048;
          v92 = integerValue3;
          _os_log_impl(&dword_22AEAE000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got heatPointValue value: %ld", buf, 0x16u);

          v27 = v60;
        }

        objc_autoreleasePoolPop(v57);
        v62 = *MEMORY[0x277CD5188];
        v63 = *MEMORY[0x277CD5198];
        if (integerValue2 >= integerValue3)
        {
          v79[0] = *MEMORY[0x277CD5188];
          v79[1] = v7;
          v80[0] = v63;
          v80[1] = &unk_283EE8250;
          v39 = MEMORY[0x277CBEAC0];
          v40 = v80;
          v41 = v79;
        }

        else
        {
          v81[0] = *MEMORY[0x277CD5188];
          v81[1] = v7;
          v82[0] = v63;
          v82[1] = &unk_283EE82F8;
          v39 = MEMORY[0x277CBEAC0];
          v40 = v82;
          v41 = v81;
        }

        goto LABEL_50;
      }

      v69 = objc_autoreleasePoolPush();
      v70 = v23;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = HMFGetLogIdentifier();
        *buf = 138543362;
        v90 = v72;
        v73 = "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the occupied heating point";
        goto LABEL_46;
      }
    }

    else
    {
      if (integerValue != 3)
      {
        v64 = objc_autoreleasePoolPush();
        v65 = v23;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v67 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v67;
          v91 = 2048;
          v92 = integerValue;
          _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_INFO, "%{public}@Read current heater cooler state (sync): Unsupported system mode: %ld", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        v68 = *MEMORY[0x277CD5198];
        v77[0] = *MEMORY[0x277CD5188];
        v77[1] = v7;
        v78[0] = v68;
        v78[1] = &unk_283EE8250;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
        v17 = v76;
        goto LABEL_52;
      }

      v26 = [(MTRClusterThermostat *)v23 readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        integerValue4 = [v30 integerValue];
        v32 = objc_autoreleasePoolPush();
        v33 = v23;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v36 = v35 = v27;
          *buf = 138543618;
          v90 = v36;
          v91 = 2048;
          v92 = integerValue4;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got coolPointValue value: %ld", buf, 0x16u);

          v27 = v35;
        }

        objc_autoreleasePoolPop(v32);
        v37 = *MEMORY[0x277CD5188];
        v38 = *MEMORY[0x277CD5198];
        if (integerValue2 <= integerValue4)
        {
          v83[0] = *MEMORY[0x277CD5188];
          v83[1] = v7;
          v84[0] = v38;
          v84[1] = &unk_283EE8250;
          v39 = MEMORY[0x277CBEAC0];
          v40 = v84;
          v41 = v83;
        }

        else
        {
          v85[0] = *MEMORY[0x277CD5188];
          v85[1] = v7;
          v86[0] = v38;
          v86[1] = &unk_283EE8280;
          v39 = MEMORY[0x277CBEAC0];
          v40 = v86;
          v41 = v85;
        }

LABEL_50:
        v46 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:2];
        goto LABEL_51;
      }

      v69 = objc_autoreleasePoolPush();
      v70 = v23;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = HMFGetLogIdentifier();
        *buf = 138543362;
        v90 = v72;
        v73 = "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the occupied cooling point";
LABEL_46:
        _os_log_impl(&dword_22AEAE000, v71, OS_LOG_TYPE_ERROR, v73, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v69);
    v46 = 0;
LABEL_51:
    v17 = v76;

LABEL_52:
    goto LABEL_53;
  }

  v42 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v90 = v45;
    _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_ERROR, "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the system mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  v46 = 0;
LABEL_53:

  v74 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)updatedValuePluginActiveForAttributeReport:(id)report responseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v23 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v23 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v25 = v14;
    v26 = 2112;
    v27 = endpoint;
    v28 = 2112;
    v29 = cluster;
    v30 = 2112;
    v31 = attribute;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to Active Char (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v23;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginActiveWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)writeAttributePluginActiveWithValue:(id)value expectedValueInterval:(id)interval
{
  v61 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [(MTRClusterThermostat *)self readAttributeControlSequenceOfOperationWithParams:v8];
  v10 = v9;
  if (v9)
  {
    v11 = *MEMORY[0x277CD51A0];
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v54 = HMFGetLogIdentifier();
        v31 = [v10 objectForKeyedSubscript:v11];
        *buf = 138543618;
        v56 = v54;
        v57 = 2112;
        v58 = objc_opt_class();
        v32 = valueCopy;
        v33 = v58;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Control Sequence was read with unexpected class type %@", buf, 0x16u);

        valueCopy = v32;
        v14 = 0;
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_41;
    }

    integerValue = [v14 integerValue];
    v53 = valueCopy;
    v16 = [valueCopy objectForKeyedSubscript:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (!v18)
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v37 = contexta = v34;
        v38 = [v53 objectForKeyedSubscript:v11];
        *buf = 138543618;
        v56 = v37;
        v57 = 2112;
        v58 = objc_opt_class();
        v39 = v58;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Active value was received with unexpected class type %@", buf, 0x16u);

        v34 = contexta;
      }

      objc_autoreleasePoolPop(v34);
      valueCopy = v53;
      goto LABEL_40;
    }

    if (!intervalCopy)
    {
      intervalCopy = &unk_283EE81F0;
    }

    if ([v18 integerValue])
    {
      valueCopy = v53;
      if (integerValue > 5)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v22;
          v57 = 2112;
          v58 = v14;
          v23 = "%{public}@Unsupported control sequence of operation value: %@";
          goto LABEL_38;
        }

LABEL_39:

        objc_autoreleasePoolPop(v19);
        goto LABEL_40;
      }

      if (((1 << integerValue) & 0x32) != 0)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v22;
          v57 = 2112;
          v58 = v14;
          v23 = "%{public}@Setting active mode On not supported for control sequence of operation value: %@";
LABEL_38:
          _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);

          valueCopy = v53;
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      if (((1 << integerValue) & 0xC) != 0)
      {
        v46 = &unk_283EE82E0;
      }

      else
      {
        v46 = &unk_283EE82C8;
      }

      v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v53];
      [v40 setValue:v46 forKey:v11];
      [(MTRClusterThermostat *)self writeAttributeSystemModeWithValue:v40 expectedValueInterval:intervalCopy];
      context = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v49;
        v57 = 2112;
        v58 = v18;
        v59 = 2112;
        v60 = v46;
        _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@Wrote to system mode attribute for Active Characteristic, value:%@ (On), system mode:%@", buf, 0x20u);

        valueCopy = v53;
      }

      v45 = context;
    }

    else
    {
      valueCopy = v53;
      v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v53];
      [v40 setValue:&unk_283EE82B0 forKey:v11];
      [(MTRClusterThermostat *)self writeAttributeSystemModeWithValue:v40 expectedValueInterval:intervalCopy];
      v41 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v44;
        v57 = 2112;
        v58 = v18;
        v59 = 2112;
        v60 = &unk_283EE82B0;
        _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@Wrote to system mode attribute for Active Characteristic, value:%@ (Off), error:%@", buf, 0x20u);

        valueCopy = v53;
      }

      v45 = v41;
    }

    objc_autoreleasePoolPop(v45);

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v27;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the control sequence of operation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
LABEL_42:

  v50 = *MEMORY[0x277D85DE8];
}

- (id)readAttributePluginActiveWithParams:(id)params
{
  v34 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    integerValue = [v10 integerValue];
    v12 = *MEMORY[0x277CD5188];
    v13 = *MEMORY[0x277CD5198];
    if (integerValue)
    {
      v24 = *MEMORY[0x277CD5188];
      v25 = v7;
      v26 = v13;
      v27 = &unk_283EE8298;
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v26;
      v16 = &v24;
    }

    else
    {
      v28 = *MEMORY[0x277CD5188];
      v29 = v7;
      v30 = v13;
      v31 = &unk_283EE8250;
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v30;
      v16 = &v28;
    }

    v21 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{2, v24, v25, v26, v27, v28, v29, v30, v31}];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Read Active Char (sync): An error occurred while trying to read the system mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)readAttributePluginCurrentHeatingCoolingStateWithParams:(id)params
{
  v155 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    integerValue = [v10 integerValue];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v152 = v15;
      v153 = 2048;
      v154 = integerValue;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got systemModeValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (!integerValue)
    {
      v44 = *MEMORY[0x277CD5198];
      v149[0] = *MEMORY[0x277CD5188];
      v149[1] = v7;
      v150[0] = v44;
      v150[1] = &unk_283EE8250;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
      goto LABEL_97;
    }

    v16 = [(MTRClusterThermostat *)selfCopy readAttributeLocalTemperatureWithParams:paramsCopy];
    v17 = v16;
    if (!v16)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v152 = v48;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the local temperature", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
      v39 = 0;
      goto LABEL_96;
    }

    v18 = [v16 objectForKeyedSubscript:v7];
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

    integerValue2 = [v20 integerValue];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v152 = v25;
      v153 = 2048;
      v154 = integerValue2;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got temperatureValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    switch(integerValue)
    {
      case 4:
        v63 = [(MTRClusterThermostat *)v23 readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
        v27 = v63;
        if (v63)
        {
          v127 = integerValue2;
          v64 = [v63 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v65 = v64;
          }

          else
          {
            v65 = 0;
          }

          v66 = v65;

          integerValue3 = [v66 integerValue];
          v68 = objc_autoreleasePoolPush();
          v69 = v23;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543618;
            v152 = v71;
            v153 = 2048;
            v154 = integerValue3;
            _os_log_impl(&dword_22AEAE000, v70, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got heatPointValue value: %ld", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          v72 = *MEMORY[0x277CD5188];
          v73 = *MEMORY[0x277CD5198];
          if (v127 >= integerValue3)
          {
            v131[0] = *MEMORY[0x277CD5188];
            v131[1] = v7;
            v132[0] = v73;
            v132[1] = &unk_283EE8250;
            v60 = MEMORY[0x277CBEAC0];
            v61 = v132;
            v62 = v131;
          }

          else
          {
            v133[0] = *MEMORY[0x277CD5188];
            v133[1] = v7;
            v134[0] = v73;
            v134[1] = &unk_283EE8268;
            v60 = MEMORY[0x277CBEAC0];
            v61 = v134;
            v62 = v133;
          }

          goto LABEL_80;
        }

        v79 = objc_autoreleasePoolPush();
        v80 = v23;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = HMFGetLogIdentifier();
          *buf = 138543362;
          v152 = v82;
          v83 = "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied heating point";
          goto LABEL_54;
        }

        break;
      case 3:
        v49 = [(MTRClusterThermostat *)v23 readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
        v27 = v49;
        if (v49)
        {
          v50 = [v49 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v52 = v51;

          integerValue4 = [v52 integerValue];
          v54 = objc_autoreleasePoolPush();
          v55 = v23;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v57 = v126 = integerValue2;
            *buf = 138543618;
            v152 = v57;
            v153 = 2048;
            v154 = integerValue4;
            _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got coolPointValue value: %ld", buf, 0x16u);

            integerValue2 = v126;
          }

          objc_autoreleasePoolPop(v54);
          v58 = *MEMORY[0x277CD5188];
          v59 = *MEMORY[0x277CD5198];
          if (integerValue2 <= integerValue4)
          {
            v135[0] = *MEMORY[0x277CD5188];
            v135[1] = v7;
            v136[0] = v59;
            v136[1] = &unk_283EE8250;
            v60 = MEMORY[0x277CBEAC0];
            v61 = v136;
            v62 = v135;
          }

          else
          {
            v137[0] = *MEMORY[0x277CD5188];
            v137[1] = v7;
            v138[0] = v59;
            v138[1] = &unk_283EE8280;
            v60 = MEMORY[0x277CBEAC0];
            v61 = v138;
            v62 = v137;
          }

LABEL_80:
          v39 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:2];
          goto LABEL_95;
        }

        v79 = objc_autoreleasePoolPush();
        v80 = v23;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = HMFGetLogIdentifier();
          *buf = 138543362;
          v152 = v82;
          v83 = "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied cooling point";
LABEL_54:
          _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_ERROR, v83, buf, 0xCu);
        }

        break;
      case 1:
        v26 = [(MTRClusterThermostat *)v23 readAttributeThermostatRunningModeWithParams:paramsCopy];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          integerValue5 = [v30 integerValue];
          v32 = objc_autoreleasePoolPush();
          v33 = v23;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v152 = v35;
            v153 = 2048;
            v154 = integerValue5;
            _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got runningModeValue value: %ld", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          v36 = *MEMORY[0x277CD5188];
          v37 = *MEMORY[0x277CD5198];
          v147[1] = v7;
          v148[0] = v37;
          v147[0] = v36;
          v38 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue5];
          v148[1] = v38;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:2];
        }

        else
        {
          v84 = objc_autoreleasePoolPush();
          v85 = v23;
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = HMFGetLogIdentifier();
            *buf = 138543362;
            v152 = v87;
            _os_log_impl(&dword_22AEAE000, v86, OS_LOG_TYPE_INFO, "%{public}@Read current heating/cooling state (sync): Couldn't get thermostat running mode from device. Ignoring error", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v84);
          v88 = [(MTRClusterThermostat *)v85 readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
          if (v88)
          {
            v38 = v88;
            v89 = [v88 objectForKeyedSubscript:v7];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = v89;
            }

            else
            {
              v90 = 0;
            }

            v91 = v90;

            integerValue6 = [v91 integerValue];
            v92 = objc_autoreleasePoolPush();
            v93 = v85;
            v94 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              v95 = HMFGetLogIdentifier();
              *buf = 138543618;
              v152 = v95;
              v153 = 2048;
              v154 = integerValue6;
              _os_log_impl(&dword_22AEAE000, v94, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got heatPointValue value: %ld", buf, 0x16u);

              v27 = 0;
            }

            objc_autoreleasePoolPop(v92);
            v96 = [(MTRClusterThermostat *)v93 readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
            v97 = v96;
            if (v96)
            {
              v125 = v96;
              v98 = [v96 objectForKeyedSubscript:v7];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v99 = v98;
              }

              else
              {
                v99 = 0;
              }

              v100 = v99;

              integerValue7 = [v100 integerValue];
              v102 = objc_autoreleasePoolPush();
              v103 = v93;
              v104 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
              {
                HMFGetLogIdentifier();
                v105 = v124 = v102;
                *buf = 138543618;
                v152 = v105;
                v153 = 2048;
                v154 = integerValue7;
                _os_log_impl(&dword_22AEAE000, v104, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got coolPointValue value: %ld", buf, 0x16u);

                v102 = v124;
              }

              objc_autoreleasePoolPop(v102);
              v106 = integerValue6;
              if (integerValue6 >= integerValue7)
              {
                v107 = integerValue7;
              }

              else
              {
                v107 = integerValue6;
              }

              if (integerValue6 <= integerValue7)
              {
                v106 = integerValue7;
              }

              if (integerValue2 <= v107 || integerValue2 >= v106)
              {
                v27 = 0;
                v97 = v125;
                v117 = *MEMORY[0x277CD5188];
                v118 = *MEMORY[0x277CD5198];
                if (integerValue2 >= integerValue6)
                {
                  if (integerValue2 <= integerValue7)
                  {
                    v139[0] = *MEMORY[0x277CD5188];
                    v139[1] = v7;
                    v140[0] = v118;
                    v140[1] = &unk_283EE8250;
                    v119 = MEMORY[0x277CBEAC0];
                    v120 = v140;
                    v121 = v139;
                  }

                  else
                  {
                    v141[0] = *MEMORY[0x277CD5188];
                    v141[1] = v7;
                    v142[0] = v118;
                    v142[1] = &unk_283EE8280;
                    v119 = MEMORY[0x277CBEAC0];
                    v120 = v142;
                    v121 = v141;
                  }
                }

                else
                {
                  v143[0] = *MEMORY[0x277CD5188];
                  v143[1] = v7;
                  v144[0] = v118;
                  v144[1] = &unk_283EE8268;
                  v119 = MEMORY[0x277CBEAC0];
                  v120 = v144;
                  v121 = v143;
                }

                v39 = [v119 dictionaryWithObjects:v120 forKeys:v121 count:{2, v124}];
              }

              else
              {
                v108 = *MEMORY[0x277CD5198];
                v145[0] = *MEMORY[0x277CD5188];
                v145[1] = v7;
                v146[0] = v108;
                v146[1] = &unk_283EE8250;
                v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
                v97 = v125;
                v27 = 0;
              }
            }

            else
            {
              v113 = objc_autoreleasePoolPush();
              v114 = v93;
              v115 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
              {
                v116 = HMFGetLogIdentifier();
                *buf = 138543362;
                v152 = v116;
                _os_log_impl(&dword_22AEAE000, v115, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied cooling point", buf, 0xCu);

                v27 = 0;
              }

              objc_autoreleasePoolPop(v113);
              v39 = 0;
            }
          }

          else
          {
            v109 = objc_autoreleasePoolPush();
            v110 = v85;
            v111 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              v112 = HMFGetLogIdentifier();
              *buf = 138543362;
              v152 = v112;
              _os_log_impl(&dword_22AEAE000, v111, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied heating point", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v109);
            v38 = 0;
            v39 = 0;
          }
        }

LABEL_95:
LABEL_96:

        goto LABEL_97;
      default:
        v74 = objc_autoreleasePoolPush();
        v75 = v23;
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = HMFGetLogIdentifier();
          *buf = 138543618;
          v152 = v77;
          v153 = 2048;
          v154 = integerValue;
          _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_INFO, "%{public}@Read current heating/cooling state (sync): Unsupported system mode: %ld", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v74);
        v78 = *MEMORY[0x277CD5198];
        v129[0] = *MEMORY[0x277CD5188];
        v129[1] = v7;
        v130[0] = v78;
        v130[1] = &unk_283EE8250;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
        goto LABEL_96;
    }

    objc_autoreleasePoolPop(v79);
    v39 = 0;
    goto LABEL_95;
  }

  v40 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v152 = v43;
    _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the system mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  v39 = 0;
LABEL_97:

  v122 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)updatedValuePluginCurrentHeatingCoolingStateForAttributeReport:(id)report responseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v23 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v23 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v25 = v14;
    v26 = 2112;
    v27 = endpoint;
    v28 = 2112;
    v29 = cluster;
    v30 = 2112;
    v31 = attribute;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to current heating/cooling state (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v23;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginCurrentHeatingCoolingStateWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updatedValueForAttributeReport:(id)report responseHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  v7 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD5128]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v57 = v11;

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    endpoint = [v9 endpoint];
    cluster = [v9 cluster];
    attribute = [v9 attribute];
    v19 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v60 = v15;
    v61 = 2112;
    v62 = endpoint;
    v63 = 2112;
    v64 = cluster;
    v65 = 2112;
    v66 = attribute;
    v67 = 2112;
    v68 = v19;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@UpdateValueForAttributeReport (sync): Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  v20 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v21 = [(MTRClusterThermostat *)selfCopy readAttributeSystemModeWithParams:v20];
  v22 = v21;
  if (v21)
  {
    v23 = *MEMORY[0x277CD51A0];
    v24 = [v21 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if (!v26)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v48 = v56 = v45;
        v49 = [v22 objectForKeyedSubscript:v23];
        v50 = objc_opt_class();
        *buf = 138543618;
        v60 = v48;
        v61 = 2112;
        v62 = v50;
        v51 = v50;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): System Mode was read with unexpected class type %@", buf, 0x16u);

        v45 = v56;
      }

      objc_autoreleasePoolPop(v45);
      v44 = v57;
      v43 = handlerCopy;
      goto LABEL_38;
    }

    integerValue = [v26 integerValue];
    v28 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    if (v28)
    {
      v29 = reportCopy;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (integerValue == 3)
    {
      cluster2 = [v9 cluster];
      if ([cluster2 isEqualToNumber:&unk_283EE8208])
      {
        attribute2 = [v9 attribute];
        v53 = [attribute2 isEqualToNumber:&unk_283EE8238];

        if (v53)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v37;
            v61 = 2112;
            v62 = reportCopy;
            v38 = "%{public}@UpdateValueForAttributeReport (sync): Report OccupiedCoolingSetpoint %@";
            goto LABEL_33;
          }

LABEL_34:

          objc_autoreleasePoolPop(v34);
          v54 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v30];
          v44 = v57;
          v43 = handlerCopy;
          (*(handlerCopy + 2))(handlerCopy, v54, v57);
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

LABEL_36:
        v54 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
        v43 = handlerCopy;
        (*(handlerCopy + 2))(handlerCopy, 0, v54);
        v44 = v57;
        goto LABEL_37;
      }
    }

    else
    {
      if (integerValue != 4)
      {
        goto LABEL_36;
      }

      cluster2 = [v9 cluster];
      if ([cluster2 isEqualToNumber:&unk_283EE8208])
      {
        attribute3 = [v9 attribute];
        v33 = [attribute3 isEqualToNumber:&unk_283EE8220];

        if (v33)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v37;
            v61 = 2112;
            v62 = reportCopy;
            v38 = "%{public}@UpdateValueForAttributeReport (sync): Report OccupiedHeatingSetpoint %@";
LABEL_33:
            _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_DEBUG, v38, buf, 0x16u);

            goto LABEL_34;
          }

          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = selfCopy;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v42;
    _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@UpdateValueForAttributeReport (sync): An error occurred while trying to read the current System Mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
  v44 = v57;
  v43 = handlerCopy;
LABEL_39:

  v55 = *MEMORY[0x277D85DE8];
}

- (id)readAttributeOccupiedHeatingOrCoolingSetpointWithParams:(id)params
{
  v39 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    if (!v10)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v6 objectForKeyedSubscript:v7];
        v35 = 138543618;
        v36 = v24;
        v37 = 2112;
        v38 = objc_opt_class();
        v26 = v38;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Read Occupied Heating/Cooling Setpoint (sync): Current System Mode was read with unexpected class type %@", &v35, 0x16u);
      }

      v13 = 0;
      goto LABEL_23;
    }

    integerValue = [v10 integerValue];
    if (integerValue == 3)
    {
      v13 = [(MTRClusterThermostat *)self readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v17;
        v37 = 2112;
        v38 = v13;
        v18 = "%{public}@Read Occupied Heating/Cooling Setpoint (sync): OccupiedCoolingSetpoint is %@";
        goto LABEL_22;
      }
    }

    else
    {
      v12 = integerValue;
      if (integerValue != 4)
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = HMFGetLogIdentifier();
          v35 = 138543618;
          v36 = v31;
          v37 = 2048;
          v38 = v12;
          _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Read Occupied Heating/Cooling Setpoint (sync): Thermostat Setpoint should not be read in unexpected system mode: %ld", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v13 = [(MTRClusterThermostat *)selfCopy3 readAttributeLocalTemperatureWithParams:paramsCopy];
        v14 = objc_autoreleasePoolPush();
        v32 = selfCopy3;
        v16 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }

        v17 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v17;
        v37 = 2112;
        v38 = v13;
        v18 = "%{public}@Read Occupied Heating/Cooling Setpoint (sync): Read local temperature %@";
        goto LABEL_22;
      }

      v13 = [(MTRClusterThermostat *)self readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
      v14 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v17;
        v37 = 2112;
        v38 = v13;
        v18 = "%{public}@Read Occupied Heating/Cooling Setpoint (sync): OccupiedHeatingSetpoint is %@";
LABEL_22:
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, v18, &v35, 0x16u);
      }
    }

LABEL_23:

    objc_autoreleasePoolPop(v14);
    goto LABEL_24;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v35 = 138543362;
    v36 = v22;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Read Occupied Heating/Cooling Setpoint (sync): An error occurred while trying to read the current System Mode", &v35, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v13 = 0;
LABEL_24:

  v33 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)writeAttributeOccupiedHeatingOrCoolingSetpointWithValue:(id)value expectedValueInterval:(id)interval
{
  v47 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:v8];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = *MEMORY[0x277CD51A0];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v10 objectForKeyedSubscript:v11];
        *buf = 138543618;
        v44 = v26;
        v45 = 2112;
        v46 = objc_opt_class();
        v28 = v46;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): System Mode was read with unexpected class type %@", buf, 0x16u);

        v14 = 0;
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_34;
    }

    v42 = v14;
    integerValue = [v14 integerValue];
    v16 = [valueCopy objectForKeyedSubscript:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      if (!intervalCopy)
      {
        intervalCopy = &unk_283EE81F0;
      }

      if (!integerValue)
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v37;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Thermostat Setpoint cannot be set when system is off", buf, 0xCu);
        }

        v38 = v34;
        goto LABEL_32;
      }

      v14 = v42;
      if (integerValue == 3)
      {
        [(MTRClusterThermostat *)self writeAttributeOccupiedCoolingSetpointWithValue:valueCopy expectedValueInterval:intervalCopy];
        goto LABEL_33;
      }

      if (integerValue == 4)
      {
        [(MTRClusterThermostat *)self writeAttributeOccupiedHeatingSetpointWithValue:valueCopy expectedValueInterval:intervalCopy];
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v39;
        v45 = 2048;
        v46 = integerValue;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Thermostat Setpoint cannot be set in unexpected system mode: %ld", buf, 0x16u);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v32 = [valueCopy objectForKeyedSubscript:v11];
        *buf = 138543618;
        v44 = v41;
        v45 = 2112;
        v46 = objc_opt_class();
        v33 = v46;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Target Setpoint was received with unexpected class type %@", buf, 0x16u);
      }
    }

    v38 = v29;
LABEL_32:
    objc_autoreleasePoolPop(v38);
    v14 = v42;
    goto LABEL_33;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v22;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): An error occurred while trying to read the current System Mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_35:

  v40 = *MEMORY[0x277D85DE8];
}

@end