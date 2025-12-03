@interface MRDeviceInfo
- (BOOL)considerLocalOriginAsSeperateStream;
@end

@implementation MRDeviceInfo

- (BOOL)considerLocalOriginAsSeperateStream
{
  isAirPlayActive = [(MRDeviceInfo *)self isAirPlayActive];
  if (isAirPlayActive)
  {

    LOBYTE(isAirPlayActive) = [(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader];
  }

  return isAirPlayActive;
}

@end