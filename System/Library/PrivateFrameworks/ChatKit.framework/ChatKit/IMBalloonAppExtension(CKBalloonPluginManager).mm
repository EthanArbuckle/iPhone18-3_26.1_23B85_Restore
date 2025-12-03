@interface IMBalloonAppExtension(CKBalloonPluginManager)
- (id)containingBundleIdentifier;
@end

@implementation IMBalloonAppExtension(CKBalloonPluginManager)

- (id)containingBundleIdentifier
{
  appBundle = [self appBundle];
  bundleIdentifier = [appBundle bundleIdentifier];

  return bundleIdentifier;
}

@end