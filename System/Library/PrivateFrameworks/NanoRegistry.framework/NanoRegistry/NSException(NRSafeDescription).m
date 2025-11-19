@interface NSException(NRSafeDescription)
- (id)nr_safeDescription;
@end

@implementation NSException(NRSafeDescription)

- (id)nr_safeDescription
{
  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  if (_NRIsInternalInstall___internalInstall == 1)
  {
    v2 = [a1 description];
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [a1 name];
    v7 = [a1 reason];
    v2 = [v3 stringWithFormat:@"class=%@ name=%@ reason=%@", v5, v6, v7];
  }

  return v2;
}

@end