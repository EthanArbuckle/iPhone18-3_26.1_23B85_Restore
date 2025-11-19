@interface DKBiomeStreamCache
@end

@implementation DKBiomeStreamCache

uint64_t __34___DKBiomeStreamCache_sharedCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69C5D38]) initWithCountLimit:16];
  v1 = sharedCache_cache;
  sharedCache_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end