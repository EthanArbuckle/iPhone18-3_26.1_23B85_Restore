@interface NSNumber
@end

@implementation NSNumber

uint64_t __45__NSNumber_CATCasting__cat_numberWithObject___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = cat_numberWithObject__formatter;
  cat_numberWithObject__formatter = v0;

  v2 = cat_numberWithObject__formatter;

  return [v2 setNumberStyle:1];
}

@end