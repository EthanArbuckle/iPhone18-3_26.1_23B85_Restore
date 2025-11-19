@interface HKHealthChartFactoryViewControllerProviderClassAdaptor
- (HKHealthChartFactoryViewControllerProviderClassAdaptor)initWithProviderClass:(Class)a3;
@end

@implementation HKHealthChartFactoryViewControllerProviderClassAdaptor

- (HKHealthChartFactoryViewControllerProviderClassAdaptor)initWithProviderClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = HKHealthChartFactoryViewControllerProviderClassAdaptor;
  result = [(HKHealthChartFactoryViewControllerProviderClassAdaptor *)&v5 init];
  if (result)
  {
    result->_providerClass = a3;
  }

  return result;
}

@end