@interface _HKListUserDomainConceptComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKListUserDomainConceptComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC6E0]];

  if (v5)
  {
    [a1 simplePredicate];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKListUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:25 description:@"Unreachable code has been executed"];

    [MEMORY[0x277D10B70] falsePredicate];
  }
  v6 = ;

  return v6;
}

- (__CFString)propertyForKeyPath
{
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC6E0]];

  if (v5)
  {
    v6 = @"list_type";
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"_HKListUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:34 description:@"Unreachable code has been executed"];

    v6 = &stru_283BF39C8;
  }

  return v6;
}

@end