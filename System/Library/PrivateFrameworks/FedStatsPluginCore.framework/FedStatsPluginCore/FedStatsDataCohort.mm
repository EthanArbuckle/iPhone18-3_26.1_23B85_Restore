@interface FedStatsDataCohort
+ (BOOL)checkCohortField:(id)a3 forNamespaceID:(id)a4;
+ (id)keysForCohorts:(id)a3 namespaceID:(id)a4 parameters:(id)a5 possibleError:(id *)a6;
+ (id)sharedInstance;
- (BOOL)checkCohortValue:(id)a3 forCohortName:(id)a4 namespaceIdentifier:(id)a5;
- (FedStatsDataCohort)init;
@end

@implementation FedStatsDataCohort

- (FedStatsDataCohort)init
{
  v16.receiver = self;
  v16.super_class = FedStatsDataCohort;
  v2 = [(FedStatsDataCohort *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"FedStatsCohortAllowList" ofType:@"plist"];

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
    namespaceMap = v2->_namespaceMap;
    v2->_namespaceMap = v5;

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"FedStatsCohortValueAllowList" ofType:@"plist"];

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
    valueAllowList = v2->_valueAllowList;
    v2->_valueAllowList = v9;

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 pathForResource:@"FedStatsCohortValueBlockList" ofType:@"plist"];

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v12];
    valueBlockList = v2->_valueBlockList;
    v2->_valueBlockList = v13;
  }

  return v2;
}

- (BOOL)checkCohortValue:(id)a3 forCohortName:(id)a4 namespaceIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FedStatsDataCohort *)self valueBlockList];
  v12 = [v11 objectForKey:v10];

  v13 = [v12 objectForKey:v9];
  v14 = [v13 containsObject:v8];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [(FedStatsDataCohort *)self valueAllowList];
    v17 = [v16 objectForKey:v10];

    if (v17)
    {
      v18 = [v17 objectForKey:v9];
      v19 = v18;
      if (v18)
      {
        v15 = [v18 containsObject:v8];
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FedStatsDataCohort_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_380 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_380, block);
  }

  v2 = sharedInstance_sharedDataCohortInstance;

  return v2;
}

uint64_t __36__FedStatsDataCohort_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedDataCohortInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)checkCohortField:(id)a3 forNamespaceID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[FedStatsDataCohort sharedInstance];
  v8 = [v7 namespaceMap];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [v9 containsObject:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keysForCohorts:(id)a3 namespaceID:(id)a4 parameters:(id)a5 possibleError:(id *)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v36 = a5;
  v35 = +[FedStatsDataCohort sharedInstance];
  v11 = [v35 namespaceMap];
  v37 = v10;
  v12 = [v11 objectForKey:v10];

  if (v12)
  {
    v33 = a6;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v9;
    v14 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      v32 = v9;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        if (([v12 containsObject:v18] & 1) == 0)
        {
          break;
        }

        v19 = [FedStatsCohortFactory cohortQueryFieldByName:v18];
        if (!v19)
        {
          v9 = v32;
          v27 = v33;
          if (!v33)
          {
            goto LABEL_31;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cohort is not implemented.", v18, v31];
          goto LABEL_26;
        }

        v20 = v19;
        v38 = 0;
        v21 = [v19 cohortKeyForParameters:v36 possibleError:&v38];
        v22 = v38;
        if (([v35 checkCohortValue:v21 forCohortName:v18 namespaceIdentifier:v37] & 1) == 0)
        {
          if (v33)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cohort value '%@' for cohort '%@' is not allowed for the namespace '%@'", v21, v18, v37];
            *v33 = [FedStatsPluginError errorWithCode:300 description:v28];
          }

          v9 = v32;
LABEL_30:

LABEL_31:
          v25 = 0;
          goto LABEL_32;
        }

        v23 = +[FedStatsPluginLog logger];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v44 = v18;
          v45 = 2112;
          v46 = v21;
          v47 = 2112;
          v48 = v37;
          _os_log_debug_impl(&dword_24AB24000, v23, OS_LOG_TYPE_DEBUG, "cohortName:cohortValue => %@=%@ for namespace %@", buf, 0x20u);
        }

        if (v22)
        {
          v24 = +[FedStatsPluginLog logger];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v44 = v18;
            v45 = 2112;
            v46 = v22;
            _os_log_debug_impl(&dword_24AB24000, v24, OS_LOG_TYPE_DEBUG, "%@ cohort error while creating the key: %@", buf, 0x16u);
          }
        }

        [v13 addObject:v21];

        if (v15 == ++v17)
        {
          v15 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
          v9 = v32;
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v9 = v32;
      v27 = v33;
      if (!v33)
      {
        goto LABEL_31;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cohort is not approved for %@ namespace.", v18, v37];
      v20 = LABEL_26:;
      *v27 = [FedStatsPluginError errorWithCode:300 description:v20];
      goto LABEL_30;
    }

LABEL_18:

    v25 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
LABEL_32:
  }

  else
  {
    if (a6)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ namespace is invalid.", v10];
      *a6 = [FedStatsPluginError errorWithCode:300 description:v26];
    }

    v25 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

@end