@interface CDAutoSuCache
@end

@implementation CDAutoSuCache

uint64_t __29___CDAutoSuCache_sharedCache__block_invoke(uint64_t a1)
{
  sharedCache_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end