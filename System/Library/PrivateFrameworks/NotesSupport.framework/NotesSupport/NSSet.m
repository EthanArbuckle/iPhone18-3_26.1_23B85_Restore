@interface NSSet
@end

@implementation NSSet

uint64_t __34__NSSet_IC__ic_objectPassingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __48__NSSet_IC__ic_containsObjectMatchingPredicate___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

void __27__NSSet_IC__ic_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) ic_addNonNilObject:v2];
}

void __20__NSSet_IC__ic_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

@end