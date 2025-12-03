@interface NURule
+ (id)ruleWithBlockPredicate:(id)predicate action:(id)action;
+ (id)ruleWithPredicate:(id)predicate action:(id)action;
+ (id)ruleWithPredicate:(id)predicate assertingFact:(id)fact grade:(double)grade;
+ (id)ruleWithPredicate:(id)predicate retractingFact:(id)fact grade:(double)grade;
@end

@implementation NURule

+ (id)ruleWithBlockPredicate:(id)predicate action:(id)action
{
  actionCopy = action;
  predicateCopy = predicate;
  v7 = [[_NUBlockRule alloc] initWithPredicate:predicateCopy action:actionCopy];

  return v7;
}

+ (id)ruleWithPredicate:(id)predicate action:(id)action
{
  actionCopy = action;
  predicateCopy = predicate;
  v7 = [[_NSPredicateBlockRule alloc] initWithPredicate:predicateCopy action:actionCopy];

  return v7;
}

+ (id)ruleWithPredicate:(id)predicate retractingFact:(id)fact grade:(double)grade
{
  factCopy = fact;
  predicateCopy = predicate;
  v9 = [[_NSPredicateRule alloc] initWithPredicate:predicateCopy fact:factCopy grade:0 asserting:grade];

  return v9;
}

+ (id)ruleWithPredicate:(id)predicate assertingFact:(id)fact grade:(double)grade
{
  factCopy = fact;
  predicateCopy = predicate;
  v9 = [[_NSPredicateRule alloc] initWithPredicate:predicateCopy fact:factCopy grade:1 asserting:grade];

  return v9;
}

@end