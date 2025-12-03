@interface NSBundle(ControlCenterUIKit)
- (id)ccui_displayName;
@end

@implementation NSBundle(ControlCenterUIKit)

- (id)ccui_displayName
{
  bundleIdentifier = [self objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  if (!bundleIdentifier)
  {
    bundleIdentifier = [self objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];
    if (!bundleIdentifier)
    {
      bundleIdentifier = [self objectForInfoDictionaryKey:*MEMORY[0x1E695E4E8]];
      if (!bundleIdentifier)
      {
        bundleIdentifier = [self bundleIdentifier];
      }
    }
  }

  return bundleIdentifier;
}

@end