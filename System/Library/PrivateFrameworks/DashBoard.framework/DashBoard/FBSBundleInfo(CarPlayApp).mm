@interface FBSBundleInfo(CarPlayApp)
- (id)_iconKeyForFormat:()CarPlayApp;
- (id)iconWithFormat:()CarPlayApp;
@end

@implementation FBSBundleInfo(CarPlayApp)

- (id)_iconKeyForFormat:()CarPlayApp
{
  v4 = MEMORY[0x277CCACA8];
  bundleIdentifier = [self bundleIdentifier];
  v6 = [v4 stringWithFormat:@"%@-%d", bundleIdentifier, a3];

  return v6;
}

- (id)iconWithFormat:()CarPlayApp
{
  if (iconWithFormat__onceToken != -1)
  {
    [FBSBundleInfo(CarPlayApp) iconWithFormat:];
  }

  v5 = [self _iconKeyForFormat:a3];
  v6 = [iconWithFormat__iconCache objectForKey:v5];
  if (!v6)
  {
    bundleIdentifier = [self bundleIdentifier];
    _carScreen = [MEMORY[0x277D759A0] _carScreen];
    [_carScreen scale];
    [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
    v6 = SBHGetApplicationIconImage();

    if (v6)
    {
      [iconWithFormat__iconCache setObject:v6 forKey:v5];
    }
  }

  return v6;
}

@end