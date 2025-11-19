@interface LSExtensionPointRecord(IconServicesAdditions)
- (uint64_t)_IS_extensionsCanProvideIcon;
- (uint64_t)_IS_extensionsShouldFallbackToContainerIcon;
@end

@implementation LSExtensionPointRecord(IconServicesAdditions)

- (uint64_t)_IS_extensionsCanProvideIcon
{
  if (_IS_extensionsCanProvideIcon_onceToken != -1)
  {
    [LSExtensionPointRecord(IconServicesAdditions) _IS_extensionsCanProvideIcon];
  }

  v2 = _IS_extensionsCanProvideIcon_extensionPointsWithIcons;
  v3 = [a1 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (uint64_t)_IS_extensionsShouldFallbackToContainerIcon
{
  if (_IS_extensionsShouldFallbackToContainerIcon_onceToken != -1)
  {
    [LSExtensionPointRecord(IconServicesAdditions) _IS_extensionsShouldFallbackToContainerIcon];
  }

  v2 = _IS_extensionsShouldFallbackToContainerIcon_extensionPointsHavingExtensionThatMustProvideIcons;
  v3 = [a1 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end