@interface _HKSampleComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKSampleComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  [a1 operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  v5 = [a1 value];
  v6 = [a1 keyPath];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCC778]];

  if (v7)
  {
    v8 = HDSampleEntityPredicateForStartDate(v4);
  }

  else
  {
    v10 = [a1 keyPath];
    v11 = [v10 isEqualToString:*MEMORY[0x277CCC748]];

    if (v11)
    {
      v12 = [a1 dataTypes];
      v13 = [v12 anyObject];
      v14 = [v13 _earliestAllowedStartDateForSampleOverlappingDate:v5];

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

    v15 = [a1 keyPath];
    v16 = [v15 isEqualToString:*MEMORY[0x277CCC6C8]];

    if (v16)
    {
      HDSampleEntityPredicateForEndDate(v4);
    }

    else
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:a1 file:@"_HKSampleComparisonFilter+HealthDaemon.m" lineNumber:40 description:@"Unreachable code has been executed"];

      [MEMORY[0x277D10B70] falsePredicate];
    }
    v8 = ;
  }

  v9 = v8;
LABEL_13:

  return v9;
}

@end