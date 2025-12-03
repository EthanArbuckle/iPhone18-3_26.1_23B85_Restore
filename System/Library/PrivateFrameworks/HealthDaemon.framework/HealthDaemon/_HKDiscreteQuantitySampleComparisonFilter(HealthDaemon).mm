@interface _HKDiscreteQuantitySampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKDiscreteQuantitySampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [self operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  keyPath = [self keyPath];
  v6 = [keyPath isEqualToString:*MEMORY[0x277CCC720]];

  if (v6)
  {
    _comparisonQuantityAsNumber = [(_HKDiscreteQuantitySampleComparisonFilter *)self _comparisonQuantityAsNumber];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMinValue(v4, _comparisonQuantityAsNumber);
LABEL_13:
    falsePredicate = v8;

    goto LABEL_14;
  }

  keyPath2 = [self keyPath];
  v10 = [keyPath2 isEqualToString:*MEMORY[0x277CCC6F8]];

  if (v10)
  {
    _comparisonQuantityAsNumber = [(_HKDiscreteQuantitySampleComparisonFilter *)self _comparisonQuantityAsNumber];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMaxValue(v4, _comparisonQuantityAsNumber);
    goto LABEL_13;
  }

  keyPath3 = [self keyPath];
  v12 = [keyPath3 isEqualToString:*MEMORY[0x277CCC728]];

  if (v12)
  {
    _comparisonQuantityAsNumber = [(_HKDiscreteQuantitySampleComparisonFilter *)self _comparisonQuantityAsNumber];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentValue(v4, _comparisonQuantityAsNumber);
    goto LABEL_13;
  }

  keyPath4 = [self keyPath];
  v14 = [keyPath4 isEqualToString:*MEMORY[0x277CCC740]];

  if (v14)
  {
    _comparisonQuantityAsNumber = [self value];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentStartDate(v4, _comparisonQuantityAsNumber);
    goto LABEL_13;
  }

  keyPath5 = [self keyPath];
  v16 = [keyPath5 isEqualToString:*MEMORY[0x277CCC738]];

  if (v16)
  {
    _comparisonQuantityAsNumber = [self value];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentEndDate(v4, _comparisonQuantityAsNumber);
    goto LABEL_13;
  }

  keyPath6 = [self keyPath];
  v18 = [keyPath6 isEqualToString:*MEMORY[0x277CCC730]];

  if (v18)
  {
    _comparisonQuantityAsNumber = [self value];
    v8 = HDQuantitySampleStatisticsEntityPredicateForMostRecentDuration(v4, _comparisonQuantityAsNumber);
    goto LABEL_13;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiscreteQuantitySampleComparisonFilter+HealthDaemon.m" lineNumber:38 description:@"Unreachable code has been executed"];

  falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
LABEL_14:

  return falsePredicate;
}

@end