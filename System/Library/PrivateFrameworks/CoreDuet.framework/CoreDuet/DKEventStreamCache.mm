@interface DKEventStreamCache
@end

@implementation DKEventStreamCache

uint64_t __35___DKEventStreamCache_sharedCached__block_invoke()
{
  v0 = objc_alloc_init(_DKEventStreamCache);
  v1 = sharedCached_sharedCache;
  sharedCached_sharedCache = v0;

  v2 = sharedCached_sharedCache;

  return [v2 setCountLimit:10];
}

@end