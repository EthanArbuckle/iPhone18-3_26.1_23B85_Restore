@interface _HKBooleanFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKBooleanFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  if ([a1 value])
  {
    [MEMORY[0x277D10B70] truePredicate];
  }

  else
  {
    [MEMORY[0x277D10B70] falsePredicate];
  }
  v1 = ;

  return v1;
}

@end