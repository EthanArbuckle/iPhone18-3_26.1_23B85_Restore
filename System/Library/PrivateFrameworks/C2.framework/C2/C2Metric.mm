@interface C2Metric
+ (id)generateDeviceInfo;
+ (id)generateError:(id)error;
+ (id)generateGenericEventWithName:(id)name genericMetricType:(int64_t)type startTime:(id)time endTime:(id)endTime attributes:(id)attributes;
@end

@implementation C2Metric

+ (id)generateDeviceInfo
{
  v2 = objc_alloc_init(C2MPDeviceInfo);
  v3 = +[C2DeviceInfo productName];
  [(C2MPDeviceInfo *)v2 setProductName:v3];

  v4 = +[C2DeviceInfo productType];
  [(C2MPDeviceInfo *)v2 setProductType:v4];

  v5 = +[C2DeviceInfo productVersion];
  [(C2MPDeviceInfo *)v2 setProductVersion:v5];

  v6 = +[C2DeviceInfo buildVersion];
  [(C2MPDeviceInfo *)v2 setProductBuild:v6];

  v7 = +[C2DeviceInfo processName];
  [(C2MPDeviceInfo *)v2 setProcessName:v7];

  v8 = +[C2DeviceInfo processVersion];
  [(C2MPDeviceInfo *)v2 setProcessVersion:v8];

  v9 = +[C2DeviceInfo processUUID];
  [(C2MPDeviceInfo *)v2 setProcessUuid:v9];

  v10 = +[C2DeviceInfo testName];
  [(C2MPDeviceInfo *)v2 setUserDefaultTestName:v10];

  [(C2MPDeviceInfo *)v2 setIsAppleInternal:+[C2DeviceInfo isAppleInternal]];

  return v2;
}

+ (id)generateError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(C2MPError);
  domain = [errorCopy domain];
  v6 = [domain description];
  [(C2MPError *)v4 setErrorDomain:v6];

  -[C2MPError setErrorCode:](v4, "setErrorCode:", [errorCopy code]);
  if (+[C2DeviceInfo isAppleInternal])
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"CKErrorDescription"];
    [(C2MPError *)v4 setErrorDescription:v8];

    errorDescription = [(C2MPError *)v4 errorDescription];

    if (!errorDescription)
    {
      userInfo2 = [errorCopy userInfo];
      v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA068]];
      [(C2MPError *)v4 setErrorDescription:v11];
    }

    errorDescription2 = [(C2MPError *)v4 errorDescription];

    if (!errorDescription2)
    {
      userInfo3 = [errorCopy userInfo];
      v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
      [(C2MPError *)v4 setErrorDescription:v14];
    }
  }

  userInfo4 = [errorCopy userInfo];
  v16 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v16)
  {
    v17 = [C2Metric generateError:v16];
    [(C2MPError *)v4 setUnderlyingError:v17];
  }

  return v4;
}

+ (id)generateGenericEventWithName:(id)name genericMetricType:(int64_t)type startTime:(id)time endTime:(id)endTime attributes:(id)attributes
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  timeCopy = time;
  endTimeCopy = endTime;
  attributesCopy = attributes;
  v15 = objc_alloc_init(C2MPGenericEvent);
  [(C2MPGenericEvent *)v15 setName:nameCopy];
  if (type == 2)
  {
    v16 = v15;
    v17 = 201;
  }

  else if (type == 1)
  {
    v16 = v15;
    v17 = 101;
  }

  else
  {
    if (C2_DEFAULT_LOG_BLOCK_0 != -1)
    {
      +[C2Metric generateGenericEventWithName:genericMetricType:startTime:endTime:attributes:];
    }

    v18 = C2_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = nameCopy;
      v32 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_242158000, v18, OS_LOG_TYPE_ERROR, "genericMetric with name %{public}@ had unknown metricType %llu", buf, 0x16u);
    }

    v16 = v15;
    v17 = 0;
  }

  [(C2MPGenericEvent *)v16 setType:v17];
  if (timeCopy)
  {
    [timeCopy timeIntervalSinceReferenceDate];
    v19 = [C2Time convertTimeIntervalToServerTime:?];
  }

  else
  {
    v19 = 0;
  }

  [(C2MPGenericEvent *)v15 setTimestampStart:v19];
  if (endTimeCopy)
  {
    [endTimeCopy timeIntervalSinceReferenceDate];
    v20 = [C2Time convertTimeIntervalToServerTime:?];
  }

  else
  {
    v20 = 0;
  }

  [(C2MPGenericEvent *)v15 setTimestampEnd:v20];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke_12;
  v27[3] = &unk_278D402B0;
  v28 = nameCopy;
  v21 = v15;
  v29 = v21;
  v22 = nameCopy;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v27];

  v23 = v29;
  v24 = v21;

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

void __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(C2MPGenericEventMetric);
  [(C2MPGenericEventMetric *)v7 setKey:v5];
  v8 = objc_alloc_init(C2MPGenericEventMetricValue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 timeIntervalSinceReferenceDate];
    [(C2MPGenericEventMetricValue *)v8 setDateValue:[C2Time convertTimeIntervalToServerTime:?]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(C2MPGenericEventMetricValue *)v8 setDoubleValue:?];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(C2MPGenericEventMetricValue *)v8 setStringValue:v6];
      }

      else
      {
        if (C2_DEFAULT_LOG_BLOCK_0 != -1)
        {
          __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke_12_cold_1();
        }

        v9 = C2_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          v11 = v9;
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v17 = 138543874;
          v18 = v10;
          v19 = 2114;
          v20 = v5;
          v21 = 2114;
          v22 = v13;
          _os_log_impl(&dword_242158000, v11, OS_LOG_TYPE_ERROR, "genericMetric with name %{public}@ had key %{public}@ with unhandled metric type: %{public}@", &v17, 0x20u);
        }

        v8 = 0;
      }
    }
  }

  [(C2MPGenericEventMetric *)v7 setValue:v8];
  if (v7 && v8)
  {
    [*(a1 + 40) addMetric:v7];
  }

  else
  {
    if (C2_DEFAULT_LOG_BLOCK_0 != -1)
    {
      __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke_12_cold_2();
    }

    v14 = C2_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v17 = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_242158000, v14, OS_LOG_TYPE_ERROR, "genericMetric with name %{public}@ encountered error processing key %{public}@", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __88__C2Metric_generateGenericEventWithName_genericMetricType_startTime_endTime_attributes___block_invoke_20()
{
  C2_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

@end