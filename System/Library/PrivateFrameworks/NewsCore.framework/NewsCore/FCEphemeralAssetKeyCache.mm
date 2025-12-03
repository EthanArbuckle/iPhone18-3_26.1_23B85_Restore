@interface FCEphemeralAssetKeyCache
- (FCEphemeralAssetKeyCache)init;
- (id)wrappingKeyForWrappingKeyID:(id)d;
- (void)removeAllWrappingKeys;
- (void)setWrappingKey:(id)key forWrappingKeyID:(id)d;
@end

@implementation FCEphemeralAssetKeyCache

- (FCEphemeralAssetKeyCache)init
{
  v6.receiver = self;
  v6.super_class = FCEphemeralAssetKeyCache;
  v2 = [(FCEphemeralAssetKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCThreadSafeMutableDictionary);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (id)wrappingKeyForWrappingKeyID:(id)d
{
  if (self)
  {
    self = self->_dictionary;
  }

  return [(FCEphemeralAssetKeyCache *)self objectForKey:d];
}

- (void)setWrappingKey:(id)key forWrappingKeyID:(id)d
{
  if (self)
  {
    self = self->_dictionary;
  }

  [(FCEphemeralAssetKeyCache *)self setObject:key forKey:d];
}

- (void)removeAllWrappingKeys
{
  if (self)
  {
    self = self->_dictionary;
  }

  [(FCEphemeralAssetKeyCache *)self removeAllObjects];
}

@end