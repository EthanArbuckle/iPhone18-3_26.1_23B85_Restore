@interface GEOPlaceExternalActionLinkExtensionParams(MUExtensionDataProviding)
- (id)appBundleIdentifier;
@end

@implementation GEOPlaceExternalActionLinkExtensionParams(MUExtensionDataProviding)

- (id)appBundleIdentifier
{
  v1 = [a1 attributionApp];
  v2 = [v1 appBundleIdentifier];

  return v2;
}

@end