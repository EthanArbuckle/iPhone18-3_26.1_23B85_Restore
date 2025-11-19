@interface HMDIdsIdentifierProviderHomedImplementation
- (id)getCurrentDeviceId;
@end

@implementation HMDIdsIdentifierProviderHomedImplementation

- (id)getCurrentDeviceId
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 device];
  v4 = [v3 idsIdentifier];

  return v4;
}

@end