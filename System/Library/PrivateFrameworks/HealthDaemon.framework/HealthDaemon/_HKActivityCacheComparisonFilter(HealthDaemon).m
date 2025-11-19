@interface _HKActivityCacheComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKActivityCacheComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [a1 operatorType];
  v2 = HDSQLiteComparisonTypeForPredicateOperator();
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a1, "cacheIndex")}];
  v5 = [v3 predicateWithProperty:@"cache_index" value:v4 comparisonType:v2];

  return v5;
}

@end