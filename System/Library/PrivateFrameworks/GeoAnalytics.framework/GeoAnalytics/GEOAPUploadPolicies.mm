@interface GEOAPUploadPolicies
+ (id)sharedPolicies;
- (GEOAPUploadPolicies)init;
- (id)uploadPolicyForUploadPolicyType:(int)a3;
@end

@implementation GEOAPUploadPolicies

+ (id)sharedPolicies
{
  if (sharedPolicies_onceToken != -1)
  {
    dispatch_once(&sharedPolicies_onceToken, &__block_literal_global_3377);
  }

  v3 = sharedPolicies_policies;

  return v3;
}

- (id)uploadPolicyForUploadPolicyType:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3231;
  v12 = __Block_byref_object_dispose__3232;
  v13 = 0;
  isoQueue = self->_isoQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__GEOAPUploadPolicies_uploadPolicyForUploadPolicyType___block_invoke;
  block[3] = &unk_1E7959660;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(isoQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __55__GEOAPUploadPolicies_uploadPolicyForUploadPolicyType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__GEOAPUploadPolicies__updatePolicyConfigForUploadPolicyConfigType_configKey___block_invoke()
{
  v2 = [GEOAPURLSessionConfig configForURLSessionConfigType:5];
  v0 = [[GEOAPUploadStage alloc] initWithURLSessionConfig:v2 ttl:604800.0];
  v1 = _updatePolicyConfigForUploadPolicyConfigType_configKey__defaultUploadStage;
  _updatePolicyConfigForUploadPolicyConfigType_configKey__defaultUploadStage = v0;
}

- (GEOAPUploadPolicies)init
{
  v62.receiver = self;
  v62.super_class = GEOAPUploadPolicies;
  v2 = [(GEOAPUploadPolicies *)&v62 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create();
    isoQueue = v2->_isoQueue;
    v2->_isoQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    policyDict = v2->_policyDict;
    v2->_policyDict = v5;

    v7 = v2->_isoQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__GEOAPUploadPolicies_init__block_invoke;
    block[3] = &unk_1E7959610;
    v8 = v2;
    v61 = v8;
    dispatch_async(v7, block);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    configListeners = v8->_configListeners;
    v8->_configListeners = v9;

    v11 = v8->_configListeners;
    v12 = v2->_isoQueue;
    v59 = v8;
    v13 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v11 addObject:v13];

    v14 = v8->_configListeners;
    v15 = v2->_isoQueue;
    v58 = v59;
    v16 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v14 addObject:v16];

    v17 = v8->_configListeners;
    v18 = v2->_isoQueue;
    v57 = v58;
    v19 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v17 addObject:v19];

    v20 = v8->_configListeners;
    v21 = v2->_isoQueue;
    v56 = v57;
    v22 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v20 addObject:v22];

    v23 = v8->_configListeners;
    v24 = v2->_isoQueue;
    v55 = v56;
    v25 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v23 addObject:v25];

    v26 = v8->_configListeners;
    v27 = v2->_isoQueue;
    v54 = v55;
    v28 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v26 addObject:v28];

    v29 = v8->_configListeners;
    v30 = v2->_isoQueue;
    v53 = v54;
    v31 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v29 addObject:v31];

    v32 = v8->_configListeners;
    v33 = v2->_isoQueue;
    v52 = v53;
    v34 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v32 addObject:v34];

    v35 = v8->_configListeners;
    v36 = v2->_isoQueue;
    v51 = v52;
    v37 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v35 addObject:v37];

    v38 = v8->_configListeners;
    v39 = v2->_isoQueue;
    v50 = v51;
    v40 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v38 addObject:v40];

    v41 = v8->_configListeners;
    v42 = v2->_isoQueue;
    v49 = v50;
    v43 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v41 addObject:v43];

    v44 = v8->_configListeners;
    v45 = v2->_isoQueue;
    v48 = v49;
    v46 = _GEOConfigAddBlockListenerForKey();
    [(NSMutableArray *)v44 addObject:v46];
  }

  return v2;
}

uint64_t __27__GEOAPUploadPolicies_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:4 configKey:{1, &GeoAnalyticsUploadPolicyConfig_HIGHEST_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:3 configKey:{2, &GeoAnalyticsUploadPolicyConfig_HIGH_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:1 configKey:{3, &GeoAnalyticsUploadPolicyConfig_LOW_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:2 configKey:{4, &GeoAnalyticsUploadPolicyConfig_MED_COST_7D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:5 configKey:{5, &GeoAnalyticsUploadPolicyConfig_MED_COST_90D_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:10 configKey:{6, &GeoAnalyticsUploadPolicyConfig_POI_BUSYNESS_POLICY_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:11 configKey:{7, &GeoAnalyticsUploadPolicyConfig_RAND_DELAY_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:12 configKey:{8, &GeoAnalyticsUploadPolicyConfig_TEST_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:6 configKey:{9, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_00_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:7 configKey:{10, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_01_config_Metadata}];
  [*(a1 + 32) _updatePolicyConfigForUploadPolicyConfigType:8 configKey:{11, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_02_config_Metadata}];
  v2 = *(a1 + 32);

  return [v2 _updatePolicyConfigForUploadPolicyConfigType:9 configKey:{12, &GeoAnalyticsUploadPolicyConfig_UP_POLICY_03_config_Metadata}];
}

uint64_t __37__GEOAPUploadPolicies_sharedPolicies__block_invoke()
{
  sharedPolicies_policies = objc_alloc_init(GEOAPUploadPolicies);

  return MEMORY[0x1EEE66BB8]();
}

@end