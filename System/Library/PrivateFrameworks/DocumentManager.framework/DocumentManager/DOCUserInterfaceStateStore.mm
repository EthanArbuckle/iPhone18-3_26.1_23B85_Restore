@interface DOCUserInterfaceStateStore
+ (DOCUserInterfaceStateStore)sharedStore;
- (DOCUserInterfaceStateStore)init;
- (id)_loadUserInterfaceStateFromDefaultsForConfiguration:(id)configuration;
- (id)_mostRecentInterfaceStateForConfiguration:(id)configuration;
- (id)docUserDefaults;
- (id)interfaceStateForConfiguration:(id)configuration;
- (void)_pruneOldState;
- (void)_writeMostRecentUserInterfaceStateToDefaultsForConfiguration:(id)configuration;
- (void)_writeUserInterfaceStateToDefaultsForConfiguration:(id)configuration;
- (void)purgeApplicationStateExcludingIdentifiers:(id)identifiers configuration:(id)configuration;
- (void)purgeApplicationStateForIdentifiers:(id)identifiers configuration:(id)configuration;
- (void)purgeStateForConfiguration:(id)configuration;
- (void)updateInterfaceState:(id)state forConfiguration:(id)configuration;
@end

@implementation DOCUserInterfaceStateStore

+ (DOCUserInterfaceStateStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[DOCUserInterfaceStateStore sharedStore];
  }

  v3 = sharedStore_sharedManager;

  return v3;
}

uint64_t __41__DOCUserInterfaceStateStore_sharedStore__block_invoke()
{
  sharedStore_sharedManager = objc_alloc_init(DOCUserInterfaceStateStore);

  return MEMORY[0x1EEE66BB8]();
}

- (DOCUserInterfaceStateStore)init
{
  v7.receiver = self;
  v7.super_class = DOCUserInterfaceStateStore;
  v2 = [(DOCUserInterfaceStateStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    uiStateMap = v2->_uiStateMap;
    v2->_uiStateMap = 0;
  }

  mEMORY[0x1E699A400] = [MEMORY[0x1E699A400] shared];
  [mEMORY[0x1E699A400] performAfterLaunch:&__block_literal_global_3];

  return v3;
}

- (id)docUserDefaults
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E699A360]];

  return v3;
}

- (void)_pruneOldState
{
  v2 = *self;
  v3 = a2;
  [v2 count];
  [OUTLINED_FUNCTION_7() count];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);
}

- (id)interfaceStateForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  stateIdentifier = [configurationCopy stateIdentifier];
  v6 = stateIdentifier;
  v7 = 0;
  v8 = MEMORY[0x1E699A470];
  if (configurationCopy && stateIdentifier)
  {
    uiStateMap = self->_uiStateMap;
    if (!uiStateMap)
    {
      v10 = [(DOCUserInterfaceStateStore *)self _loadUserInterfaceStateFromDefaultsForConfiguration:configurationCopy];
      v11 = self->_uiStateMap;
      self->_uiStateMap = v10;

      uiStateMap = self->_uiStateMap;
    }

    stateIdentifier2 = [configurationCopy stateIdentifier];
    v7 = [(NSMutableDictionary *)uiStateMap objectForKey:stateIdentifier2];

    if (v7)
    {
      v13 = *v8;
      if (!*v8)
      {
        DOCInitLogging();
        v13 = *v8;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [DOCUserInterfaceStateStore interfaceStateForConfiguration:v13];
      }
    }

    else
    {
      v14 = [(DOCUserInterfaceStateStore *)self _mostRecentInterfaceStateForConfiguration:configurationCopy];
      v7 = [v14 copy];

      if (v7)
      {
        [(NSMutableDictionary *)self->_uiStateMap setObject:v7 forKey:v6];
        v15 = *v8;
        if (!*v8)
        {
          DOCInitLogging();
          v15 = *v8;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [DOCUserInterfaceStateStore interfaceStateForConfiguration:v15];
        }
      }

      v16 = *v8;
      if (!*v8)
      {
        DOCInitLogging();
        v16 = *v8;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(DOCUserInterfaceStateStore *)v16 interfaceStateForConfiguration:configurationCopy];
        if (v7)
        {
          goto LABEL_24;
        }
      }

      else if (v7)
      {
        goto LABEL_24;
      }

      v17 = *v8;
      if (!*v8)
      {
        DOCInitLogging();
        v17 = *v8;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [DOCUserInterfaceStateStore interfaceStateForConfiguration:v17];
      }

      v7 = [MEMORY[0x1E699A440] stateWithDefaultSettingsForConfiguration:configurationCopy];
      [(NSMutableDictionary *)self->_uiStateMap setObject:v7 forKey:v6];
    }
  }

LABEL_24:
  v18 = *v8;
  if (!*v8)
  {
    DOCInitLogging();
    v18 = *v8;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [DOCUserInterfaceStateStore interfaceStateForConfiguration:];
  }

  return v7;
}

- (id)_mostRecentInterfaceStateForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  docUserDefaults = [(DOCUserInterfaceStateStore *)self docUserDefaults];
  v6 = [docUserDefaults doc_roleSpecificKeyForKey:@"DOCUserDefaultsMostRecentSceneState" configuration:configurationCopy];
  v7 = [docUserDefaults objectForKey:v6];
  if (v7)
  {
    v23 = 0;
    v8 = [MEMORY[0x1E699A440] unarchivedFromData:v7 configuration:configurationCopy error:&v23];
    v9 = v23;
    v10 = MEMORY[0x1E699A470];
    v11 = *MEMORY[0x1E699A470];
    if (v8)
    {
      if (!v11)
      {
        DOCInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DOCUserInterfaceStateStore _mostRecentInterfaceStateForConfiguration:v11];
      }

      v12 = v8;
    }

    else
    {
      if (!v11)
      {
        DOCInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DOCUserInterfaceStateStore _mostRecentInterfaceStateForConfiguration:];
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E699A470];
    v14 = *MEMORY[0x1E699A470];
    if (!*MEMORY[0x1E699A470])
    {
      DOCInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(DOCUserInterfaceStateStore *)v14 _mostRecentInterfaceStateForConfiguration:v15, v16, v17, v18, v19, v20, v21];
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateInterfaceState:(id)state forConfiguration:(id)configuration
{
  stateCopy = state;
  configurationCopy = configuration;
  v8 = MEMORY[0x1E699A470];
  v9 = *MEMORY[0x1E699A470];
  if (!*MEMORY[0x1E699A470])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [DOCUserInterfaceStateStore updateInterfaceState:v9 forConfiguration:configurationCopy];
  }

  [stateCopy bumpLastUpdatedDate];
  [(DOCUserInterfaceStateStore *)self _writeUserInterfaceStateToDefaultsForConfiguration:configurationCopy];
  [(DOCUserInterfaceStateStore *)self _writeMostRecentUserInterfaceStateToDefaultsForConfiguration:configurationCopy];
}

- (void)purgeStateForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  stateIdentifier = [configurationCopy stateIdentifier];
  if (stateIdentifier)
  {
    v6 = MEMORY[0x1E699A470];
    v7 = *MEMORY[0x1E699A470];
    if (!*MEMORY[0x1E699A470])
    {
      DOCInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DOCUserInterfaceStateStore purgeStateForConfiguration:];
    }

    [(NSMutableDictionary *)self->_uiStateMap removeObjectForKey:stateIdentifier];
  }

  [(DOCUserInterfaceStateStore *)self _writeUserInterfaceStateToDefaultsForConfiguration:configurationCopy];
}

- (void)purgeApplicationStateForIdentifiers:(id)identifiers configuration:(id)configuration
{
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  v8 = MEMORY[0x1E699A470];
  v9 = *MEMORY[0x1E699A470];
  if (!*MEMORY[0x1E699A470])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [DOCUserInterfaceStateStore purgeApplicationStateForIdentifiers:configuration:];
  }

  [(NSMutableDictionary *)self->_uiStateMap removeObjectsForKeys:identifiersCopy];
  [(DOCUserInterfaceStateStore *)self _writeUserInterfaceStateToDefaultsForConfiguration:configurationCopy];
}

- (void)purgeApplicationStateExcludingIdentifiers:(id)identifiers configuration:(id)configuration
{
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  v8 = MEMORY[0x1E699A470];
  v9 = *MEMORY[0x1E699A470];
  if (!*MEMORY[0x1E699A470])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [DOCUserInterfaceStateStore purgeApplicationStateExcludingIdentifiers:configuration:];
  }

  v10 = MEMORY[0x1E695DFA8];
  allKeys = [(NSMutableDictionary *)self->_uiStateMap allKeys];
  v12 = [v10 setWithArray:allKeys];

  v13 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
  [v12 minusSet:v13];

  v14 = *v8;
  if (!*v8)
  {
    DOCInitLogging();
    v14 = *v8;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [DOCUserInterfaceStateStore purgeApplicationStateExcludingIdentifiers:configuration:];
  }

  allObjects = [v12 allObjects];
  [(DOCUserInterfaceStateStore *)self purgeApplicationStateForIdentifiers:allObjects configuration:configurationCopy];
}

- (id)_loadUserInterfaceStateFromDefaultsForConfiguration:(id)configuration
{
  v49 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  docUserDefaults = [(DOCUserInterfaceStateStore *)self docUserDefaults];
  v6 = configurationCopy;
  v7 = [docUserDefaults doc_roleSpecificKeyForKey:@"DOCUserDefaultsSceneState" configuration:configurationCopy];
  v8 = [docUserDefaults objectForKey:v7];
  v9 = MEMORY[0x1E699A470];
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    classForKeyedUnarchiver = [MEMORY[0x1E695DF20] classForKeyedUnarchiver];
    v12 = objc_opt_class();
    v13 = [v10 initWithObjects:{classForKeyedUnarchiver, v12, objc_opt_class(), 0}];
    v41 = 0;
    v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v13 fromData:v8 error:&v41];
    v15 = v41;
    v16 = v15;
    if (v14)
    {
      v29 = v15;
      v30 = v13;
      v31 = v8;
      v32 = v7;
      v33 = docUserDefaults;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = [v14 allKeys];
      v17 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v37 + 1) + 8 * i);
            v22 = [v14 objectForKey:v21];
            v36 = 0;
            v23 = [MEMORY[0x1E699A440] unarchivedFromData:v22 configuration:v6 error:&v36];
            v24 = v36;
            v25 = *MEMORY[0x1E699A470];
            if (v23)
            {
              if (!v25)
              {
                DOCInitLogging();
                v25 = *MEMORY[0x1E699A470];
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v43 = "[DOCUserInterfaceStateStore _loadUserInterfaceStateFromDefaultsForConfiguration:]";
                v44 = 2112;
                v45 = v21;
                v46 = 2112;
                v47 = v24;
                _os_log_error_impl(&dword_1E57D8000, v25, OS_LOG_TYPE_ERROR, "%s: Unarchived state for id: %@ error: %@", buf, 0x20u);
              }

              [dictionary setObject:v23 forKey:v21];
            }

            else
            {
              if (!v25)
              {
                DOCInitLogging();
                v25 = *MEMORY[0x1E699A470];
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v43 = "[DOCUserInterfaceStateStore _loadUserInterfaceStateFromDefaultsForConfiguration:]";
                v44 = 2112;
                v45 = v21;
                v46 = 2112;
                v47 = v24;
                _os_log_error_impl(&dword_1E57D8000, v25, OS_LOG_TYPE_ERROR, "%s: Unable to unarchive state for id: %@ error: %@", buf, 0x20u);
              }
            }
          }

          v18 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
        }

        while (v18);
      }

      v7 = v32;
      docUserDefaults = v33;
      v13 = v30;
      v8 = v31;
      v9 = MEMORY[0x1E699A470];
      v16 = v29;
    }

    else
    {
      v26 = *v9;
      if (!*v9)
      {
        DOCInitLogging();
        v26 = *v9;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [DOCUserInterfaceStateStore _loadUserInterfaceStateFromDefaultsForConfiguration:];
      }
    }
  }

  v27 = *v9;
  if (!*v9)
  {
    DOCInitLogging();
    v27 = *v9;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [(DOCUserInterfaceStateStore *)v27 _loadUserInterfaceStateFromDefaultsForConfiguration:dictionary];
  }

  return dictionary;
}

- (void)_writeUserInterfaceStateToDefaultsForConfiguration:(id)configuration
{
  v37 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  [(DOCUserInterfaceStateStore *)self _pruneOldState];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(NSMutableDictionary *)self->_uiStateMap allKeys];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  v5 = MEMORY[0x1E699A470];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_uiStateMap valueForKey:v9];
        v25 = 0;
        v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v25];
        v12 = v25;
        v13 = v5;
        v14 = *v5;
        if (v11)
        {
          if (!v14)
          {
            DOCInitLogging();
            v14 = *v13;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v31 = "[DOCUserInterfaceStateStore _writeUserInterfaceStateToDefaultsForConfiguration:]";
            v32 = 2112;
            v33 = v9;
            _os_log_error_impl(&dword_1E57D8000, v14, OS_LOG_TYPE_ERROR, "%s: Encoded state to archive for id: %@", buf, 0x16u);
          }

          [dictionary setValue:v11 forKey:v9];
        }

        else
        {
          if (!v14)
          {
            DOCInitLogging();
            v14 = *v13;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "[DOCUserInterfaceStateStore _writeUserInterfaceStateToDefaultsForConfiguration:]";
            v32 = 2112;
            v33 = v9;
            v34 = 2112;
            v35 = v12;
            _os_log_error_impl(&dword_1E57D8000, v14, OS_LOG_TYPE_ERROR, "%s: Unable to archive state for id: %@. Error: %@", buf, 0x20u);
          }
        }

        v5 = v13;
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v6);
  }

  if ([dictionary count])
  {
    v24 = 0;
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v24];
    v16 = v24;
    v17 = v16;
    if (!v15 || v16)
    {
      v18 = *v5;
      if (!*v5)
      {
        DOCInitLogging();
        v18 = *v5;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [DOCUserInterfaceStateStore _writeUserInterfaceStateToDefaultsForConfiguration:];
      }
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  docUserDefaults = [(DOCUserInterfaceStateStore *)self docUserDefaults];
  v20 = *v5;
  if (!*v5)
  {
    DOCInitLogging();
    v20 = *v5;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [(DOCUserInterfaceStateStore *)v20 _writeUserInterfaceStateToDefaultsForConfiguration:dictionary];
  }

  [docUserDefaults doc_setObject:v15 forRoleKey:@"DOCUserDefaultsSceneState" configuation:configurationCopy];
}

- (void)_writeMostRecentUserInterfaceStateToDefaultsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _sortedInterfaceStateKeys = [(DOCUserInterfaceStateStore *)self _sortedInterfaceStateKeys];
  if (![_sortedInterfaceStateKeys count])
  {
    firstObject = 0;
    goto LABEL_9;
  }

  firstObject = [_sortedInterfaceStateKeys firstObject];
  docUserDefaults = [(NSMutableDictionary *)self->_uiStateMap valueForKey:firstObject];
  v8 = MEMORY[0x1E699A470];
  v9 = *MEMORY[0x1E699A470];
  if (!*MEMORY[0x1E699A470])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(DOCUserInterfaceStateStore *)firstObject _writeMostRecentUserInterfaceStateToDefaultsForConfiguration:v9, docUserDefaults];
  }

  v14 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:docUserDefaults requiringSecureCoding:1 error:&v14];
  v11 = v14;
  v12 = v11;
  if (v10)
  {

    firstObject = v10;
LABEL_9:
    docUserDefaults = [(DOCUserInterfaceStateStore *)self docUserDefaults];
    [docUserDefaults doc_setObject:firstObject forRoleKey:@"DOCUserDefaultsMostRecentSceneState" configuation:configurationCopy];
    goto LABEL_15;
  }

  v13 = *v8;
  if (!*v8)
  {
    DOCInitLogging();
    v13 = *v8;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [DOCUserInterfaceStateStore _writeMostRecentUserInterfaceStateToDefaultsForConfiguration:];
  }

LABEL_15:
}

uint64_t __55__DOCUserInterfaceStateStore__sortedInterfaceStateKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastUpdatedDate];
  v6 = [v4 lastUpdatedDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)interfaceStateForConfiguration:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() stateIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)interfaceStateForConfiguration:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[DOCUserInterfaceStateStore interfaceStateForConfiguration:]";
  _os_log_debug_impl(&dword_1E57D8000, log, OS_LOG_TYPE_DEBUG, "%s: interfaceStateForConfiguration: Falling Back to Most Recent", &v1, 0xCu);
}

- (void)interfaceStateForConfiguration:(void *)a1 .cold.3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 stateIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)interfaceStateForConfiguration:(void *)a1 .cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() stateIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)interfaceStateForConfiguration:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_1E57D8000, v2, OS_LOG_TYPE_DEBUG, "%s: interfaceStateForConfiguration: identifier: %@ state: %@", v3, 0x20u);
}

- (void)_mostRecentInterfaceStateForConfiguration:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() lastUpdatedDate];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1E57D8000, v1, OS_LOG_TYPE_ERROR, "%s: unarchived most recent interface state with last updated date of: %@ ", v4, 0x16u);
}

- (void)updateInterfaceState:(void *)a1 forConfiguration:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 stateIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_loadUserInterfaceStateFromDefaultsForConfiguration:(void *)a1 .cold.2(void *a1, void *a2)
{
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_7() allKeys];
  [v5 count];
  v6 = [a2 allKeys];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

- (void)_writeUserInterfaceStateToDefaultsForConfiguration:(void *)a1 .cold.2(void *a1, void *a2)
{
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_7() allKeys];
  [v5 count];
  v6 = [a2 allKeys];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
}

- (void)_writeMostRecentUserInterfaceStateToDefaultsForConfiguration:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 lastUpdatedDate];
  v7 = 136315650;
  v8 = "[DOCUserInterfaceStateStore _writeMostRecentUserInterfaceStateToDefaultsForConfiguration:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_1E57D8000, v5, OS_LOG_TYPE_ERROR, "%s: writing most recent UI state with state from archive state from id: %@ lastUpdatedDate: %@", &v7, 0x20u);
}

- (void)_writeMostRecentUserInterfaceStateToDefaultsForConfiguration:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_1E57D8000, v2, OS_LOG_TYPE_ERROR, "%s: Unable to archive state for id: %@. Error: %@", v3, 0x20u);
}

@end