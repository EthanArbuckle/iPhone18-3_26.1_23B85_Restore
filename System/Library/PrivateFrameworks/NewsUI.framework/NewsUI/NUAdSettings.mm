@interface NUAdSettings
- (NUAdSettings)initWithDebugAdvertisementSettings:(id)settings;
@end

@implementation NUAdSettings

- (NUAdSettings)initWithDebugAdvertisementSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = NUAdSettings;
  v6 = [(NUAdSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugAdvertisementSettings, settings);
  }

  return v7;
}

@end