@interface NGMTetraRegistrationSignatureFormatter
- (BOOL)isStillValidToDecrypt;
- (BOOL)isStillValidToEncrypt;
- (NGMTetraRegistrationSignatureFormatter)initWithKyberPublicKey:(id)key ecdhPublicKey:(id)publicKey timestamp:(double)timestamp tetraVersion:(unsigned int)version;
- (NGMTetraRegistrationSignatureFormatter)initWithTetraRegistration:(id)registration;
- (id)signedData;
@end

@implementation NGMTetraRegistrationSignatureFormatter

- (NGMTetraRegistrationSignatureFormatter)initWithKyberPublicKey:(id)key ecdhPublicKey:(id)publicKey timestamp:(double)timestamp tetraVersion:(unsigned int)version
{
  keyCopy = key;
  publicKeyCopy = publicKey;
  v16.receiver = self;
  v16.super_class = NGMTetraRegistrationSignatureFormatter;
  v13 = [(NGMTetraRegistrationSignatureFormatter *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_timestamp = timestamp;
    v13->_tetraVersion = version;
    objc_storeStrong(&v13->_kyberPublicKey, key);
    objc_storeStrong(&v14->_ecdhPublicKey, publicKey);
  }

  return v14;
}

- (NGMTetraRegistrationSignatureFormatter)initWithTetraRegistration:(id)registration
{
  registrationCopy = registration;
  v12.receiver = self;
  v12.super_class = NGMTetraRegistrationSignatureFormatter;
  v5 = [(NGMTetraRegistrationSignatureFormatter *)&v12 init];
  if (v5)
  {
    [registrationCopy timestamp];
    v5->_timestamp = v6;
    v5->_tetraVersion = [registrationCopy tetraVersion];
    kyberPublicKey = [registrationCopy kyberPublicKey];
    kyberPublicKey = v5->_kyberPublicKey;
    v5->_kyberPublicKey = kyberPublicKey;

    serializedECDHPublicKey = [registrationCopy serializedECDHPublicKey];
    ecdhPublicKey = v5->_ecdhPublicKey;
    v5->_ecdhPublicKey = serializedECDHPublicKey;
  }

  return v5;
}

- (id)signedData
{
  [(NGMTetraRegistrationSignatureFormatter *)self timestamp];
  v13 = v3;
  v4 = MEMORY[0x277CBEB28];
  v5 = [@"com.apple.Tetra.Registration" dataUsingEncoding:4];
  v6 = [v4 dataWithData:v5];

  kyberPublicKey = [(NGMTetraRegistrationSignatureFormatter *)self kyberPublicKey];
  dataRepresentation = [kyberPublicKey dataRepresentation];
  [v6 appendData:dataRepresentation];

  ecdhPublicKey = [(NGMTetraRegistrationSignatureFormatter *)self ecdhPublicKey];
  [v6 appendData:ecdhPublicKey];

  v10 = [MEMORY[0x277CBEB28] dataWithBytes:&v13 length:8];
  [v6 appendData:v10];

  v11 = [MEMORY[0x277CBEB28] dataWithBytes:&self->_tetraVersion length:4];
  [v6 appendData:v11];

  return v6;
}

- (BOOL)isStillValidToEncrypt
{
  [(NGMTetraRegistrationSignatureFormatter *)self timestamp];

  return [NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:1 forEvaluationType:?];
}

- (BOOL)isStillValidToDecrypt
{
  [(NGMTetraRegistrationSignatureFormatter *)self timestamp];

  return [NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:2 forEvaluationType:?];
}

@end