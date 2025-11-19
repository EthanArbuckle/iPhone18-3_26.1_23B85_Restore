@interface _CPLEngineScopeCache
- (_CPLEngineScopeCache)init;
- (id)scopeWithCloudIndex:(int64_t)a3;
- (id)scopeWithLocalIndex:(int64_t)a3;
- (id)scopeWithStableIndex:(int64_t)a3;
- (void)cacheScope:(id)a3 forScopeStorage:(id)a4;
@end

@implementation _CPLEngineScopeCache

- (id)scopeWithStableIndex:(int64_t)a3
{
  scopeByStableIndex = self->_scopeByStableIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)scopeByStableIndex objectForKeyedSubscript:v4];

  return v5;
}

- (id)scopeWithCloudIndex:(int64_t)a3
{
  scopeByCloudIndex = self->_scopeByCloudIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)scopeByCloudIndex objectForKeyedSubscript:v4];

  return v5;
}

- (id)scopeWithLocalIndex:(int64_t)a3
{
  scopeByLocalIndex = self->_scopeByLocalIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)scopeByLocalIndex objectForKeyedSubscript:v4];

  return v5;
}

- (void)cacheScope:(id)a3 forScopeStorage:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v17)
  {
    v7 = [v6 flagsForScope:v17];
    v8 = [v7 valueForFlag:16];

    if ((v8 & 1) == 0)
    {
      scopeCache = self->_scopeCache;
      v10 = [v17 scopeIdentifier];
      [(NSMutableDictionary *)scopeCache setObject:v17 forKeyedSubscript:v10];

      scopeByLocalIndex = self->_scopeByLocalIndex;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "localIndex")}];
      [(NSMutableDictionary *)scopeByLocalIndex setObject:v17 forKeyedSubscript:v12];

      scopeByCloudIndex = self->_scopeByCloudIndex;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "cloudIndex")}];
      [(NSMutableDictionary *)scopeByCloudIndex setObject:v17 forKeyedSubscript:v14];

      scopeByStableIndex = self->_scopeByStableIndex;
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v17, "stableIndex")}];
      [(NSMutableDictionary *)scopeByStableIndex setObject:v17 forKeyedSubscript:v16];
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