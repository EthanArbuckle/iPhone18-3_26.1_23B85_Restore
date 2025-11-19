@interface NSArray
@end

@implementation NSArray

uint64_t __69__NSArray_IntlPreferencesAdditions__filteredLanguagesBySearchString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    result = [*(a1 + 40) addObject:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

uint64_t __69__NSArray_IntlPreferencesAdditions__filteredLanguagesBySearchString___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    result = [*(a1 + 40) addObject:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

@end