@interface DNDModeAssertion(Predicates)
+ (id)predicateForModeAssertionsWithLifetimeClass:()Predicates;
@end

@implementation DNDModeAssertion(Predicates)

+ (id)predicateForModeAssertionsWithLifetimeClass:()Predicates
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__DNDModeAssertion_Predicates__predicateForModeAssertionsWithLifetimeClass___block_invoke;
  v5[3] = &__block_descriptor_40_e43_B24__0__DNDModeAssertion_8__NSDictionary_16lu32l8;
  v5[4] = a3;
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:v5];

  return v3;
}

@end