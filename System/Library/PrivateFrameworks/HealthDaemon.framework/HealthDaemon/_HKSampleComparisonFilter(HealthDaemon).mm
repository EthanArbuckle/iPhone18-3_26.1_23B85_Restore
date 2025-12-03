@interface _HKSampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKSampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [self operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  value = [self value];
  keyPath = [self keyPath];
  v7 = [keyPath isEqualToString:*MEMORY[0x277CCC778]];

  if (v7)
  {
    v8 = HDSampleEntityPredicateForStartDate(v4);
  }

  else
  {
    keyPath2 = [self keyPath];
    v11 = [keyPath2 isEqualToString:*MEMORY[0x277CCC748]];

    if (v11)
    {
      dataTypes = [self dataTypes];
      anyObject = [dataTypes anyObject];
      v14 = [anyObject _earliestAllowedStartDateForSampleOverlappingDate:value];

      if (v14)
      {
        HDSampleEntityPredicateForStartDate(v4);
      }

      else
      {
        [MEMORY[0x277D10B70] truePredicate];
      }
      v9 = ;

      goto LABEL_13;
    }

    keyPath3 = [self keyPath];
    v16 = [keyPath3 isEqualToString:*MEMORY[0x277CCC6C8]];

    if (v16)
    {
      HDSampleEntityPredicateForEndDate(v4);
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_HKSampleComparisonFilter+HealthDaemon.m" lineNumber:40 description:@"Unreachable code has been executed"];

      [MEMORY[0x277D10B70] falsePredicate];
    }
    v8 = ;
  }

  v9 = v8;
LABEL_13:

  return v9;
}

@end