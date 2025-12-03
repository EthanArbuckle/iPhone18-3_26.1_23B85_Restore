@interface HKChartOverlaySelectedAnalyticsEventConfiguration
- (HKChartOverlaySelectedAnalyticsEventConfiguration)initWithEventName:(id)name previousContextItemPropertyName:(id)propertyName currentContextItemPropertyName:(id)itemPropertyName;
@end

@implementation HKChartOverlaySelectedAnalyticsEventConfiguration

- (HKChartOverlaySelectedAnalyticsEventConfiguration)initWithEventName:(id)name previousContextItemPropertyName:(id)propertyName currentContextItemPropertyName:(id)itemPropertyName
{
  nameCopy = name;
  propertyNameCopy = propertyName;
  itemPropertyNameCopy = itemPropertyName;
  v17.receiver = self;
  v17.super_class = HKChartOverlaySelectedAnalyticsEventConfiguration;
  v12 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_eventName, name);
    objc_storeStrong(&v13->_previousContextItemPropertyName, propertyName);
    objc_storeStrong(&v13->_currentContextItemPropertyName, itemPropertyName);
    v14 = HKLogWellnessDashboard();
    loggingCategory = v13->_loggingCategory;
    v13->_loggingCategory = v14;
  }

  return v13;
}

@end