@interface NSIndexSet(TSUAdditions)
+ (id)tsu_indexSetWithIndices:()TSUAdditions count:;
- (id)tsu_indexSetByAddingIndex:()TSUAdditions;
- (id)tsu_indexSetByAddingIndexes:()TSUAdditions;
- (id)tsu_indexSetByExcludingIndexes:()TSUAdditions;
- (id)tsu_indexSetByInsertingIndexes:()TSUAdditions inRange:;
- (id)tsu_indexSetByIntersectingWithIndexes:()TSUAdditions;
- (id)tsu_indexSetByIntersectingWithRange:()TSUAdditions;
- (uint64_t)tsu_indexAtPosition:()TSUAdditions;
- (uint64_t)tsu_initWithIndices:()TSUAdditions count:;
- (uint64_t)tsu_intersectsIndexesInIndexSet:()TSUAdditions;
- (uint64_t)tsu_isSingleContiguousRange;
- (uint64_t)tsu_leadingRangeInRange:()TSUAdditions;
- (uint64_t)tsu_localizedDescription;
- (uint64_t)tsu_positionOfIndex:()TSUAdditions;
- (uint64_t)tsu_trailingRangeInRange:()TSUAdditions;
@end

@implementation NSIndexSet(TSUAdditions)

+ (id)tsu_indexSetWithIndices:()TSUAdditions count:
{
  v4 = [objc_alloc(MEMORY[0x277CCAA78]) tsu_initWithIndices:a3 count:a4];

  return v4;
}

- (uint64_t)tsu_initWithIndices:()TSUAdditions count:
{
  for (i = [MEMORY[0x277CCAB58] indexSet]; a4; --a4)
  {
    v8 = *a3++;
    [i addIndex:v8];
  }

  return [a1 initWithIndexSet:i];
}

- (id)tsu_indexSetByAddingIndex:()TSUAdditions
{
  v4 = [a1 mutableCopy];
  [v4 addIndex:a3];
  v5 = [v4 copy];

  return v5;
}

- (id)tsu_indexSetByAddingIndexes:()TSUAdditions
{
  v4 = [a1 mutableCopy];
  [v4 addIndexes:a3];
  v5 = [v4 copy];

  return v5;
}

- (uint64_t)tsu_isSingleContiguousRange
{
  result = [a1 count];
  if (result)
  {
    v3 = [a1 lastIndex];
    v4 = v3 - [a1 firstIndex] + 1;
    return v4 == [a1 count];
  }

  return result;
}

- (uint64_t)tsu_intersectsIndexesInIndexSet:()TSUAdditions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([a1 count] && objc_msgSend(a3, "count"))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NSIndexSet_TSUAdditions__tsu_intersectsIndexesInIndexSet___block_invoke;
    v7[3] = &unk_2799C64B0;
    v7[4] = a3;
    v7[5] = &v8;
    [a1 enumerateRangesUsingBlock:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)tsu_indexSetByInsertingIndexes:()TSUAdditions inRange:
{
  if (a3 && a5)
  {
    v8 = [a1 mutableCopy];
    [v8 shiftIndexesStartingAtIndex:a4 by:a5];
    v9 = [a3 mutableCopy];
    [v9 shiftIndexesStartingAtIndex:0 by:a4];
    [v8 addIndexes:v9];
  }

  else
  {
    v8 = [a1 copy];
  }

  return v8;
}

- (id)tsu_indexSetByIntersectingWithRange:()TSUAdditions
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [MEMORY[0x277CCAB58] indexSet];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__NSIndexSet_TSUAdditions__tsu_indexSetByIntersectingWithRange___block_invoke;
  v10[3] = &unk_2799C64D8;
  v10[4] = &v11;
  [a1 enumerateRangesInRange:a3 options:a4 usingBlock:{0, v10}];
  v7 = objc_alloc(MEMORY[0x277CCAA78]);
  v8 = [v7 initWithIndexSet:v12[5]];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)tsu_indexSetByIntersectingWithIndexes:()TSUAdditions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = [MEMORY[0x277CCAB58] indexSet];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__NSIndexSet_TSUAdditions__tsu_indexSetByIntersectingWithIndexes___block_invoke;
  v8[3] = &unk_2799C6500;
  v8[4] = a3;
  v8[5] = &v9;
  [a1 enumerateIndexesUsingBlock:v8];
  v5 = objc_alloc(MEMORY[0x277CCAA78]);
  v6 = [v5 initWithIndexSet:v10[5]];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)tsu_indexSetByExcludingIndexes:()TSUAdditions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = [MEMORY[0x277CCAB58] indexSet];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__NSIndexSet_TSUAdditions__tsu_indexSetByExcludingIndexes___block_invoke;
  v8[3] = &unk_2799C6500;
  v8[4] = a3;
  v8[5] = &v9;
  [a1 enumerateIndexesUsingBlock:v8];
  v5 = objc_alloc(MEMORY[0x277CCAA78]);
  v6 = [v5 initWithIndexSet:v10[5]];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (uint64_t)tsu_indexAtPosition:()TSUAdditions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if ([a1 count] > a3)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__NSIndexSet_TSUAdditions__tsu_indexAtPosition___block_invoke;
    v7[3] = &unk_2799C6528;
    v7[4] = v8;
    v7[5] = &v9;
    v7[6] = a3;
    [a1 enumerateIndexesUsingBlock:v7];
    _Block_object_dispose(v8, 8);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (uint64_t)tsu_positionOfIndex:()TSUAdditions
{
  v5 = [a1 count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__NSIndexSet_TSUAdditions__tsu_positionOfIndex___block_invoke;
  v9[3] = &unk_2799C6550;
  v9[4] = &v10;
  v9[5] = a3;
  [a1 enumerateIndexesUsingBlock:v9];
  if (v11[3] >= v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (uint64_t)tsu_leadingRangeInRange:()TSUAdditions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_25D7A51CF;
  v12 = a3;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NSIndexSet_TSUAdditions__tsu_leadingRangeInRange___block_invoke;
  v7[3] = &unk_2799C64D8;
  v7[4] = &v8;
  [a1 enumerateRangesInRange:a3 options:a4 usingBlock:{0, v7}];
  v4 = (v9 + 4);
  if (!v9[5])
  {
    v4 = &NSInvalidRange;
  }

  v5 = *v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (uint64_t)tsu_trailingRangeInRange:()TSUAdditions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_25D7A51CF;
  v11 = a3 + a4;
  v12 = 0;
  [a1 enumerateRangesInRange:? options:? usingBlock:?];
  v4 = (v8 + 4);
  if (!v8[5])
  {
    v4 = &NSInvalidRange;
  }

  v5 = *v4;
  _Block_object_dispose(&v7, 8);
  return v5;
}

- (uint64_t)tsu_localizedDescription
{
  v2 = objc_opt_new();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__NSIndexSet_TSUAdditions__tsu_localizedDescription__block_invoke;
  v4[3] = &unk_2799C6578;
  v4[4] = v2;
  [a1 enumerateRangesUsingBlock:v4];
  return [v2 tsu_localizedList];
}

@end