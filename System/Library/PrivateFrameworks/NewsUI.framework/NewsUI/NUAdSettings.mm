@interface NUAdSettings
- (NUAdSettings)initWithDebugAdvertisementSettings:(id)a3;
@end

@implementation NUAdSettings

- (NUAdSettings)initWithDebugAdvertisementSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUAdSettings;
  v6 = [(NUAdSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugAdvertisementSettings, a3);
  }

  return v7;
}

@end