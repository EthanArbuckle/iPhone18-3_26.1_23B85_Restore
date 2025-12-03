@interface UIBarButtonItem(DMC)
- (uint64_t)DMCIsSpinner;
@end

@implementation UIBarButtonItem(DMC)

- (uint64_t)DMCIsSpinner
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = [self buttonType] == 3;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end