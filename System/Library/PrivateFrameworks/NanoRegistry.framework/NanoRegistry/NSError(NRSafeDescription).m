@interface NSError(NRSafeDescription)
- (id)nr_filteredError;
- (id)nr_safeDescription;
@end

@implementation NSError(NRSafeDescription)

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
    v6 = [a1 code];
    v7 = [a1 domain];
    v2 = [v3 stringWithFormat:@"class=%@ code=%lld domain=%@", v5, v6, v7];
  }

  return v2;
}

- (id)nr_filteredError
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = [a1 userInfo];
  v4 = [(NSError *)v2 nr_filteredPlistDictionary:v3];

  v5 = [a1 userInfo];

  if (v4 == v5)
  {
    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [a1 domain];
    v8 = [v6 errorWithDomain:v7 code:objc_msgSend(a1 userInfo:{"code"), v4}];
  }

  return v8;
}

@end