@interface CPFeatureFlags
- (BOOL)fastSyncPresenceSeparationEnabled;
@end

@implementation CPFeatureFlags

- (BOOL)fastSyncPresenceSeparationEnabled
{
  if ((_os_feature_enabled_impl() & 1) != 0 || [(CPFeatureFlags *)self wranglerEnabled])
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

@end