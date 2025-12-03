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
    v2 = [self description];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    code = [self code];
    domain = [self domain];
    v2 = [v3 stringWithFormat:@"class=%@ code=%lld domain=%@", v5, code, domain];
  }

  return v2;
}

@end