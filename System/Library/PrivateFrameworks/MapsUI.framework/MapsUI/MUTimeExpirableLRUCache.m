@interface MUTimeExpirableLRUCache
- (MUTimeExpirableLRUCache)initWithMaxSize:(unint64_t)a3 timeToLive:(double)a4;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation MUTimeExpirableLRUCache

- (void)setObject:(id)a3 forKey:(id)a4
{
  valuesByCacheKeys = self->_valuesByCacheKeys;
  v7 = a4;
  [(MULRUCache *)valuesByCacheKeys setObject:a3 forKey:v7];
  Current = CFAbsoluteTimeGetCurrent();
  timestampsByCacheKeys = self->_timestampsByCacheKeys;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:Current];
  [(NSMutableDictionary *)timestampsByCacheKeys setObject:v10 forKey:v7];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_timestampsByCacheKeys objectForKey:v4];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v5 doubleValue];
      valuesByCacheKeys = self->_valuesByCacheKeys;
      if (fmax(Current - v7, 0.0) <= self->_timeToLiveInSeconds)
      {
        v9 = [(MULRUCache *)valuesByCacheKeys objectForKey:v4];
        goto LABEL_7;
      }

      [(MULRUCache *)valuesByCacheKeys removeObjectForKey:v4];
      [(NSMutableDictionary *)self->_timestampsByCacheKeys removeObjectForKey:v4];
    }

    v9 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (MUTimeExpirableLRUCache)initWithMaxSize:(unint64_t)a3 timeToLive:(double)a4
{
  v13.receiver = self;
  v13.super_class = MUTimeExpirableLRUCache;
  v6 = [(MUTimeExpirableLRUCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxSize = a3;
    v6->_timeToLiveInSeconds = a4;
    v8 = [[MULRUCache alloc] initWithMaxSize:a3];
    valuesByCacheKeys = v7->_valuesByCacheKeys;
    v7->_valuesByCacheKeys = v8;

    [(MULRUCache *)v7->_valuesByCacheKeys setDelegate:v7];
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
    timestampsByCacheKeys = v7->_timestampsByCacheKeys;
    v7->_timestampsByCacheKeys = v10;
  }

  return v7;
}

@end