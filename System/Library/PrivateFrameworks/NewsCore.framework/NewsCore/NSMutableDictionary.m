@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

void __77__NSMutableDictionary_FCAdditions__fc_mergeWithDictionary_withValueCombiner___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v9 = (*(v7 + 16))(v7, v8, v5);
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v10];
  }
}

@end