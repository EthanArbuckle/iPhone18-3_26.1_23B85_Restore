@interface ASAKey
+ (id)keyInPEMFormat:(id)format isPublic:(BOOL)public;
- (ASAKey)initWithName:(id)name privateKey:(id)key publicKey:(id)publicKey creationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSString)privateKeyPEM;
- (NSString)publicKeyPEM;
@end

@implementation ASAKey

- (ASAKey)initWithName:(id)name privateKey:(id)key publicKey:(id)publicKey creationDate:(id)date
{
  nameCopy = name;
  keyCopy = key;
  publicKeyCopy = publicKey;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = ASAKey;
  v15 = [(ASAKey *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_privateKey, key);
    objc_storeStrong(&v16->_publicKey, publicKey);
    if (dateCopy)
    {
      v17 = dateCopy;
    }

    else
    {
      v17 = +[NSDate date];
    }

    creationDate = v16->_creationDate;
    v16->_creationDate = v17;
  }

  return v16;
}

- (NSString)privateKeyPEM
{
  privateKeyPEM = self->_privateKeyPEM;
  if (!privateKeyPEM)
  {
    v4 = [objc_opt_class() keyInPEMFormat:self->_privateKey isPublic:0];
    v5 = self->_privateKeyPEM;
    self->_privateKeyPEM = v4;

    privateKeyPEM = self->_privateKeyPEM;
  }

  v6 = [(NSString *)privateKeyPEM copy];

  return v6;
}

- (NSString)publicKeyPEM
{
  publicKeyPEM = self->_publicKeyPEM;
  if (!publicKeyPEM)
  {
    v4 = [objc_opt_class() keyInPEMFormat:self->_publicKey isPublic:1];
    v5 = self->_publicKeyPEM;
    self->_publicKeyPEM = v4;

    publicKeyPEM = self->_publicKeyPEM;
  }

  v6 = [(NSString *)publicKeyPEM copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(ASAKey *)self name];
    name2 = [v5 name];
    if (CRXUObjectsEqual(name, name2))
    {
      privateKey = [(ASAKey *)self privateKey];
      privateKey2 = [v5 privateKey];
      if (CRXUObjectsEqual(privateKey, privateKey2))
      {
        publicKey = [(ASAKey *)self publicKey];
        publicKey2 = [v5 publicKey];
        v12 = CRXUObjectsEqual(publicKey, publicKey2);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)keyInPEMFormat:(id)format isPublic:(BOOL)public
{
  publicCopy = public;
  if (public)
  {
    v5 = 120;
  }

  else
  {
    v5 = 167;
  }

  formatCopy = format;
  v7 = [[NSMutableData alloc] initWithCapacity:v5];
  v8 = v7;
  if (publicCopy)
  {
    [v7 appendBytes:&unk_100084370 length:23];
    [v8 appendData:formatCopy];

    v9 = "-----END PUBLIC KEY-----";
    v10 = "-----BEGIN PUBLIC KEY-----";
  }

  else
  {
    [v7 appendBytes:&unk_100084387 length:8];
    [v8 appendBytes:objc_msgSend(formatCopy length:{"bytes") + 97, 48}];
    [v8 appendBytes:&unk_10008438F length:14];
    bytes = [formatCopy bytes];

    [v8 appendBytes:bytes length:97];
    v9 = "-----END EC PRIVATE KEY-----";
    v10 = "-----BEGIN EC PRIVATE KEY-----";
  }

  v12 = [v8 base64EncodedStringWithOptions:33];
  v13 = [NSString stringWithFormat:@"%s\n%@\n%s\n", v10, v12, v9];

  return v13;
}

@end