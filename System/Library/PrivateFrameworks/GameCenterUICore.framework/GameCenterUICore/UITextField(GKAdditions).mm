@interface UITextField(GKAdditions)
- (uint64_t)isReallyFirstResponder;
@end

@implementation UITextField(GKAdditions)

- (uint64_t)isReallyFirstResponder
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 keyWindow];
  v4 = [v3 firstResponder];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 superview], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "superview"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6 == a1))
  {
    v7 = 1;
  }

  else
  {
    v7 = [a1 isFirstResponder];
  }

  return v7;
}

@end