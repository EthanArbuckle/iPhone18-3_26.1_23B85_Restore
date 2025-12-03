@interface NSException(PSYSafeDescription)
- (id)psy_safeDescription;
@end

@implementation NSException(PSYSafeDescription)

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
    name = [self name];
    reason = [self reason];
    v2 = [v3 stringWithFormat:@"class=%@ name=%@ reason=%@", v5, name, reason];
  }

  return v2;
}

@end