@interface LSApplicationExtensionRecord(IconServicesAdditions)
- (uint64_t)_IS_isMessagesExtension;
- (uint64_t)_is_canProvideIconResources;
@end

@implementation LSApplicationExtensionRecord(IconServicesAdditions)

- (uint64_t)_is_canProvideIconResources
{
  extensionPointRecord = [self extensionPointRecord];
  _IS_extensionsCanProvideIcon = [extensionPointRecord _IS_extensionsCanProvideIcon];

  if (_IS_extensionsCanProvideIcon)
  {
    iconDictionary = [self iconDictionary];
    v5 = [iconDictionary count];

    if (v5)
    {
      return 1;
    }
  }

  containingBundleRecord = [self containingBundleRecord];
  if (containingBundleRecord)
  {
    extensionPointRecord2 = [self extensionPointRecord];
    v6 = [extensionPointRecord2 _IS_extensionsShouldFallbackToContainerIcon] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (uint64_t)_IS_isMessagesExtension
{
  extensionPointRecord = [self extensionPointRecord];
  identifier = [extensionPointRecord identifier];
  v3 = [identifier hasPrefix:@"com.apple.message-payload-provider"];

  return v3;
}

@end