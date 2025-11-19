@interface NSString
@end

@implementation NSString

uint64_t __42__NSString_GKAdditions___gkIsNaturallyRTL__block_invoke(uint64_t a1)
{
  ubidi_setPara();
  result = ubidi_getParaLevel();
  *(*(*(a1 + 32) + 8) + 24) = result & 1;
  return result;
}

uint64_t __62__NSString_GKAdditions___gkSearchMatchesItem_withSearchTerms___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 rangeOfString:*(a1 + 32) options:897];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

@end