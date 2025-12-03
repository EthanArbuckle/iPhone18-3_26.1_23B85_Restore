@interface ECTwoIntegerKeyCache
- (ECTwoIntegerKeyCache)init;
- (id)objectForKey1:(int64_t)key1 key2:(int64_t)key2;
- (void)setObject:(id)object forKey1:(int64_t)key1 key2:(int64_t)key2;
@end

@implementation ECTwoIntegerKeyCache

- (ECTwoIntegerKeyCache)init
{
  v6.receiver = self;
  v6.super_class = ECTwoIntegerKeyCache;
  v2 = [(ECTwoIntegerKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OITSUIntegerKeyDictionary);
    mCache = v2->mCache;
    v2->mCache = v3;

    v2->_assertForCollisions = 1;
  }

  return v2;
}

- (id)objectForKey1:(int64_t)key1 key2:(int64_t)key2
{
  v5 = [(OITSUIntegerKeyDictionary *)self->mCache objectForKey:key1];
  v6 = [v5 objectForKey:key2];

  return v6;
}

- (void)setObject:(id)object forKey1:(int64_t)key1 key2:(int64_t)key2
{
  objectCopy = object;
  v8 = [(OITSUIntegerKeyDictionary *)self->mCache objectForKey:key1];
  if (!v8)
  {
    v8 = objc_alloc_init(OITSUIntegerKeyDictionary);
    [OITSUIntegerKeyDictionary setObject:"setObject:forKey:" forKey:?];
  }

  [(OITSUIntegerKeyDictionary *)v8 setObject:objectCopy forKey:key2];
}

@end