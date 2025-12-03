@interface _HFCompoundConditionMatch
+ (id)matchWithCondition:(id)condition matchedPredicates:(id)predicates;
@end

@implementation _HFCompoundConditionMatch

+ (id)matchWithCondition:(id)condition matchedPredicates:(id)predicates
{
  predicatesCopy = predicates;
  conditionCopy = condition;
  v7 = objc_alloc_init(_HFCompoundConditionMatch);
  [(_HFCompoundConditionMatch *)v7 setMatchedCondition:conditionCopy];

  [(_HFCompoundConditionMatch *)v7 setMatchedPredicates:predicatesCopy];

  return v7;
}

@end