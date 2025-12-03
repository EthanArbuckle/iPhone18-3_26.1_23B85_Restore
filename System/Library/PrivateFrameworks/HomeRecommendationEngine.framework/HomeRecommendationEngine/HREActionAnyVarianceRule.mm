@interface HREActionAnyVarianceRule
+ (id)anyVarianceRuleWithKey:(id)key;
@end

@implementation HREActionAnyVarianceRule

+ (id)anyVarianceRuleWithKey:(id)key
{
  keyCopy = key;
  v5 = [[self alloc] _initWithKey:keyCopy];

  return v5;
}

@end