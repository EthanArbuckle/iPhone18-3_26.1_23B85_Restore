@interface ASAKey
+ (id)keyInPEMFormat:(id)a3 isPublic:(BOOL)a4;
- (ASAKey)initWithName:(id)a3 privateKey:(id)a4 publicKey:(id)a5 creationDate:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)privateKeyPEM;
- (NSString)publicKeyPEM;
@end

@implementation ASAKey

- (ASAKey)initWithName:(id)a3 privateKey:(id)a4 publicKey:(id)a5 creationDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ASAKey;
  v15 = [(ASAKey *)&v20 init];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ASAKey *)self name];
    v7 = [v5 name];
    if (CRXUObjectsEqual(v6, v7))
    {
      v8 = [(ASAKey *)self privateKey];
      v9 = [v5 privateKey];
      if (CRXUObjectsEqual(v8, v9))
      {
        v10 = [(ASAKey *)self publicKey];
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

  v6 = a3;
  v7 = [[NSMutableData alloc] initWithCapacity:v5];
  v8 = v7;
  if (v4)
  {
    [v7 appendBytes:&unk_100084370 length:23];
    [v8 appendData:v6];

    v9 = "-----END PUBLIC KEY-----";
    v10 = "-----BEGIN PUBLIC KEY-----";
  }

  else
  {
    [v7 appendBytes:&unk_100084387 length:8];
    [v8 appendBytes:objc_msgSend(v6 length:{"bytes") + 97, 48}];
    [v8 appendBytes:&unk_10008438F length:14];
    v11 = [v6 bytes];

    [v8 appendBytes:v11 length:97];
    v9 = "-----END EC PRIVATE KEY-----";
    v10 = "-----BEGIN EC PRIVATE KEY-----";
  }

  v12 = [v8 base64EncodedStringWithOptions:33];
  v13 = [NSString stringWithFormat:@"%s\n%@\n%s\n", v10, v12, v9];

  return v13;
}

@end