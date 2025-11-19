@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

void __78__NSMutableDictionary_MCUtilities___MCFilterRestrictionPayloadKeys_filterOut___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:v10];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    v7 = [MEMORY[0x1E695DFA8] setWithArray:v3];
    v8 = v7;
    if (*(a1 + 48) == 1)
    {
      [v7 minusSet:v6];
    }

    else
    {
      [v7 intersectSet:v6];
    }

    v9 = [v8 allObjects];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
  }
}

@end