@interface DKReporterRegistry
- (DKReporterRegistry)init;
- (NSSet)components;
- (NSSet)generators;
- (id)generatorForComponentIdentity:(id)a3;
- (void)addExtensionAdapter:(id)a3;
- (void)enumerateExtensionAdaptersWithBlock:(id)a3;
@end

@implementation DKReporterRegistry

- (DKReporterRegistry)init
{
  v8.receiver = self;
  v8.super_class = DKReporterRegistry;
  v2 = [(DKReporterRegistry *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    generatorLookup = v2->_generatorLookup;
    v2->_generatorLookup = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    componentDedup = v2->_componentDedup;
    v2->_componentDedup = v5;
  }

  return v2;
}

- (id)generatorForComponentIdentity:(id)a3
{
  v4 = a3;
  v5 = [(DKReporterRegistry *)self generatorLookup];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSSet)components
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(DKReporterRegistry *)self componentDedup];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (NSSet)generators
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(DKReporterRegistry *)self generatorLookup];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)addExtensionAdapter:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = [v4 extensionAttributes];
  v5 = self;
  objc_sync_enter(v5);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v19 manifest];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(DKReporterRegistry *)v5 componentDedup];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          if ([v10 isNewerThan:v12])
          {
            v13 = [(DKReporterRegistry *)v5 componentDedup];
            [v13 removeObjectForKey:v12];

            v14 = [(DKReporterRegistry *)v5 generatorLookup];
            [v14 removeObjectForKey:v12];
          }

          else
          {
            v14 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v25 = v12;
              v26 = 2112;
              v27 = v10;
              v28 = 2112;
              v29 = v4;
              _os_log_impl(&dword_248B9D000, v14, OS_LOG_TYPE_DEFAULT, "Replacing component [%@] with newer [%@] from [%@]", buf, 0x20u);
            }
          }
        }

        v15 = [(DKReporterRegistry *)v5 componentDedup];
        [v15 setObject:v10 forKeyedSubscript:v10];

        v16 = [(DKReporterRegistry *)v5 generatorLookup];
        [v16 setObject:v4 forKeyedSubscript:v10];

        v17 = DiagnosticsKitLogHandleForCategory(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v25 = v10;
          v26 = 2112;
          v27 = v4;
          _os_log_impl(&dword_248B9D000, v17, OS_LOG_TYPE_DEFAULT, "Registered component [%@] from [%@]", buf, 0x16u);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)enumerateExtensionAdaptersWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(DKReporterRegistry *)self generators];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end