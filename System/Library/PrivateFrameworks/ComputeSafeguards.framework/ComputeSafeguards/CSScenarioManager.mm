@interface CSScenarioManager
+ (CSScenarioManager)sharedInstance;
- (id)_init;
- (id)restrictionsForScenario:(id)scenario;
- (void)_addContextStoreObserverForIdentifier:(id)identifier;
- (void)evaluateScenarios:(id)scenarios;
- (void)evaluateScenariosPostInit;
- (void)notifyObserversOfActiveScenarios:(id)scenarios previousScenarios:(id)previousScenarios;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerScenario:(id)scenario;
@end

@implementation CSScenarioManager

+ (CSScenarioManager)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[CSScenarioManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_2;

  return v3;
}

uint64_t __35__CSScenarioManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_2 = [[CSScenarioManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v19.receiver = self;
  v19.super_class = CSScenarioManager;
  v2 = [(CSScenarioManager *)&v19 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSScenarioManager"];
    logger = v2->_logger;
    v2->_logger = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    allScenariosByIdentifier = v2->_allScenariosByIdentifier;
    v2->_allScenariosByIdentifier = dictionary;

    v7 = [MEMORY[0x277CBEB58] set];
    activeScenarios = v2->_activeScenarios;
    v2->_activeScenarios = v7;

    v9 = [MEMORY[0x277CBEB98] set];
    activeScenariosLastEvaluation = v2->_activeScenariosLastEvaluation;
    v2->_activeScenariosLastEvaluation = v9;

    v11 = [MEMORY[0x277CBEB98] set];
    activeScenariosLastPublished = v2->_activeScenariosLastPublished;
    v2->_activeScenariosLastPublished = v11;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    affectedScenarioByContextIdentifier = v2->_affectedScenarioByContextIdentifier;
    v2->_affectedScenarioByContextIdentifier = dictionary2;

    v15 = [MEMORY[0x277CBEB58] set];
    observers = v2->_observers;
    v2->_observers = v15;

    v17 = v2;
  }

  return v2;
}

- (void)registerScenario:(id)scenario
{
  v30 = *MEMORY[0x277D85DE8];
  scenarioCopy = scenario;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [(CSScenarioManager *)logger registerScenario:scenarioCopy];
  }

  identifier = [scenarioCopy identifier];
  v7 = [(NSMutableDictionary *)self->_allScenariosByIdentifier objectForKey:identifier];

  if (v7)
  {
    v8 = self->_logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CSScenarioManager *)v8 registerScenario:scenarioCopy];
    }
  }

  [(NSMutableDictionary *)self->_allScenariosByIdentifier setObject:scenarioCopy forKeyedSubscript:identifier];
  v24 = scenarioCopy;
  scenarioCriteria = [scenarioCopy scenarioCriteria];
  allKeys = [scenarioCriteria allKeys];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = allKeys;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        affectedScenarioByContextIdentifier = [(CSScenarioManager *)self affectedScenarioByContextIdentifier];
        v18 = [affectedScenarioByContextIdentifier objectForKey:v16];

        if (!v18)
        {
          affectedScenarioByContextIdentifier2 = [(CSScenarioManager *)self affectedScenarioByContextIdentifier];
          v20 = [MEMORY[0x277CBEB58] set];
          [affectedScenarioByContextIdentifier2 setObject:v20 forKey:v16];

          [(CSScenarioManager *)self _addContextStoreObserverForIdentifier:v16];
        }

        affectedScenarioByContextIdentifier3 = [(CSScenarioManager *)self affectedScenarioByContextIdentifier];
        v22 = [affectedScenarioByContextIdentifier3 objectForKeyedSubscript:v16];
        [v22 addObject:identifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)evaluateScenariosPostInit
{
  v3 = dispatch_walltime(0, 5000000000);
  v4 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CSScenarioManager_evaluateScenariosPostInit__block_invoke;
  block[3] = &unk_278DF5230;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

void __46__CSScenarioManager_evaluateScenariosPostInit__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__CSScenarioManager_evaluateScenariosPostInit__block_invoke_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CBEB98];
  v5 = [v3 allScenariosByIdentifier];
  v6 = [v5 allKeys];
  v7 = [v4 setWithArray:v6];
  [v3 evaluateScenarios:v7];
}

- (void)_addContextStoreObserverForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CSContextStore sharedInstance];
  [v5 addObserver:self forContextIdentifier:identifierCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = pathCopy;
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSScenarioManager observeValueForKeyPath:ofObject:change:context:];
  }

  v13 = [(NSMutableDictionary *)self->_affectedScenarioByContextIdentifier objectForKeyedSubscript:v12];
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    [CSScenarioManager observeValueForKeyPath:ofObject:change:context:];
  }

  objc_initWeak(&location, self);
  v14 = getMainQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CSScenarioManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_278DF55E8;
  objc_copyWeak(&v18, &location);
  v17 = v13;
  v15 = v13;
  dispatch_async(v14, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __68__CSScenarioManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained evaluateScenarios:*(a1 + 32)];
}

- (void)evaluateScenarios:(id)scenarios
{
  v32 = *MEMORY[0x277D85DE8];
  scenariosCopy = scenarios;
  v5 = [(NSMutableSet *)self->_activeScenarios copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = scenariosCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_allScenariosByIdentifier objectForKeyedSubscript:v11, v21];
        v13 = +[CSContextStore sharedInstance];
        v14 = [v13 satisfiesCriteriaForScenario:v12];

        v15 = [v5 containsObject:v11];
        if (v14)
        {
          if ((v15 & 1) == 0)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
            {
              *buf = v21;
              v28 = v11;
              _os_log_debug_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEBUG, "Scenario:%@ is now active, was previously inactive", buf, 0xCu);
            }

            [(NSMutableSet *)self->_activeScenarios addObject:v11];
          }
        }

        else if (v15)
        {
          v17 = self->_logger;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v28 = v11;
            _os_log_debug_impl(&dword_243DC3000, v17, OS_LOG_TYPE_DEBUG, "Scenario:%@ is now inactive, was previously active", buf, 0xCu);
          }

          [(NSMutableSet *)self->_activeScenarios removeObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = self->_logger;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    activeScenarios = self->_activeScenarios;
    *buf = 138412546;
    v28 = activeScenarios;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_243DC3000, v18, OS_LOG_TYPE_INFO, "Active Scenarios: %@, Previous Scenarios: %@", buf, 0x16u);
  }

  [(CSScenarioManager *)self notifyObserversOfActiveScenarios:self->_activeScenarios previousScenarios:v5];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfActiveScenarios:(id)scenarios previousScenarios:(id)previousScenarios
{
  v19 = *MEMORY[0x277D85DE8];
  scenariosCopy = scenarios;
  previousScenariosCopy = previousScenarios;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) currentActiveScenarios:scenariosCopy previousActiveScenarios:{previousScenariosCopy, v14}];
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)restrictionsForScenario:(id)scenario
{
  v3 = [(CSScenarioManager *)self scenarioForIdentifier:scenario];
  restrictionsByProcess = [v3 restrictionsByProcess];

  return restrictionsByProcess;
}

- (void)registerScenario:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_243DC3000, v3, OS_LOG_TYPE_DEBUG, "Registering Scenario: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)registerScenario:(void *)a1 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_243DC3000, v3, OS_LOG_TYPE_ERROR, "Scenario: %@ already exists in allScenarios. Replacing.", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_243DC3000, v0, OS_LOG_TYPE_DEBUG, "State for ContextKey: %@ has changed", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_243DC3000, v1, OS_LOG_TYPE_DEBUG, "Scenarios:%@ need to be re-evaluated as they are affected by changed to ContextKey: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end