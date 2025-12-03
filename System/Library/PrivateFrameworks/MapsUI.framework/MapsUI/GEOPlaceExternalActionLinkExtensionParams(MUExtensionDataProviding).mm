@interface GEOPlaceExternalActionLinkExtensionParams(MUExtensionDataProviding)
- (id)appBundleIdentifier;
@end

@implementation GEOPlaceExternalActionLinkExtensionParams(MUExtensionDataProviding)

- (id)appBundleIdentifier
{
  attributionApp = [self attributionApp];
  appBundleIdentifier = [attributionApp appBundleIdentifier];

  return appBundleIdentifier;
}

@end