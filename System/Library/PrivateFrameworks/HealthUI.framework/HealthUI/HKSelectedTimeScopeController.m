@interface HKSelectedTimeScopeController
- (HKSelectedTimeScopeController)init;
@end

@implementation HKSelectedTimeScopeController

- (HKSelectedTimeScopeController)init
{
  v3.receiver = self;
  v3.super_class = HKSelectedTimeScopeController;
  result = [(HKSelectedTimeScopeController *)&v3 init];
  if (result)
  {
    result->_selectedTimeScope = 6;
  }

  return result;
}

@end