@interface MRDeviceInfo
- (BOOL)considerLocalOriginAsSeperateStream;
@end

@implementation MRDeviceInfo

- (BOOL)considerLocalOriginAsSeperateStream
{
  v3 = [(MRDeviceInfo *)self isAirPlayActive];
  if (v3)
  {

    LOBYTE(v3) = [(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader];
  }

  return v3;
}

@end