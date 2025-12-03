@interface LSApplicationProxy(HFAdditions)
+ (id)hf_applicationProxyForAccessory:()HFAdditions;
- (uint64_t)hf_isInstalledForLaunching;
@end

@implementation LSApplicationProxy(HFAdditions)

+ (id)hf_applicationProxyForAccessory:()HFAdditions
{
  bundleID = [a3 bundleID];
  v5 = [self applicationProxyForIdentifier:bundleID];

  return v5;
}

- (uint64_t)hf_isInstalledForLaunching
{
  appState = [self appState];
  if ([appState isInstalled])
  {
    appState2 = [self appState];
    v4 = [appState2 isPlaceholder] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end