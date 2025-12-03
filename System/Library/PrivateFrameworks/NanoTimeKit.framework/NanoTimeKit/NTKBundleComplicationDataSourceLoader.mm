@interface NTKBundleComplicationDataSourceLoader
+ (NTKBundleComplicationDataSourceLoader)complicationDataSourceLoaderWithBlock:(id)block;
+ (NTKBundleComplicationDataSourceLoader)complicationDataSourceLoaderWithDirectories:(id)directories;
+ (NTKBundleComplicationDataSourceLoader)complicationDataSourceLoaderWithDirectory:(id)directory;
+ (id)aggregateComplicationLoaderWithComplicationLoaders:(id)loaders;
+ (id)defaultComplicationDataSourceLoader;
+ (id)disabledComplicationDataSourceLoader;
- (NTKBundleComplicationDataSourceLoader)init;
- (id)cachedDataSources;
- (void)enumerateComplicationClassesWithBlock:(id)block;
@end

@implementation NTKBundleComplicationDataSourceLoader

- (NTKBundleComplicationDataSourceLoader)init
{
  v6.receiver = self;
  v6.super_class = NTKBundleComplicationDataSourceLoader;
  v2 = [(NTKBundleComplicationDataSourceLoader *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedDataSourcesLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

+ (id)disabledComplicationDataSourceLoader
{
  if (disabledComplicationDataSourceLoader_onceToken != -1)
  {
    +[NTKBundleComplicationDataSourceLoader disabledComplicationDataSourceLoader];
  }

  v3 = disabledComplicationDataSourceLoader_DisabledLoader;

  return v3;
}

void __77__NTKBundleComplicationDataSourceLoader_disabledComplicationDataSourceLoader__block_invoke()
{
  v0 = objc_alloc_init(_NTKBundleDisabledComplicationLoader);
  v1 = disabledComplicationDataSourceLoader_DisabledLoader;
  disabledComplicationDataSourceLoader_DisabledLoader = v0;
}

+ (id)defaultComplicationDataSourceLoader
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NTKBundleComplicationDataSourceLoader_defaultComplicationDataSourceLoader__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultComplicationDataSourceLoader_onceToken != -1)
  {
    dispatch_once(&defaultComplicationDataSourceLoader_onceToken, block);
  }

  v2 = defaultComplicationDataSourceLoader_BundleLoader;

  return v2;
}

void __76__NTKBundleComplicationDataSourceLoader_defaultComplicationDataSourceLoader__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 builtInPlugInsURL];

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleURL];
  v7 = [v6 URLByDeletingPathExtension];

  v20 = v7;
  v21 = v4;
  v23 = v2;
  v8 = [MEMORY[0x277CBEB18] arrayWithObjects:{v2, v4, v7, 0}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(&v25 + 1) + 8 * v12)];
        v14 = [v13 URLByAppendingPathComponent:@"NanoTimeKit"];
        v15 = [v14 URLByAppendingPathComponent:@"Complications"];

        [v8 addObject:v15];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v16 = *(a1 + 32);
  v17 = [v8 copy];
  v18 = [v16 complicationDataSourceLoaderWithDirectories:v17];
  v19 = defaultComplicationDataSourceLoader_BundleLoader;
  defaultComplicationDataSourceLoader_BundleLoader = v18;
}

+ (NTKBundleComplicationDataSourceLoader)complicationDataSourceLoaderWithDirectory:(id)directory
{
  v9[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v5 = directoryCopy;
  if (directoryCopy)
  {
    v9[0] = directoryCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = [self complicationDataSourceLoaderWithDirectories:v6];
  }

  else
  {
    v7 = [self complicationDataSourceLoaderWithDirectories:MEMORY[0x277CBEBF8]];
  }

  return v7;
}

+ (NTKBundleComplicationDataSourceLoader)complicationDataSourceLoaderWithDirectories:(id)directories
{
  directoriesCopy = directories;
  v4 = objc_alloc_init(_NTKBundleBundleComplicationLoader);
  v5 = [directoriesCopy copy];

  [(_NTKBundleBundleComplicationLoader *)v4 setUrls:v5];

  return v4;
}

+ (NTKBundleComplicationDataSourceLoader)complicationDataSourceLoaderWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  v5 = [blockCopy copy];

  [v4 setBlock:v5];

  return v4;
}

+ (id)aggregateComplicationLoaderWithComplicationLoaders:(id)loaders
{
  loadersCopy = loaders;
  v4 = objc_opt_new();
  [v4 setLoaders:loadersCopy];

  return v4;
}

- (void)enumerateComplicationClassesWithBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  kdebug_trace();
  if (blockCopy)
  {
    cachedDataSources = [(NTKBundleComplicationDataSourceLoader *)self cachedDataSources];

    if (!cachedDataSources)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __79__NTKBundleComplicationDataSourceLoader_enumerateComplicationClassesWithBlock___block_invoke;
      v20[3] = &unk_278786030;
      v21 = v6;
      v7 = v6;
      [(NTKBundleComplicationDataSourceLoader *)self _loadClassesUsingBlock:v20];
      os_unfair_lock_lock(&self->_cachedDataSourcesLock);
      v8 = [v7 copy];
      cachedDataSources = self->_cachedDataSources;
      self->_cachedDataSources = v8;

      os_unfair_lock_unlock(&self->_cachedDataSourcesLock);
    }

    v19 = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    cachedDataSources2 = [(NTKBundleComplicationDataSourceLoader *)self cachedDataSources];
    v11 = [cachedDataSources2 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(cachedDataSources2);
        }

        if (v19)
        {
          break;
        }

        blockCopy[2](blockCopy, *(*(&v15 + 1) + 8 * v14++), &v19);
        if (v12 == v14)
        {
          v12 = [cachedDataSources2 countByEnumeratingWithState:&v15 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    kdebug_trace();
  }
}

void __79__NTKBundleComplicationDataSourceLoader_enumerateComplicationClassesWithBlock___block_invoke(uint64_t a1, Class aClass)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromClass(aClass);
  if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    if (![*(a1 + 32) containsObject:aClass])
    {
      [*(a1 + 32) addObject:aClass];
      goto LABEL_9;
    }

    v5 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Skipping %@ - Already loaded", &v6, 0xCu);
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__NTKFaceBundleLoader_enumerateFaceBundleClassesIgnoringCache_withBlock___block_invoke_cold_1(v4, v5);
    }
  }

LABEL_9:
}

- (id)cachedDataSources
{
  os_unfair_lock_lock(&self->_cachedDataSourcesLock);
  v3 = [(NSArray *)self->_cachedDataSources copy];
  os_unfair_lock_unlock(&self->_cachedDataSourcesLock);

  return v3;
}

@end