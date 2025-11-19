@interface DASConfigurationLimiter
@end

@implementation DASConfigurationLimiter

uint64_t __41___DASConfigurationLimiter_sharedLimiter__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedLimiter_limitation_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

@end