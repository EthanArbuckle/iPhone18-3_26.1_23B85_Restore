@interface C2Metric
+ (id)generateDeviceInfo;
+ (id)generateError:(id)a3;
+ (id)generateGenericEventWithName:(id)a3 genericMetricType:(int64_t)a4 startTime:(id)a5 endTime:(id)a6 attributes:(id)a7;
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

+ (id)generateError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(C2MPError);
  v5 = [v3 domain];
  v6 = [v5 description];
  [(C2MPError *)v4 setErrorDomain:v6];

  -[C2MPError setErrorCode:](v4, "setErrorCode:", [v3 code]);
  if (+[C2DeviceInfo isAppleInternal])
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"CKErrorDescription"];
    [(C2MPError *)v4 setErrorDescription:v8];

    v9 = [(C2MPError *)v4 errorDescription];

    if (!v9)
    {
      v10 = [v3 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA068]];
      [(C2MPError *)v4 setErrorDescription:v11];
    }

    v12 = [(C2MPError *)v4 errorDescription];

    if (!v12)
    {
      v13 = [v3 userInfo];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
      [(C2MPError *)v4 setErrorDescription:v14];
    }
  }

  v15 = [v3 userInfo];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v16)
  {
    v17 = [C2Metric generateError:v16];
    [(C2MPError *)v4 setUnderlyingError:v17];
  }

  return v4;
}

+ (id)generateGenericEventWithName:(id)a3 genericMetricType:(int64_t)a4 startTime:(id)a5 endTime:(id)a6 attributes:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(C2MPGenericEvent);
  [(C2MPGenericEvent *)v15 setName:v11];
  if (a4 == 2)
  {
    v16 = v15;
    v17 = 201;
  }

  else if (a4 == 1)
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
      v31 = v11;
      v32 = 2048;
      v33 = a4;
      _os_log_impl(&dword_242158000, v18, OS_LOG_TYPE_ERROR, "genericMetric with name %{public}@ had unknown metricType %llu", buf, 0x16u);
    }

    v16 = v15;
    v17 = 0;
  }

  [(C2MPGenericEvent *)v16 setType:v17];
  if (v12)
  {
    [v12 timeIntervalSinceReferenceDate];
    v19 = [C2Time convertTimeIntervalToServerTime:?];
  }

  else
  {
    v19 = 0;
  }

  [(C2MPGenericEvent *)v15 setTimestampStart:v19];
  if (v13)
  {
    [v13 timeIntervalSinceReferenceDate];
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
  v28 = v11;
  v21 = v15;
  v29 = v21;
  v22 = v11;
  [v14 enumerateKeysAndObjectsUsingBlock:v27];

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