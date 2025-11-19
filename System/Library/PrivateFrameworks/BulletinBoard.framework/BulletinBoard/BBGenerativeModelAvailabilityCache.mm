@interface BBGenerativeModelAvailabilityCache
@end

@implementation BBGenerativeModelAvailabilityCache

uint64_t __53___BBGenerativeModelAvailabilityCache_sharedInstance__block_invoke()
{
  sharedInstance_cache = objc_alloc_init(_BBGenerativeModelAvailabilityCache);

  return MEMORY[0x2821F96F8]();
}

@end