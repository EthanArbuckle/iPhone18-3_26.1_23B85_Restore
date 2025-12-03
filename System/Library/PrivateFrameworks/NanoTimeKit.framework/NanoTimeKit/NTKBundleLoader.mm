@interface NTKBundleLoader
- (NTKBundleLoader)init;
- (id)bundlesFromDirectoryURL:(id)l;
- (id)loadBundlesFromDirectoryURL:(id)l enumerator:(id)enumerator;
- (void)resetCacheForDirectoryURL:(id)l;
@end

@implementation NTKBundleLoader

- (NTKBundleLoader)init
{
  v7.receiver = self;
  v7.super_class = NTKBundleLoader;
  v2 = [(NTKBundleLoader *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bundlesByPath = v3->_bundlesByPath;
    v3->_bundlesByPath = v4;
  }

  return v3;
}

- (id)bundlesFromDirectoryURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v8 = [(NTKBundleLoader *)self loadBundlesFromDirectoryURL:lCopy enumerator:0];
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = lCopy;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Folder does not exist at path %{public}@", &v11, 0xCu);
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)loadBundlesFromDirectoryURL:(id)l enumerator:(id)enumerator
{
  v56 = *MEMORY[0x277D85DE8];
  lCopy = l;
  enumeratorCopy = enumerator;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_bundlesByPath objectForKeyedSubscript:lCopy];
  if (v8)
  {
    v9 = v8;
    if (!enumeratorCopy)
    {
      goto LABEL_24;
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __58__NTKBundleLoader_loadBundlesFromDirectoryURL_enumerator___block_invoke_5;
    v38[3] = &unk_2787872F0;
    v10 = &v39;
    v39 = enumeratorCopy;
    [v9 enumerateObjectsUsingBlock:v38];
  }

  else
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __58__NTKBundleLoader_loadBundlesFromDirectoryURL_enumerator___block_invoke;
    v49 = &unk_2787872C8;
    v33 = lCopy;
    v50 = lCopy;
    v31 = v50;
    v12 = [defaultManager enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      v16 = *MEMORY[0x277CBE7B8];
      v17 = *MEMORY[0x277CE1D18];
      v35 = *MEMORY[0x277CE1D18];
      do
      {
        v18 = 0;
        do
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          context = objc_autoreleasePoolPush();
          v40 = 0;
          v41 = 0;
          [v19 getResourceValue:&v41 forKey:v16 error:&v40];
          v20 = v41;
          v21 = v40;
          if (v21)
          {
            v22 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v52 = v19;
              v53 = 2114;
              v54 = v21;
              _os_log_error_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_ERROR, "Failed to get resource type for fileURL %{public}@ - %{public}@", buf, 0x16u);
            }
          }

          if ([v20 conformsToType:v17])
          {
            v23 = v14;
            v24 = v16;
            v25 = v15;
            v26 = MEMORY[0x277CCA8D8];
            [v19 path];
            v28 = v27 = enumeratorCopy;
            v29 = [v26 bundleWithPath:v28];

            enumeratorCopy = v27;
            if (!v27 || v27[2](v27, v29))
            {
              [array addObject:v29];
            }

            v15 = v25;
            v16 = v24;
            v14 = v23;
            v17 = v35;
          }

          objc_autoreleasePoolPop(context);
          ++v18;
        }

        while (v14 != v18);
        v14 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v14);
    }

    v10 = &v50;

    v9 = array;
    self = selfCopy;
    if ([array count])
    {
      [(NSMutableDictionary *)selfCopy->_bundlesByPath setObject:array forKeyedSubscript:v31];
    }

    lCopy = v33;
  }

LABEL_24:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

uint64_t __58__NTKBundleLoader_loadBundlesFromDirectoryURL_enumerator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__NTKBundleLoader_loadBundlesFromDirectoryURL_enumerator___block_invoke_cold_1(a1, v4, v5);
  }

  return 1;
}

void __58__NTKBundleLoader_loadBundlesFromDirectoryURL_enumerator___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

- (void)resetCacheForDirectoryURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_bundlesByPath setObject:0 forKeyedSubscript:lCopy];

  os_unfair_lock_unlock(&self->_lock);
}

void __58__NTKBundleLoader_loadBundlesFromDirectoryURL_enumerator___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Failed to list files from directory %{public}@ - %{public}@", &v4, 0x16u);
}

@end