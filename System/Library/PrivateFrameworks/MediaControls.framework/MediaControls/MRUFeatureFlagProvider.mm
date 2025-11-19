@interface MRUFeatureFlagProvider
+ (BOOL)isCayenneControlCenterEnabled;
+ (BOOL)isPlatterLiveWaveformEnabled;
@end

@implementation MRUFeatureFlagProvider

+ (BOOL)isPlatterLiveWaveformEnabled
{
  v2 = [a1 isAutobahnEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

+ (BOOL)isCayenneControlCenterEnabled
{
  v2 = [a1 isCayenneEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

@end