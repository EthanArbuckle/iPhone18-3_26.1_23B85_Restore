@interface CSRestrictionDataProvider
- (BOOL)_isAKnownScenario:(id)scenario;
- (CSRestrictionDataProvider)init;
- (id)_buildScenariosMap;
- (id)_processesPoliciesDictWithErrors:(id)errors;
- (id)_processesSetWithErrors:(id)errors;
- (id)_scenariosDictWithErrors:(id)errors;
- (id)_templatesByScenarioForProcess:(id)process errors:(id)errors;
- (id)configureRestrictionsFromTemplateDictionary:(id)dictionary errors:(id)errors;
- (void)_templatesByProcessWithErrors:(id)errors;
- (void)loadAllRestrictionsData;
@end

@implementation CSRestrictionDataProvider

- (CSRestrictionDataProvider)init
{
  v6.receiver = self;
  v6.super_class = CSRestrictionDataProvider;
  v2 = [(CSRestrictionDataProvider *)&v6 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSRestrictionDataProvider"];
    logger = v2->_logger;
    v2->_logger = v3;

    [(CSRestrictionDataProvider *)v2 loadAllRestrictionsData];
  }

  return v2;
}

- (void)loadAllRestrictionsData
{
  array = [MEMORY[0x277CBEB18] array];
  [(CSRestrictionDataProvider *)self _templatesByProcessWithErrors:array];
}

- (id)_processesSetWithErrors:(id)errors
{
  v29[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading processes.plist", &v23, 2u);
  }

  v6 = getCSProcesses();
  v7 = v6;
  if (v6)
  {
    v8 = CSArrayForKey(v6, @"processes");
    if (v8)
    {
      v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
      if (v9)
      {
        v10 = v9;
        goto LABEL_18;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
      {
        [CSRestrictionDataProvider _processesSetWithErrors:];
      }

      v14 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA470];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create processes set from plist"];
      v29[0] = v15;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v29;
      v18 = &v28;
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
      {
        [CSRestrictionDataProvider _processesSetWithErrors:];
      }

      v14 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA470];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Processes array missing"];
      v27 = v15;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v27;
      v18 = &v26;
    }

    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v20 = [v14 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v19];

    [errorsCopy addObject:v20];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _processesSetWithErrors:];
    }

    v11 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Processes plist failure"];
    v25 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v8 = [v11 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v13];

    [errorsCopy addObject:v8];
  }

  v10 = 0;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_processesPoliciesDictWithErrors:(id)errors
{
  v22[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading process_policies.plist", &v18, 2u);
  }

  v6 = getCSProcessPolicies();
  v7 = v6;
  if (v6)
  {
    v8 = CSDictionaryForKey(v6, @"process_policies");
    if (v8)
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _processesPoliciesDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process Policies dictionary missing"];
    v22[0] = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v22;
    v13 = &v21;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _processesPoliciesDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exempt Processes plist failure"];
    v20 = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v20;
    v13 = &v19;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = [v9 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v14];

  [errorsCopy addObject:v15];
  v8 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isAKnownScenario:(id)scenario
{
  v3 = [(NSDictionary *)self->_scenarios objectForKey:scenario];
  v4 = v3 != 0;

  return v4;
}

- (id)_buildScenariosMap
{
  v16 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_scenarios;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [dictionary setObject:*(*(&v11 + 1) + 8 * i) forKeyedSubscript:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_scenariosDictWithErrors:(id)errors
{
  v22[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading scenarios.plist", &v18, 2u);
  }

  v6 = getCSScenarios();
  v7 = v6;
  if (v6)
  {
    v8 = CSDictionaryForKey(v6, @"scenarios");
    if (v8)
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _scenariosDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scenarios dictionary missing"];
    v22[0] = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v22;
    v13 = &v21;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
    {
      [CSRestrictionDataProvider _scenariosDictWithErrors:];
    }

    v9 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scenarios plist failure"];
    v20 = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v20;
    v13 = &v19;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = [v9 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v14];

  [errorsCopy addObject:v15];
  v8 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)configureRestrictionsFromTemplateDictionary:(id)dictionary errors:(id)errors
{
  v59 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  errorsCopy = errors;
  v33 = objc_alloc_init(CSScenarioRestrictionsAttributesTemplate);
  array = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = dictionaryCopy;
  v8 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    v37 = *MEMORY[0x277CCA470];
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:@"RestrictionType"];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [CSRestrictionFactory restrictionForClass:v13 withProperties:v12 errors:errorsCopy];
              if (v14)
              {
                v15 = array;
                goto LABEL_21;
              }

              logger = self->_logger;
              if (os_log_type_enabled(logger, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v51 = v12;
                _os_log_fault_impl(&dword_243DC3000, logger, OS_LOG_TYPE_FAULT, "Could not create restriction with properties: %@", buf, 0xCu);
              }

              v26 = MEMORY[0x277CCA9B8];
              v48 = v37;
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create restriction with properties: %@.", v12];
              v49 = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
              v29 = [v26 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:3 userInfo:v28];

              [errorsCopy addObject:v29];
              self = selfCopy;
LABEL_22:

              goto LABEL_23;
            }

            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
            {
              [CSRestrictionDataProvider configureRestrictionsFromTemplateDictionary:v39 errors:?];
            }

            v24 = MEMORY[0x277CCA9B8];
            v52 = v37;
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected string value type for key RestrictionType."];
            v53 = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
            v22 = v24;
            v23 = 2;
          }

          else
          {
            if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
            {
              [CSRestrictionDataProvider configureRestrictionsFromTemplateDictionary:v41 errors:?];
            }

            v19 = MEMORY[0x277CCA9B8];
            v54 = v37;
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"RestrictionType not found in ScenarioDescription dictionary."];
            v55 = v20;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            v22 = v19;
            v23 = 1;
          }

          v14 = [v22 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:v23 userInfo:v21];

          v15 = errorsCopy;
LABEL_21:
          [v15 addObject:v14];
          goto LABEL_22;
        }

        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_FAULT))
        {
          [CSRestrictionDataProvider configureRestrictionsFromTemplateDictionary:v43 errors:?];
        }

        v16 = MEMORY[0x277CCA9B8];
        v56 = v37;
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScenarioDescription is not a dictionary."];
        v57 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v13 = [v16 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:2 userInfo:v18];

        [errorsCopy addObject:v13];
LABEL_23:

        ++v11;
      }

      while (v9 != v11);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
      v9 = v30;
    }

    while (v30);
  }

  [(CSScenarioRestrictionsAttributesTemplate *)v33 setRestrictions:array];
  v31 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_templatesByScenarioForProcess:(id)process errors:(id)errors
{
  v80 = *MEMORY[0x277D85DE8];
  processCopy = process;
  errorsCopy = errors;
  [MEMORY[0x277CBEB38] dictionary];
  v56 = v55 = processCopy;
  v8 = getCSProcessRestrictions(processCopy);
  v9 = v8;
  if (v8)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0x277CCA000uLL;
      v13 = *v63;
      v57 = *MEMORY[0x277CCA470];
      v51 = *v63;
      v52 = v9;
      do
      {
        v14 = 0;
        v53 = v11;
        do
        {
          if (*v63 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v62 + 1) + 8 * v14);
          objc_opt_class();
          v54 = v14;
          if (objc_opt_isKindOfClass())
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v58 objects:v76 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v59;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v59 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v58 + 1) + 8 * i);
                  v22 = *(v12 + 3240);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v23 = [(NSDictionary *)self->_scenariosMap objectForKeyedSubscript:v21];
                    logger = self->_logger;
                    if (v23)
                    {
                      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412546;
                        v71 = v23;
                        v72 = 2112;
                        v73 = v55;
                        _os_log_debug_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEBUG, "Reading restrictions for scenario: %@ for process: %@", buf, 0x16u);
                      }

                      v25 = CSArrayForKeyWithErrors(v16, v23, errorsCopy);
                      if (v25)
                      {
                        v26 = [(CSRestrictionDataProvider *)self configureRestrictionsFromTemplateDictionary:v25 errors:errorsCopy];
                        [v56 setObject:v26 forKeyedSubscript:v23];
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v71 = 0;
                        v72 = 2114;
                        v73 = v55;
                        _os_log_error_impl(&dword_243DC3000, logger, OS_LOG_TYPE_ERROR, "Unknown scenario: %{public}@ found in: %{public}@", buf, 0x16u);
                      }

                      v31 = MEMORY[0x277CCA9B8];
                      v68 = v57;
                      v32 = [*(v12 + 3240) stringWithFormat:@"Scenario %@ not known", 0];
                      v69 = v32;
                      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
                      v25 = [v31 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:4 userInfo:v33];

                      v12 = 0x277CCA000;
                      [errorsCopy addObject:v25];
                    }
                  }

                  else
                  {
                    v27 = self->_logger;
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v71 = v55;
                      _os_log_fault_impl(&dword_243DC3000, v27, OS_LOG_TYPE_FAULT, "Expected string value type for scenario name for process: %@", buf, 0xCu);
                    }

                    v28 = MEMORY[0x277CCA9B8];
                    v74 = v57;
                    v29 = [*(v12 + 3240) stringWithFormat:@"Expected string value type for scenario name"];
                    v75 = v29;
                    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                    v23 = [v28 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:2 userInfo:v30];

                    v12 = 0x277CCA000;
                    [errorsCopy addObject:v23];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v58 objects:v76 count:16];
              }

              while (v18);
              v9 = v52;
              v11 = v53;
              v13 = v51;
            }
          }

          else
          {
            v34 = self->_logger;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v71 = v55;
              _os_log_fault_impl(&dword_243DC3000, v34, OS_LOG_TYPE_FAULT, "Expected dictionary value type for scenario items for process: %@", buf, 0xCu);
            }

            v35 = MEMORY[0x277CCA9B8];
            v77 = v57;
            v36 = [*(v12 + 3240) stringWithFormat:@"Expected dictionary value type for scenario items"];
            v78 = v36;
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v16 = [v35 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:2 userInfo:v37];

            [errorsCopy addObject:v16];
          }

          v14 = v54 + 1;
        }

        while (v54 + 1 != v11);
        v11 = [v9 countByEnumeratingWithState:&v62 objects:v79 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v38 = self->_logger;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [(CSRestrictionDataProvider *)processCopy _templatesByScenarioForProcess:v38 errors:v39, v40, v41, v42, v43, v44];
    }

    v45 = MEMORY[0x277CCA9B8];
    v66 = *MEMORY[0x277CCA470];
    processCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Restrictions plist failure for process: %@", processCopy];
    v67 = processCopy;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v48 = [v45 errorWithDomain:@"CSRestrictionDataProviderErrorDomain" code:1 userInfo:v47];

    [errorsCopy addObject:v48];
  }

  v49 = *MEMORY[0x277D85DE8];

  return v56;
}

- (void)_templatesByProcessWithErrors:(id)errors
{
  v36 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, "Loading Processes, ExemptProcesses, Scenarios and Restrictions", buf, 2u);
  }

  v7 = [(CSRestrictionDataProvider *)self _processesSetWithErrors:errorsCopy];
  processes = self->_processes;
  self->_processes = v7;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:?];
  }

  v9 = [(CSRestrictionDataProvider *)self _processesPoliciesDictWithErrors:errorsCopy];
  processPolicies = self->_processPolicies;
  self->_processPolicies = v9;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:?];
  }

  v11 = [(CSRestrictionDataProvider *)self _bandRestrictionsSetForThreshold:95 withErrors:errorsCopy];
  band95Processes = self->_band95Processes;
  self->_band95Processes = v11;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:?];
  }

  v13 = [(CSRestrictionDataProvider *)self _bandRestrictionsSetForThreshold:80 withErrors:errorsCopy];
  band80Processes = self->_band80Processes;
  self->_band80Processes = v13;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:?];
  }

  v15 = [(CSRestrictionDataProvider *)self _scenariosDictWithErrors:errorsCopy];
  scenarios = self->_scenarios;
  self->_scenarios = v15;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSRestrictionDataProvider _templatesByProcessWithErrors:?];
  }

  _buildScenariosMap = [(CSRestrictionDataProvider *)self _buildScenariosMap];
  scenariosMap = self->_scenariosMap;
  self->_scenariosMap = _buildScenariosMap;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = self->_processes;
  v20 = [(NSSet *)v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        v25 = [(CSRestrictionDataProvider *)self _templatesByScenarioForProcess:v24 errors:errorsCopy, v30];
        [(NSMutableDictionary *)dictionary setObject:v25 forKeyedSubscript:v24];
      }

      v21 = [(NSSet *)v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v21);
  }

  restrictionsByProcessForScenario = self->_restrictionsByProcessForScenario;
  self->_restrictionsByProcessForScenario = dictionary;
  v27 = dictionary;

  v28 = self->_scenariosMap;
  self->_scenariosMap = 0;

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_bandRestrictionsSetForThreshold:(uint64_t)a3 withErrors:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(&dword_243DC3000, a2, a3, "_bandRestrictionsSetForThreshold: Could not create band (%d) process set from plist", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_bandRestrictionsSetForThreshold:(uint64_t)a3 withErrors:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(&dword_243DC3000, a2, a3, "_bandRestrictionsSetForThreshold: Unknown threshold of %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_bandRestrictionsSetForThreshold:(uint64_t)a3 withErrors:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0(&dword_243DC3000, a2, a3, "_bandRestrictionsSetForThreshold: Band (%d) Processes array missing", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_templatesByScenarioForProcess:(uint64_t)a3 errors:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, a2, a3, "Restrictions plist failure for process: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_templatesByProcessWithErrors:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v1, v2, "processesSet: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_templatesByProcessWithErrors:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v1, v2, "processesPolicies: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_templatesByProcessWithErrors:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v1, v2, "Band95Process: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_templatesByProcessWithErrors:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v1, v2, "Band80Process: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_templatesByProcessWithErrors:(uint64_t *)a1 .cold.5(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2(&dword_243DC3000, v1, v2, "scenariosSet: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end