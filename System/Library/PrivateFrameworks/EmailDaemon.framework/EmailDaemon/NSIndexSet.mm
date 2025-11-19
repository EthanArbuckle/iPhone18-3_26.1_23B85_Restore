@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __94__NSIndexSet_EDServerMessagePersistence__ed_nextRangesWithRangeCountLimit_reverseEnumeration___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 48) <= *(*(*(result + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  else
  {
    v4 = result;
    result = [*(result + 32) addIndexesInRange:{a2, a3}];
    ++*(*(*(v4 + 40) + 8) + 24);
  }

  return result;
}

uint64_t __77__NSIndexSet_EDServerMessagePersistence__ed_uidQueryExpressionWithTableName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rangeValue];
  v6 = v5;
  [v4 rangeValue];
  v8 = 1;
  if (v6 >= v7)
  {
    v8 = -1;
  }

  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

void __66__NSIndexSet_EDServerMessagePersistence___uidRangesAndSingleUIDs___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 > 3)
    {
      v6 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
      [*(a1 + 48) addObject:?];
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);

      [v4 _addUIDsFromRange:a2 toArray:{a3, v5}];
    }
  }
}

id __99__NSIndexSet_EDServerMessagePersistence___uidQueryExpressionForRanges_andSingleUIDs_withTableName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeValue];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ BETWEEN %lu AND %lu)", *(a1 + 32), v4, v5 + v4 - 1];

  return v6;
}

void __59__NSIndexSet_EDServerMessagePersistence__ed_logDescription__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu:%llu", a2, a3 + a2 - 1];
  }
  v4 = ;
  [v3 addObject:?];
}

@end