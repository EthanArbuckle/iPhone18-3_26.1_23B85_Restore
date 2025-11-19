@interface NSArray
@end

@implementation NSArray

void __42__NSArray_ContactsFoundation___cn_flatten__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v6 _cn_flatten];

    [v4 addObjectsFromArray:v5];
    v6 = v5;
  }

  else
  {
    [v4 addObject:v6];
  }
}

id __49__NSArray_ContactsFoundation___cn_joinWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = (*(*(a1 + 32) + 16))();
    [v5 _cn_addNonNilObject:v7];
  }

  [v5 addObject:v6];

  return v5;
}

void __45__NSArray_ContactsFoundation___cn_partition___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v7 = a2;
  v5 = v4(v3, v7);
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

uint64_t __58__NSArray_ContactsFoundation___cn_slicesWithMaximumCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 subarrayWithRange:{v4, v3}];
}

uint64_t __66__NSArray_ContactsFoundation___cn_balancedSlicesWithMaximumCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 subarrayWithRange:{v4, v3}];
}

uint64_t __65__NSArray_ContactsFoundation___cn_indexOfFirstObjectPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __43__NSArray_ContactsFoundation___cn_flatMap___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObjectsFromArray:v2];
}

void __39__NSArray_ContactsFoundation___cn_zip___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [CNPair pairWithFirst:a2 second:a3];
  [v3 addObject:v4];
}

void __54__NSArray_ContactsFoundation___cn_isIdenticalToArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];

  if (v9 != v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end