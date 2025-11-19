@interface NSBundle
@end

@implementation NSBundle

id __60__NSBundle_BRLTBrailleTables__brl_supportedTablesForLocale___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v3 = [v2 lowercaseString];

  return v3;
}

@end