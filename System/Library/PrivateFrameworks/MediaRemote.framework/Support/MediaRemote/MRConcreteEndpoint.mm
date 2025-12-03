@interface MRConcreteEndpoint
- (BOOL)isNativeEndpoint;
@end

@implementation MRConcreteEndpoint

- (BOOL)isNativeEndpoint
{
  designatedGroupLeader = [(MRConcreteEndpoint *)self designatedGroupLeader];
  if ([designatedGroupLeader isPrimaryLocalDevice])
  {
    outputDevices = [(MRConcreteEndpoint *)self outputDevices];
    v5 = [outputDevices msv_firstWhere:&stru_1004BA190];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end