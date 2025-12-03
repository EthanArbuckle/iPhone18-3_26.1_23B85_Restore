@interface CRXFASAKey
+ (id)keyInPEMFormat:(id)format isPublic:(BOOL)public;
- (BOOL)isEqual:(id)equal;
- (CRXFASAKey)initWithName:(id)name privateKey:(id)key publicKey:(id)publicKey creationDate:(id)date;
- (NSString)privateKeyPEM;
- (NSString)publicKeyPEM;
@end

@implementation CRXFASAKey

- (CRXFASAKey)initWithName:(id)name privateKey:(id)key publicKey:(id)publicKey creationDate:(id)date
{
  nameCopy = name;
  keyCopy = key;
  publicKeyCopy = publicKey;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = CRXFASAKey;
  v15 = [(CRXFASAKey *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_privateKey, key);
    objc_storeStrong(&v16->_publicKey, publicKey);
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    creationDate = v16->_creationDate;
    v16->_creationDate = date;
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
    name = [(CRXFASAKey *)self name];
    name2 = [v5 name];
    if (CRXUObjectsEqual(name, name2))
    {
      privateKey = [(CRXFASAKey *)self privateKey];
      privateKey2 = [v5 privateKey];
      if (CRXUObjectsEqual(privateKey, privateKey2))
      {
        publicKey = [(CRXFASAKey *)self publicKey];
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

  v6 = MEMORY[0x277CBEB28];
  formatCopy = format;
  v8 = [[v6 alloc] initWithCapacity:v5];
  v9 = v8;
  if (publicCopy)
  {
    [v8 appendBytes:&keyInPEMFormat_isPublic__kPublicKeyHeader length:23];
    [v9 appendData:formatCopy];

    v10 = "-----END PUBLIC KEY-----";
    v11 = "-----BEGIN PUBLIC KEY-----";
  }

  else
  {
    [v8 appendBytes:&keyInPEMFormat_isPublic__kPrivateKeyHeader length:8];
    [v9 appendBytes:objc_msgSend(formatCopy length:{"bytes") + 97, 48}];
    [v9 appendBytes:&keyInPEMFormat_isPublic__kPrivateKeyParamsBlock length:14];
    bytes = [formatCopy bytes];

    [v9 appendBytes:bytes length:97];
    v10 = "-----END EC PRIVATE KEY-----";
    v11 = "-----BEGIN EC PRIVATE KEY-----";
  }

  v13 = [v9 base64EncodedStringWithOptions:33];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s\n%@\n%s\n", v11, v13, v10];

  return v14;
}

@end