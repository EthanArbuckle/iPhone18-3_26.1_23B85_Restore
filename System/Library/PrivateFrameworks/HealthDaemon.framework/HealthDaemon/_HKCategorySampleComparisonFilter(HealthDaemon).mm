@interface _HKCategorySampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKCategorySampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [self operatorType];
  v2 = HDSQLiteComparisonTypeForPredicateOperator();
  value = [self value];
  v4 = HDCategorySampleEntityPredicateForValue(v2);

  return v4;
}

@end