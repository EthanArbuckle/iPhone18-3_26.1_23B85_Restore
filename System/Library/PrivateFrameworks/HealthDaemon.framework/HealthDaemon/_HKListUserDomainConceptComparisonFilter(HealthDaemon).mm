@interface _HKListUserDomainConceptComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKListUserDomainConceptComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC6E0]];

  if (v5)
  {
    [self simplePredicate];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKListUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:25 description:@"Unreachable code has been executed"];

    [MEMORY[0x277D10B70] falsePredicate];
  }
  v6 = ;

  return v6;
}

- (__CFString)propertyForKeyPath
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC6E0]];

  if (v5)
  {
    v6 = @"list_type";
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKListUserDomainConceptComparisonFilter+HealthDaemon.m" lineNumber:34 description:@"Unreachable code has been executed"];

    v6 = &stru_283BF39C8;
  }

  return v6;
}

@end