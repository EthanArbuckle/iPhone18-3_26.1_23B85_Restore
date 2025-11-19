@interface _DPStrings
+ (id)algorithmParametersPath;
+ (id)budgetPropertiesPath;
+ (id)dataTypeParametersPath;
+ (id)databaseDirectoryPath;
+ (id)keyNamesPath;
+ (id)keyPropertiesPath;
+ (id)namespaceParametersPath;
+ (id)reportsDirectoryPath;
+ (id)runtimeBlacklistDirectoryPath;
+ (id)tokensDirectoryPath;
+ (id)transparencyLogDirectoryPath;
+ (id)unitTestBitValueMapDirectoryPath:(id)a3;
+ (id)unitTestDatabaseDirectoryPath:(id)a3;
+ (id)unitTestReportsDirectoryPath:(id)a3;
+ (id)unitTestRuntimeBlacklistDirectoryPath:(id)a3;
+ (id)unitTestSystemBlacklistDirectoryPath:(id)a3;
@end

@implementation _DPStrings

+ (id)databaseDirectoryPath
{
  if (databaseDirectoryPath_onceToken != -1)
  {
    +[_DPStrings databaseDirectoryPath];
  }

  v3 = databaseDirectoryPath__DPDatabaseDirectoryPath;

  return v3;
}

+ (id)reportsDirectoryPath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___DPStrings_reportsDirectoryPath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (reportsDirectoryPath_onceToken != -1)
  {
    dispatch_once(&reportsDirectoryPath_onceToken, block);
  }

  v2 = reportsDirectoryPath__DPReportsDirectoryPath;

  return v2;
}

+ (id)transparencyLogDirectoryPath
{
  if (transparencyLogDirectoryPath_onceToken != -1)
  {
    +[_DPStrings transparencyLogDirectoryPath];
  }

  v3 = transparencyLogDirectoryPath__DPTransparencyLogDirectoryPath;

  return v3;
}

+ (id)tokensDirectoryPath
{
  if (tokensDirectoryPath_onceToken != -1)
  {
    +[_DPStrings tokensDirectoryPath];
  }

  v3 = tokensDirectoryPath__DPDediscoTokensDirectoryPath;

  return v3;
}

+ (id)keyNamesPath
{
  if (keyNamesPath_onceToken != -1)
  {
    +[_DPStrings keyNamesPath];
  }

  v3 = keyNamesPath__DPKeyNamesPlist;

  return v3;
}

+ (id)keyPropertiesPath
{
  if (keyPropertiesPath_onceToken != -1)
  {
    +[_DPStrings keyPropertiesPath];
  }

  v3 = keyPropertiesPath__DPKeyPropertiesPlist;

  return v3;
}

+ (id)budgetPropertiesPath
{
  if (budgetPropertiesPath_onceToken != -1)
  {
    +[_DPStrings budgetPropertiesPath];
  }

  v3 = budgetPropertiesPath__DPBudgetPropertiesPlist;

  return v3;
}

+ (id)algorithmParametersPath
{
  if (algorithmParametersPath_onceToken != -1)
  {
    +[_DPStrings algorithmParametersPath];
  }

  v3 = algorithmParametersPath__DPAlgorithmParametersPlist;

  return v3;
}

+ (id)namespaceParametersPath
{
  if (namespaceParametersPath_onceToken != -1)
  {
    +[_DPStrings namespaceParametersPath];
  }

  v3 = namespaceParametersPath__DPNamespaceParametersPlist;

  return v3;
}

+ (id)dataTypeParametersPath
{
  if (dataTypeParametersPath_onceToken != -1)
  {
    +[_DPStrings dataTypeParametersPath];
  }

  v3 = dataTypeParametersPath__DPDataTypeParametersPlist;

  return v3;
}

+ (id)runtimeBlacklistDirectoryPath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___DPStrings_runtimeBlacklistDirectoryPath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (runtimeBlacklistDirectoryPath_onceToken != -1)
  {
    dispatch_once(&runtimeBlacklistDirectoryPath_onceToken, block);
  }

  v2 = runtimeBlacklistDirectoryPath__DPBlacklistRuntimeDirectoryPath;

  return v2;
}

+ (id)unitTestDatabaseDirectoryPath:(id)a3
{
  v4 = a3;
  v5 = [a1 unitTestOutputDirectoryPath];
  v6 = [v5 stringByAppendingString:v4];

  return v6;
}

+ (id)unitTestReportsDirectoryPath:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 unitTestDatabaseDirectoryPath:a3];
  v5 = [v3 stringWithFormat:@"%@/%@", v4, @"Reports"];

  return v5;
}

+ (id)unitTestSystemBlacklistDirectoryPath:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [a1 unitTestOutputDirectoryPath];
  v7 = [v4 stringWithFormat:@"%@/SystemBlacklist/%@", v6, v5];

  return v7;
}

+ (id)unitTestRuntimeBlacklistDirectoryPath:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [a1 unitTestOutputDirectoryPath];
  v7 = [v4 stringWithFormat:@"%@/RuntimeBlacklist/%@", v6, v5];

  return v7;
}

+ (id)unitTestBitValueMapDirectoryPath:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [a1 unitTestOutputDirectoryPath];
  v7 = [v4 stringWithFormat:@"%@/BitValueMaps/%@", v6, v5];

  return v7;
}

@end