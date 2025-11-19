@interface FPDCoreAnalyticsReport
- (FPDCoreAnalyticsReport)initWithEventName:(id)a3;
- (void)addValue:(id)a3 forKey:(id)a4;
- (void)sendReport;
@end

@implementation FPDCoreAnalyticsReport

- (FPDCoreAnalyticsReport)initWithEventName:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = FPDCoreAnalyticsReport;
  v6 = [(FPDCoreAnalyticsReport *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, a3);
    IsEventUsed = AnalyticsIsEventUsed();
    v7->_isEventEnabled = IsEventUsed;
    if (IsEventUsed)
    {
      v9 = objc_opt_new();
      report = v7->_report;
      v7->_report = v9;
    }
  }

  return v7;
}

- (void)addValue:(id)a3 forKey:(id)a4
{
  if (self->_isEventEnabled)
  {
    [(NSMutableDictionary *)self->_report setObject:a3 forKeyedSubscript:a4];
  }
}

- (void)sendReport
{
  if (self->_isEventEnabled)
  {
    eventName = self->_eventName;
    AnalyticsSendEventLazy();
  }
}

@end