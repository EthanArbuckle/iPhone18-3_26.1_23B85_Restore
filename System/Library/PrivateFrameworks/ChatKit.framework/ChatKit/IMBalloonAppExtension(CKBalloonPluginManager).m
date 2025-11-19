@interface IMBalloonAppExtension(CKBalloonPluginManager)
- (id)containingBundleIdentifier;
@end

@implementation IMBalloonAppExtension(CKBalloonPluginManager)

- (id)containingBundleIdentifier
{
  v1 = [a1 appBundle];
  v2 = [v1 bundleIdentifier];

  return v2;
}

@end