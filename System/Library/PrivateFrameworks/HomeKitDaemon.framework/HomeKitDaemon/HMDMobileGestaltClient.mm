@interface HMDMobileGestaltClient
- (HMDMobileGestaltClient)initWithHomeSafetySecurityEnabled:(BOOL)a3;
- (NSString)serialNumber;
@end

@implementation HMDMobileGestaltClient

- (NSString)serialNumber
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (HMDMobileGestaltClient)initWithHomeSafetySecurityEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HMDMobileGestaltClient;
  result = [(HMDMobileGestaltClient *)&v5 init];
  if (result)
  {
    result->_homeSafetySecurityEnabled = a3;
  }

  return result;
}

@end