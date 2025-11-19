@interface NSArray
@end

@implementation NSArray

uint64_t __39__NSArray_MapAndFilter__mapUsingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

void __42__NSArray_MapAndFilter__filterUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end