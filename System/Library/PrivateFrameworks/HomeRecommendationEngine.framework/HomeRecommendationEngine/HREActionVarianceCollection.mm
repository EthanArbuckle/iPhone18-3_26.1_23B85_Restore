@interface HREActionVarianceCollection
+ (id)varianceRuleCollectionWithRules:(id)a3;
- (BOOL)anyRulePassesForAction:(id)a3;
- (HREActionVarianceCollection)initWithRules:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation HREActionVarianceCollection

- (HREActionVarianceCollection)initWithRules:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HREActionVarianceCollection;
  v5 = [(HREActionVarianceCollection *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    rules = v5->_rules;
    v5->_rules = v6;
  }

  return v5;
}

+ (id)varianceRuleCollectionWithRules:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 na_dictionaryWithKeyGenerator:&__block_literal_global_9];

  v7 = [v5 initWithRules:v6];

  return v7;
}

- (BOOL)anyRulePassesForAction:(id)a3
{
  v4 = a3;
  v5 = [HREActionVariance varianceKeyForAction:v4];
  if (v5)
  {
    v6 = [(HREActionVarianceCollection *)self rules];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [v7 passesForAction:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(HREActionVarianceCollection *)self rules];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HREActionVarianceCollection *)self rules];
  [v8 setObject:v7 forKey:v6];
}

@end