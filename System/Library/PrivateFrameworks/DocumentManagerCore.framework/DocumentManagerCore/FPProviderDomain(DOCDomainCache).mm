@interface FPProviderDomain(DOCDomainCache)
+ (id)allowedFileProviderBundleIdentifiersFiltered:()DOCDomainCache;
+ (id)domainPathCache;
+ (void)setDomainCache:()DOCDomainCache;
@end

@implementation FPProviderDomain(DOCDomainCache)

+ (void)setDomainCache:()DOCDomainCache
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [v3 objectForKeyedSubscript:v7];
        storageURLs = [v8 storageURLs];
        v10 = [storageURLs count] == 0;

        if (v10)
        {
          v16 = docEnumerationLogHandle;
          if (!docEnumerationLogHandle)
          {
            DOCInitLogging();
            v16 = docEnumerationLogHandle;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(FPProviderDomain(DOCDomainCache) *)v28 setDomainCache:v16, v8, &v29];
          }
        }

        else
        {
          storageURLs2 = [v8 storageURLs];
          v12 = [storageURLs2 objectAtIndexedSubscript:0];

          path = [v12 path];
          stringByStandardizingPath = [path stringByStandardizingPath];
          v15 = [stringByStandardizingPath stringByAppendingString:@"/"];

          [v23 setObject:v15 forKeyedSubscript:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = [v23 copy];
  v19 = _domainPathCache;
  _domainPathCache = v18;

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x277D85DE8];
}

+ (id)domainPathCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = _domainPathCache;
  objc_sync_exit(selfCopy);

  return v2;
}

+ (id)allowedFileProviderBundleIdentifiersFiltered:()DOCDomainCache
{
  v3 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = dispatch_semaphore_create(0);
  v7 = MEMORY[0x277CC6420];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__FPProviderDomain_DOCDomainCache__allowedFileProviderBundleIdentifiersFiltered___block_invoke;
  v16[3] = &unk_278F9B8D8;
  v8 = v3;
  v19 = v8;
  v9 = v5;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  v11 = [v7 beginMonitoringProviderDomainChangesWithHandler:v16];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  [MEMORY[0x277CC6420] endMonitoringProviderDomainChanges:v11];
  v12 = CFAbsoluteTimeGetCurrent() - Current;
  if (v12 > 0.2)
  {
    v13 = docUILogHandle;
    if (!docUILogHandle)
    {
      DOCInitLogging();
      v13 = docUILogHandle;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FPProviderDomain(DOCDomainCache) *)v13 allowedFileProviderBundleIdentifiersFiltered:v12];
    }
  }

  if ([v9 count])
  {
    v14 = [v9 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)setDomainCache:()DOCDomainCache .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 providerDisplayName];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&dword_249340000, v7, OS_LOG_TYPE_ERROR, "Could not set domain cache for domain %@ because storageURLs is empty", a1, 0xCu);
}

+ (void)allowedFileProviderBundleIdentifiersFiltered:()DOCDomainCache .cold.1(void *a1, double a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithDouble:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_249340000, v4, OS_LOG_TYPE_ERROR, "Monitoring the File Providers took a long time (%@)", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end