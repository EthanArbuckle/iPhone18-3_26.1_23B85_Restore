@interface FCCachePolicy
+ (FCCachePolicy)cachePolicyWithSoftMaxAge:(double)age;
+ (id)cachedOnlyCachePolicy;
+ (id)defaultCachePolicy;
+ (id)ignoreCacheCachePolicy;
- (NSDate)oldestAllowedDate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FCCachePolicy

+ (id)defaultCachePolicy
{
  if (qword_1EDB273D0 != -1)
  {
    dispatch_once(&qword_1EDB273D0, &__block_literal_global_67);
  }

  v3 = _MergedGlobals_161;

  return v3;
}

uint64_t __35__FCCachePolicy_defaultCachePolicy__block_invoke()
{
  v0 = objc_alloc_init(FCCachePolicy);
  v1 = _MergedGlobals_161;
  _MergedGlobals_161 = v0;

  v2 = _MergedGlobals_161;

  return [v2 setCachePolicy:0];
}

- (NSDate)oldestAllowedDate
{
  cachePolicy = [(FCCachePolicy *)self cachePolicy];
  if (cachePolicy <= 5)
  {
    if (((1 << cachePolicy) & 0xD) != 0)
    {
      v4 = MEMORY[0x1E695DF00];
LABEL_7:
      cachePolicy = [v4 distantPast];
      goto LABEL_8;
    }

    if (((1 << cachePolicy) & 0x30) != 0)
    {
      [(FCCachePolicy *)self maximumCachedAge];
      v5 = MEMORY[0x1E695DF00];
      if (v6 == 1.79769313e308)
      {
        v4 = MEMORY[0x1E695DF00];
        goto LABEL_7;
      }

      [(FCCachePolicy *)self maximumCachedAge];
      cachePolicy = [v5 dateWithTimeIntervalSinceNow:-v8];
    }

    else
    {
      cachePolicy = [MEMORY[0x1E695DF00] distantFuture];
    }
  }

LABEL_8:

  return cachePolicy;
}

+ (id)cachedOnlyCachePolicy
{
  if (qword_1EDB273E0 != -1)
  {
    dispatch_once(&qword_1EDB273E0, &__block_literal_global_2_0);
  }

  v3 = qword_1EDB273D8;

  return v3;
}

uint64_t __38__FCCachePolicy_cachedOnlyCachePolicy__block_invoke()
{
  v0 = objc_alloc_init(FCCachePolicy);
  v1 = qword_1EDB273D8;
  qword_1EDB273D8 = v0;

  v2 = qword_1EDB273D8;

  return [v2 setCachePolicy:3];
}

+ (id)ignoreCacheCachePolicy
{
  if (qword_1EDB273F0 != -1)
  {
    dispatch_once(&qword_1EDB273F0, &__block_literal_global_4_5);
  }

  v3 = qword_1EDB273E8;

  return v3;
}

uint64_t __39__FCCachePolicy_ignoreCacheCachePolicy__block_invoke()
{
  v0 = objc_alloc_init(FCCachePolicy);
  v1 = qword_1EDB273E8;
  qword_1EDB273E8 = v0;

  v2 = qword_1EDB273E8;

  return [v2 setCachePolicy:1];
}

+ (FCCachePolicy)cachePolicyWithSoftMaxAge:(double)age
{
  v4 = objc_opt_new();
  [v4 setCachePolicy:4];
  [v4 setMaximumCachedAge:age];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCachePolicy:{-[FCCachePolicy cachePolicy](self, "cachePolicy")}];
  [(FCCachePolicy *)self maximumCachedAge];
  [v4 setMaximumCachedAge:?];
  return v4;
}

@end