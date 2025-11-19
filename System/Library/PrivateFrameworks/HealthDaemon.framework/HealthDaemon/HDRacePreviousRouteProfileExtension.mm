@interface HDRacePreviousRouteProfileExtension
- (HDRacePreviousRouteProfileExtension)initWithProfile:(id)a3;
@end

@implementation HDRacePreviousRouteProfileExtension

- (HDRacePreviousRouteProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDRacePreviousRouteProfileExtension;
  v5 = [(HDRacePreviousRouteProfileExtension *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [[HDRaceRouteClusterManager alloc] initWithProfile:v4];
    raceRouteClusterManager = v6->_raceRouteClusterManager;
    v6->_raceRouteClusterManager = v7;
  }

  return v6;
}

@end