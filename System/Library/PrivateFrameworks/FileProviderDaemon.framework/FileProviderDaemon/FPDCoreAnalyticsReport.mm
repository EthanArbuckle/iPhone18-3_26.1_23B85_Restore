@interface FPDCoreAnalyticsReport
- (FPDCoreAnalyticsReport)initWithEventName:(id)name;
- (void)addValue:(id)value forKey:(id)key;
- (void)sendReport;
@end

@implementation FPDCoreAnalyticsReport

- (FPDCoreAnalyticsReport)initWithEventName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = FPDCoreAnalyticsReport;
  v6 = [(FPDCoreAnalyticsReport *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, name);
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

- (void)addValue:(id)value forKey:(id)key
{
  if (self->_isEventEnabled)
  {
    [(NSMutableDictionary *)self->_report setObject:value forKeyedSubscript:key];
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