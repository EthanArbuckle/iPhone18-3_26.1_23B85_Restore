@interface HKHealthChartFactoryViewControllerProviderClassAdaptor
- (HKHealthChartFactoryViewControllerProviderClassAdaptor)initWithProviderClass:(Class)class;
@end

@implementation HKHealthChartFactoryViewControllerProviderClassAdaptor

- (HKHealthChartFactoryViewControllerProviderClassAdaptor)initWithProviderClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = HKHealthChartFactoryViewControllerProviderClassAdaptor;
  result = [(HKHealthChartFactoryViewControllerProviderClassAdaptor *)&v5 init];
  if (result)
  {
    result->_providerClass = class;
  }

  return result;
}

@end