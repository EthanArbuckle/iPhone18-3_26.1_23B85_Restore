@interface DNDModeAssertion
@end

@implementation DNDModeAssertion

uint64_t __76__DNDModeAssertion_Predicates__predicateForModeAssertionsWithLifetimeClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 lifetime];
  v5 = objc_opt_class();
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = *(a1 + 32);

  return [v5 isEqual:v6];
}

@end