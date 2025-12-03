@interface C2ReportMetrics
+ (BOOL)useCloudTelemetryService;
+ (id)gzipDecode:(id)decode;
+ (id)gzipEncode:(id)encode;
+ (id)metricsForMetricRequestOptions:(id)options networkEvent:(id)event genericEvent:(id)genericEvent triggers:(int)triggers;
+ (id)requestForMetricRequestOptions:(id)options metrics:(id)metrics;
+ (void)reportMetricWithOptions:(id)options genericMetricType:(int64_t)type eventName:(id)name startTime:(id)time endTime:(id)endTime attributes:(id)attributes;
- (C2ReportMetrics)initWithMetricRequest:(id)request metricRequestOptions:(id)options ignoreRequestThrottle:(BOOL)throttle requestThrottleIdentifier:(id)identifier requestThrottleLimit:(unint64_t)limit;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
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

+ (id)metricsForMetricRequestOptions:(id)options networkEvent:(id)event genericEvent:(id)genericEvent triggers:(int)triggers
{
  optionsCopy = options;
  eventCopy = event;
  genericEventCopy = genericEvent;
  metricOptions = [optionsCopy metricOptions];
  if (!metricOptions)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v13 = +[C2Metric generateDeviceInfo];
  if (v13)
  {
    generateCloudKitInfo = [metricOptions generateCloudKitInfo];
    if (!generateCloudKitInfo)
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
      [(C2MPMetric *)v16 setCloudkitInfo:generateCloudKitInfo];
      [(C2MPMetric *)v16 setTriggers:triggers];
      -[C2MPMetric setReportFrequency:](v16, "setReportFrequency:", [metricOptions reportFrequency]);
      -[C2MPMetric setReportFrequencyBase:](v16, "setReportFrequencyBase:", [metricOptions reportFrequencyBase]);
      -[C2MPMetric setReportTransportAllowExpensiveAccess:](v16, "setReportTransportAllowExpensiveAccess:", [optionsCopy _allowsExpensiveAccess] != 0);
      -[C2MPMetric setReportTransportAllowPowerNapScheduling:](v16, "setReportTransportAllowPowerNapScheduling:", [optionsCopy _allowsPowerNapScheduling] != 0);
      _sourceApplicationBundleIdentifier = [optionsCopy _sourceApplicationBundleIdentifier];
      [(C2MPMetric *)v16 setReportTransportSourceApplicationBundleIdentifier:_sourceApplicationBundleIdentifier];

      _sourceApplicationSecondaryIdentifier = [optionsCopy _sourceApplicationSecondaryIdentifier];
      [(C2MPMetric *)v16 setReportTransportSourceApplicationSecondaryIdentifier:_sourceApplicationSecondaryIdentifier];

      if (eventCopy || !genericEventCopy)
      {
        v19 = 0;
        if (!eventCopy || genericEventCopy)
        {
          goto LABEL_16;
        }

        [(C2MPMetric *)v16 setMetricType:200];
        [(C2MPMetric *)v16 setNetworkEvent:eventCopy];
      }

      else
      {
        [(C2MPMetric *)v16 setMetricType:201];
        [(C2MPMetric *)v16 setGenericEvent:genericEventCopy];
      }

      deviceInfo = [(C2MPMetric *)v16 deviceInfo];
      [deviceInfo setProcessUuid:0];

      cloudkitInfo = [(C2MPMetric *)v16 cloudkitInfo];
      [cloudkitInfo setContainerScopedDeviceIdentifier:0];

      cloudkitInfo2 = [(C2MPMetric *)v16 cloudkitInfo];
      [cloudkitInfo2 setContainerScopedUserIdentifier:0];

      networkEvent = [(C2MPMetric *)v16 networkEvent];
      [networkEvent setNetworkConnectionUuid:0];

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

+ (id)requestForMetricRequestOptions:(id)options metrics:(id)metrics
{
  metricsCopy = metrics;
  v6 = metricsCopy;
  v7 = 0;
  if (options && metricsCopy)
  {
    metricOptions = [options metricOptions];
    v9 = metricOptions;
    if (metricOptions)
    {
      c2MetricsEndpoint = [metricOptions c2MetricsEndpoint];
      v11 = c2MetricsEndpoint;
      if (c2MetricsEndpoint)
      {
        v12 = [c2MetricsEndpoint URLByAppendingPathComponent:@"c2"];
        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
          if (v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277D43178]);
            if (v14)
            {
              [v6 writeTo:v14];
              immutableData = [v14 immutableData];
              if (immutableData)
              {
                v16 = [objc_opt_class() gzipEncode:immutableData];
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

+ (id)gzipEncode:(id)encode
{
  v11 = *MEMORY[0x277D85DE8];
  encodeCopy = encode;
  bzero(v10, 0x2000uLL);
  data = [MEMORY[0x277CBEB28] data];
  memset(&v9, 0, sizeof(v9));
  if (deflateInit2_(&v9, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v6 = encodeCopy;
    v9.avail_in = [v6 length];
    do
    {
      v9.avail_out = 0x2000;
      v9.next_out = v10;
      if (deflate(&v9, 4) == -2)
      {
        +[C2ReportMetrics gzipEncode:];
      }

      [data appendBytes:v10 length:0x2000 - v9.avail_out];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      +[C2ReportMetrics gzipEncode:];
    }

    deflateEnd(&v9);
    v5 = data;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)gzipDecode:(id)decode
{
  v11 = *MEMORY[0x277D85DE8];
  decodeCopy = decode;
  bzero(v10, 0x2000uLL);
  data = [MEMORY[0x277CBEB28] data];
  memset(&v9, 0, sizeof(v9));
  if (inflateInit2_(&v9, 31, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v6 = decodeCopy;
    v9.avail_in = [v6 length];
    do
    {
      v9.avail_out = 0x2000;
      v9.next_out = v10;
      if (inflate(&v9, 4) == -2)
      {
        +[C2ReportMetrics gzipDecode:];
      }

      [data appendBytes:v10 length:0x2000 - v9.avail_out];
    }

    while (!v9.avail_out);
    if (v9.avail_in)
    {
      +[C2ReportMetrics gzipDecode:];
    }

    inflateEnd(&v9);
    v5 = data;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)reportMetricWithOptions:(id)options genericMetricType:(int64_t)type eventName:(id)name startTime:(id)time endTime:(id)endTime attributes:(id)attributes
{
  optionsCopy = options;
  nameCopy = name;
  timeCopy = time;
  endTimeCopy = endTime;
  attributesCopy = attributes;
  v17 = objc_autoreleasePoolPush();
  metricOptions = [optionsCopy metricOptions];
  v19 = [metricOptions generateTriggerWithResponseHeader:0];

  v20 = [C2Metric generateGenericEventWithName:nameCopy genericMetricType:type startTime:timeCopy endTime:endTimeCopy attributes:attributesCopy];
  [objc_opt_class() _reportWithOptions:optionsCopy networkEvent:0 genericEvent:v20 triggers:v19 eventName:nameCopy startTime:timeCopy endTime:endTimeCopy attributes:attributesCopy];

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

- (C2ReportMetrics)initWithMetricRequest:(id)request metricRequestOptions:(id)options ignoreRequestThrottle:(BOOL)throttle requestThrottleIdentifier:(id)identifier requestThrottleLimit:(unint64_t)limit
{
  requestCopy = request;
  optionsCopy = options;
  identifierCopy = identifier;
  v16 = identifierCopy;
  selfCopy = 0;
  if (requestCopy && optionsCopy && identifierCopy)
  {
    metricRequestTransportOptions = [optionsCopy metricRequestTransportOptions];
    if (metricRequestTransportOptions)
    {
      limitCopy = limit;
      metricUUID = [optionsCopy metricUUID];
      uUIDString = [metricUUID UUIDString];

      if (uUIDString)
      {
        v28.receiver = self;
        v28.super_class = C2ReportMetrics;
        v21 = [(C2ReportMetrics *)&v28 init];
        v22 = v21;
        if (v21)
        {
          v21->_ignoreRequestThrottle = throttle;
          objc_storeStrong(&v21->_requestThrottleIdentifier, identifier);
          v22->_requestThrottleLimit = limitCopy;
          objc_storeStrong(&v22->_metricRequest, request);
          metricOptions = [optionsCopy metricOptions];
          metricOptions = v22->_metricOptions;
          v22->_metricOptions = metricOptions;

          [(NSMutableURLRequest *)v22->_metricRequest setValue:uUIDString forHTTPHeaderField:@"x-apple-request-uuid"];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetricRequest-%@", uUIDString];
          [metricRequestTransportOptions setIdentifier:v25];

          objc_storeStrong(&v22->_metricsTransportRequestOptions, metricRequestTransportOptions);
        }

        self = v22;
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)send
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"C2ReportMetrics.m" lineNumber:512 description:@"metricOptions must not be nil."];
}

uint64_t __23__C2ReportMetrics_send__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2ReportMetrics.m" lineNumber:541 description:@"Unexpected callback."];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  testBehavior_didCompleteWithError = self->_testBehavior_didCompleteWithError;
  if (testBehavior_didCompleteWithError)
  {
    testBehavior_didCompleteWithError[2](testBehavior_didCompleteWithError, errorCopy);
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
  didCompleteWithError = [(C2MetricOptions *)self->_metricOptions didCompleteWithError];

  if (didCompleteWithError)
  {
    didCompleteWithError2 = [(C2MetricOptions *)self->_metricOptions didCompleteWithError];
    (didCompleteWithError2)[2](didCompleteWithError2, errorCopy);
  }

  [(C2MetricOptions *)self->_metricOptions setDidCompleteWithError:0];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2ReportMetrics.m" lineNumber:578 description:@"Unexpected callback."];
}

@end