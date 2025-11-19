@interface CNSortsByPositionInAuxiliaryArray
@end

@implementation CNSortsByPositionInAuxiliaryArray

void __57___CNSortsByPositionInAuxiliaryArray_prepareRankingIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

uint64_t __48___CNSortsByPositionInAuxiliaryArray_comparator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 rankForObject:a2];
  v8 = [*(a1 + 32) rankForObject:v6];

  v9 = [v7 compare:v8];
  return v9;
}

@end