@interface DAAlishaKeyEncryptedRequest
+ (id)decodeWithData:(id)data error:(id *)error;
- (DAAlishaKeyEncryptedRequest)initWithCoder:(id)coder;
- (DAAlishaKeyEncryptedRequest)initWithVersion:(id)version ephemeralPublicKey:(id)key publicKeyHash:(id)hash encryptedRequest:(id)request;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAAlishaKeyEncryptedRequest

- (DAAlishaKeyEncryptedRequest)initWithVersion:(id)version ephemeralPublicKey:(id)key publicKeyHash:(id)hash encryptedRequest:(id)request
{
  versionCopy = version;
  keyCopy = key;
  hashCopy = hash;
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = DAAlishaKeyEncryptedRequest;
  v15 = [(DAAlishaKeyEncryptedRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_version, version);
    objc_storeStrong(&v16->_ephemeralPublicKey, key);
    objc_storeStrong(&v16->_publicKeyHash, hash);
    objc_storeStrong(&v16->_encryptedRequest, request);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  version = [(DAAlishaKeyEncryptedRequest *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  ephemeralPublicKey = [(DAAlishaKeyEncryptedRequest *)self ephemeralPublicKey];
  [coderCopy encodeObject:ephemeralPublicKey forKey:@"ephemeralPublicKey"];

  publicKeyHash = [(DAAlishaKeyEncryptedRequest *)self publicKeyHash];
  [coderCopy encodeObject:publicKeyHash forKey:@"publicKeyHash"];

  encryptedRequest = [(DAAlishaKeyEncryptedRequest *)self encryptedRequest];
  [coderCopy encodeObject:encryptedRequest forKey:@"encryptedRequest"];
}

- (DAAlishaKeyEncryptedRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DAAlishaKeyEncryptedRequest;
  v5 = [(DAAlishaKeyEncryptedRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedRequest"];
    encryptedRequest = v5->_encryptedRequest;
    v5->_encryptedRequest = v12;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"Version               : %@\n", self->_version];
  v4 = kmlUtilHexStringFromData(self->_ephemeralPublicKey);
  [string appendFormat:@"EphemeralPublicKey    : %@\n", v4];

  v5 = kmlUtilHexStringFromData(self->_publicKeyHash);
  [string appendFormat:@"PublickKeyHash        : %@\n", v5];

  v6 = kmlUtilHexStringFromData(self->_encryptedRequest);
  [string appendFormat:@"EncryptedRequest      : %@", v6];

  return string;
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v8 = [v6 setWithObject:objc_opt_class()];
  v9 = [v5 unarchivedObjectOfClasses:v8 fromData:dataCopy error:error];

  return v9;
}

@end