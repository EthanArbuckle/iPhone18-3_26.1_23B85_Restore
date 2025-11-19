@interface MNLocationProviderCLParameters
- (MNLocationProviderCLParameters)init;
@end

@implementation MNLocationProviderCLParameters

- (MNLocationProviderCLParameters)init
{
  v7.receiver = self;
  v7.super_class = MNLocationProviderCLParameters;
  v2 = [(MNLocationProviderCLParameters *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityType = 4;
    v4 = *MEMORY[0x1E6985C80];
    v2->_distanceFilter = *MEMORY[0x1E6985C70];
    v2->_desiredAccuracy = v4;
    *&v2->_matchInfoEnabled = 1;
    v5 = v2;
  }

  return v3;
}

@end