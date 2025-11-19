@interface NPChineseCharSet
@end

@implementation NPChineseCharSet

uint64_t ___NPChineseCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _NPChineseCharSet_result = charSetWithEndpoints(2, a2, a3, a4, a5, a6, a7, a8, 19968);

  return MEMORY[0x2821F96F8]();
}

@end