@interface DEDExtensionIdentifierManager
+ (id)archivedClasses;
+ (id)log;
- (BOOL)isKnownIdentifier:(id)a3;
- (DEDExtensionIdentifierManager)init;
- (DEDExtensionIdentifierManager)initWithCoder:(id)a3;
- (DEDExtensionIdentifierManager)initWithExtensionIdentifiers:(id)a3;
- (DEDExtensionIdentifierManager)initWithJSONString:(id)a3;
- (id)JSONRepresentation;
- (id)allIdentifiers;
- (id)identifierForExtensionIdentifier:(id)a3;
- (id)knownIdentifiersForExtensionIdentifier:(id)a3;
- (void)JSONRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)revokeIdentifier:(id)a3;
@end

@implementation DEDExtensionIdentifierManager

- (id)JSONRepresentation
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self;
  v6 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [v6 allKeys];

  obj = v7;
  v30 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v30)
  {
    v28 = *v37;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = [(DEDExtensionIdentifierManager *)v29 identifierTable];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * j);
              v17 = [v5 objectForKeyedSubscript:v9];
              if (!v17)
              {
                v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
              }

              v18 = [v16 stringValue];
              [v17 addObject:v18];

              [v5 setObject:v17 forKeyedSubscript:v9];
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
          }

          while (v13);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v30);
  }

  v40 = @"identifierTable";
  v41 = v5;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v31 = 0;
  v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v19 options:2 error:&v31];
  v21 = v31;
  v22 = v21;
  if (!v20 || v21)
  {
    v24 = +[DEDExtensionIdentifierManager log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(DEDExtensionIdentifierManager *)v22 JSONRepresentation];
    }

    v23 = &stru_285B72378;
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v20 encoding:4];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (DEDExtensionIdentifierManager)initWithJSONString:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = DEDExtensionIdentifierManager;
  v5 = [(DEDExtensionIdentifierManager *)&v47 init];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  [(DEDExtensionIdentifierManager *)v5 setIdentifierTable:v6];

  v7 = MEMORY[0x277CCAAA0];
  v30 = v4;
  v8 = [v4 dataUsingEncoding:4];
  v46 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v46];
  v10 = v46;

  v31 = v9;
  if (!v9 || v10)
  {
    v11 = +[DEDExtensionIdentifierManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEDExtensionIdentifierManager *)v10 initWithJSONString:v30, v11];
    }
  }

  else
  {
    v11 = [v9 objectForKeyedSubscript:@"identifierTable"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = [v11 allKeys];
      v12 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v43;
        v33 = v11;
        v32 = *v43;
        do
        {
          v15 = 0;
          v34 = v13;
          do
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v42 + 1) + 8 * v15);
            v17 = [v11 objectForKeyedSubscript:v16];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v38 objects:v49 count:16];
              if (v19)
              {
                v20 = v19;
                v36 = v17;
                v37 = v15;
                v21 = *v39;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v39 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = [[DEDExtensionIdentifier alloc] initWithString:*(*(&v38 + 1) + 8 * i)];
                    v24 = [(DEDExtensionIdentifierManager *)v5 identifierTable];
                    v25 = [v24 objectForKeyedSubscript:v16];

                    if (v25)
                    {
                      [v25 arrayByAddingObject:v23];
                    }

                    else
                    {
                      v48 = v23;
                      [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
                    }
                    v26 = ;
                    v27 = [(DEDExtensionIdentifierManager *)v5 identifierTable];
                    [v27 setObject:v26 forKeyedSubscript:v16];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v38 objects:v49 count:16];
                }

                while (v20);
                v11 = v33;
                v10 = 0;
                v14 = v32;
                v13 = v34;
                v17 = v36;
                v15 = v37;
              }
            }

            else
            {
              v18 = +[DEDExtensionIdentifierManager log];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v51 = "[DEDExtensionIdentifierManager initWithJSONString:]";
                v52 = 2114;
                v53 = v16;
                _os_log_error_impl(&dword_248AD7000, v18, OS_LOG_TYPE_ERROR, "Error in [%{public}s]. could not find array for key [%{public}@]", buf, 0x16u);
              }
            }

            ++v15;
          }

          while (v15 != v13);
          v13 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v13);
      }
    }

    else
    {
      obj = +[DEDExtensionIdentifierManager log];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [DEDExtensionIdentifierManager initWithJSONString:];
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (DEDExtensionIdentifierManager)init
{
  v6.receiver = self;
  v6.super_class = DEDExtensionIdentifierManager;
  v2 = [(DEDExtensionIdentifierManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    identifierTable = v2->_identifierTable;
    v2->_identifierTable = v3;
  }

  return v2;
}

- (void)reset
{
  v3 = +[DEDExtensionIdentifierManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "resetting", v5, 2u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [(DEDExtensionIdentifierManager *)self setIdentifierTable:v4];
}

- (DEDExtensionIdentifierManager)initWithExtensionIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = DEDExtensionIdentifierManager;
  v5 = [(DEDExtensionIdentifierManager *)&v27 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    identifierTable = v5->_identifierTable;
    v5->_identifierTable = v6;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = [(DEDExtensionIdentifierManager *)v5 identifierTable];
          v15 = [v13 extensionIdentifier];
          v16 = [v14 objectForKey:v15];
          v17 = [v16 mutableCopy];

          if (!v17)
          {
            v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
          }

          [v17 addObject:v13];
          v18 = [(DEDExtensionIdentifierManager *)v5 identifierTable];
          v19 = [v13 extensionIdentifier];
          [v18 setObject:v17 forKey:v19];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v4 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)identifierForExtensionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(v5);
  v6 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [v6 objectForKey:v4];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }

  v9 = [v8 lastObject];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 invocationNumber] + 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[DEDExtensionIdentifier alloc] initWithExtensionIdentifier:v4 invocationNumber:v11];
  [v8 addObject:v12];
  v13 = [(DEDExtensionIdentifierManager *)self identifierTable];
  [v13 setObject:v8 forKey:v4];

  objc_sync_exit(v5);

  return v12;
}

- (id)knownIdentifiersForExtensionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(v5);
  v6 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)revokeIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(v5);
  v6 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [v4 extensionIdentifier];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v4];
  if (v9)
  {
    v10 = [(DEDExtensionIdentifierManager *)self identifierTable];
    v11 = [v4 extensionIdentifier];
    [v10 setObject:v9 forKey:v11];
  }

  else
  {
    v12 = +[DEDExtensionIdentifierManager log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 extensionIdentifier];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_INFO, "no identifier table found for DE identifier [%{public}@]", &v15, 0xCu);
    }
  }

  objc_sync_exit(v5);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)allIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v4 = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v3 addObjectsFromArray:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v4);
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isKnownIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DEDExtensionIdentifierManager *)self identifierTable];
  objc_sync_enter(v5);
  v6 = [(DEDExtensionIdentifierManager *)self identifierTable];
  v7 = [v4 extensionIdentifier];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    LOBYTE(v6) = [v8 containsObject:v4];
  }

  objc_sync_exit(v5);
  return (v8 != 0) & v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDExtensionIdentifierManager *)self identifierTable];
  [v4 encodeObject:v5 forKey:@"identifierTable"];
}

- (DEDExtensionIdentifierManager)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DEDExtensionIdentifierManager;
  v5 = [(DEDExtensionIdentifierManager *)&v13 init];
  if (v5)
  {
    v6 = [objc_opt_class() archivedClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifierTable"];
    identifierTable = v5->_identifierTable;
    v5->_identifierTable = v7;

    v9 = v5->_identifierTable;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    }

    v11 = v5->_identifierTable;
    v5->_identifierTable = v10;
  }

  return v5;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
}

+ (id)log
{
  if (log_onceToken_1 != -1)
  {
    +[DEDExtensionIdentifierManager log];
  }

  v3 = log_log_1;

  return v3;
}

void __36__DEDExtensionIdentifierManager_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-identifier-manager");
  v1 = log_log_1;
  log_log_1 = v0;
}

- (void)JSONRepresentation
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v6[0] = 136446466;
  OUTLINED_FUNCTION_0_5();
  v7 = v4;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error in [%{public}s] [%{public}@]", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithJSONString:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0_5();
  v3 = @"identifierTable";
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Error in [%{public}s]. did not find [%{public}@]", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithJSONString:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 debugDescription];
  v9[0] = 136446722;
  OUTLINED_FUNCTION_0_5();
  v10 = v6;
  v11 = v7;
  v12 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Error in [%{public}s] [%{public}@] from JSON [%{public}@]", v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end