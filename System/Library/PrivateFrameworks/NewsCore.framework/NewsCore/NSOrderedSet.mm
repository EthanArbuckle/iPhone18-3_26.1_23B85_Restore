@interface NSOrderedSet
@end

@implementation NSOrderedSet

uint64_t __66__NSOrderedSet_FCAdditions__fc_orderedSetByTransformingWithBlock___block_invoke(uint64_t a1)
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

void __93__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet_withEqualityTest_identityValueProvider___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (([*(a1 + 32) containsIndex:a3] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      a3 = [v7 unsignedIntegerValue];
    }

    v8 = v10;
    v9 = [*(a1 + 48) objectAtIndexedSubscript:a3];
    if (((*(*(a1 + 64) + 16))() & 1) == 0)
    {
      [*(a1 + 56) addIndex:a3];
    }
  }
}

void __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (((*(*(a1 + 56) + 16))() & 1) == 0 && ((*(*(a1 + 64) + 16))() & 1) == 0)
  {
    v5 = [*(a1 + 32) indexOfObject:v10];
    if (v5 == a3)
    {
      [*(a1 + 48) addIndex:a3];
    }

    else
    {
      v6 = v5;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }
  }
}

@end