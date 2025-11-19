@interface NPHangulCharSet
@end

@implementation NPHangulCharSet

uint64_t ___NPHangulCharSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _NPHangulCharSet_result = charSetWithEndpoints(14, a2, a3, a4, a5, a6, a7, a8, 44032);

  return MEMORY[0x2821F96F8]();
}

@end