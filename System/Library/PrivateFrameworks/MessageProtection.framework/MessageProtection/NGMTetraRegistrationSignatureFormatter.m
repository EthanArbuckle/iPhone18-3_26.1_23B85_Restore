@interface NGMTetraRegistrationSignatureFormatter
- (BOOL)isStillValidToDecrypt;
- (BOOL)isStillValidToEncrypt;
- (NGMTetraRegistrationSignatureFormatter)initWithKyberPublicKey:(id)a3 ecdhPublicKey:(id)a4 timestamp:(double)a5 tetraVersion:(unsigned int)a6;
- (NGMTetraRegistrationSignatureFormatter)initWithTetraRegistration:(id)a3;
- (id)signedData;
@end

@implementation NGMTetraRegistrationSignatureFormatter

- (NGMTetraRegistrationSignatureFormatter)initWithKyberPublicKey:(id)a3 ecdhPublicKey:(id)a4 timestamp:(double)a5 tetraVersion:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = NGMTetraRegistrationSignatureFormatter;
  v13 = [(NGMTetraRegistrationSignatureFormatter *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_timestamp = a5;
    v13->_tetraVersion = a6;
    objc_storeStrong(&v13->_kyberPublicKey, a3);
    objc_storeStrong(&v14->_ecdhPublicKey, a4);
  }

  return v14;
}

- (NGMTetraRegistrationSignatureFormatter)initWithTetraRegistration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NGMTetraRegistrationSignatureFormatter;
  v5 = [(NGMTetraRegistrationSignatureFormatter *)&v12 init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    v5->_tetraVersion = [v4 tetraVersion];
    v7 = [v4 kyberPublicKey];
    kyberPublicKey = v5->_kyberPublicKey;
    v5->_kyberPublicKey = v7;

    v9 = [v4 serializedECDHPublicKey];
    ecdhPublicKey = v5->_ecdhPublicKey;
    v5->_ecdhPublicKey = v9;
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

  v7 = [(NGMTetraRegistrationSignatureFormatter *)self kyberPublicKey];
  v8 = [v7 dataRepresentation];
  [v6 appendData:v8];

  v9 = [(NGMTetraRegistrationSignatureFormatter *)self ecdhPublicKey];
  [v6 appendData:v9];

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