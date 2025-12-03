@interface FHCardPreselectPropensityModel
- (id)init:(BOOL)init;
- (id)predict:(id)predict;
@end

@implementation FHCardPreselectPropensityModel

- (id)init:(BOOL)init
{
  initCopy = init;
  v5 = MEMORY[0x277CBEBC0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"ModelResources/assets_WPC_ANALYTICS_OFFLINE_LAB/card_preselect_propensity_model/card_preselect_model" ofType:@"mlmodelc"];
  v8 = [v5 fileURLWithPath:v7];

  if (initCopy)
  {
    v13.receiver = self;
    v13.super_class = FHCardPreselectPropensityModel;
    v9 = [(FHPropensityModel *)&v13 initWithModelURL:v8 modelName:@"FHCardPreselectPropensityModel"];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = FHCardPreselectPropensityModel;
    v9 = [(FHPropensityModel *)&v12 initWithModelName:@"FHCardPreselectPropensityModel" namespaceName:@"WPC_ANALYTICS_OFFLINE_LAB" modelFactorName:@"card_preselect_propensity_model" defaultModel:v8];
  }

  v10 = v9;

  return v10;
}

- (id)predict:(id)predict
{
  v3 = [(FHModel *)self predictClassProbabilitiesWithDict:predict];
  v4 = v3;
  if (v3 && ([v3 objectForKey:&unk_283A88338], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277CCA980]);
    [v6 doubleValue];
    v8 = [v7 initWithDouble:?];
  }

  else
  {
    v9 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_ERROR, "Error in predicting card preselect", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

@end