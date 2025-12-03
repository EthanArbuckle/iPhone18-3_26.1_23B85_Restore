@interface UIKeyboardInputMode(Staging_Compatibility)
- (uint64_t)safe__extendedDisplayName;
@end

@implementation UIKeyboardInputMode(Staging_Compatibility)

- (uint64_t)safe__extendedDisplayName
{
  if (objc_opt_respondsToSelector())
  {

    return [self extendedDisplayName];
  }

  else
  {

    return [self displayName];
  }
}

@end