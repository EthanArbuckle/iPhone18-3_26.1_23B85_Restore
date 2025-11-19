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
  if ([a1 containsIndex:?])
  {
    v6 = a3 + 1;
    do
    {
      ++v5;
      v7 = [a1 containsIndex:v6++];
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
    v6 = [a1 containsIndex:v4];
    ++v5;
    --v4;
  }

  while ((v6 & 1) != 0);
  return v5;
}

- (uint64_t)fc_enclosingRange
{
  if ([a1 firstIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = [a1 firstIndex];
  }

  if ([a1 lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 lastIndex];
  }

  return v2;
}

- (BOOL)fc_isContiguous
{
  v2 = [a1 firstIndex];
  do
  {
    v3 = v2;
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v2 = [a1 indexGreaterThanIndex:v2];
  }

  while (v2 == 0x7FFFFFFFFFFFFFFFLL || v2 <= v3 + 1);
  return v3 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)fc_indexSetWithGapsInRange:()FCAdditions
{
  v7 = [MEMORY[0x1E696AD50] indexSet];
  if (a3 < a3 + a4)
  {
    do
    {
      if (([a1 containsIndex:a3] & 1) == 0)
      {
        [v7 addIndex:a3];
      }

      ++a3;
      --a4;
    }

    while (a4);
  }

  return v7;
}

- (void)fc_enumerateGapsInRange:()FCAdditions usingBlock:
{
  v8 = a5;
  v9 = [a1 fc_indexSetWithGapsInRange:{a3, a4}];
  [v9 enumerateRangesUsingBlock:v8];
}

@end