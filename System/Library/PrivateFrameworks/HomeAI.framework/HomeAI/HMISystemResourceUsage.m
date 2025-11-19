@interface HMISystemResourceUsage
- (HMISystemResourceUsage)init;
@end

@implementation HMISystemResourceUsage

- (HMISystemResourceUsage)init
{
  v3.receiver = self;
  v3.super_class = HMISystemResourceUsage;
  result = [(HMISystemResourceUsage *)&v3 init];
  if (result)
  {
    result->_systemResourceUsageLevel = 0;
  }

  return result;
}

@end