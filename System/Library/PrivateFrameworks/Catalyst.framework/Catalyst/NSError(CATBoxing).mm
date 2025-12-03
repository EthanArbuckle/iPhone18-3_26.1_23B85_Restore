@interface NSError(CATBoxing)
- (id)cat_dictionaryValue;
@end

@implementation NSError(CATBoxing)

- (id)cat_dictionaryValue
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "code")}];
  [v2 setObject:v3 forKeyedSubscript:@"Code"];

  domain = [self domain];
  v5 = [domain copy];
  [v2 setObject:v5 forKeyedSubscript:@"Domain"];

  userInfo = [self userInfo];
  v7 = [userInfo copy];
  [v2 setObject:v7 forKeyedSubscript:@"UserInfo"];

  v8 = [v2 copy];

  return v8;
}

@end