@interface CRXFASAKey
+ (id)keyInPEMFormat:(id)a3 isPublic:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (CRXFASAKey)initWithName:(id)a3 privateKey:(id)a4 publicKey:(id)a5 creationDate:(id)a6;
- (NSString)privateKeyPEM;
- (NSString)publicKeyPEM;
@end

@implementation CRXFASAKey

- (CRXFASAKey)initWithName:(id)a3 privateKey:(id)a4 publicKey:(id)a5 creationDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CRXFASAKey;
  v15 = [(CRXFASAKey *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    objc_storeStrong(&v16->_privateKey, a4);
    objc_storeStrong(&v16->_publicKey, a5);
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = [MEMORY[0x277CBEAA8] date];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CRXFASAKey *)self name];
    v7 = [v5 name];
    if (CRXUObjectsEqual(v6, v7))
    {
      v8 = [(CRXFASAKey *)self privateKey];
      v9 = [v5 privateKey];
      if (CRXUObjectsEqual(v8, v9))
      {
        v10 = [(CRXFASAKey *)self publicKey];
        v11 = [v5 publicKey];
        v12 = CRXUObjectsEqual(v10, v11);
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

+ (id)keyInPEMFormat:(id)a3 isPublic:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = 120;
  }

  else
  {
    v5 = 167;
  }

  v6 = MEMORY[0x277CBEB28];
  v7 = a3;
  v8 = [[v6 alloc] initWithCapacity:v5];
  v9 = v8;
  if (v4)
  {
    [v8 appendBytes:&keyInPEMFormat_isPublic__kPublicKeyHeader length:23];
    [v9 appendData:v7];

    v10 = "-----END PUBLIC KEY-----";
    v11 = "-----BEGIN PUBLIC KEY-----";
  }

  else
  {
    [v8 appendBytes:&keyInPEMFormat_isPublic__kPrivateKeyHeader length:8];
    [v9 appendBytes:objc_msgSend(v7 length:{"bytes") + 97, 48}];
    [v9 appendBytes:&keyInPEMFormat_isPublic__kPrivateKeyParamsBlock length:14];
    v12 = [v7 bytes];

    [v9 appendBytes:v12 length:97];
    v10 = "-----END EC PRIVATE KEY-----";
    v11 = "-----BEGIN EC PRIVATE KEY-----";
  }

  v13 = [v9 base64EncodedStringWithOptions:33];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s\n%@\n%s\n", v11, v13, v10];

  return v14;
}

@end