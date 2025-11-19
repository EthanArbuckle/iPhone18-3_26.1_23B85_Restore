@interface LSApplicationProxy(IntentsFoundation)
- (void)if_userActivityTypes;
@end

@implementation LSApplicationProxy(IntentsFoundation)

- (void)if_userActivityTypes
{
  v1 = [a1 objectForInfoDictionaryKey:@"NSUserActivityTypes" ofClass:objc_opt_class()];
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v3 = [v1 filteredArrayUsingPredicate:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

@end