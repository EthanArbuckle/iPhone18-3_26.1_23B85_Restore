@interface BCSCoreAnalyticsMetricHandler
- (void)handleSubmittedMetric:(id)metric;
@end

@implementation BCSCoreAnalyticsMetricHandler

- (void)handleSubmittedMetric:(id)metric
{
  v16 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if ([metricCopy conformsToProtocol:&unk_28546BAB0])
  {
    v4 = metricCopy;
    if (qword_280BCF570 != -1)
    {
      dispatch_once(&qword_280BCF570, &__block_literal_global_3);
    }

    v5 = _MergedGlobals_38;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      coreAnalyticsEventName = [v4 coreAnalyticsEventName];
      coreAnalyticsPayload = [v4 coreAnalyticsPayload];
      *buf = 138412546;
      v13 = coreAnalyticsEventName;
      v14 = 2112;
      v15 = coreAnalyticsPayload;
      _os_log_debug_impl(&dword_242072000, v5, OS_LOG_TYPE_DEBUG, "%@ - %@", buf, 0x16u);
    }

    coreAnalyticsEventName2 = [v4 coreAnalyticsEventName];
    v11 = v4;
    v7 = v4;
    AnalyticsSendEventLazy();
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end