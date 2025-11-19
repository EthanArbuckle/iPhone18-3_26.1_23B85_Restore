@interface RPCompanionLinkDevice(MRRapportTransportAdditions)
- (MRDeviceInfo)mrDeviceInfo;
@end

@implementation RPCompanionLinkDevice(MRRapportTransportAdditions)

- (MRDeviceInfo)mrDeviceInfo
{
  v2 = objc_alloc_init(MRDeviceInfo);
  v3 = [a1 mediaRouteIdentifier];
  [(MRDeviceInfo *)v2 setDeviceUID:v3];

  v4 = [a1 name];
  [(MRDeviceInfo *)v2 setName:v4];

  return v2;
}

@end