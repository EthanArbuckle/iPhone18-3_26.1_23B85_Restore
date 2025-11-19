@interface NSUnit(HUAdditions)
+ (id)unitFromSymbolString:()HUAdditions;
@end

@implementation NSUnit(HUAdditions)

+ (id)unitFromSymbolString:()HUAdditions
{
  v3 = qword_281122248;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_281122248, &__block_literal_global_293);
  }

  v5 = _MergedGlobals_642;
  v6 = [v4 lowercaseString];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

@end