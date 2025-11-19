@interface _DKBiomeStreamCache
+ (id)sharedCache;
@end

@implementation _DKBiomeStreamCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_0 != -1)
  {
    +[_DKBiomeStreamCache sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

@end