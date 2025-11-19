@interface MRConcreteEndpoint
- (BOOL)isNativeEndpoint;
@end

@implementation MRConcreteEndpoint

- (BOOL)isNativeEndpoint
{
  v3 = [(MRConcreteEndpoint *)self designatedGroupLeader];
  if ([v3 isPrimaryLocalDevice])
  {
    v4 = [(MRConcreteEndpoint *)self outputDevices];
    v5 = [v4 msv_firstWhere:&stru_1004BA190];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end