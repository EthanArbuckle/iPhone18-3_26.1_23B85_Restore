@interface HKChartOverlaySelectedAnalyticsEventConfiguration
- (HKChartOverlaySelectedAnalyticsEventConfiguration)initWithEventName:(id)a3 previousContextItemPropertyName:(id)a4 currentContextItemPropertyName:(id)a5;
@end

@implementation HKChartOverlaySelectedAnalyticsEventConfiguration

- (HKChartOverlaySelectedAnalyticsEventConfiguration)initWithEventName:(id)a3 previousContextItemPropertyName:(id)a4 currentContextItemPropertyName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HKChartOverlaySelectedAnalyticsEventConfiguration;
  v12 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_eventName, a3);
    objc_storeStrong(&v13->_previousContextItemPropertyName, a4);
    objc_storeStrong(&v13->_currentContextItemPropertyName, a5);
    v14 = HKLogWellnessDashboard();
    loggingCategory = v13->_loggingCategory;
    v13->_loggingCategory = v14;
  }

  return v13;
}

@end