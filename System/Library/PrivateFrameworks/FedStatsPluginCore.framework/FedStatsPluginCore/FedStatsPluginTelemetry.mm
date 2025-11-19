@interface FedStatsPluginTelemetry
+ (void)reportPluginForAssetProvider:(id)a3 recipeIdentifier:(id)a4 withError:(id)a5;
@end

@implementation FedStatsPluginTelemetry

+ (void)reportPluginForAssetProvider:(id)a3 recipeIdentifier:(id)a4 withError:(id)a5
{
  v7 = MEMORY[0x277D23430];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedInstance];
  v12 = objc_alloc(MEMORY[0x277D23440]);
  v13 = [v10 experimentIdentifierForRecipe:v9];
  v14 = [v10 deploymentIdentifierForRecipe:v9];
  v15 = [v14 intValue];
  v16 = [v10 treatmentIdentifierForRecipe:v9];

  v17 = [v12 initWithExperimentID:v13 deploymentID:v15 treatmentID:v16];
  v18 = [objc_alloc(MEMORY[0x277D23438]) initWithPerformTrialTaskStatus:v8 == 0 error:v8 usePrivateUpload:1];

  v22 = 0;
  LODWORD(v9) = [v11 addLighthousePluginEvent:v18 identifiers:v17 error:&v22];
  v19 = v22;
  v20 = v19;
  if (v9 && v19)
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