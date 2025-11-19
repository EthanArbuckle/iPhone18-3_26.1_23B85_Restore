@interface NSError(CATBoxing)
- (id)cat_dictionaryValue;
@end

@implementation NSError(CATBoxing)

- (id)cat_dictionaryValue
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "code")}];
  [v2 setObject:v3 forKeyedSubscript:@"Code"];

  v4 = [a1 domain];
  v5 = [v4 copy];
  [v2 setObject:v5 forKeyedSubscript:@"Domain"];

  v6 = [a1 userInfo];
  v7 = [v6 copy];
  [v2 setObject:v7 forKeyedSubscript:@"UserInfo"];

  v8 = [v2 copy];

  return v8;
}

@end