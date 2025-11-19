@interface NSBundle(ControlCenterUIKit)
- (id)ccui_displayName;
@end

@implementation NSBundle(ControlCenterUIKit)

- (id)ccui_displayName
{
  v2 = [a1 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  if (!v2)
  {
    v2 = [a1 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];
    if (!v2)
    {
      v2 = [a1 objectForInfoDictionaryKey:*MEMORY[0x1E695E4E8]];
      if (!v2)
      {
        v2 = [a1 bundleIdentifier];
      }
    }
  }

  return v2;
}

@end