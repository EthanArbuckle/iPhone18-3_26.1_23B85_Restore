@interface HMDIdsIdentifierProviderHomedImplementation
- (id)getCurrentDeviceId;
@end

@implementation HMDIdsIdentifierProviderHomedImplementation

- (id)getCurrentDeviceId
{
  v2 = +[HMDAppleAccountManager sharedManager];
  device = [v2 device];
  idsIdentifier = [device idsIdentifier];

  return idsIdentifier;
}

@end