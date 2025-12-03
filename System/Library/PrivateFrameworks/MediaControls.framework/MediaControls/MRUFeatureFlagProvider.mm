@interface MRUFeatureFlagProvider
+ (BOOL)isCayenneControlCenterEnabled;
+ (BOOL)isPlatterLiveWaveformEnabled;
@end

@implementation MRUFeatureFlagProvider

+ (BOOL)isPlatterLiveWaveformEnabled
{
  isAutobahnEnabled = [self isAutobahnEnabled];
  if (isAutobahnEnabled)
  {

    LOBYTE(isAutobahnEnabled) = _os_feature_enabled_impl();
  }

  return isAutobahnEnabled;
}

+ (BOOL)isCayenneControlCenterEnabled
{
  isCayenneEnabled = [self isCayenneEnabled];
  if (isCayenneEnabled)
  {

    LOBYTE(isCayenneEnabled) = _os_feature_enabled_impl();
  }

  return isCayenneEnabled;
}

@end