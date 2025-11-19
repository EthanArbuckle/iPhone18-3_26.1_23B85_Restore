@interface DDSAssetQueryResultCache
- (DDSAssetQueryResultCache)init;
- (id)cachedAssetsForQuery:(id)a3;
- (void)cacheAssets:(id)a3 forQuery:(id)a4;
- (void)clearCache;
- (void)clearCacheForAssetType:(id)a3;
@end

@implementation DDSAssetQueryResultCache

- (DDSAssetQueryResultCache)init
{
  v6.receiver = self;
  v6.super_class = DDSAssetQueryResultCache;
  v2 = [(DDSAssetQueryResultCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(DDSCache);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)cachedAssetsForQuery:(id)a3
{
  v4 = a3;
  v5 = [(DDSAssetQueryResultCache *)self cache];
  v6 = [v4 cacheKey];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (void)cacheAssets:(id)a3 forQuery:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DDSAssetQueryResultCache *)self cache];
  v8 = [v6 cacheKey];

  [v9 cacheObject:v7 forKey:v8];
}

- (void)clearCache
{
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Asked to clear cache...", v5, 2u);
  }

  v4 = [(DDSAssetQueryResultCache *)self cache];
  [v4 clearCache];
}

- (void)clearCacheForAssetType:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = DefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Asked to clear cache for asset type: %@", &v8, 0xCu);
  }

  v6 = [(DDSAssetQueryResultCache *)self cache];
  [v6 removeEntriesWithPrefixKey:v4];

  v7 = *MEMORY[0x1E69E9840];
}

@end