@interface RPCompanionLinkDevice(CCSync)
- (id)CC_companionLinkDeviceIdentifier;
@end

@implementation RPCompanionLinkDevice(CCSync)

- (id)CC_companionLinkDeviceIdentifier
{
  idsDeviceIdentifier = [self idsDeviceIdentifier];
  v2 = [idsDeviceIdentifier copy];

  return v2;
}

@end