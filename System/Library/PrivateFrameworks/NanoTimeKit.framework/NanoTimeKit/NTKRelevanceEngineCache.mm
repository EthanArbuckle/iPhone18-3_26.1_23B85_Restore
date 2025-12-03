@interface NTKRelevanceEngineCache
+ (id)_dataSourceLoaderForRelevanceEngineDataSourcesForKey:(id)key;
+ (id)_globallyCachedCanonicalRelevanceEngine;
+ (id)sampleConfiguration;
+ (id)sharedCache;
- (id)canonicalRelevanceEngine;
- (id)canonicalRelevanceEngineIgnoringAppInstallations;
- (void)relevanceEngine:(id)engine performBatchUpdateBlock:(id)block completion:(id)completion;
@end

@implementation NTKRelevanceEngineCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[NTKRelevanceEngineCache sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

void __38__NTKRelevanceEngineCache_sharedCache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedCache_cache;
  sharedCache_cache = v0;
}

+ (id)_dataSourceLoaderForRelevanceEngineDataSourcesForKey:(id)key
{
  v22[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = MEMORY[0x2318D9710]();
  v5 = [v4 stringByAppendingPathComponent:@"System"];
  v6 = [v5 stringByAppendingPathComponent:@"Library"];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [v6 stringByAppendingPathComponent:@"RelevanceEngine"];
  v9 = [v8 stringByAppendingPathComponent:@"NanoDataSources"];
  v10 = [v7 fileURLWithPath:v9];

  if (NTKInternalBuild(v11, v12, v13, v14))
  {
    v15 = MEMORY[0x277CBEBC0];
    v16 = [@"/AppleInternal/Library/RelevanceEngine" stringByAppendingPathComponent:@"NanoDataSources"];
    v17 = [v15 fileURLWithPath:v16];

    v22[0] = v10;
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  }

  else
  {
    v21 = v10;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  v19 = [MEMORY[0x277D443E8] dataSourceLoaderWithDirectories:v18 dataSourceKey:keyCopy];

  return v19;
}

+ (id)sampleConfiguration
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NTKRelevanceEngineCache_sampleConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sampleConfiguration_onceToken != -1)
  {
    dispatch_once(&sampleConfiguration_onceToken, block);
  }

  v2 = sampleConfiguration_SampleConfiguration;

  return v2;
}

void __46__NTKRelevanceEngineCache_sampleConfiguration__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D44478] sampleUpNextConfiguration];
  v3 = [v2 mutableCopy];

  v4 = [*(a1 + 32) _dataSourceLoaderForRelevanceEngineDataSourcesForKey:*MEMORY[0x277D44520]];
  v5 = [MEMORY[0x277D443E8] dataSourceLoaderWithBlock:&__block_literal_global_20];
  v15[0] = v4;
  v15[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v7 = MEMORY[0x277D443E8];
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  v9 = [v7 aggregateDataSourceLoaderWithDataSourceLoaders:v8];
  [v3 setDataSourceLoader:v9];

  v10 = [_NTKRelevanceEngineLocationManager alloc];
  v11 = objc_opt_new();
  v12 = [(_NTKRelevanceEngineLocationManager *)v10 initWithLocationManager:v11];
  [v3 setLocationManager:v12];

  v13 = [v3 copy];
  v14 = sampleConfiguration_SampleConfiguration;
  sampleConfiguration_SampleConfiguration = v13;
}

id __46__NTKRelevanceEngineCache_sampleConfiguration__block_invoke_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:3];
  v1 = [v0 mutableCopy];

  v2 = [v1 copy];

  return v2;
}

+ (id)_globallyCachedCanonicalRelevanceEngine
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NTKRelevanceEngineCache__globallyCachedCanonicalRelevanceEngine__block_invoke;
  aBlock[3] = &__block_descriptor_40_e24___RERelevanceEngine_8__0l;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&OnDemandEngine);
  if (!WeakRetained)
  {
    WeakRetained = v2[2](v2);
    objc_storeWeak(&OnDemandEngine, WeakRetained);
  }

  return WeakRetained;
}

id __66__NTKRelevanceEngineCache__globallyCachedCanonicalRelevanceEngine__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sampleConfiguration];
  v2 = [objc_alloc(MEMORY[0x277D44470]) initWithName:@"NTK-Sample-OnDemand" configuration:v1];

  return v2;
}

- (id)canonicalRelevanceEngine
{
  v2 = objc_opt_class();

  return [v2 _globallyCachedCanonicalRelevanceEngine];
}

- (id)canonicalRelevanceEngineIgnoringAppInstallations
{
  WeakRetained = objc_loadWeakRetained(&self->_canonicalRelevanceEngineIgnoringAppInstallations);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    sampleConfiguration = [objc_opt_class() sampleConfiguration];
    v7 = [sampleConfiguration mutableCopy];

    if (objc_opt_respondsToSelector())
    {
      [v7 setIgnoresInstalledApplications:1];
    }

    v5 = [objc_alloc(MEMORY[0x277D44470]) initWithName:@"NTK-Canonical-OnDemand-IgnoresInstallations" configuration:v7];
    objc_storeWeak(&self->_canonicalRelevanceEngineIgnoringAppInstallations, v5);
  }

  return v5;
}

- (void)relevanceEngine:(id)engine performBatchUpdateBlock:(id)block completion:(id)completion
{
  v6 = *(block + 2);
  completionCopy = completion;
  v6(block);
  completionCopy[2]();
}

@end