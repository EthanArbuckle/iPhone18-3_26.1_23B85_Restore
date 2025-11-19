@interface UIView
@end

@implementation UIView

void __69__UIView_GKAdditionsAdditional___gkRecursiveDescriptionForKey_depth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  NSSelectorFromString(*(a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 valueForKey:*(a1 + 32)];
    [*(a1 + 40) appendFormat:@"%*s<%@ %p>: %@\n", a3, "", objc_opt_class(), v6, v5];
  }
}

uint64_t __78__UIView_GKAdditionsAdditional___gkRecursiveDescriptionForValue_forKey_depth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  NSSelectorFromString(*(a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v5 = [v7 valueForKey:*(a1 + 32)];
    if ([v5 isEqual:*(a1 + 40)])
    {
      [*(a1 + 48) appendFormat:@"%*s<%@ %p>: %@\n", a3, "", objc_opt_class(), v7, v5];
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end