@interface UIKeyboardInputMode(Staging_Compatibility)
- (uint64_t)safe__extendedDisplayName;
@end

@implementation UIKeyboardInputMode(Staging_Compatibility)

- (uint64_t)safe__extendedDisplayName
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 extendedDisplayName];
  }

  else
  {

    return [a1 displayName];
  }
}

@end