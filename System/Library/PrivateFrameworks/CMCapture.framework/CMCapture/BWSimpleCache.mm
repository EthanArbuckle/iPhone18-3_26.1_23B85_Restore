@interface BWSimpleCache
- (BWSimpleCache)init;
- (id)copyAndClearObjectForKey:(id)key;
- (void)cacheObject:(id)object forKey:(id)key;
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

- (void)cacheObject:(id)object forKey:(id)key
{
  FigSimpleMutexLock();
  [(NSMutableDictionary *)self->_cache setObject:object forKeyedSubscript:key];

  FigSimpleMutexUnlock();
}

- (id)copyAndClearObjectForKey:(id)key
{
  FigSimpleMutexLock();
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:key];
  [(NSMutableDictionary *)self->_cache setObject:0 forKeyedSubscript:key];
  FigSimpleMutexUnlock();
  return v5;
}

@end