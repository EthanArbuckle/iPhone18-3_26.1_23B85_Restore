@interface NSArray
@end

@implementation NSArray

void __52__NSArray_NPK__npkFindFirstObjectMatchingCondition___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __33__NSArray_NPK__npkComprehension___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) addObject:v2];
    v2 = v3;
  }
}

@end