@interface _HFCompoundConditionMatch
+ (id)matchWithCondition:(id)a3 matchedPredicates:(id)a4;
@end

@implementation _HFCompoundConditionMatch

+ (id)matchWithCondition:(id)a3 matchedPredicates:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_HFCompoundConditionMatch);
  [(_HFCompoundConditionMatch *)v7 setMatchedCondition:v6];

  [(_HFCompoundConditionMatch *)v7 setMatchedPredicates:v5];

  return v7;
}

@end