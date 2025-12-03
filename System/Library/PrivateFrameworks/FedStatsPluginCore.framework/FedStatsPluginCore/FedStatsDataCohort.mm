@interface FedStatsDataCohort
+ (BOOL)checkCohortField:(id)field forNamespaceID:(id)d;
+ (id)keysForCohorts:(id)cohorts namespaceID:(id)d parameters:(id)parameters possibleError:(id *)error;
+ (id)sharedInstance;
- (BOOL)checkCohortValue:(id)value forCohortName:(id)name namespaceIdentifier:(id)identifier;
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

- (BOOL)checkCohortValue:(id)value forCohortName:(id)name namespaceIdentifier:(id)identifier
{
  valueCopy = value;
  nameCopy = name;
  identifierCopy = identifier;
  valueBlockList = [(FedStatsDataCohort *)self valueBlockList];
  v12 = [valueBlockList objectForKey:identifierCopy];

  v13 = [v12 objectForKey:nameCopy];
  v14 = [v13 containsObject:valueCopy];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    valueAllowList = [(FedStatsDataCohort *)self valueAllowList];
    v17 = [valueAllowList objectForKey:identifierCopy];

    if (v17)
    {
      v18 = [v17 objectForKey:nameCopy];
      v19 = v18;
      if (v18)
      {
        v15 = [v18 containsObject:valueCopy];
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
  block[4] = self;
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

+ (BOOL)checkCohortField:(id)field forNamespaceID:(id)d
{
  fieldCopy = field;
  dCopy = d;
  v7 = +[FedStatsDataCohort sharedInstance];
  namespaceMap = [v7 namespaceMap];
  v9 = [namespaceMap objectForKey:dCopy];

  if (v9)
  {
    v10 = [v9 containsObject:fieldCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keysForCohorts:(id)cohorts namespaceID:(id)d parameters:(id)parameters possibleError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  cohortsCopy = cohorts;
  dCopy = d;
  parametersCopy = parameters;
  v35 = +[FedStatsDataCohort sharedInstance];
  namespaceMap = [v35 namespaceMap];
  v37 = dCopy;
  v12 = [namespaceMap objectForKey:dCopy];

  if (v12)
  {
    errorCopy = error;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(cohortsCopy, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = cohortsCopy;
    v14 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      v32 = cohortsCopy;
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
          cohortsCopy = v32;
          v27 = errorCopy;
          if (!errorCopy)
          {
            goto LABEL_31;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cohort is not implemented.", v18, v31];
          goto LABEL_26;
        }

        v20 = v19;
        v38 = 0;
        v21 = [v19 cohortKeyForParameters:parametersCopy possibleError:&v38];
        v22 = v38;
        if (([v35 checkCohortValue:v21 forCohortName:v18 namespaceIdentifier:v37] & 1) == 0)
        {
          if (errorCopy)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cohort value '%@' for cohort '%@' is not allowed for the namespace '%@'", v21, v18, v37];
            *errorCopy = [FedStatsPluginError errorWithCode:300 description:v28];
          }

          cohortsCopy = v32;
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
          cohortsCopy = v32;
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      cohortsCopy = v32;
      v27 = errorCopy;
      if (!errorCopy)
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
    if (error)
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ namespace is invalid.", dCopy];
      *error = [FedStatsPluginError errorWithCode:300 description:dCopy];
    }

    v25 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

@end