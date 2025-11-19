@interface NSSet
@end

@implementation NSSet

void __29__NSSet_ITK__itk_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) itk_addNonNilObject:v2];
}

void __22__NSSet_ITK__itk_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

@end