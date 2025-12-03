@interface FedStatsPluginTelemetry
+ (void)reportPluginForAssetProvider:(id)provider recipeIdentifier:(id)identifier withError:(id)error;
@end

@implementation FedStatsPluginTelemetry

+ (void)reportPluginForAssetProvider:(id)provider recipeIdentifier:(id)identifier withError:(id)error
{
  v7 = MEMORY[0x277D23430];
  errorCopy = error;
  identifierCopy = identifier;
  providerCopy = provider;
  sharedInstance = [v7 sharedInstance];
  v12 = objc_alloc(MEMORY[0x277D23440]);
  v13 = [providerCopy experimentIdentifierForRecipe:identifierCopy];
  v14 = [providerCopy deploymentIdentifierForRecipe:identifierCopy];
  intValue = [v14 intValue];
  v16 = [providerCopy treatmentIdentifierForRecipe:identifierCopy];

  v17 = [v12 initWithExperimentID:v13 deploymentID:intValue treatmentID:v16];
  v18 = [objc_alloc(MEMORY[0x277D23438]) initWithPerformTrialTaskStatus:errorCopy == 0 error:errorCopy usePrivateUpload:1];

  v22 = 0;
  LODWORD(identifierCopy) = [sharedInstance addLighthousePluginEvent:v18 identifiers:v17 error:&v22];
  v19 = v22;
  v20 = v19;
  if (identifierCopy && v19)
  {
    v21 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FedStatsPluginTelemetry reportPluginForAssetProvider:v20 recipeIdentifier:v21 withError:?];
    }
  }
}

+ (void)reportPluginForAssetProvider:(uint64_t)a1 recipeIdentifier:(NSObject *)a2 withError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24AB24000, a2, OS_LOG_TYPE_ERROR, "Bitacora donation error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end