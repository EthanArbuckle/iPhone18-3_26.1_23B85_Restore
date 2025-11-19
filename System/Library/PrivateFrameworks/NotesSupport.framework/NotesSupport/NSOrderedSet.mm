@interface NSOrderedSet
@end

@implementation NSOrderedSet

uint64_t __55__NSOrderedSet_IC__ic_containsObjectMatchingPredicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __50__NSOrderedSet_IC__ic_objectsMovedFromOrderedSet___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) indexOfObject:?] != a3 - *(*(*(a1 + 48) + 8) + 24))
  {
    [*(a1 + 40) addObject:v5];
    ++*(*(*(a1 + 48) + 8) + 24);
    [*(a1 + 32) removeObject:v5];
  }
}

@end