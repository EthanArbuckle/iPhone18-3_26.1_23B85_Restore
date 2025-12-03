@interface FCAVEphemeralAssetKeyCache
- (FCAVEphemeralAssetKeyCache)init;
- (id)assetKeyForURI:(id)i;
- (void)clearKeyServerCertificate;
- (void)importAVAssetKey:(id)key;
- (void)removeAllAssetKeys;
- (void)saveAssetKeyData:(id)data creationDate:(id)date expirationDate:(id)expirationDate forURI:(id)i;
- (void)saveKeyServerCertificate:(id)certificate;
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

- (id)assetKeyForURI:(id)i
{
  if (self)
  {
    self = self->_dictionary;
  }

  return [(FCAVEphemeralAssetKeyCache *)self objectForKey:i];
}

- (void)saveAssetKeyData:(id)data creationDate:(id)date expirationDate:(id)expirationDate forURI:(id)i
{
  v10 = MEMORY[0x1E69B6CD8];
  iCopy = i;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  dataCopy = data;
  v19 = objc_alloc_init(v10);
  absoluteString = [iCopy absoluteString];
  [v19 setIdentifier:absoluteString];

  [v19 setKeyData:dataCopy];
  pbDate = [dateCopy pbDate];

  [v19 setCreatedAt:pbDate];
  pbDate2 = [expirationDateCopy pbDate];

  [v19 setExpiresAt:pbDate2];
  if (self)
  {
    dictionary = self->_dictionary;
  }

  else
  {
    dictionary = 0;
  }

  [(FCThreadSafeMutableDictionary *)dictionary setObject:v19 forKey:iCopy];
}

- (void)importAVAssetKey:(id)key
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
  keyCopy = key;
  identifier = [keyCopy identifier];
  v8 = [v5 URLWithString:identifier];
  [(FCThreadSafeMutableDictionary *)v6 setObject:keyCopy forKey:v8];
}

- (void)removeAllAssetKeys
{
  if (self)
  {
    self = self->_dictionary;
  }

  [(FCAVEphemeralAssetKeyCache *)self removeAllObjects];
}

- (void)saveKeyServerCertificate:(id)certificate
{
  v4 = [certificate copy];
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