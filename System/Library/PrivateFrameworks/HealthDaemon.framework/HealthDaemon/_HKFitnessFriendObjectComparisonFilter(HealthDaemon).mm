@interface _HKFitnessFriendObjectComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKFitnessFriendObjectComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  selfCopy = self;
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC6D0]];

  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = currentHandler;
    v13 = a2;
    v14 = selfCopy;
    v15 = 22;
    goto LABEL_9;
  }

  if (!selfCopy)
  {
    goto LABEL_15;
  }

  if ([selfCopy operatorType] != 4)
  {
    if ([selfCopy operatorType] == 5)
    {
      value = [selfCopy value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__predicateForFriendUUID object:selfCopy file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:34 description:@"Friend UUID should be NSData"];
      }

      value2 = [selfCopy value];
      v9 = [MEMORY[0x277CCAD78] hk_UUIDWithData:value2];
      v18 = HDFitnessFriendWorkoutEntityEntityPredicateForFriendUUID();
      selfCopy = [MEMORY[0x277D10B20] negatedPredicate:v18];

      goto LABEL_14;
    }

    if ([selfCopy operatorType] == 10)
    {
      value3 = [selfCopy value];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        value4 = [selfCopy value];
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        if (v22)
        {
LABEL_23:
          value5 = [selfCopy value];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();
          value6 = [selfCopy value];
          value2 = value6;
          if ((v24 & 1) == 0)
          {
            allObjects = [value6 allObjects];

            value2 = allObjects;
          }

          v9 = [value2 hk_map:&__block_literal_global_125];
          v10 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v9];
          goto LABEL_7;
        }

        value3 = [MEMORY[0x277CCA890] currentHandler];
        [value3 handleFailureInMethod:sel__predicateForFriendUUID object:selfCopy file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:42 description:@"Friend UUID should be NSArray or NSSet"];
      }

      goto LABEL_23;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = currentHandler;
    v13 = sel__predicateForFriendUUID;
    v14 = selfCopy;
    v15 = 51;
LABEL_9:
    [currentHandler handleFailureInMethod:v13 object:v14 file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:v15 description:@"Unreachable code has been executed"];

    selfCopy = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_15;
  }

  value7 = [selfCopy value];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if ((v7 & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__predicateForFriendUUID object:selfCopy file:@"_HKFitnessFriendObjectComparisonFilter+HealthDaemon.m" lineNumber:29 description:@"Friend UUID should be NSData"];
  }

  value2 = [selfCopy value];
  v9 = [MEMORY[0x277CCAD78] hk_UUIDWithData:value2];
  v10 = HDFitnessFriendWorkoutEntityEntityPredicateForFriendUUID();
LABEL_7:
  selfCopy = v10;
LABEL_14:

LABEL_15:

  return selfCopy;
}

@end