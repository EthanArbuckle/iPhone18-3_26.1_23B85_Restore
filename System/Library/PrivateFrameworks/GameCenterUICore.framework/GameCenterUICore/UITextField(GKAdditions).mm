@interface UITextField(GKAdditions)
- (uint64_t)isReallyFirstResponder;
@end

@implementation UITextField(GKAdditions)

- (uint64_t)isReallyFirstResponder
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  firstResponder = [keyWindow firstResponder];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([firstResponder superview], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "superview"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6 == self))
  {
    isFirstResponder = 1;
  }

  else
  {
    isFirstResponder = [self isFirstResponder];
  }

  return isFirstResponder;
}

@end