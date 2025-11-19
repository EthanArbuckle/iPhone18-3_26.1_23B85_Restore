@interface NSArray
@end

@implementation NSArray

uint64_t __34__NSArray_CPLCopying__cplDeepCopy__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 cplDeepCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

@end