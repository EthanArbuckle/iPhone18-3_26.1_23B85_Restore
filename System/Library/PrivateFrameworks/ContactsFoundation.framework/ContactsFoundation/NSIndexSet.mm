@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __42__NSIndexSet_ContactsFoundation___cn_all___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t __42__NSIndexSet_ContactsFoundation___cn_any___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t __45__NSIndexSet_ContactsFoundation___cn_filter___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addIndex:a2];
  }

  return result;
}

void __46__NSIndexSet_ContactsFoundation___cn_flatMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addIndexes:v2];
}

void __42__NSIndexSet_ContactsFoundation___cn_map___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = (*(v3 + 16))(v3, v4);

  v5 = *(a1 + 32);
  v6 = off_1EF4401A8(&__block_literal_global_2_2, v7);
  [v5 addObject:v6];
}

void __48__NSIndexSet_ContactsFoundation___cn_mapRanges___block_invoke(uint64_t a1)
{
  v4 = (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = off_1EF4401A8(&__block_literal_global_2_2, v4);
  [v2 addObject:v3];
}

@end