@interface FCAVEphemeralAssetKeyCache
- (FCAVEphemeralAssetKeyCache)init;
- (id)assetKeyForURI:(id)a3;
- (void)clearKeyServerCertificate;
- (void)importAVAssetKey:(id)a3;
- (void)removeAllAssetKeys;
- (void)saveAssetKeyData:(id)a3 creationDate:(id)a4 expirationDate:(id)a5 forURI:(id)a6;
- (void)saveKeyServerCertificate:(id)a3;
@end

@implementation FCAVEphemeralAssetKeyCache

- (FCAVEphemeralAssetKeyCache)init
{
  v6.receiver = self;
  v6.super_class = FCAVEphemeralAssetKeyCache;
  v2 = [(FCAVEphemeralAssetKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCThreadSafeMutableDictionary);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (id)assetKeyForURI:(id)a3
{
  if (self)
  {
    self = self->_dictionary;
  }

  return [(FCAVEphemeralAssetKeyCache *)self objectForKey:a3];
}

- (void)saveAssetKeyData:(id)a3 creationDate:(id)a4 expirationDate:(id)a5 forURI:(id)a6
{
  v10 = MEMORY[0x1E69B6CD8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v19 = objc_alloc_init(v10);
  v15 = [v11 absoluteString];
  [v19 setIdentifier:v15];

  [v19 setKeyData:v14];
  v16 = [v13 pbDate];

  [v19 setCreatedAt:v16];
  v17 = [v12 pbDate];

  [v19 setExpiresAt:v17];
  if (self)
  {
    dictionary = self->_dictionary;
  }

  else
  {
    dictionary = 0;
  }

  [(FCThreadSafeMutableDictionary *)dictionary setObject:v19 forKey:v11];
}

- (void)importAVAssetKey:(id)a3
{
  if (self)
  {
    dictionary = self->_dictionary;
  }

  else
  {
    dictionary = 0;
  }

  v5 = MEMORY[0x1E695DFF8];
  v6 = dictionary;
  v7 = a3;
  v9 = [v7 identifier];
  v8 = [v5 URLWithString:v9];
  [(FCThreadSafeMutableDictionary *)v6 setObject:v7 forKey:v8];
}

- (void)removeAllAssetKeys
{
  if (self)
  {
    self = self->_dictionary;
  }

  [(FCAVEphemeralAssetKeyCache *)self removeAllObjects];
}

- (void)saveKeyServerCertificate:(id)a3
{
  v4 = [a3 copy];
  keyServerCertificate = self->_keyServerCertificate;
  self->_keyServerCertificate = v4;

  MEMORY[0x1EEE66BB8](v4, keyServerCertificate);
}

- (void)clearKeyServerCertificate
{
  keyServerCertificate = self->_keyServerCertificate;
  self->_keyServerCertificate = 0;
  MEMORY[0x1EEE66BB8]();
}

@end