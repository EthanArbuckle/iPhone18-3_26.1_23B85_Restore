@interface _IKDOMMutationRuleSet
- (_IKDOMMutationRuleSet)initWithMutationRules:(id)a3;
@end

@implementation _IKDOMMutationRuleSet

- (_IKDOMMutationRuleSet)initWithMutationRules:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _IKDOMMutationRuleSet;
  v5 = [(_IKDOMMutationRuleSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mutationRules = v5->_mutationRules;
    v5->_mutationRules = v6;
  }

  return v5;
}

@end