@interface _HKQuantitySampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKQuantitySampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [self operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  keyPath = [self keyPath];
  v6 = [keyPath isEqualToString:*MEMORY[0x277CCC750]];

  if (v6)
  {
    dataTypes = [self dataTypes];
    anyObject = [dataTypes anyObject];

    value = [self value];
    canonicalUnit = [anyObject canonicalUnit];
    [value doubleValueForUnit:canonicalUnit];
    v12 = v11;

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    falsePredicate = HDQuantitySampleEntityPredicateForQuantity(v4);
  }

  else
  {
    keyPath2 = [self keyPath];
    v16 = [keyPath2 isEqualToString:*MEMORY[0x277CCC6A8]];

    if (v16)
    {
      value2 = [self value];
      falsePredicate = HDQuantitySampleEntityPredicateForCount(v4, value2);
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKQuantitySampleComparisonFilter+HealthDaemon.m" lineNumber:32 description:@"Unreachable code has been executed"];

      falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

  return falsePredicate;
}

@end