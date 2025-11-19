@interface MutualExclusivityEnforcementRequirementsForFeatureIdentifier
@end

@implementation MutualExclusivityEnforcementRequirementsForFeatureIdentifier

uint64_t ___MutualExclusivityEnforcementRequirementsForFeatureIdentifier_block_invoke()
{
  v0 = [objc_opt_class() requirementIdentifier];
  v1 = [v0 isEqualToString:*MEMORY[0x277CCBF60]];

  return v1 ^ 1u;
}

@end