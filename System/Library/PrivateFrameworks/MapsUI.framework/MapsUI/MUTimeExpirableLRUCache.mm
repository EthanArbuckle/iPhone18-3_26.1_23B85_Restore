@interface MUTimeExpirableLRUCache
- (MUTimeExpirableLRUCache)initWithMaxSize:(unint64_t)size timeToLive:(double)live;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MUTimeExpirableLRUCache

- (void)setObject:(id)object forKey:(id)key
{
  valuesByCacheKeys = self->_valuesByCacheKeys;
  keyCopy = key;
  [(MULRUCache *)valuesByCacheKeys setObject:object forKey:keyCopy];
  Current = CFAbsoluteTimeGetCurrent();
  timestampsByCacheKeys = self->_timestampsByCacheKeys;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:Current];
  [(NSMutableDictionary *)timestampsByCacheKeys setObject:v10 forKey:keyCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSMutableDictionary *)self->_timestampsByCacheKeys objectForKey:keyCopy];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v5 doubleValue];
      valuesByCacheKeys = self->_valuesByCacheKeys;
      if (fmax(Current - v7, 0.0) <= self->_timeToLiveInSeconds)
      {
        v9 = [(MULRUCache *)valuesByCacheKeys objectForKey:keyCopy];
        goto LABEL_7;
      }

      [(MULRUCache *)valuesByCacheKeys removeObjectForKey:keyCopy];
      [(NSMutableDictionary *)self->_timestampsByCacheKeys removeObjectForKey:keyCopy];
    }

    v9 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (MUTimeExpirableLRUCache)initWithMaxSize:(unint64_t)size timeToLive:(double)live
{
  v13.receiver = self;
  v13.super_class = MUTimeExpirableLRUCache;
  v6 = [(MUTimeExpirableLRUCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxSize = size;
    v6->_timeToLiveInSeconds = live;
    v8 = [[MULRUCache alloc] initWithMaxSize:size];
    valuesByCacheKeys = v7->_valuesByCacheKeys;
    v7->_valuesByCacheKeys = v8;

    [(MULRUCache *)v7->_valuesByCacheKeys setDelegate:v7];
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:size];
    timestampsByCacheKeys = v7->_timestampsByCacheKeys;
    v7->_timestampsByCacheKeys = v10;
  }

  return v7;
}

@end