@interface _HKDiscreteQuantitySampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKDiscreteQuantitySampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [a1 operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  v5 = [a1 keyPath];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCC720]];

  if (v6)
  {
    v7 = [(_HKDiscreteQuantitySampleComparisonFilter *)a1 _comparisonQuantityAsNumber];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMinValue(v4, v7);
LABEL_13:
    v19 = v8;

    goto LABEL_14;
  }

  v9 = [a1 keyPath];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC6F8]];

  if (v10)
  {
    v7 = [(_HKDiscreteQuantitySampleComparisonFilter *)a1 _comparisonQuantityAsNumber];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMaxValue(v4, v7);
    goto LABEL_13;
  }

  v11 = [a1 keyPath];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC728]];

  if (v12)
  {
    v7 = [(_HKDiscreteQuantitySampleComparisonFilter *)a1 _comparisonQuantityAsNumber];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentValue(v4, v7);
    goto LABEL_13;
  }

  v13 = [a1 keyPath];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCC740]];

  if (v14)
  {
    v7 = [a1 value];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentStartDate(v4, v7);
    goto LABEL_13;
  }

  v15 = [a1 keyPath];
  v16 = [v15 isEqualToString:*MEMORY[0x277CCC738]];

  if (v16)
  {
    v7 = [a1 value];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentEndDate(v4, v7);
    goto LABEL_13;
  }

  v17 = [a1 keyPath];
  v18 = [v17 isEqualToString:*MEMORY[0x277CCC730]];

  if (v18)
  {
    v7 = [a1 value];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentDuration(v4, v7);
    goto LABEL_13;
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:a1 file:@"_HKDiscreteQuantitySampleComparisonFilter+HealthDaemon.m" lineNumber:38 description:@"Unreachable code has been executed"];

  v19 = [MEMORY[0x277D10B70] falsePredicate];
LABEL_14:

  return v19;
}

@end