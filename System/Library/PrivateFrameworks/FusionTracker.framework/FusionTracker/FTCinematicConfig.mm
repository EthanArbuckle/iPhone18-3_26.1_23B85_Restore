@interface FTCinematicConfig
- (FTCinematicConfig)init;
@end

@implementation FTCinematicConfig

- (FTCinematicConfig)init
{
  v6.receiver = self;
  v6.super_class = FTCinematicConfig;
  v2 = [(FTCinematicConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(FTCinematicConfig *)v2 setEnsureObservationTimestampMatchesFrame:0];
    [(FTCinematicConfig *)v3 setAllowTrackPromotion:0];
    v4 = v3;
  }

  return v3;
}

@end