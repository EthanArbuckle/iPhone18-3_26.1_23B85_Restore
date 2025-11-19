@interface HMDMobileGestaltClient
- (NSString)serialNumber;
@end

@implementation HMDMobileGestaltClient

- (NSString)serialNumber
{
  v2 = MGGetStringAnswer();

  return v2;
}

@end