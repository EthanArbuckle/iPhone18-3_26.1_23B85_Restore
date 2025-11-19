@interface NURule
+ (id)ruleWithBlockPredicate:(id)a3 action:(id)a4;
+ (id)ruleWithPredicate:(id)a3 action:(id)a4;
+ (id)ruleWithPredicate:(id)a3 assertingFact:(id)a4 grade:(double)a5;
+ (id)ruleWithPredicate:(id)a3 retractingFact:(id)a4 grade:(double)a5;
@end

@implementation NURule

+ (id)ruleWithBlockPredicate:(id)a3 action:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_NUBlockRule alloc] initWithPredicate:v6 action:v5];

  return v7;
}

+ (id)ruleWithPredicate:(id)a3 action:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_NSPredicateBlockRule alloc] initWithPredicate:v6 action:v5];

  return v7;
}

+ (id)ruleWithPredicate:(id)a3 retractingFact:(id)a4 grade:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[_NSPredicateRule alloc] initWithPredicate:v8 fact:v7 grade:0 asserting:a5];

  return v9;
}

+ (id)ruleWithPredicate:(id)a3 assertingFact:(id)a4 grade:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[_NSPredicateRule alloc] initWithPredicate:v8 fact:v7 grade:1 asserting:a5];

  return v9;
}

@end