@interface NSSet
@end

@implementation NSSet

uint64_t __59__NSSet_FCAdditions__fc_mutableSetByTransformingWithBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __50__NSSet_FCAdditions__fc_containsAnyObjectInArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

id __44__NSSet_FCAdditions__fc_unionOfSetsInArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 fc_safelyUnionSet:a3];

  return v4;
}

@end