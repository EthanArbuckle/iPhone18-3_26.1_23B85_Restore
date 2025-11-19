@interface DPPrivacyBudgetProperties
@end

@implementation DPPrivacyBudgetProperties

void __55___DPPrivacyBudgetProperties_budgetPropertiesFromFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 pathForResource:@"override.budgetproperties" ofType:@"plist"];

  v4 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v6 usingBlock:&__block_literal_global_7];
  v5 = gAllBudgetProperties;
  gAllBudgetProperties = v4;
}

@end