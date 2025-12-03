@interface ECTwoPointerKeyCache
- (ECTwoPointerKeyCache)init;
- (id)objectForKey1:(id)key1 key2:(id)key2;
- (void)setObject:(id)object forKey1:(id)key1 key2:(id)key2;
@end

@implementation ECTwoPointerKeyCache

- (ECTwoPointerKeyCache)init
{
  v6.receiver = self;
  v6.super_class = ECTwoPointerKeyCache;
  v2 = [(ECTwoPointerKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OITSUPointerKeyDictionary);
    mCache = v2->mCache;
    v2->mCache = v3;
  }

  return v2;
}

- (id)objectForKey1:(id)key1 key2:(id)key2
{
  key2Copy = key2;
  v7 = [(OITSUNoCopyDictionary *)self->mCache objectForKey:key1];
  v8 = [v7 objectForKey:key2Copy];

  return v8;
}

- (void)setObject:(id)object forKey1:(id)key1 key2:(id)key2
{
  objectCopy = object;
  key1Copy = key1;
  key2Copy = key2;
  if (objectCopy && key1Copy)
  {
    v10 = [(OITSUNoCopyDictionary *)self->mCache objectForKey:key1Copy];
    if (!v10)
    {
      v10 = +[ECPointerNilKeyDictionary dictionary];
      [OITSUNoCopyDictionary setObject:"setObject:forKey:" forKey:?];
    }

    [v10 setObject:objectCopy forKey:key2Copy];
  }
}

@end