@interface NSMutableIndexSet
@end

@implementation NSMutableIndexSet

uint64_t __56__NSMutableIndexSet_CKUtilities____ck_intersectIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

@end