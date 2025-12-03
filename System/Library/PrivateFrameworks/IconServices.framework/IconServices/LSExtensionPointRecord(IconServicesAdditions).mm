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
  identifier = [self identifier];
  v4 = [v2 containsObject:identifier];

  return v4;
}

- (uint64_t)_IS_extensionsShouldFallbackToContainerIcon
{
  if (_IS_extensionsShouldFallbackToContainerIcon_onceToken != -1)
  {
    [LSExtensionPointRecord(IconServicesAdditions) _IS_extensionsShouldFallbackToContainerIcon];
  }

  v2 = _IS_extensionsShouldFallbackToContainerIcon_extensionPointsHavingExtensionThatMustProvideIcons;
  identifier = [self identifier];
  LODWORD(v2) = [v2 containsObject:identifier];

  return v2 ^ 1;
}

@end