@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

uint64_t __75__NSMutableDictionary_MTMaterialDescriptionInternal__sortFiltersWithOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:@"type"];
  v7 = [v5 objectForKey:@"type"];

  v8 = MTCompareObjectsWithOrder(v6, v7, *(a1 + 32));
  return v8;
}

@end