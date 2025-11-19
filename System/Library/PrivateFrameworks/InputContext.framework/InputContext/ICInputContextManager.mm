@interface ICInputContextManager
@end

@implementation ICInputContextManager

uint64_t __39___ICInputContextManager_sharedManager__block_invoke()
{
  sharedManager_sharedInstance = objc_alloc_init(_ICInputContextManager);

  return MEMORY[0x2821F96F8]();
}

@end