@interface NSArray
@end

@implementation NSArray

void __41__NSArray_FIAdditions__fi_mapUsingBlock___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2 = (*(*(a1 + 32) + 16))();
  [v1 addObject:v2];
}

uint64_t __45__NSArray_FIAdditions__fi_flatMapUsingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (v2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

void __51__NSArray_FIAdditions__fi_filteredArrayUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

void __53__NSArray_FIAdditions__fi_reduceWithReduction_block___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v6 = (*(*(a1 + 32) + 16))();
  v3 = [FIReduction reductionWithObject:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end