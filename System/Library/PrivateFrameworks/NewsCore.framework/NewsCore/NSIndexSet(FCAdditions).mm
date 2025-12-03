@interface NSIndexSet(FCAdditions)
- (BOOL)fc_isContiguous;
- (id)fc_indexSetWithGapsInRange:()FCAdditions;
- (uint64_t)fc_countOfContiguousIndexesGreaterThanOrEqualToIndex:()FCAdditions;
- (uint64_t)fc_countOfContiguousIndexesLessThanIndex:()FCAdditions;
- (uint64_t)fc_enclosingRange;
- (void)fc_enumerateGapsInRange:()FCAdditions usingBlock:;
@end

@implementation NSIndexSet(FCAdditions)

- (uint64_t)fc_countOfContiguousIndexesGreaterThanOrEqualToIndex:()FCAdditions
{
  v5 = 0;
  if ([self containsIndex:?])
  {
    v6 = a3 + 1;
    do
    {
      ++v5;
      v7 = [self containsIndex:v6++];
    }

    while ((v7 & 1) != 0);
  }

  return v5;
}

- (uint64_t)fc_countOfContiguousIndexesLessThanIndex:()FCAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3 - 1;
  v5 = -1;
  do
  {
    v6 = [self containsIndex:v4];
    ++v5;
    --v4;
  }

  while ((v6 & 1) != 0);
  return v5;
}

- (uint64_t)fc_enclosingRange
{
  if ([self firstIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    firstIndex = 0;
  }

  else
  {
    firstIndex = [self firstIndex];
  }

  if ([self lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self lastIndex];
  }

  return firstIndex;
}

- (BOOL)fc_isContiguous
{
  firstIndex = [self firstIndex];
  do
  {
    v3 = firstIndex;
    if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    firstIndex = [self indexGreaterThanIndex:firstIndex];
  }

  while (firstIndex == 0x7FFFFFFFFFFFFFFFLL || firstIndex <= v3 + 1);
  return v3 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)fc_indexSetWithGapsInRange:()FCAdditions
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (a3 < a3 + a4)
  {
    do
    {
      if (([self containsIndex:a3] & 1) == 0)
      {
        [indexSet addIndex:a3];
      }

      ++a3;
      --a4;
    }

    while (a4);
  }

  return indexSet;
}

- (void)fc_enumerateGapsInRange:()FCAdditions usingBlock:
{
  v8 = a5;
  v9 = [self fc_indexSetWithGapsInRange:{a3, a4}];
  [v9 enumerateRangesUsingBlock:v8];
}

@end