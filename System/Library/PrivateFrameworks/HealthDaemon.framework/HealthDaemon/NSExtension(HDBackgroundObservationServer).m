@interface NSExtension(HDBackgroundObservationServer)
- (id)hd_extensionContainerBundleIdentifier;
- (id)hd_extensionContainerBundleProxy;
@end

@implementation NSExtension(HDBackgroundObservationServer)

- (id)hd_extensionContainerBundleProxy
{
  v1 = MEMORY[0x277CC1ED8];
  v2 = [a1 identifier];
  v3 = [v1 pluginKitProxyForIdentifier:v2];
  v4 = [v3 containingBundle];

  return v4;
}

- (id)hd_extensionContainerBundleIdentifier
{
  v1 = [a1 hd_extensionContainerBundleProxy];
  v2 = [v1 bundleIdentifier];

  return v2;
}

@end