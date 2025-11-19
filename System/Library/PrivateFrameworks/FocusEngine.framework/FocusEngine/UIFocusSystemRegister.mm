@interface UIFocusSystemRegister
@end

@implementation UIFocusSystemRegister

uint64_t ___UIFocusSystemRegister_block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  v1 = _MergedGlobals_7;
  _MergedGlobals_7 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end