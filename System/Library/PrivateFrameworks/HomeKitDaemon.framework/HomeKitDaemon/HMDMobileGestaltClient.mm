@interface HMDMobileGestaltClient
- (HMDMobileGestaltClient)initWithHomeSafetySecurityEnabled:(BOOL)enabled;
- (NSString)serialNumber;
@end

@implementation HMDMobileGestaltClient

- (NSString)serialNumber
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (HMDMobileGestaltClient)initWithHomeSafetySecurityEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = HMDMobileGestaltClient;
  result = [(HMDMobileGestaltClient *)&v5 init];
  if (result)
  {
    result->_homeSafetySecurityEnabled = enabled;
  }

  return result;
}

@end