@interface _HKFitnessFriendObjectComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKFitnessFriendObjectComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v3 = a1;
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC6D0]];

  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = v11;
    v13 = a2;
    v14 = v3;
    v15 = 22;
    goto LABEL_9;
  }

  if (!v3)
  {
    goto LABEL_15;
  }

  if ([v3 operatorType] != 4)
  {
    if ([v3 operatorType] == 5)
    {
      v16 = [v3 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v28 = [MEMORY[0x277CCA890] currentHandler];
        [v28 handleFailureInMethod:sel__predicateForFriendUUID object:v3 file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:34 description:@"Friend UUID should be NSData"];
      }

      v8 = [v3 value];
      v9 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v8];
      v18 = HDFitnessFriendWorkoutEntityEntityPredicateForFriendUUID();
      v3 = [MEMORY[0x277D10B20] negatedPredicate:v18];

      goto LABEL_14;
    }

    if ([v3 operatorType] == 10)
    {
      v20 = [v3 value];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = [v3 value];
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        if (v22)
        {
LABEL_23:
          v23 = [v3 value];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();
          v25 = [v3 value];
          v8 = v25;
          if ((v24 & 1) == 0)
          {
            v26 = [v25 allObjects];

            v8 = v26;
          }

          v9 = [v8 hk_map:&__block_literal_global_125];
          v10 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v9];
          goto LABEL_7;
        }

        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:sel__predicateForFriendUUID object:v3 file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:42 description:@"Friend UUID should be NSArray or NSSet"];
      }

      goto LABEL_23;
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = v11;
    v13 = sel__predicateForFriendUUID;
    v14 = v3;
    v15 = 51;
LABEL_9:
    [v11 handleFailureInMethod:v13 object:v14 file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:v15 description:@"Unreachable code has been executed"];

    v3 = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_15;
  }

  v6 = [v3 value];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:sel__predicateForFriendUUID object:v3 file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:29 description:@"Friend UUID should be NSData"];
  }

  v8 = [v3 value];
  v9 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v8];
  v10 = HDFitnessFriendWorkoutEntityEntityPredicateForFriendUUID();
LABEL_7:
  v3 = v10;
LABEL_14:

LABEL_15:

  return v3;
}

@end