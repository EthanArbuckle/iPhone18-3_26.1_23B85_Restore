@interface DAAlishaKeyEncryptedRequest
+ (id)decodeWithData:(id)a3 error:(id *)a4;
- (DAAlishaKeyEncryptedRequest)initWithCoder:(id)a3;
- (DAAlishaKeyEncryptedRequest)initWithVersion:(id)a3 ephemeralPublicKey:(id)a4 publicKeyHash:(id)a5 encryptedRequest:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAAlishaKeyEncryptedRequest

- (DAAlishaKeyEncryptedRequest)initWithVersion:(id)a3 ephemeralPublicKey:(id)a4 publicKeyHash:(id)a5 encryptedRequest:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = DAAlishaKeyEncryptedRequest;
  v15 = [(DAAlishaKeyEncryptedRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_version, a3);
    objc_storeStrong(&v16->_ephemeralPublicKey, a4);
    objc_storeStrong(&v16->_publicKeyHash, a5);
    objc_storeStrong(&v16->_encryptedRequest, a6);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAAlishaKeyEncryptedRequest *)self version];
  [v4 encodeObject:v5 forKey:@"version"];

  v6 = [(DAAlishaKeyEncryptedRequest *)self ephemeralPublicKey];
  [v4 encodeObject:v6 forKey:@"ephemeralPublicKey"];

  v7 = [(DAAlishaKeyEncryptedRequest *)self publicKeyHash];
  [v4 encodeObject:v7 forKey:@"publicKeyHash"];

  v8 = [(DAAlishaKeyEncryptedRequest *)self encryptedRequest];
  [v4 encodeObject:v8 forKey:@"encryptedRequest"];
}

- (DAAlishaKeyEncryptedRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAAlishaKeyEncryptedRequest;
  v5 = [(DAAlishaKeyEncryptedRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedRequest"];
    encryptedRequest = v5->_encryptedRequest;
    v5->_encryptedRequest = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"Version               : %@\n", self->_version];
  v4 = kmlUtilHexStringFromData(self->_ephemeralPublicKey);
  [v3 appendFormat:@"EphemeralPublicKey    : %@\n", v4];

  v5 = kmlUtilHexStringFromData(self->_publicKeyHash);
  [v3 appendFormat:@"PublickKeyHash        : %@\n", v5];

  v6 = kmlUtilHexStringFromData(self->_encryptedRequest);
  [v3 appendFormat:@"EncryptedRequest      : %@", v6];

  return v3;
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 setWithObject:objc_opt_class()];
  v9 = [v5 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end