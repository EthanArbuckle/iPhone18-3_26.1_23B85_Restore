@interface NSTextLineFragment
@end

@implementation NSTextLineFragment

CFIndex __53__NSTextLineFragment_Helper__animatingGlyphCount_emk__block_invoke(uint64_t a1, uint64_t a2, const __CTRun *a3)
{
  result = _EMKShouldDrawCTRun(a3);
  if (result)
  {
    result = CTRunGetGlyphCount(a3);
    *(*(*(a1 + 32) + 8) + 24) += result;
  }

  return result;
}

@end