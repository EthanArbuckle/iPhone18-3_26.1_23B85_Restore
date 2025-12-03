@interface LSPlugInKitProxy(IconServicesAdditions)
- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:;
- (uint64_t)__IS_canProvideIcon;
- (uint64_t)__IS_isMessagesApp;
- (uint64_t)__IS_isWatchApp;
@end

@implementation LSPlugInKitProxy(IconServicesAdditions)

- (uint64_t)__IS_canProvideIcon
{
  if (__IS_canProvideIcon_onceToken != -1)
  {
    [LSPlugInKitProxy(IconServicesAdditions) __IS_canProvideIcon];
  }

  v2 = __IS_canProvideIcon_extensionPointsWithIcons;
  protocol = [self protocol];
  LOBYTE(v2) = [v2 containsObject:protocol];

  if (v2)
  {
    return 1;
  }

  containingBundle = [self containingBundle];
  bundleIdentifier = [containingBundle bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.share"];

  if (v6)
  {
    return 1;
  }

  containingBundle2 = [self containingBundle];
  v7 = containingBundle2 == 0;

  return v7;
}

- (uint64_t)__IS_isWatchApp
{
  if (__IS_isWatchApp_onceToken != -1)
  {
    [LSPlugInKitProxy(IconServicesAdditions) __IS_isWatchApp];
  }

  v2 = __IS_isWatchApp_extensionPointsWithIcons;
  protocol = [self protocol];
  v4 = [v2 containsObject:protocol];

  return v4;
}

- (uint64_t)__IS_isMessagesApp
{
  if (__IS_isMessagesApp_onceToken != -1)
  {
    [LSPlugInKitProxy(IconServicesAdditions) __IS_isMessagesApp];
  }

  v2 = __IS_isMessagesApp_extensionPointsWithIcons;
  protocol = [self protocol];
  v4 = [v2 containsObject:protocol];

  return v4;
}

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  if (([self __IS_canProvideIcon] & 1) != 0 || (objc_msgSend(self, "containingBundle"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "__IS_iconDataForVariant:withOptions:", a3, a4), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v10.receiver = self;
    v10.super_class = &off_1F1A78878;
    v8 = objc_msgSendSuper2(&v10, sel___IS_iconDataForVariant_withOptions_, a3, a4);
  }

  return v8;
}

@end