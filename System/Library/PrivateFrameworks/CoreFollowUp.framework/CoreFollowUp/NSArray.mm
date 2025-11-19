@interface NSArray
@end

@implementation NSArray

uint64_t __28__NSArray_FollowUp__fl_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

void __33__NSArray_FollowUp__fl_multiMap___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      [v4 addObject:v7];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v3];
    }
  }
}

@end