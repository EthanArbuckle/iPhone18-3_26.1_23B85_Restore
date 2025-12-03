@interface RPCompanionLinkDevice(MRRapportTransportAdditions)
- (MRDeviceInfo)mrDeviceInfo;
@end

@implementation RPCompanionLinkDevice(MRRapportTransportAdditions)

- (MRDeviceInfo)mrDeviceInfo
{
  v2 = objc_alloc_init(MRDeviceInfo);
  mediaRouteIdentifier = [self mediaRouteIdentifier];
  [(MRDeviceInfo *)v2 setDeviceUID:mediaRouteIdentifier];

  name = [self name];
  [(MRDeviceInfo *)v2 setName:name];

  return v2;
}

@end