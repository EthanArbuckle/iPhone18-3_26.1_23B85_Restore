@interface HREActionVarianceCollection
+ (id)varianceRuleCollectionWithRules:(id)rules;
- (BOOL)anyRulePassesForAction:(id)action;
- (HREActionVarianceCollection)initWithRules:(id)rules;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation HREActionVarianceCollection

- (HREActionVarianceCollection)initWithRules:(id)rules
{
  rulesCopy = rules;
  v9.receiver = self;
  v9.super_class = HREActionVarianceCollection;
  v5 = [(HREActionVarianceCollection *)&v9 init];
  if (v5)
  {
    v6 = [rulesCopy mutableCopy];
    rules = v5->_rules;
    v5->_rules = v6;
  }

  return v5;
}

+ (id)varianceRuleCollectionWithRules:(id)rules
{
  rulesCopy = rules;
  v5 = [self alloc];
  v6 = [rulesCopy na_dictionaryWithKeyGenerator:&__block_literal_global_9];

  v7 = [v5 initWithRules:v6];

  return v7;
}

- (BOOL)anyRulePassesForAction:(id)action
{
  actionCopy = action;
  v5 = [HREActionVariance varianceKeyForAction:actionCopy];
  if (v5)
  {
    rules = [(HREActionVarianceCollection *)self rules];
    v7 = [rules objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [v7 passesForAction:actionCopy];
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

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  rules = [(HREActionVarianceCollection *)self rules];
  v6 = [rules objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  rules = [(HREActionVarianceCollection *)self rules];
  [rules setObject:objectCopy forKey:subscriptCopy];
}

@end