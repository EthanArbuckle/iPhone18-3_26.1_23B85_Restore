@interface BCSCoreAnalyticsMetricHandler
- (void)handleSubmittedMetric:(id)a3;
@end

@implementation BCSCoreAnalyticsMetricHandler

- (void)handleSubmittedMetric:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_28546BAB0])
  {
    v4 = v3;
    if (qword_280BCF570 != -1)
    {
      dispatch_once(&qword_280BCF570, &__block_literal_global_3);
    }

    v5 = _MergedGlobals_38;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v4 coreAnalyticsEventName];
      v10 = [v4 coreAnalyticsPayload];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_debug_impl(&dword_242072000, v5, OS_LOG_TYPE_DEBUG, "%@ - %@", buf, 0x16u);
    }

    v6 = [v4 coreAnalyticsEventName];
    v11 = v4;
    v7 = v4;
    AnalyticsSendEventLazy();
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end