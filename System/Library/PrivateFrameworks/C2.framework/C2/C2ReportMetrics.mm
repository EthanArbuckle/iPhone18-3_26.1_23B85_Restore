@interface C2ReportMetrics
+ (BOOL)useCloudTelemetryService;
+ (id)gzipDecode:(id)a3;
+ (id)gzipEncode:(id)a3;
+ (id)metricsForMetricRequestOptions:(id)a3 networkEvent:(id)a4 genericEvent:(id)a5 triggers:(int)a6;
+ (id)requestForMetricRequestOptions:(id)a3 metrics:(id)a4;
+ (void)reportMetricWithOptions:(id)a3 genericMetricType:(int64_t)a4 eventName:(id)a5 startTime:(id)a6 endTime:(id)a7 attributes:(id)a8;
- (C2ReportMetrics)initWithMetricRequest:(id)a3 metricRequestOptions:(id)a4 ignoreRequestThrottle:(BOOL)a5 requestThrottleIdentifier:(id)a6 requestThrottleLimit:(unint64_t)a7;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)send;
@end

@implementation C2ReportMetrics

+ (BOOL)useCloudTelemetryService
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = MGGetProductType() != 3348380076;
  }

  return v2;
}

+ (id)metricsForMetricRequestOptions:(id)a3 networkEvent:(id)a4 genericEvent:(id)a5 triggers:(int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 metricOptions];
  if (!v12)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v13 = +[C2Metric generateDeviceInfo];
  if (v13)
  {
    v14 = [v12 generateCloudKitInfo];
    if (!v14)
    {
      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v15 = objc_alloc_init(C2MPMetric);
    v16 = v15;
    if (v15)
    {
      [(C2MPMetric *)v15 setDeviceInfo:v13];
      [(C2MPMetric *)v16 setCloudkitInfo:v14];
      [(C2MPMetric *)v16 setTriggers:a6];
      -[C2MPMetric setReportFrequency:](v16, "setReportFrequency:", [v12 reportFrequency]);
      -[C2MPMetric setReportFrequencyBase:](v16, "setReportFrequencyBase:", [v12 reportFrequencyBase]);
      -[C2MPMetric setReportTransportAllowExpensiveAccess:](v16, "setReportTransportAllowExpensiveAccess:", [v9 _allowsExpensiveAccess] != 0);
      -[C2MPMetric setReportTransportAllowPowerNapScheduling:](v16, "setReportTransportAllowPowerNapScheduling:", [v9 _allowsPowerNapScheduling] != 0);
      v17 = [v9 _sourceApplicationBundleIdentifier];
      [(C2MPMetric *)v16 setReportTransportSourceApplicationBundleIdentifier:v17];

      v18 = [v9 _sourceApplicationSecondaryIdentifier];
      [(C2MPMetric *)v16 setReportTransportSourceApplicationSecondaryIdentifier:v18];

      if (v10 || !v11)
      {
        v19 = 0;
        if (!v10 || v11)
        {
          goto LABEL_16;
        }

        [(C2MPMetric *)v16 setMetricType:200];
        [(C2MPMetric *)v16 setNetworkEvent:v10];
      }

      else
      {
        [(C2MPMetric *)v16 setMetricType:201];
        [(C2MPMetric *)v16 setGenericEvent:v11];
      }

      v20 = [(C2MPMetric *)v16 deviceInfo];
      [v20 setProcessUuid:0];

      v21 = [(C2MPMetric *)v16 cloudkitInfo];
      [v21 setContainerScopedDeviceIdentifier:0];

      v22 = [(C2MPMetric *)v16 cloudkitInfo];
      [v22 setContainerScopedUserIdentifier:0];

      v23 = [(C2MPMetric *)v16 networkEvent];
      [v23 setNetworkConnectionUuid:0];

      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:

LABEL_19:

  return v19;
}

+ (id)requestForMetricRequestOptions:(id)a3 metrics:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = [a3 metricOptions];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 c2MetricsEndpoint];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 URLByAppendingPathComponent:@"c2"];
        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
          if (v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277D43178]);
            if (v14)
            {
              [v6 writeTo:v14];
              v15 = [v14 immutableData];
              if (v15)
              {
                v16 = [objc_opt_class() gzipEncode:v15];
                if (v16)
                {
                  [v13 setHTTPMethod:@"POST"];
                  [v13 setHTTPBody:v16];
                  [v13 setValue:@"application/protobuf" forHTTPHeaderField:@"Content-Type"];
                  [v13 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
                  v7 = v13;
                }

                else
                {
                  v7 = 0;
                }
              }

              else
              {
                v7 = 0;
              }
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)gzipEncode:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  bzero(v10, 0x2000uLL);
  v4 = [MEMORY[0x277CBEB28] data];
  memset(&v9, 0, sizeof(v9));
  if (deflateInit2_(&v9, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v9.avail_in = [v6 length];
    do
    {
      v9.avail_out = 0x2000;
      v9.next_out = v10;
      if (deflate(&v9, 4) == -2)
      {
        +[C2ReportMetrics gzipEncode:];
      }

      [v4 appendBytes:v10 length:0x2000 - v9.avail_out];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      +[C2ReportMetrics gzipEncode:];
    }

    deflateEnd(&v9);
    v5 = v4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)gzipDecode:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  bzero(v10, 0x2000uLL);
  v4 = [MEMORY[0x277CBEB28] data];
  memset(&v9, 0, sizeof(v9));
  if (inflateInit2_(&v9, 31, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v9.avail_in = [v6 length];
    do
    {
      v9.avail_out = 0x2000;
      v9.next_out = v10;
      if (inflate(&v9, 4) == -2)
      {
        +[C2ReportMetrics gzipDecode:];
      }

      [v4 appendBytes:v10 length:0x2000 - v9.avail_out];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      +[C2ReportMetrics gzipDecode:];
    }

    inflateEnd(&v9);
    v5 = v4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)reportMetricWithOptions:(id)a3 genericMetricType:(int64_t)a4 eventName:(id)a5 startTime:(id)a6 endTime:(id)a7 attributes:(id)a8
{
  v21 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = objc_autoreleasePoolPush();
  v18 = [v21 metricOptions];
  v19 = [v18 generateTriggerWithResponseHeader:0];

  v20 = [C2Metric generateGenericEventWithName:v13 genericMetricType:a4 startTime:v14 endTime:v15 attributes:v16];
  [objc_opt_class() _reportWithOptions:v21 networkEvent:0 genericEvent:v20 triggers:v19 eventName:v13 startTime:v14 endTime:v15 attributes:v16];

  objc_autoreleasePoolPop(v17);
}

void __91__C2ReportMetrics__c2FormatValueForRTC_keyPrefix_targetDictionary_multipleOperationGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:@"triggers"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_frequency") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_frequency_base") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"operation_triggered") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_client_operation_frequency") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_client_operation_frequency_base") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"operation_group_triggered") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_operation_group_frequency") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_operation_group_frequency_base") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_transport_allow_expensive_access") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_transport_allow_power_nap_scheduling") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"is_apple_internal") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"product_build") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"product_type") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"product_version") & 1) == 0 && ((*(a1 + 56) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"operation_group_index") & 1) == 0))
  {
    if (*(a1 + 32))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", *(a1 + 32), v8];
    }

    else
    {
      v6 = v8;
    }

    v7 = v6;
    [*(a1 + 48) _c2FormatValueForRTC:v5 keyPrefix:v6 targetDictionary:*(a1 + 40) multipleOperationGroups:*(a1 + 56)];
  }
}

uint64_t __112__C2ReportMetrics__reportWithOptions_networkEvent_genericEvent_triggers_eventName_startTime_endTime_attributes___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (C2ReportMetrics)initWithMetricRequest:(id)a3 metricRequestOptions:(id)a4 ignoreRequestThrottle:(BOOL)a5 requestThrottleIdentifier:(id)a6 requestThrottleLimit:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = v15;
  v17 = 0;
  if (v13 && v14 && v15)
  {
    v18 = [v14 metricRequestTransportOptions];
    if (v18)
    {
      v27 = a7;
      v19 = [v14 metricUUID];
      v20 = [v19 UUIDString];

      if (v20)
      {
        v28.receiver = self;
        v28.super_class = C2ReportMetrics;
        v21 = [(C2ReportMetrics *)&v28 init];
        v22 = v21;
        if (v21)
        {
          v21->_ignoreRequestThrottle = a5;
          objc_storeStrong(&v21->_requestThrottleIdentifier, a6);
          v22->_requestThrottleLimit = v27;
          objc_storeStrong(&v22->_metricRequest, a3);
          v23 = [v14 metricOptions];
          metricOptions = v22->_metricOptions;
          v22->_metricOptions = v23;

          [(NSMutableURLRequest *)v22->_metricRequest setValue:v20 forHTTPHeaderField:@"x-apple-request-uuid"];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetricRequest-%@", v20];
          [v18 setIdentifier:v25];

          objc_storeStrong(&v22->_metricsTransportRequestOptions, v18);
        }

        self = v22;
        v17 = self;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (void)send
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"C2ReportMetrics.m" lineNumber:512 description:@"metricOptions must not be nil."];
}

uint64_t __23__C2ReportMetrics_send__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"C2ReportMetrics.m" lineNumber:541 description:@"Unexpected callback."];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  testBehavior_didCompleteWithError = self->_testBehavior_didCompleteWithError;
  if (testBehavior_didCompleteWithError)
  {
    testBehavior_didCompleteWithError[2](testBehavior_didCompleteWithError, v9);
  }

  pthread_mutex_lock(&sOutstandingTaskCountMutex);
  if (!sOutstandingTaskCountMap)
  {
    [C2ReportMetrics URLSession:task:didCompleteWithError:];
  }

  v11 = NSMapGet(sOutstandingTaskCountMap, self->_requestThrottleIdentifier);
  if (!v11)
  {
    [C2ReportMetrics URLSession:task:didCompleteWithError:];
  }

  NSMapInsert(sOutstandingTaskCountMap, self->_requestThrottleIdentifier, v11 - 1);
  pthread_mutex_unlock(&sOutstandingTaskCountMutex);
  v12 = [(C2MetricOptions *)self->_metricOptions didCompleteWithError];

  if (v12)
  {
    v13 = [(C2MetricOptions *)self->_metricOptions didCompleteWithError];
    (v13)[2](v13, v9);
  }

  [(C2MetricOptions *)self->_metricOptions setDidCompleteWithError:0];
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"C2ReportMetrics.m" lineNumber:578 description:@"Unexpected callback."];
}

@end