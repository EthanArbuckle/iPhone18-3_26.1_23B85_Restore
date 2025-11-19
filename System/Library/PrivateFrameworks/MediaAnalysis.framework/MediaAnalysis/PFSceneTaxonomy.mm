@interface PFSceneTaxonomy
@end

@implementation PFSceneTaxonomy

void __52__PFSceneTaxonomy_MediaAnalysis__vcp_sharedTaxonomy__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  if (([objc_opt_class() mad_isExpectedTaxonomy] & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: MAD tracked taxonomy is not the latest in Photos!", buf, 2u);
  }

  v0 = [MEMORY[0x1E69C0858] latestTaxonomyIdentifier];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Loading PFSceneTaxonomy identifier %@", buf, 0xCu);
  }

  v5 = 0;
  v1 = [objc_alloc(MEMORY[0x1E69C0858]) initWithIdentifier:v0 error:&v5];
  v2 = v5;
  v3 = +[PFSceneTaxonomy(MediaAnalysis) vcp_sharedTaxonomy]::instance;
  +[PFSceneTaxonomy(MediaAnalysis) vcp_sharedTaxonomy]::instance = v1;

  if ((!+[PFSceneTaxonomy(MediaAnalysis) vcp_sharedTaxonomy]::instance || v2) && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 description];
    *buf = 138412546;
    v7 = v0;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PFSceneTaxonomy w/identifier %@ (%@)", buf, 0x16u);
  }
}

void __56__PFSceneTaxonomy_MediaAnalysis__mad_isExpectedTaxonomy__block_invoke()
{
  v0 = [MEMORY[0x1E69C0858] latestTaxonomyIdentifier];
  +[PFSceneTaxonomy(MediaAnalysis) mad_isExpectedTaxonomy]::isLatest = [@"99" isEqualToString:v0];
  if ((+[PFSceneTaxonomy(MediaAnalysis) mad_isExpectedTaxonomy]::isLatest & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    __56__PFSceneTaxonomy_MediaAnalysis__mad_isExpectedTaxonomy__block_invoke_cold_1(v0);
  }
}

void __56__PFSceneTaxonomy_MediaAnalysis__mad_isExpectedTaxonomy__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 138412546;
  v2 = @"99";
  v3 = 2112;
  v4 = a1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Error: MAD tracked taxonomy identifier %@ does not match the latest in Photos: %@!", &v1, 0x16u);
}

@end