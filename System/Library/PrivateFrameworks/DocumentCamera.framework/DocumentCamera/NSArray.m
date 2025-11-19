@interface NSArray
@end

@implementation NSArray

void __29__NSArray_DC__dc_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) dc_addNonNilObject:v2];
}

void __22__NSArray_DC__dc_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __26__NSArray_DC__dc_flatMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(*(a1 + 40) + 16))();

  v6 = DCCheckedDynamicCast(v4, v5);

  [*(a1 + 32) addObjectsFromArray:v6];
}

@end