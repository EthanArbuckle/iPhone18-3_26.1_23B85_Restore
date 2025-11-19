@interface NTKBundleComplicationIdentifierCache
- (NTKBundleComplicationIdentifierCache)init;
- (id)_cacheURL;
- (id)_expectedCacheIdentifier;
- (void)_enumerateBundles:(id)a3;
- (void)_load;
- (void)_loadCachedModel;
- (void)_queue_fetchIdentifiersForComplication:(id)a3 completion:(id)a4;
- (void)_updateCacheModel:(id)a3;
- (void)fetchIdentifiersForComplication:(id)a3 completion:(id)a4;
@end

@implementation NTKBundleComplicationIdentifierCache

- (NTKBundleComplicationIdentifierCache)init
{
  v6.receiver = self;
  v6.super_class = NTKBundleComplicationIdentifierCache;
  v2 = [(NTKBundleComplicationIdentifierCache *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoTimeKit.NTKBundleComplicationIdentifierCache", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)fetchIdentifiersForComplication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NTKBundleComplicationIdentifierCache_fetchIdentifiersForComplication_completion___block_invoke;
  block[3] = &unk_27877DC88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_queue_fetchIdentifiersForComplication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_model)
  {
    [(NTKBundleComplicationIdentifierCache *)self _load];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 complication];
    v9 = [v8 bundleIdentifier];
  }

  else
  {
    v10 = [v6 complicationType];
    v8 = [(NTKBundleComplicationIdentifierCacheModel *)self->_model legacyComplicationTypeToDataSourceIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v9 = [v8 objectForKeyedSubscript:v11];
  }

  v12 = [(NTKBundleComplicationIdentifierCacheModel *)self->_model dataSourceToBundleIdentifier];
  v13 = [v12 objectForKeyedSubscript:v9];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__NTKBundleComplicationIdentifierCache__queue_fetchIdentifiersForComplication_completion___block_invoke;
  block[3] = &unk_27877FF88;
  v19 = v13;
  v20 = v7;
  v18 = v9;
  v14 = v13;
  v15 = v9;
  v16 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_cacheURL
{
  v3 = [(NTKBundleComplicationIdentifierCache *)self overrideUrl];

  if (v3)
  {
    v4 = [(NTKBundleComplicationIdentifierCache *)self overrideUrl];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CBEBC0]);
    v6 = NTKCacheDirectory();
    v7 = [v5 initFileURLWithPath:v6];

    v4 = [v7 URLByAppendingPathComponent:@"bundle-complication-identifier-cache.plist"];
  }

  return v4;
}

- (id)_expectedCacheIdentifier
{
  overrideIdentifier = self->_overrideIdentifier;
  if (overrideIdentifier)
  {
    v3 = overrideIdentifier;
  }

  else
  {
    v3 = NTKBuildVersion();
  }

  return v3;
}

- (void)_load
{
  [(NTKBundleComplicationIdentifierCache *)self _loadCachedModel];
  if (!self->_model)
  {
    v3 = [NTKBundleComplicationIdentifierCacheModel alloc];
    v4 = [(NTKBundleComplicationIdentifierCache *)self _expectedCacheIdentifier];
    v5 = [(NTKBundleComplicationIdentifierCacheModel *)v3 initWithBuildVersion:v4];
    model = self->_model;
    self->_model = v5;

    [(NTKBundleComplicationIdentifierCache *)self _updateCacheModel:self->_model];
    v7 = self->_model;
    v27 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v27];
    v9 = v27;
    v10 = v9;
    if (v8)
    {

      v11 = [(NTKBundleComplicationIdentifierCache *)self _cacheURL];
      v26 = 0;
      v12 = [v8 writeToURL:v11 options:1 error:&v26];
      v10 = v26;

      if (v12)
      {
LABEL_9:

        return;
      }

      v13 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NTKBundleComplicationIdentifierCache *)v10 _load:v13];
      }
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(NTKBundleComplicationIdentifierCache *)v10 _load:v13];
      }
    }

    goto LABEL_9;
  }
}

- (void)_loadCachedModel
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NTKBundleComplicationIdentifierCache *)self _cacheURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CBEA90];
    v8 = [(NTKBundleComplicationIdentifierCache *)self _cacheURL];
    v25 = 0;
    v9 = [v7 dataWithContentsOfURL:v8 options:0 error:&v25];
    v10 = v25;

    if (v9)
    {

      v24 = 0;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v24];
      v10 = v24;
      if (v11)
      {
        v12 = [v11 buildVersion];
        v13 = [(NTKBundleComplicationIdentifierCache *)self _expectedCacheIdentifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = v11;
          p_super = &self->_model->super;
          self->_model = v15;
        }

        else
        {
          p_super = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&dword_22D9C5000, p_super, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationIdentifierCache: Cached is outdated, rebuilding...", v23, 2u);
          }
        }
      }

      else
      {
        p_super = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(NTKBundleComplicationIdentifierCache *)v10 _loadCachedModel:v17];
        }
      }
    }
  }
}

- (void)_updateCacheModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __58__NTKBundleComplicationIdentifierCache__updateCacheModel___block_invoke;
  v12 = &unk_278784798;
  v13 = v5;
  v14 = v6;
  v7 = v6;
  v8 = v5;
  [(NTKBundleComplicationIdentifierCache *)self _enumerateBundles:&v9];
  [v4 setDataSourceToBundleIdentifier:{v8, v9, v10, v11, v12}];
  [v4 setLegacyComplicationTypeToDataSourceIdentifier:v7];
}

void __58__NTKBundleComplicationIdentifierCache__updateCacheModel___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 bundleIdentifier];
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationIdentifierCache: Loading bundle with identifier %{public}@", buf, 0xCu);
  }

  if (([v3 isLoaded] & 1) == 0)
  {
    [v3 load];
  }

  v6 = NTKBundleComplicationDataSourceClassesFromBundle(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NTKBundleComplicationIdentifierCache__updateCacheModel___block_invoke_12;
  v8[3] = &unk_278784770;
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 40);
  v7 = v3;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __58__NTKBundleComplicationIdentifierCache__updateCacheModel___block_invoke_12(id *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a2 bundleIdentifier];
    v5 = [a2 legacyNTKComplicationType];
    v6 = [a1[5] bundleIdentifier];
    [a1[4] setObject:v6 forKeyedSubscript:v4];

    v7 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1[5] bundleIdentifier];
      v9 = 138543874;
      v10 = v4;
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationIdentifierCache: Discovered %{public}@ in %{public}@, legacy type %{public}@", &v9, 0x20u);
    }

    if (v5)
    {
      [a1[6] setObject:v4 forKeyedSubscript:v5];
    }
  }
}

- (void)_enumerateBundles:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_enumerateBundles__onceToken_0 != -1)
  {
    [NTKBundleComplicationIdentifierCache _enumerateBundles:];
  }

  NTKBundleComplicationDirectoryURLs();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v16 = 0u;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = _enumerateBundles___complicationBundleLoader_0;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __58__NTKBundleComplicationIdentifierCache__enumerateBundles___block_invoke_2;
        v11[3] = &unk_278782058;
        v12 = v3;
        [v9 enumerateBundlesFromDirectoryURL:v8 enumerator:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void __58__NTKBundleComplicationIdentifierCache__enumerateBundles___block_invoke()
{
  v0 = objc_alloc_init(NTKBundleLoader);
  v1 = _enumerateBundles___complicationBundleLoader_0;
  _enumerateBundles___complicationBundleLoader_0 = v0;
}

uint64_t __58__NTKBundleComplicationIdentifierCache__enumerateBundles___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 bundleIdentifier];
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationIdentifierCache: Evaluating bundle for identifier %{public}@", &v11, 0xCu);
  }

  if ([v3 isLoaded])
  {
    goto LABEL_6;
  }

  v6 = [v3 objectForInfoDictionaryKey:@"NSPrincipalClass"];
  if (v6)
  {

LABEL_6:
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }

    v8 = 1;
    goto LABEL_9;
  }

  v10 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __58__NTKBundleComplicationIdentifierCache__enumerateBundles___block_invoke_2_cold_1(v10);
  }

  v8 = 0;
LABEL_9:

  return v8;
}

@end