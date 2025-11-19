@interface UIHostedFocusSystemRegister
@end

@implementation UIHostedFocusSystemRegister

uint64_t ___UIHostedFocusSystemRegister_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end