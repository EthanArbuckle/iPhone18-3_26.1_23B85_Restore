@interface NSArray
@end

@implementation NSArray

uint64_t __30__NSArray_CMSCoding__cmsCoded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v5 cmsCoded];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  return MEMORY[0x2821F96F8]();
}

@end