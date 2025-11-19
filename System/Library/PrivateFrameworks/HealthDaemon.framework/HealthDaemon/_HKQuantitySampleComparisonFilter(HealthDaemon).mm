@interface _HKQuantitySampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKQuantitySampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [a1 operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  v5 = [a1 keyPath];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCC750]];

  if (v6)
  {
    v7 = [a1 dataTypes];
    v8 = [v7 anyObject];

    v9 = [a1 value];
    v10 = [v8 canonicalUnit];
    [v9 doubleValueForUnit:v10];
    v12 = v11;

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v14 = HDQuantitySampleEntityPredicateForQuantity(v4);
  }

  else
  {
    v15 = [a1 keyPath];
    v16 = [v15 isEqualToString:*MEMORY[0x277CCC6A8]];

    if (v16)
    {
      v17 = [a1 value];
      v14 = HDQuantitySampleEntityPredicateForCount(v4, v17);
    }

    else
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"_HKQuantitySampleComparisonFilter+HealthDaemon.m" lineNumber:32 description:@"Unreachable code has been executed"];

      v14 = [MEMORY[0x277D10B70] falsePredicate];
    }
  }

  return v14;
}

@end