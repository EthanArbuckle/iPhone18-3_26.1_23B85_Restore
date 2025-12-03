@interface _HKVerifiableClinicalRecordComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKVerifiableClinicalRecordComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [self operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  keyPath = [self keyPath];
  v6 = [keyPath isEqualToString:*MEMORY[0x277CCCEB8]];

  if (v6)
  {
    value = [self value];
    v8 = MEMORY[0x277D10B18];
    v9 = _HDSQLiteValueForDate();
    falsePredicate = [v8 predicateWithProperty:@"relevant_date" value:v9 comparisonType:v4];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKVerifiableClinicalRecordComparisonFilter+HealthDaemon.m" lineNumber:43 description:@"Unreachable code has been executed"];

    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  return falsePredicate;
}

@end