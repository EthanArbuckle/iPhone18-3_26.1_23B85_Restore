@interface _CPLEngineScopeCache
- (_CPLEngineScopeCache)init;
- (id)scopeWithCloudIndex:(int64_t)index;
- (id)scopeWithLocalIndex:(int64_t)index;
- (id)scopeWithStableIndex:(int64_t)index;
- (void)cacheScope:(id)scope forScopeStorage:(id)storage;
@end

@implementation _CPLEngineScopeCache

- (id)scopeWithStableIndex:(int64_t)index
{
  scopeByStableIndex = self->_scopeByStableIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v5 = [(NSMutableDictionary *)scopeByStableIndex objectForKeyedSubscript:v4];

  return v5;
}

- (id)scopeWithCloudIndex:(int64_t)index
{
  scopeByCloudIndex = self->_scopeByCloudIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v5 = [(NSMutableDictionary *)scopeByCloudIndex objectForKeyedSubscript:v4];

  return v5;
}

- (id)scopeWithLocalIndex:(int64_t)index
{
  scopeByLocalIndex = self->_scopeByLocalIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v5 = [(NSMutableDictionary *)scopeByLocalIndex objectForKeyedSubscript:v4];

  return v5;
}

- (void)cacheScope:(id)scope forScopeStorage:(id)storage
{
  scopeCopy = scope;
  storageCopy = storage;
  if (scopeCopy)
  {
    v7 = [storageCopy flagsForScope:scopeCopy];
    v8 = [v7 valueForFlag:16];

    if ((v8 & 1) == 0)
    {
      scopeCache = self->_scopeCache;
      scopeIdentifier = [scopeCopy scopeIdentifier];
      [(NSMutableDictionary *)scopeCache setObject:scopeCopy forKeyedSubscript:scopeIdentifier];

      scopeByLocalIndex = self->_scopeByLocalIndex;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(scopeCopy, "localIndex")}];
      [(NSMutableDictionary *)scopeByLocalIndex setObject:scopeCopy forKeyedSubscript:v12];

      scopeByCloudIndex = self->_scopeByCloudIndex;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(scopeCopy, "cloudIndex")}];
      [(NSMutableDictionary *)scopeByCloudIndex setObject:scopeCopy forKeyedSubscript:v14];

      scopeByStableIndex = self->_scopeByStableIndex;
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(scopeCopy, "stableIndex")}];
      [(NSMutableDictionary *)scopeByStableIndex setObject:scopeCopy forKeyedSubscript:v16];
    }
  }
}

- (_CPLEngineScopeCache)init
{
  v12.receiver = self;
  v12.super_class = _CPLEngineScopeCache;
  v2 = [(_CPLEngineScopeCache *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeCache = v2->_scopeCache;
    v2->_scopeCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeByLocalIndex = v2->_scopeByLocalIndex;
    v2->_scopeByLocalIndex = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeByCloudIndex = v2->_scopeByCloudIndex;
    v2->_scopeByCloudIndex = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeByStableIndex = v2->_scopeByStableIndex;
    v2->_scopeByStableIndex = v9;
  }

  return v2;
}

@end