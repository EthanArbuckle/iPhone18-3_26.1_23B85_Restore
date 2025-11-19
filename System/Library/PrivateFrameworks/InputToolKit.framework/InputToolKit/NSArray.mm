@interface NSArray
@end

@implementation NSArray

void __31__NSArray_ITK__itk_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) itk_addNonNilObject:v2];
}

void __24__NSArray_ITK__itk_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __28__NSArray_ITK__itk_flatMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObjectsFromArray:v2];
}

@end