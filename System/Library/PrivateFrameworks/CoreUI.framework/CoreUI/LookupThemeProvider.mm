@interface LookupThemeProvider
@end

@implementation LookupThemeProvider

void *___LookupThemeProvider_block_invoke(uint64_t a1, NSMapTable *table)
{
  result = NSMapGet(table, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

@end