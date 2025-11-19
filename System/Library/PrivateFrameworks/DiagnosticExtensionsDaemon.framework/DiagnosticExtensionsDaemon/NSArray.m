@interface NSArray
@end

@implementation NSArray

uint64_t __43__NSArray_DEDEnumerable__ded_mapWithBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

@end