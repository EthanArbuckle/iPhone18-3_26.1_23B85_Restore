@interface NSExtension(HDBackgroundObservationServer)
- (id)hd_extensionContainerBundleIdentifier;
- (id)hd_extensionContainerBundleProxy;
@end

@implementation NSExtension(HDBackgroundObservationServer)

- (id)hd_extensionContainerBundleProxy
{
  v1 = MEMORY[0x277CC1ED8];
  identifier = [self identifier];
  v3 = [v1 pluginKitProxyForIdentifier:identifier];
  containingBundle = [v3 containingBundle];

  return containingBundle;
}

- (id)hd_extensionContainerBundleIdentifier
{
  hd_extensionContainerBundleProxy = [self hd_extensionContainerBundleProxy];
  bundleIdentifier = [hd_extensionContainerBundleProxy bundleIdentifier];

  return bundleIdentifier;
}

@end