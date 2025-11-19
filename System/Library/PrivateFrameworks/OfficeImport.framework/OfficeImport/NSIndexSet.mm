@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __60__NSIndexSet_TSUAdditions__tsu_intersectsIndexesInIndexSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) intersectsIndexesInRange:{a2, a3}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __66__NSIndexSet_TSUAdditions__tsu_indexSetByIntersectingWithIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

uint64_t __59__NSIndexSet_TSUAdditions__tsu_indexSetByExcludingIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

void *__48__NSIndexSet_TSUAdditions__tsu_indexAtPosition___block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (v4 == result[6])
  {
    *(*(result[5] + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t __48__NSIndexSet_TSUAdditions__tsu_positionOfIndex___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

NSUInteger __52__NSIndexSet_TSUAdditions__tsu_leadingRangeInRange___block_invoke(uint64_t a1, NSRange range2, _BYTE *a3)
{
  length = range2.length;
  v4.location = range2.location;
  v6 = *(*(*(a1 + 32) + 8) + 32);
  if (v6.length + v6.location == v4.location || v4.location + length == v6.location)
  {
    v4.length = length;
    v6 = NSUnionRange(v6, v4);
    *(*(*(a1 + 32) + 8) + 32) = v6;
  }

  else
  {
    *a3 = 1;
  }

  return v6.location;
}

NSUInteger __53__NSIndexSet_TSUAdditions__tsu_trailingRangeInRange___block_invoke(uint64_t a1, NSRange range2, _BYTE *a3)
{
  length = range2.length;
  v4.location = range2.location;
  v6 = *(*(*(a1 + 32) + 8) + 32);
  if (v6.length + v6.location == v4.location || v4.location + length == v6.location)
  {
    v4.length = length;
    v6 = NSUnionRange(v6, v4);
    *(*(*(a1 + 32) + 8) + 32) = v6;
  }

  else
  {
    *a3 = 1;
  }

  return v6.location;
}

uint64_t __52__NSIndexSet_TSUAdditions__tsu_localizedDescription__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 3)
  {
    result = [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x277CCACA8], "localizedStringWithFormat:", @"%lu", a2 + 1)}];
    if (a3 != 2)
    {
      return result;
    }

    v11 = *(a1 + 32);
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%lu", a2 + 2];
    v9 = v11;
  }

  else
  {
    v6 = [SFUBundle() localizedStringForKey:@"TSU_UNSIGNED_INTEGER_RANGE" value:@"%1$lu to %2$lu" table:@"TSUtility"];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, a2 + 1, a2 + a3];
    v9 = v7;
  }

  return [v9 addObject:v8];
}

@end