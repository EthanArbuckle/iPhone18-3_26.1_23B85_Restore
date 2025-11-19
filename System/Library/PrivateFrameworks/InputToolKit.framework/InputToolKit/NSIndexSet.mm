@interface NSIndexSet
@end

@implementation NSIndexSet

void __33__NSIndexSet_ITK__itk_rangeArray__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
  [v3 addObject:v4];
}

@end