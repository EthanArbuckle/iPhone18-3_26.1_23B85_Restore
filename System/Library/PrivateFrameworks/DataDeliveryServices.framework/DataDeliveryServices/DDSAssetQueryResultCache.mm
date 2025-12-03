@interface DDSAssetQueryResultCache
- (DDSAssetQueryResultCache)init;
- (id)cachedAssetsForQuery:(id)query;
- (void)cacheAssets:(id)assets forQuery:(id)query;
- (void)clearCache;
- (void)clearCacheForAssetType:(id)type;
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

- (id)cachedAssetsForQuery:(id)query
{
  queryCopy = query;
  cache = [(DDSAssetQueryResultCache *)self cache];
  cacheKey = [queryCopy cacheKey];

  v7 = [cache objectForKey:cacheKey];

  return v7;
}

- (void)cacheAssets:(id)assets forQuery:(id)query
{
  queryCopy = query;
  assetsCopy = assets;
  cache = [(DDSAssetQueryResultCache *)self cache];
  cacheKey = [queryCopy cacheKey];

  [cache cacheObject:assetsCopy forKey:cacheKey];
}

- (void)clearCache
{
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Asked to clear cache...", v5, 2u);
  }

  cache = [(DDSAssetQueryResultCache *)self cache];
  [cache clearCache];
}

- (void)clearCacheForAssetType:(id)type
{
  v10 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = DefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Asked to clear cache for asset type: %@", &v8, 0xCu);
  }

  cache = [(DDSAssetQueryResultCache *)self cache];
  [cache removeEntriesWithPrefixKey:typeCopy];

  v7 = *MEMORY[0x1E69E9840];
}

@end