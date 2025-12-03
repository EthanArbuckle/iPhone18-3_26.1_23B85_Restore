@interface NSCache(NTKCacheAdditions)
- (id)ntkCachedObjectForKey:()NTKCacheAdditions creationBlock:;
- (id)ntkCachedObjectForKeyProvider:()NTKCacheAdditions creationBlock:;
@end

@implementation NSCache(NTKCacheAdditions)

- (id)ntkCachedObjectForKeyProvider:()NTKCacheAdditions creationBlock:
{
  v6 = a4;
  ntkCacheableKey = [a3 ntkCacheableKey];
  v8 = [self ntkCachedObjectForKey:ntkCacheableKey creationBlock:v6];

  return v8;
}

- (id)ntkCachedObjectForKey:()NTKCacheAdditions creationBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [self objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7[2](v7);
    if (v10)
    {
      [self setObject:v10 forKey:v6];
    }
  }

  return v10;
}

@end