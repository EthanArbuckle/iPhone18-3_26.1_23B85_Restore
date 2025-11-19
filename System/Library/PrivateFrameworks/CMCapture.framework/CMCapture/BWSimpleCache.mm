@interface BWSimpleCache
- (BWSimpleCache)init;
- (id)copyAndClearObjectForKey:(id)a3;
- (void)cacheObject:(id)a3 forKey:(id)a4;
- (void)dealloc;
@end

@implementation BWSimpleCache

- (BWSimpleCache)init
{
  v4.receiver = self;
  v4.super_class = BWSimpleCache;
  v2 = [(BWSimpleCache *)&v4 init];
  if (v2)
  {
    v2->_cache = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_propertyMutex = FigSimpleMutexCreate();
  }

  return v2;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = BWSimpleCache;
  [(BWSimpleCache *)&v3 dealloc];
}

- (void)cacheObject:(id)a3 forKey:(id)a4
{
  FigSimpleMutexLock();
  [(NSMutableDictionary *)self->_cache setObject:a3 forKeyedSubscript:a4];

  FigSimpleMutexUnlock();
}

- (id)copyAndClearObjectForKey:(id)a3
{
  FigSimpleMutexLock();
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:a3];
  [(NSMutableDictionary *)self->_cache setObject:0 forKeyedSubscript:a3];
  FigSimpleMutexUnlock();
  return v5;
}

@end