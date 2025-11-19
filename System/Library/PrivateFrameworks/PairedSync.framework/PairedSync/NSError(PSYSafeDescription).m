@interface NSError(PSYSafeDescription)
- (id)psy_safeDescription;
@end

@implementation NSError(PSYSafeDescription)

- (id)psy_safeDescription
{
  if (_IsInternalInstall___onceToken != -1)
  {
    [NSError(PSYSafeDescription) psy_safeDescription];
  }

  if (_IsInternalInstall___internalInstall == 1)
  {
    v2 = [a1 description];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [a1 code];
    v7 = [a1 domain];
    v2 = [v3 stringWithFormat:@"class=%@ code=%lld domain=%@", v5, v6, v7];
  }

  return v2;
}

@end