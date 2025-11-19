@interface NSArray
@end

@implementation NSArray

void __33__NSArray_CPSUtilities__cps_map___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[3] = a3;
  v7[2] = a4;
  v7[1] = a1;
  v7[0] = (*(*(a1 + 40) + 16))();
  if (v7[0])
  {
    [*(a1 + 32) addObject:v7[0]];
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

uint64_t __36__NSArray_CPSUtilities__cps_filter___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
  return v4;
}

@end