@interface CRKInMemoryIdentity
+ (id)identityWithConfiguration:(id)a3 validityDateInterval:(id)a4;
- (CRKInMemoryIdentity)initWithCertificate:(id)a3 privateKey:(id)a4;
- (__SecIdentity)underlyingIdentity;
@end

@implementation CRKInMemoryIdentity

- (CRKInMemoryIdentity)initWithCertificate:(id)a3 privateKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKInMemoryIdentity;
  v9 = [(CRKInMemoryIdentity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificate, a3);
    objc_storeStrong(&v10->_privateKey, a4);
  }

  return v10;
}

+ (id)identityWithConfiguration:(id)a3 validityDateInterval:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CRKInMemoryCertificate alloc] initWithConfiguration:v7 validityDateInterval:v6];

  v9 = [[CRKInMemoryPrivateKey alloc] initWithConfiguration:v7];
  v10 = [[a1 alloc] initWithCertificate:v8 privateKey:v9];

  return v10;
}

- (__SecIdentity)underlyingIdentity
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CRKInMemoryIdentity.m" lineNumber:41 description:@"Reconsider what you are trying to test"];

  return 0;
}

@end