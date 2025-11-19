@interface DEDPersistence
+ (id)sharedInstance;
- (BOOL)canProceedWithDevice:(id)a3;
- (DEDPersistence)init;
- (id)_indexKeyForBugSession:(id)a3;
- (id)bugSessionIdentifiers;
- (id)loadSavedBugSessions;
- (id)loadSavedSessionsFromPlist:(id)a3;
- (void)loadSavedBugSessions;
- (void)removeBugSession:(id)a3;
- (void)updateBugSession:(id)a3;
- (void)validateSandboxAccess;
@end

@implementation DEDPersistence

+ (id)sharedInstance
{
  if (sharedInstance_once_3 != -1)
  {
    +[DEDPersistence sharedInstance];
  }

  v3 = sharedInstance_shared_2;

  return v3;
}

uint64_t __32__DEDPersistence_sharedInstance__block_invoke()
{
  sharedInstance_shared_2 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canProceedWithDevice:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[DEDUtils isInternalInstall])
  {
    v5 = [(DEDPersistence *)self userDefaults];
    v6 = [v5 objectForKey:@"blockDevice"];

    if (v6)
    {
      v7 = [v4 hashingKey];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(DEDPersistence *)self log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = v7;
          _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "should not proceed with device [%{public}@]", &v12, 0xCu);
        }

        v9 = 0;
        goto LABEL_10;
      }
    }

    v9 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (DEDPersistence)init
{
  v8.receiver = self;
  v8.super_class = DEDPersistence;
  v2 = [(DEDPersistence *)&v8 init];
  if (v2)
  {
    v3 = +[DEDConfiguration sharedInstance];
    v4 = os_log_create([v3 loggingSubsystem], "ded-persist");
    [(DEDPersistence *)v2 setLog:v4];

    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v5;
  }

  return v2;
}

- (id)loadSavedSessionsFromPlist:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a3];
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 objectForKey:@"sessionIdentifiers"];
  v7 = [v5 setWithArray:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v31;
    *&v12 = 138543362;
    v26 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [(DEDPersistence *)self _indexKeyForBugSessionIdentifier:*(*(&v30 + 1) + 8 * i), v26];
        v17 = [v4 objectForKey:v16];
        v18 = MEMORY[0x277CCAAC8];
        v19 = +[DEDBugSession archivedClasses];
        v29 = 0;
        v20 = [v18 unarchivedObjectOfClasses:v19 fromData:v17 error:&v29];
        v21 = v29;

        if (v21)
        {
          v22 = [(DEDPersistence *)self log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v35 = v21;
            _os_log_error_impl(&dword_248AD7000, v22, OS_LOG_TYPE_ERROR, "failed to load bug session from plist with error: [%{public}@]", buf, 0xCu);
          }
        }

        else
        {
          [v27 addObject:v20];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v27];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)loadSavedBugSessions
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(DEDPersistence *)self bugSessionIdentifiers];
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    *&v5 = 138543362;
    v20 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(DEDPersistence *)self _indexKeyForBugSessionIdentifier:*(*(&v26 + 1) + 8 * v8), v20];
        v10 = [(NSUserDefaults *)self->_userDefaults objectForKey:v9];
        v11 = MEMORY[0x277CCAAC8];
        v12 = +[DEDBugSession archivedClasses];
        v25 = 0;
        v13 = [v11 unarchivedObjectOfClasses:v12 fromData:v10 error:&v25];
        v14 = v25;

        if (v14)
        {
          v15 = [(DEDPersistence *)self log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v31 = v14;
            _os_log_error_impl(&dword_248AD7000, v15, OS_LOG_TYPE_ERROR, "Failed to load Bug Session from disk with error [%{public}@]", buf, 0xCu);
          }

LABEL_9:

          goto LABEL_12;
        }

        if (!v13)
        {
          v15 = [(DEDPersistence *)self log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [(DEDPersistence *)&v23 loadSavedBugSessions];
          }

          goto LABEL_9;
        }

        [v21 addObject:v13];
LABEL_12:

        ++v8;
      }

      while (v6 != v8);
      v16 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      v6 = v16;
    }

    while (v16);
  }

  v17 = [MEMORY[0x277CBEA60] arrayWithArray:v21];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)updateBugSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDPersistence *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDPersistence updateBugSession:v5];
  }

  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v7 = [(DEDPersistence *)self bugSessionIdentifiers];
  v8 = [v6 initWithSet:v7];

  v9 = [v4 identifier];
  [v8 addObject:v9];

  v10 = [(DEDPersistence *)self _indexKeyForBugSession:v4];
  v16 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v16];

  v12 = v16;
  if (v12)
  {
    v13 = [(DEDPersistence *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(DEDPersistence *)v12 updateBugSession:v13];
    }
  }

  userDefaults = self->_userDefaults;
  v15 = [v8 allObjects];
  [(NSUserDefaults *)userDefaults setObject:v15 forKey:@"sessionIdentifiers"];

  [(NSUserDefaults *)self->_userDefaults setObject:v11 forKey:v10];
}

- (void)removeBugSession:(id)a3
{
  v4 = a3;
  v5 = [(DEDPersistence *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDPersistence removeBugSession:v5];
  }

  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v7 = [(DEDPersistence *)self bugSessionIdentifiers];
  v8 = [v6 initWithSet:v7];

  v9 = [v4 identifier];
  [v8 removeObject:v9];

  v10 = [(DEDPersistence *)self _indexKeyForBugSession:v4];

  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v10];
  userDefaults = self->_userDefaults;
  v12 = [v8 allObjects];
  [(NSUserDefaults *)userDefaults setObject:v12 forKey:@"sessionIdentifiers"];
}

- (id)_indexKeyForBugSession:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"bugsession:%@", v4];

  return v5;
}

- (id)bugSessionIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"sessionIdentifiers"];
  v4 = [v2 setWithArray:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

- (void)validateSandboxAccess
{
  v3 = [(DEDPersistence *)self userDefaults];
  [v3 setObject:@"Test" forKey:@"test-key"];

  v4 = [(DEDPersistence *)self userDefaults];
  v5 = [v4 objectForKey:@"test-key"];

  LODWORD(v4) = [v5 isEqualToString:v5];
  v6 = [(DEDPersistence *)self log];
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DEDPersistence *)v7 validateSandboxAccess];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Can read from user defaults", v8, 2u);
    }

    v7 = [(DEDPersistence *)self userDefaults];
    [v7 removeObjectForKey:@"test-key"];
  }
}

- (void)loadSavedBugSessions
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_248AD7000, log, OS_LOG_TYPE_ERROR, "Failed to load Bug Session from disk with error: Bug Session is nil, no unarchive error", buf, 2u);
}

- (void)updateBugSession:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[DEDPersistence updateBugSession:]";
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "[%{public}s]", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateBugSession:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "failed to archive bug session with error: [%{public}@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeBugSession:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[DEDPersistence removeBugSession:]";
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "[%{public}s]", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end