@interface CSContextStore
+ (CSContextStore)sharedInstance;
- (BOOL)satisfiesCriteriaForScenario:(id)a3;
- (id)_init;
- (void)updateState:(id)a3 forIdentifier:(id)a4;
- (void)updateState:(id)a3 forIdentifier:(id)a4 withRestrictions:(id)a5;
@end

@implementation CSContextStore

+ (CSContextStore)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CSContextStore sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_3;

  return v3;
}

uint64_t __32__CSContextStore_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_3 = [[CSContextStore alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = CSContextStore;
  v2 = [(CSContextStore *)&v13 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSContextStore"];
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    currentContext = v2->_currentContext;
    v2->_currentContext = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    currentContextDate = v2->_currentContextDate;
    v2->_currentContextDate = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    currentAffectedRestrictionsForContext = v2->_currentAffectedRestrictionsForContext;
    v2->_currentAffectedRestrictionsForContext = v9;

    v11 = v2;
  }

  return v2;
}

- (BOOL)satisfiesCriteriaForScenario:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 scenarioCriteria];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v41 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_currentContext objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [v5 objectForKeyedSubscript:v10];
          v14 = [v12 isEqualToNumber:v13];

          if (v14)
          {
            continue;
          }
        }

        v30 = 0;
        goto LABEL_24;
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [v4 setRestrictionsByProcess:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v33 = v5;
    v18 = *v35;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * j);
        v21 = [(NSMutableDictionary *)self->_currentAffectedRestrictionsForContext objectForKeyedSubscript:v20];
        if (v21)
        {
          v22 = v21;
          v23 = [(NSMutableDictionary *)self->_currentAffectedRestrictionsForContext objectForKeyedSubscript:v20];
          v24 = [v23 count];

          if (v24)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
            {
              currentAffectedRestrictionsForContext = self->_currentAffectedRestrictionsForContext;
              v28 = logger;
              v29 = [(NSMutableDictionary *)currentAffectedRestrictionsForContext objectForKeyedSubscript:v20];
              *buf = 138412546;
              v43 = v4;
              v44 = 2112;
              v45 = v29;
              _os_log_debug_impl(&dword_243DC3000, v28, OS_LOG_TYPE_DEBUG, "scenario: %@, set restrictions:%@", buf, 0x16u);
            }

            v26 = [(NSMutableDictionary *)self->_currentAffectedRestrictionsForContext objectForKeyedSubscript:v20];
            [v4 setRestrictionsByProcess:v26];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v17);
    v30 = 1;
    v5 = v33;
  }

  else
  {
    v30 = 1;
  }

LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)updateState:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_currentContext objectForKey:v7];

  v9 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
  if (v8 == v6)
  {
    if (v9)
    {
      [CSContextStore updateState:forIdentifier:];
    }
  }

  else
  {
    if (v9)
    {
      [CSContextStore updateState:forIdentifier:];
    }

    [(NSMutableDictionary *)self->_currentContext setValue:v6 forKey:v7];
    currentContextDate = self->_currentContextDate;
    v11 = [MEMORY[0x277CBEAA8] date];
    [(NSMutableDictionary *)currentContextDate setValue:v11 forKey:v7];
  }
}

- (void)updateState:(id)a3 forIdentifier:(id)a4 withRestrictions:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(CSContextStore *)self updateState:a3 forIdentifier:v8];
  v10 = [(NSMutableDictionary *)self->_currentAffectedRestrictionsForContext objectForKey:v8];

  v11 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG);
  if (v10 == v9)
  {
    if (v11)
    {
      [CSContextStore updateState:forIdentifier:withRestrictions:];
    }
  }

  else
  {
    if (v11)
    {
      [CSContextStore updateState:forIdentifier:withRestrictions:];
    }

    [(NSMutableDictionary *)self->_currentAffectedRestrictionsForContext setValue:v9 forKey:v8];
  }
}

- (void)updateState:forIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "Value for contextIdentifier:%@ updated to %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateState:forIdentifier:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "Value for contextIdentifier:%@ was already set to %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateState:forIdentifier:withRestrictions:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "AffectedProcesses for contextIdentifier:%@ updated to %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateState:forIdentifier:withRestrictions:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_243DC3000, v0, v1, "AffectedProcesses for contextIdentifier:%@ was already set to %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end