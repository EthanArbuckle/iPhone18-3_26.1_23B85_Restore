@interface BBObjectCache
- (BBObjectCache)init;
- (id)cacheObject:(id)a3;
@end

@implementation BBObjectCache

- (BBObjectCache)init
{
  v6.receiver = self;
  v6.super_class = BBObjectCache;
  v2 = [(BBObjectCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)cacheObject:(id)a3
{
  v4 = a3;
  v5 = self->_cache;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_cache member:v4];
  objc_initWeak(&location, v6);

  v7 = objc_loadWeakRetained(&location);
  if (!v7)
  {
    [(NSHashTable *)self->_cache removeObject:v4];
    [(NSHashTable *)self->_cache addObject:v4];
    v7 = v4;
  }

  objc_destroyWeak(&location);
  objc_sync_exit(v5);

  return v7;
}

@end