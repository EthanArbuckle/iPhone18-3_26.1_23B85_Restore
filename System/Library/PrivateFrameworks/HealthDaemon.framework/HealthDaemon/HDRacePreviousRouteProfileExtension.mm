@interface HDRacePreviousRouteProfileExtension
- (HDRacePreviousRouteProfileExtension)initWithProfile:(id)profile;
@end

@implementation HDRacePreviousRouteProfileExtension

- (HDRacePreviousRouteProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDRacePreviousRouteProfileExtension;
  v5 = [(HDRacePreviousRouteProfileExtension *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [[HDRaceRouteClusterManager alloc] initWithProfile:profileCopy];
    raceRouteClusterManager = v6->_raceRouteClusterManager;
    v6->_raceRouteClusterManager = v7;
  }

  return v6;
}

@end