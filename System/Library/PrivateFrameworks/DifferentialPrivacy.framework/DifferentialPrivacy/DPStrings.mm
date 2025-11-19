@interface DPStrings
@end

@implementation DPStrings

void __35___DPStrings_databaseDirectoryPath__block_invoke()
{
  v0 = databaseDirectoryPath__DPDatabaseDirectoryPath;
  databaseDirectoryPath__DPDatabaseDirectoryPath = @"/var/mobile/Library/DifferentialPrivacy/";
}

void __34___DPStrings_reportsDirectoryPath__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) databaseDirectoryPath];
  v2 = [v1 stringWithFormat:@"%@%@", v4, @"Reports"];
  v3 = reportsDirectoryPath__DPReportsDirectoryPath;
  reportsDirectoryPath__DPReportsDirectoryPath = v2;
}

void __42___DPStrings_transparencyLogDirectoryPath__block_invoke()
{
  v0 = transparencyLogDirectoryPath__DPTransparencyLogDirectoryPath;
  transparencyLogDirectoryPath__DPTransparencyLogDirectoryPath = @"/var/mobile/Library/Logs/Dedisco";
}

void __33___DPStrings_tokensDirectoryPath__block_invoke()
{
  v0 = tokensDirectoryPath__DPDediscoTokensDirectoryPath;
  tokensDirectoryPath__DPDediscoTokensDirectoryPath = @"/var/mobile/Library/PPM/PAT/";
}

uint64_t __26___DPStrings_keyNamesPath__block_invoke()
{
  keyNamesPath__DPKeyNamesPlist = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/System/Library/DifferentialPrivacy/Configuration/", @"com.apple.dprivacyd.keynames.plist"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __31___DPStrings_keyPropertiesPath__block_invoke()
{
  keyPropertiesPath__DPKeyPropertiesPlist = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/System/Library/DifferentialPrivacy/Configuration/", @"com.apple.dprivacyd.keyproperties.plist"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __34___DPStrings_budgetPropertiesPath__block_invoke()
{
  budgetPropertiesPath__DPBudgetPropertiesPlist = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/System/Library/DifferentialPrivacy/Configuration/", @"com.apple.dprivacyd.budgetproperties.plist"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __37___DPStrings_algorithmParametersPath__block_invoke()
{
  algorithmParametersPath__DPAlgorithmParametersPlist = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/System/Library/DifferentialPrivacy/Configuration/", @"com.apple.dprivacyd.algorithmparameters.plist"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __37___DPStrings_namespaceParametersPath__block_invoke()
{
  namespaceParametersPath__DPNamespaceParametersPlist = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/System/Library/DifferentialPrivacy/Configuration/", @"com.apple.dprivacyd.namespaceparameters.plist"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __36___DPStrings_dataTypeParametersPath__block_invoke()
{
  dataTypeParametersPath__DPDataTypeParametersPlist = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"/System/Library/DifferentialPrivacy/Configuration/", @"com.apple.dprivacyd.datatypeparameters.plist"];

  return MEMORY[0x2821F96F8]();
}

void __43___DPStrings_runtimeBlacklistDirectoryPath__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) databaseDirectoryPath];
  v2 = [v1 stringWithFormat:@"%@/%@", v4, @"Configuration/Blacklists/"];
  v3 = runtimeBlacklistDirectoryPath__DPBlacklistRuntimeDirectoryPath;
  runtimeBlacklistDirectoryPath__DPBlacklistRuntimeDirectoryPath = v2;
}

@end