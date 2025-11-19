@interface LSApplicationProxy(HFAdditions)
+ (id)hf_applicationProxyForAccessory:()HFAdditions;
- (uint64_t)hf_isInstalledForLaunching;
@end

@implementation LSApplicationProxy(HFAdditions)

+ (id)hf_applicationProxyForAccessory:()HFAdditions
{
  v4 = [a3 bundleID];
  v5 = [a1 applicationProxyForIdentifier:v4];

  return v5;
}

- (uint64_t)hf_isInstalledForLaunching
{
  v2 = [a1 appState];
  if ([v2 isInstalled])
  {
    v3 = [a1 appState];
    v4 = [v3 isPlaceholder] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end