@interface CRKInMemoryIdentity
+ (id)identityWithConfiguration:(id)configuration validityDateInterval:(id)interval;
- (CRKInMemoryIdentity)initWithCertificate:(id)certificate privateKey:(id)key;
- (__SecIdentity)underlyingIdentity;
@end

@implementation CRKInMemoryIdentity

- (CRKInMemoryIdentity)initWithCertificate:(id)certificate privateKey:(id)key
{
  certificateCopy = certificate;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = CRKInMemoryIdentity;
  v9 = [(CRKInMemoryIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificate, certificate);
    objc_storeStrong(&v10->_privateKey, key);
  }

  return v10;
}

+ (id)identityWithConfiguration:(id)configuration validityDateInterval:(id)interval
{
  intervalCopy = interval;
  configurationCopy = configuration;
  v8 = [[CRKInMemoryCertificate alloc] initWithConfiguration:configurationCopy validityDateInterval:intervalCopy];

  v9 = [[CRKInMemoryPrivateKey alloc] initWithConfiguration:configurationCopy];
  v10 = [[self alloc] initWithCertificate:v8 privateKey:v9];

  return v10;
}

- (__SecIdentity)underlyingIdentity
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKInMemoryIdentity.m" lineNumber:41 description:@"Reconsider what you are trying to test"];

  return 0;
}

@end