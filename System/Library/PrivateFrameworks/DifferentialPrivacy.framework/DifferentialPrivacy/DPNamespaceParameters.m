@interface DPNamespaceParameters
@end

@implementation DPNamespaceParameters

void __45___DPNamespaceParameters_parametersFromFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 pathForResource:@"override.namespaceparameters" ofType:@"plist"];

  v4 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v6 usingBlock:&__block_literal_global_1];
  v5 = parametersFromFile__allParameters;
  parametersFromFile__allParameters = v4;
}

@end