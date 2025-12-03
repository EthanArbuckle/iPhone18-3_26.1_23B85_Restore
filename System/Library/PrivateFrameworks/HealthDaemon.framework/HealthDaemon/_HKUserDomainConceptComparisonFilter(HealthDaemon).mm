@interface _HKUserDomainConceptComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKUserDomainConceptComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v5 = a3;
  keyPath = [self keyPath];
  v7 = [keyPath isEqualToString:*MEMORY[0x277CCC7B8]];

  if (v7)
  {
    v8 = v5;
    if (self)
    {
      v9 = MEMORY[0x277CCDB40];
      value = [self value];
      v11 = [v9 semanticIdentifierFromSemanticIdentifierString:value profile:v8];

      if (v11)
      {
        daemon = [v8 daemon];
        userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
        typeIdentifier = [v11 typeIdentifier];
        v15 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:typeIdentifier];

        [v15 predicateMatchingSemanticIdentifier:v11];
      }

      else
      {
        [MEMORY[0x277D10B70] falsePredicate];
      }
      v23 = ;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    keyPath2 = [self keyPath];
    v17 = [keyPath2 isEqualToString:*MEMORY[0x277CCC7C0]];

    if (v17)
    {
      if (self)
      {
        operatorType = [self operatorType];
        value2 = [self value];
        v20 = value2;
        if (operatorType == 10)
        {
          HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifiers(value2);
        }

        else
        {
          HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier(value2);
        }
        v23 = ;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      keyPath3 = [self keyPath];
      v22 = [keyPath3 isEqualToString:*MEMORY[0x277CCC7C8]];

      if (v22)
      {
        [self simplePredicate];
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:35 description:@"Unreachable code has been executed"];

        [MEMORY[0x277D10B70] falsePredicate];
      }
      v23 = ;
    }
  }

  return v23;
}

- (__CFString)propertyForKeyPath
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC7C8]];

  if (v5)
  {
    v6 = @"uuid";
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:44 description:@"Unreachable code has been executed"];

    v6 = &stru_283BF39C8;
  }

  return v6;
}

@end